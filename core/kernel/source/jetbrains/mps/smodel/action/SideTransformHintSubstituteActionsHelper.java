/*
 * Copyright 2003-2010 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package jetbrains.mps.smodel.action;

import jetbrains.mps.lang.actions.behavior.RemoveSTByConditionPart_Behavior;
import jetbrains.mps.lang.actions.behavior.SideTransformHintSubstituteActionsBuilder_Behavior;
import jetbrains.mps.lang.actions.structure.*;
import jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.nodeEditor.CellSide;
import jetbrains.mps.smodel.*;
import jetbrains.mps.typesystem.inference.TypeChecker;
import jetbrains.mps.util.QueryMethodGenerated;

import java.util.*;

public class SideTransformHintSubstituteActionsHelper {
  public static final String SIDE_TRANSFORM_TAG_SEPARATOR = "|";
  private static final Logger LOG = Logger.getLogger(SideTransformHintSubstituteActionsHelper.class);

  private IOperationContext myContext;
  private SNode mySourceNode;
  private Set<SideTransformTag> myTransformTags = new LinkedHashSet<SideTransformTag>();
  private CellSide mySide;

  public SideTransformHintSubstituteActionsHelper(SNode sourceNode, CellSide side, String transformTags, IOperationContext context) {
    myContext = context;
    while (sourceNode.isAttribute()) {
      sourceNode = sourceNode.getParent();
    }
    mySourceNode = sourceNode;
    if (transformTags != null) {
      for (StringTokenizer tokenizer = new StringTokenizer(transformTags, SIDE_TRANSFORM_TAG_SEPARATOR); tokenizer.hasMoreTokens();) {
        String nextTag = tokenizer.nextToken();
        myTransformTags.add(SideTransformTag.parseValue(nextTag));
      }
    }
    if (myTransformTags.isEmpty()) {
      myTransformTags.add(SideTransformTag.default_);
    }
    mySide = side;
  }

  public boolean canCreateActions() {
    TypeChecker.getInstance().enableTypesComputingForCompletion();
    try {
      IScope scope = myContext.getScope();
      final AbstractConceptDeclaration sourceConcept = mySourceNode.getConceptDeclarationAdapter();
      List<Language> languages = mySourceNode.getModel().getLanguages(scope);
      for (Language language : languages) {
        SModelDescriptor actionsModel = language.getActionsModelDescriptor();
        if (actionsModel != null && actionsModel.getSModel() != null) {
          for (SideTransformHintSubstituteActionsBuilder builder : actionsModel.getSModel().allAdapters(SideTransformHintSubstituteActionsBuilder.class)) {
            for (SideTransformTag tag : myTransformTags) {
              if (isApplicable(builder, tag, sourceConcept)) {
                return true;
              }
            }
          }
        }
      }
      return false;
    } finally {
      TypeChecker.getInstance().clearTypesComputedForCompletion();
    }
  }

  public List<INodeSubstituteAction> createActions() {
    final List<INodeSubstituteAction>[] result = new List[1];
    // enable R/O access
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        TypeChecker.getInstance().enableTypesComputingForCompletion();
        try {
          result[0] = createActions_internal();
        } catch (Throwable t) {
          LOG.error(t);
          result[0] = new ArrayList<INodeSubstituteAction>();
        } finally {
          TypeChecker.getInstance().clearTypesComputedForCompletion();
        }
      }
    });

    return result[0];
  }

  private List<INodeSubstituteAction> createActions_internal() {
    List<INodeSubstituteAction> resultActions = new LinkedList<INodeSubstituteAction>();
    List<SideTransformHintSubstituteActionsBuilder> actionsBuilders = getActionBuilders();

    List<RemoveSTByConditionPart> removesByCondition = new ArrayList<RemoveSTByConditionPart>();

    Set<SNode> conceptsToRemove = new HashSet<SNode>();
    // for each builder create actions and apply all filters
    for (SideTransformHintSubstituteActionsBuilder builder : actionsBuilders) {
      for (RemovePart rp : builder.getDescendants(RemovePart.class)) {
        conceptsToRemove.add(rp.getConceptToRemove().getNode());
      }

      for (RemoveSTByConditionPart rp : builder.getDescendants(RemoveSTByConditionPart.class)) {
        removesByCondition.add(rp);
      }

      List<INodeSubstituteAction> addActions = invokeActionFactory(builder);
      resultActions.addAll(addActions);
    }

    //remove with conditions
    for (RemoveSTByConditionPart rbc : removesByCondition) {
      invokeRemoveByCondition(rbc, resultActions.iterator());
    }

    //remove with remove concept
    for (Iterator<INodeSubstituteAction> it = resultActions.iterator(); it.hasNext();) {
      INodeSubstituteAction action = it.next();
      Object parameterObject = action.getOutputConcept();
      if (parameterObject instanceof SNode && ((SNode) parameterObject).getAdapter() instanceof AbstractConceptDeclaration) {
        if (conceptsToRemove.contains(((SNode) parameterObject))) {
          it.remove();
        }
      } else if (parameterObject instanceof AbstractConceptDeclaration) {
        if (conceptsToRemove.contains(((AbstractConceptDeclaration) parameterObject).getNode())) {
          it.remove();
        }
      }
    }

    return resultActions;
  }

  private List<SideTransformHintSubstituteActionsBuilder> getActionBuilders() {
    List<SideTransformHintSubstituteActionsBuilder> actionsBuilders = new LinkedList<SideTransformHintSubstituteActionsBuilder>();
    IScope scope = myContext.getScope();
    final AbstractConceptDeclaration sourceConcept = mySourceNode.getConceptDeclarationAdapter();

    List<Language> languages = mySourceNode.getModel().getLanguages(scope);
    for (Language language : languages) {
      SModelDescriptor actionsModel = language.getActionsModelDescriptor();
      if (actionsModel != null && actionsModel.getSModel() != null) {
        for (SideTransformHintSubstituteActionsBuilder builder : actionsModel.getSModel().allAdapters(SideTransformHintSubstituteActionsBuilder.class)) {
          for (SideTransformTag tag : myTransformTags) {
            if (isApplicable(builder, tag, sourceConcept)) {
              actionsBuilders.add(builder);
            }
          }
        }
      }
    }
    return actionsBuilders;
  }

  private boolean isApplicable(SideTransformHintSubstituteActionsBuilder actionsBuilder,
                               SideTransformTag tag,
                               AbstractConceptDeclaration sourceConcept) {
    // same tag?
    SideTransformTag actionTag = actionsBuilder.getTransformTag();
    if (actionTag != tag) {
      return false;
    }

    if (actionsBuilder.getSide() == Side.left && mySide != CellSide.LEFT) {
      return false;
    }

    if (actionsBuilder.getSide() == Side.right && mySide != CellSide.RIGHT) {
      return false;
    }

    if (!SModelUtil_new.isAssignableConcept(sourceConcept, actionsBuilder.getApplicableConcept())) {
      return false;
    }

    // is applicable ?
    return satisfiesPrecondition(actionsBuilder);
  }

  private void invokeRemoveByCondition(RemoveSTByConditionPart removeByCondition, Iterator<INodeSubstituteAction> actions) {
    String methodName = RemoveSTByConditionPart_Behavior.call_getQueryMethodName_1220279474449(removeByCondition.getNode());
    try {
      QueryMethodGenerated.invoke(methodName, myContext, new RemoveSideTransformActionByConditionContext(actions, mySourceNode), removeByCondition.getModel());
    } catch (Throwable t) {
      LOG.error(t);
    }
  }

  private boolean satisfiesPrecondition(SideTransformHintSubstituteActionsBuilder actionsBuilder) {
    // try generatred query method
    SideTransformHintSubstitutePreconditionFunction precondition = actionsBuilder.getPrecondition();
    // precondition is optional
    if (precondition != null) {
      String methodName = SideTransformHintSubstituteActionsBuilder_Behavior.call_getPreconditionQueryMethodName_1220279571415(actionsBuilder.getNode());
      SModel model = actionsBuilder.getModel();
      try {
        return (Boolean) QueryMethodGenerated.invoke(methodName, myContext, new SideTransformPreconditionContext(mySourceNode), model);
      } catch (Exception e) {
        LOG.error(e);
        return false;
      }
    }

    return true;
  }

  private List<INodeSubstituteAction> invokeActionFactory(SideTransformHintSubstituteActionsBuilder substituteActionsBuilder) {
    String methodName = SideTransformHintSubstituteActionsBuilder_Behavior.call_getBuilderQueryMethodName_1220279234749(substituteActionsBuilder.getNode());
    SModel model = substituteActionsBuilder.getModel();
    try {
      return (List<INodeSubstituteAction>) QueryMethodGenerated.invoke(methodName, myContext, new SideTransformActionsBuilderContext(mySourceNode, mySourceNode.getModel(), null), model);
    } catch (Exception e) {
      return new ArrayList<INodeSubstituteAction>();
    }
  }
}
