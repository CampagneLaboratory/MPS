package jetbrains.mps.generator.impl.dependencies;

import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.smodel.SNode;
import org.jdom.Attribute;
import org.jdom.Element;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;

/**
* Evgeny Gryaznov, Jun 1, 2010
*/
public class GenerationRootDependencies {

  private static final String ATTR_ID = "id";
  private static final String ATTR_NAME = "name";
  private static final String ATTR_HASH = "hash";
  private static final String ATTR_DEPENDS_ON_CONDITIONALS = "dependsOnCreated";
  private static final String NODE_DEPENDS_ON = "dep";
  private static final String NODE_FILE = "file";
  private static final String ATTR_ROOT_ID = "root";
  private static final String ATTR_MODEL_ID = "model";
  private static final String TRUE = "true";

  private String myRootId;
  private String myRootName;
  private String myHash;
  private boolean myDependsOnConditionals;
  private List<String> myLocal;
  private List<String> myExternal;
  private List<String> myGeneratedFiles;

  public GenerationRootDependencies(String rootId, String rootName, String rootHash, boolean dependsOnConditionals, List<String> local, List<String> external, List<String> files) {
    this.myRootId = rootId;
    this.myRootName = rootName;
    this.myHash = rootHash;
    this.myDependsOnConditionals = dependsOnConditionals;
    this.myLocal = local;
    this.myExternal = external;
    this.myGeneratedFiles = files;
  }

  public String getRootId() {
    return myRootId;
  }

  public String getRootName() {
    return myRootName;
  }

  public String getHash() {
    return myHash;
  }

  public boolean isDependsOnConditionals() {
    return myDependsOnConditionals;
  }

  public List<String> getLocal() {
    return Collections.unmodifiableList(myLocal);
  }

  public List<String> getExternal() {
    return Collections.unmodifiableList(myExternal);
  }

  public List<String> getFiles() {
    return Collections.unmodifiableList(myGeneratedFiles);
  }

  public void addGeneratedFile(String name) {
    myGeneratedFiles.add(name);
  }

  public void saveTo(Element element) {
    if(myRootId != null) {
      element.setAttribute(ATTR_ID, this.myRootId);
    }
    if(myRootName != null) {
      element.setAttribute(ATTR_NAME, this.myRootName);
    }
    if(myHash != null) {
      element.setAttribute(ATTR_HASH, this.myHash);
    }
    if(myDependsOnConditionals) {
      element.setAttribute(ATTR_DEPENDS_ON_CONDITIONALS, TRUE);
    }
    for(String id : myLocal) {
      Element node = new Element(NODE_DEPENDS_ON);
      node.setAttribute(ATTR_ROOT_ID, id);
      element.addContent(node);
    }
    for(String id : myExternal) {
      Element node = new Element(NODE_DEPENDS_ON);
      node.setAttribute(ATTR_MODEL_ID, id);
      element.addContent(node);
    }
    for(String file : myGeneratedFiles) {
      Element node = new Element(NODE_FILE);
      node.setAttribute(ATTR_NAME, file);
      element.addContent(node);
    }
  }

  public static String getValue(Element e, String attrId) {
    Attribute attr = e.getAttribute(attrId);
    return attr == null ? null : attr.getValue();
  }

  public static GenerationRootDependencies fromXml(Element element, boolean isCommon) {
    String rootId = isCommon ? null : getValue(element, ATTR_ID);
    String rootName = getValue(element, ATTR_NAME);
    String rootHash = getValue(element, ATTR_HASH);
    boolean dependsOnConditionals = "true".equals(getValue(element, ATTR_DEPENDS_ON_CONDITIONALS));
    List<String> local = new ArrayList<String>();
    List<String> external = new ArrayList<String>();
    List<String> files = new ArrayList<String>();
    for (Element e : ((List<Element>) element.getChildren(NODE_DEPENDS_ON))) {
      Attribute attr = e.getAttribute(ATTR_ROOT_ID);
      if(attr != null) {
        local.add(attr.getValue());
      } else if((attr = e.getAttribute(ATTR_MODEL_ID)) != null) {
        external.add(attr.getValue());
      }
    }
    for (Element e : ((List<Element>) element.getChildren(NODE_FILE))) {
      String v = getValue(e, ATTR_NAME);
      if(v != null) {
        files.add(v);
      }
    }
    return new GenerationRootDependencies(rootId, rootName, rootHash, dependsOnConditionals, local, external, files);
  }

  public static GenerationRootDependencies fromData(RootDependenciesBuilder rdb, List<String> generatedFiles) {
    final Collection<SNode> localNodes = rdb.getDependsOn();
    final Collection<SModelDescriptor> externalModels = rdb.getDependsOnModels();

    List<String> local = new ArrayList<String>(localNodes.size());
    for(SNode n : localNodes) {
      local.add(n.getId());
    }
    Collections.sort(local);

    List<String> external = new ArrayList<String>(externalModels.size());
    for(SModelDescriptor m : externalModels) {
      external.add(m.getSModelReference().toString());
    }
    Collections.sort(external);
    Collections.sort(generatedFiles);

    final SNode originalRoot = rdb.getOriginalRoot();
    return new GenerationRootDependencies(
      originalRoot != null ? originalRoot.getId() : null,
      originalRoot != null ? originalRoot.getName() : null,
      rdb.getHash(), rdb.isDependsOnConditionals(),
      local, external, generatedFiles);
  }
}
