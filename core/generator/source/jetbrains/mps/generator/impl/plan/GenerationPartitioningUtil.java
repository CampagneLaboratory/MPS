/*
 * Copyright 2003-2013 JetBrains s.r.o.
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
package jetbrains.mps.generator.impl.plan;

import jetbrains.mps.generator.runtime.TemplateMappingConfiguration;
import jetbrains.mps.generator.runtime.TemplateMappingPriorityRule;
import jetbrains.mps.generator.runtime.TemplateModel;
import jetbrains.mps.generator.runtime.TemplateModule;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingConfig_AbstractRef;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingConfig_ExternalRef;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingConfig_RefAllGlobal;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingConfig_RefAllLocal;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingConfig_RefSet;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingConfig_SimpleRef;
import jetbrains.mps.project.structure.modules.mappingpriorities.MappingPriorityRule;
import jetbrains.mps.smodel.Generator;
import jetbrains.mps.smodel.ModuleRepositoryFacade;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.smodel.SModelStereotype;
import jetbrains.mps.smodel.language.LanguageRegistry;
import jetbrains.mps.smodel.language.LanguageRuntime;
import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.Pair;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.module.SModuleReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

/**
 * Igor Alshannikov
 * Date: Mar 30, 2007
 */
public class GenerationPartitioningUtil {
  private static final Logger LOG = LogManager.getLogger(GenerationPartitioningUtil.class);

  public static List<TemplateModule> getTemplateModules(SModel inputModel) {
    return getTemplateModules(inputModel, null);
  }

  public static List<TemplateModule> getTemplateModules(SModel inputModel, @Nullable Collection<String> additionalLanguages) {
    Queue<String> queue = new LinkedList<String>(ModelContentUtil.getUsedLanguageNamespaces(inputModel, false));
    if (additionalLanguages != null) {
      queue.addAll(additionalLanguages);
    }
    Set<String> processed = new HashSet<String>(queue);
    List<TemplateModule> result = new ArrayList<TemplateModule>();

    while (!queue.isEmpty()) {
      String next = queue.remove();
      LanguageRuntime language = LanguageRegistry.getInstance().getLanguage(next);
      if (language == null) {
        LOG.error("couldn't find language for namespace `" + next + "'");
        continue;
      }

      Collection<TemplateModule> generators = language.getGenerators();
      if (generators == null) {
        continue;
      }

      for (TemplateModule generator : generators) {
        if (generator == null) {
          continue;
        }

        result.add(generator);

        // handle Used languages
        for (String used : generator.getUsedLanguages()) {
          if (!processed.contains(used)) {
            processed.add(used);
            queue.add(used);
          }
        }

        // handle Referenced generators
        Collection<String> referencedModules = generator.getReferencedModules();
        if (referencedModules != null) {
          for (String referenced : referencedModules) {
            int slash = referenced.indexOf('/');
            String sourceLanguage = referenced.substring(0, slash);
            if (!processed.contains(sourceLanguage)) {
              processed.add(sourceLanguage);
              queue.add(sourceLanguage);
            }
          }
        }
      }
    }

    return result;
  }

  public static List<String> toStrings(List<TemplateMappingConfiguration> mappings) {
    List<String> strings = new ArrayList<String>();

    // consolidate mappings
    Map<TemplateModel, Integer> numOfMappingsByModel = new HashMap<TemplateModel, Integer>();
    for (TemplateMappingConfiguration mappingConfig : mappings) {
      TemplateModel model = mappingConfig.getModel();
      if (!numOfMappingsByModel.containsKey(model)) {
        numOfMappingsByModel.put(model, 0);
      }
      numOfMappingsByModel.put(model, numOfMappingsByModel.get(model) + 1);
    }
    Iterator<TemplateModel> models = numOfMappingsByModel.keySet().iterator();
    while (models.hasNext()) {
      TemplateModel model = models.next();
      int totalMappings = model.getConfigurations().size();
      if (totalMappings <= 1 || numOfMappingsByModel.get(model) < totalMappings) {
        models.remove();
      } else {
        numOfMappingsByModel.put(model, 0);
      }
    }

    // output
    for (TemplateMappingConfiguration mappingConfig : mappings) {
      TemplateModel model = mappingConfig.getModel();
      if (numOfMappingsByModel.containsKey(model)) {
        if (numOfMappingsByModel.get(model) == 0) {
          strings.add(model.getLongName() + ".*");
          numOfMappingsByModel.put(model, 1);
        }
      } else {
        strings.add(model.getLongName() + "." + mappingConfig.getName());
      }
    }

    Collections.sort(strings);
    return strings;
  }

