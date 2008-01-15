package jetbrains.mps.ide.findusages.model.result;

import jetbrains.mps.components.IExternalizableComponent;
import jetbrains.mps.ide.components.ComponentsUtil;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SNodePointer;
import org.jdom.Element;

public class SearchResult implements IExternalizableComponent {
  private static final String CATEGORY = "category";
  private static final String ATTRIBUTES = "attributes";
  private static final String NODE = "node";

  protected SNodePointer myNodePointer;
  protected String myCategory;

  public SearchResult() {

  }

  public SearchResult(SNodePointer nodePointer, String category) {
    myNodePointer = nodePointer;
    myCategory = category;
  }

  public SearchResult(SNode node, String category) {
    this(new SNodePointer(node), category);
  }

  public SNodePointer getNodePointer() {
    return myNodePointer;
  }

  public SNode getNode() {
    return myNodePointer.getNode();
  }

  public String getCategory() {
    return myCategory;
  }

  public void write(Element element, MPSProject project) {
    Element attributesXML = new Element(ATTRIBUTES);
    attributesXML.setAttribute(CATEGORY, myCategory);
    element.addContent(attributesXML);

    if (myNodePointer.getNode() != null) {
      Element nodeXML = new Element(NODE);
      nodeXML.addContent(ComponentsUtil.nodeToElement(myNodePointer.getNode()));
      element.addContent(nodeXML);
    }
  }

  public void read(Element element, MPSProject project) {
    Element attributesXML = element.getChild(ATTRIBUTES);
    myCategory = attributesXML.getAttribute(CATEGORY).getValue();

    Element nodeXML = element.getChild(NODE);
    if (nodeXML == null) {
      myNodePointer = new SNodePointer((SNode) null);
    } else {
      myNodePointer = new SNodePointer(ComponentsUtil.nodeFromElement((Element) nodeXML.getChildren().get(0)));
    }
  }
}
