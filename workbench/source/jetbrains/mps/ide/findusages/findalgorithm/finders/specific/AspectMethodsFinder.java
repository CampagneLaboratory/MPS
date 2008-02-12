package jetbrains.mps.ide.findusages.findalgorithm.finders.specific;

import jetbrains.mps.ide.findusages.model.result.SearchResult;
import jetbrains.mps.ide.findusages.model.result.SearchResults;
import jetbrains.mps.ide.findusages.model.searchquery.SearchQuery;
import jetbrains.mps.ide.findusages.findalgorithm.finders.BaseFinder;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.*;
import org.jdom.Element;

import java.util.ArrayList;
import java.util.List;

public class AspectMethodsFinder extends BaseFinder {
  private static final String MODELS = "models";
  private static final String MODEL = "model";
  private static final String MODEL_UID = "model_uid";
  private static final String METHOD = "method";
  private static final String METHOD_NAME = "method_name";

  private List<SModel> myModels = new ArrayList<SModel>();
  private String myMethodName = "";

  public AspectMethodsFinder() {

  }

  public AspectMethodsFinder(List<SModel> models, String methodName) {
    myModels = models;
    myMethodName = methodName;
  }

  public SearchResults find(SearchQuery query) {
    SearchResults res = new SearchResults();
    for (SModel model : myModels) {
      for (SNode root : model.getRoots()) {
        findNodes(res, root, myMethodName);
      }
    }
    return res;
  }

  private void findNodes(SearchResults res, SNode node, String methodName) {
    for (String value : node.getProperties().values()) {
      if (methodName.endsWith(value)) {
        res.getSearchResults().add(new SearchResult(new SNodePointer(node), "Aspect methods"));
        break;
      }
    }

    for (SNode child : node.getChildren()) {
      findNodes(res, child, methodName);
    }
  }

  public void read(Element element, MPSProject project) {
    super.read(element, project);

    Element modelsXML = element.getChild(MODELS);
    for (Element modelXML : (List<Element>) modelsXML.getChildren(MODEL)) {
      SModelUID modelUID = SModelUID.fromString(modelXML.getAttribute(MODEL_UID).getValue());
      SModelDescriptor modelDescriptor = project.getScope().getModelDescriptor(modelUID);
      if (modelDescriptor != null) {
        SModel model = modelDescriptor.getSModel();
        myModels.add(model);
      }
    }

    Element methodXML = element.getChild(METHOD);
    myMethodName = methodXML.getAttribute(METHOD_NAME).getValue();
  }

  public void write(Element element, MPSProject project) {
    super.write(element, project);

    Element modelsXML = new Element(MODELS);
    for (SModel model : myModels) {
      Element modelXML = new Element(MODEL);
      modelXML.setAttribute(MODEL_UID, model.getModelDescriptor().getModelUID().toString());
      modelsXML.addContent(modelXML);
    }
    element.addContent(modelsXML);

    Element methodXML = new Element(METHOD);
    methodXML.setAttribute(METHOD_NAME, myMethodName);
    element.addContent(methodXML);
  }

  public String getDescription() {
    return "aspect methods";
  }
}