  public static List<Pair<MappingPriorityRule, String>> toStrings(Iterable<TemplateMappingPriorityRule> priorityRules, boolean moreDetails) {
    List<Pair<MappingPriorityRule, String>> list = new ArrayList<Pair<MappingPriorityRule, String>>();
    for (TemplateMappingPriorityRule rule : priorityRules) {
      String text = asString((MappingPriorityRule) rule, moreDetails);
      if (moreDetails) {
        //todo text = asString(rule.findParent(GeneratorDescriptor.class)) + ": " + text;
      } else {
        if (text.length() > 120) {
          text = text.substring(0, 120) + "...";
        }
      }
      list.add(new Pair(rule, text));
    }
    Collections.sort(list, new Comparator<Pair<MappingPriorityRule, String>>() {
      @Override
      public int compare(Pair<MappingPriorityRule, String> o1, Pair<MappingPriorityRule, String> o2) {
        return o1.o2.compareTo(o2.o2);
      }
    });
    return list;
  }

  public static String asString(MappingPriorityRule rule, boolean moreDetails) {
    return asString(rule.getLeft(), moreDetails) + " " + rule.getType().getName() + " " + asString(rule.getRight(), moreDetails);
  }

  private static String asString(MappingConfig_AbstractRef mappingRef, boolean moreDetails) {
    if (mappingRef instanceof MappingConfig_RefAllLocal) {
      return "*";
    }
    if (mappingRef instanceof MappingConfig_RefAllGlobal) {
      return "[*:*]";

    }

    if (mappingRef instanceof MappingConfig_RefSet) {
      String s = "{";
      int count = ((MappingConfig_RefSet) mappingRef).getMappingConfigs().size();
      for (MappingConfig_AbstractRef mappingSimpleRef : ((MappingConfig_RefSet) mappingRef).getMappingConfigs()) {
        count--;
        s = s + asString(mappingSimpleRef, moreDetails);
        if (count > 0) s += ", ";
      }
      return s + "}";
    }

    if (mappingRef instanceof MappingConfig_SimpleRef) {
      final String modelUID = ((MappingConfig_SimpleRef) mappingRef).getModelUID();
      final String nodeID = ((MappingConfig_SimpleRef) mappingRef).getNodeID();
      final SModelReference modelReference = PersistenceFacade.getInstance().createModelReference(modelUID);
      String modelName = moreDetails ? SModelStereotype.withoutStereotype(modelReference.getModelName()) : NameUtil.shortNameFromLongName(
          SModelStereotype.withoutStereotype(modelReference.getModelName()));
      StringBuilder sb = new StringBuilder();
      sb.append(modelName);
      sb.append('.');
      if (nodeID.equals("*")) {
        return sb.append('*').toString();
      } else {
        SModel refModel = SModelRepository.getInstance().getModelDescriptor(modelReference);
        if (refModel != null) {
          SNodeId nodeId = PersistenceFacade.getInstance().createNodeId(nodeID);
          assert nodeId != null : "wrong node id string";
          SNode mappingConfig = refModel.getNode(nodeId);
          if (mappingConfig != null) {
            return sb.append(mappingConfig.getName()).toString();
          }
        }
      }
      return sb.append(nodeID).append("!unresolved!").toString();
    }

    if (mappingRef instanceof MappingConfig_ExternalRef) {
      SModuleReference generatorRef = ((MappingConfig_ExternalRef) mappingRef).getGenerator();
      MappingConfig_AbstractRef extMappingRef = ((MappingConfig_ExternalRef) mappingRef).getMappingConfig();
      return "[" + asString(generatorRef) + ":" + asString(extMappingRef, moreDetails) + "]";
    }

    return "???";
  }

  private static String asString(SModuleReference generatorRef) {
    Generator generator = (Generator) ModuleRepositoryFacade.getInstance().getModule(generatorRef);
    if (generator == null) {
      return "unknown(" + generatorRef.toString() + ")";
    }
    return generator.getAlias();
  }
}
