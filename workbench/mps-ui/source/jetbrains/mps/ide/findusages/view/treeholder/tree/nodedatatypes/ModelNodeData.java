/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.ide.findusages.view.treeholder.tree.nodedatatypes;

import jetbrains.mps.ide.findusages.CantLoadSomethingException;
import jetbrains.mps.ide.findusages.CantSaveSomethingException;
import jetbrains.mps.ide.findusages.model.SearchResult;
import jetbrains.mps.ide.findusages.view.treeholder.tree.TextOptions;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.INodeRepresentator;
import jetbrains.mps.ide.findusages.view.treeholder.treeview.path.PathItemRole;
import jetbrains.mps.ide.icons.IconManager;
import jetbrains.mps.ide.icons.IdeIcons;
import jetbrains.mps.project.Project;
import jetbrains.mps.smodel.SModelRepository;
import jetbrains.mps.util.SNodeOperations;
import org.jdom.Element;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import javax.swing.Icon;

public class ModelNodeData extends BaseNodeData {
  private static final String MODEL = "model";
  private static final String UID = "uid";

  public SModelReference myModelReference;

  public ModelNodeData(PathItemRole role, SearchResult result, boolean isResult,
      INodeRepresentator nodeRepresentator, boolean resultsSection) {
    super(role,
        (isResult && nodeRepresentator != null) ?
            nodeRepresentator.getPresentation(result.getObject()) :
            SNodeOperations.getModelLongName(((SModel) result.getPathObject())),
        "",
        false,
        isResult,
        resultsSection);
    myModelReference = ((SModel) result.getPathObject()).getReference();
  }

  public ModelNodeData(PathItemRole role, SModel model, boolean isResult, boolean resultsSection) {
    super(role, SNodeOperations.getModelLongName(model) + (!jetbrains.mps.util.SNodeOperations.getModelStereotype(model).isEmpty() ?
        "@" + jetbrains.mps.util.SNodeOperations.getModelStereotype(model) : ""), "", false, isResult, resultsSection);
    myModelReference = model.getReference();
  }

  public ModelNodeData(Element element, Project project) throws CantLoadSomethingException {
    read(element, project);
  }

  @Override
  public Icon getIcon() {
    SModel modelDescriptor = getModelDescriptor();
    if (modelDescriptor != null) {
      return IconManager.getIconFor(modelDescriptor);
    }
    return IdeIcons.MODEL_ICON;
  }

  @Override
  public Object getIdObject() {
    return isResultNode() ? (getModelReference().toString() + "/" + getPlainText()) : getModel();
  }

  public SModel getModel() {
    SModel modelDescriptor = getModelDescriptor();
    if (modelDescriptor == null) return null;
    return modelDescriptor;
  }

  public SModel getModelDescriptor() {
    return SModelRepository.getInstance().getModelDescriptor(myModelReference);
  }

  public SModelReference getModelReference() {
    return myModelReference;
  }

  @Override
  public void write(Element element, Project project) throws CantSaveSomethingException {
    super.write(element, project);
    Element modelXML = new Element(MODEL);
    modelXML.setAttribute(UID, myModelReference.toString());
    element.addContent(modelXML);
  }

  @Override
  public void read(Element element, Project project) throws CantLoadSomethingException {
    super.read(element, project);
    Element modelXML = element.getChild(MODEL);
    try {
      myModelReference = PersistenceFacade.getInstance().createModelReference(modelXML.getAttributeValue(UID));
    } catch (IllegalArgumentException ex) {
      throw new CantLoadSomethingException("cannot parse model reference", ex);
    }
  }

  @Override
  public String getText(TextOptions options) {
    boolean showCounter = options.myCounters && isResultsSection();
    String counter = showCounter ? " " + sizeRepresentation(options.mySubresultsCount) : "";
    return super.getText(options) + counter;
  }

  private static String sizeRepresentation(int size) {
    return "<font color='gray'>(" + Integer.toString(size) + ")</font>";
  }
}
