package jetbrains.mps.ide.findusages.findalgorithm.resultproviders.treenodes.basenodes;

import jetbrains.mps.ide.findusages.model.IResultProvider;
import jetbrains.mps.ide.findusages.model.result.SearchResults;
import jetbrains.mps.ide.findusages.model.searchquery.SearchQuery;
import jetbrains.mps.ide.progress.IAdaptiveProgressMonitor;
import jetbrains.mps.ide.ThreadUtils;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.project.MPSProject;
import jetbrains.mps.smodel.IScope;
import org.jdom.Element;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/**
 * NOTE: all nodes except UnionNode MUST have <2 children
 */
public abstract class BaseNode implements IResultProvider {
  private static final String CHILDREN = "children";

  protected BaseNode myParent;
  protected List<BaseNode> myChildren = new ArrayList<BaseNode>();

  public BaseNode() {

  }

  public void setParent(BaseNode parent) {
    myParent = parent;
  }

  public BaseNode getParent() {
    return myParent;
  }

  public void addChild(BaseNode child) {
    myChildren.add(child);
  }

  public void removeChild(BaseNode child) {
    myChildren.remove(child);
  }

  public void clearChildren() {
    myChildren.clear();
  }

  public List<BaseNode> getChildren() {
    return Collections.unmodifiableList(myChildren);
  }

  public boolean isRoot() {
    return myParent == null;
  }

  public abstract SearchResults doGetResults(SearchQuery query, IAdaptiveProgressMonitor monitor);

  public SearchResults getResults(SearchQuery query, IAdaptiveProgressMonitor monitor) {
    assert !ThreadUtils.isEventDispatchThread();

    SearchResults results;
    if (isRoot()) {
      monitor.start("find usages", getEstimatedTime(query.getScope()));
      results = doGetResults(query, monitor);
      monitor.finish();
    } else {
      results = doGetResults(query, monitor);
    }
    return results;
  }

  public long getEstimatedTime(IScope scope) {
    long sumTime = 0;
    for (BaseNode child : myChildren) {
      sumTime = sumTime + child.getEstimatedTime(scope);
    }
    return sumTime;
  }

  public void write(Element element, MPSProject project) {
    Element childrenXML = new Element(CHILDREN);
    for (BaseNode child : myChildren) {
      Element childXML = new Element(child.getClass().getName());
      child.write(childXML, project);
      childrenXML.addContent(childXML);
    }
    element.addContent(childrenXML);
  }

  public void read(Element element, MPSProject project) {
    Element childrenXML = element.getChild(CHILDREN);
    for (Element childXML : (List<Element>) childrenXML.getChildren()) {
      try {
        BaseNode child = (BaseNode) Class.forName(childXML.getName()).newInstance();
        child.read(childXML, project);
        myChildren.add(child);
        child.setParent(this);
      } catch (Exception e) {
        Logger.getLogger(this.getClass().getName()).error("Error while instantiating node: " + e.getMessage());
      }
    }
  }
}
