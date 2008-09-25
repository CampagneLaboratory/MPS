package jetbrains.mps.datatransfer;


import java.awt.datatransfer.Transferable;
import java.awt.datatransfer.DataFlavor;
import java.awt.datatransfer.UnsupportedFlavorException;
import java.io.IOException;
import java.io.StringReader;
import java.util.*;

import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SModelReference;
import jetbrains.mps.project.ModuleReference;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.annotations.NotNull;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 22.07.2005
 * Time: 20:10:01
 * To change this template use File | Settings | File Templates.
 */
public class SNodeTransferable implements Transferable {

  private static final int NODE = 0;
  private static final int STRING = 1;
  private static final int PLAIN_TEXT = 2;

  private static final DataFlavor[] flavors = {SModelDataFlavor.sNode,
    DataFlavor.stringFlavor,
    DataFlavor.plainTextFlavor // deprecated
  };

  // ---- node data ----
  private List<SNode> mySNodes = new ArrayList<SNode>();
  private SModel myModelProperties;
  private Set<SModelReference> myNecessaryImports = new HashSet<SModelReference>();
  private Set<ModuleReference> myNecessaryLanguages = new HashSet<ModuleReference>();
  private Set<ModuleReference> myNecessaryDevKits = new HashSet<ModuleReference>();
  private String myText = "";

  public DataFlavor[] getTransferDataFlavors() {
    return (DataFlavor[]) flavors.clone();
  }

  public SNodeTransferable(List<SNode> nodes, String text) {
    saveNodes(nodes, null);
    myText = text;
  }

  public SNodeTransferable(List<SNode> nodes) {
    saveNodes(nodes, null);
  }

  public SNodeTransferable(@NotNull List<SNode> nodes, String text, Map<SNode, Set<SNode>> nodesAndAttributes) {
    saveNodes(nodes, nodesAndAttributes);
    myText = text;
  }

  public SNodeTransferable(SNode node) {
    List<SNode> list = new ArrayList<SNode>();
    list.add(node);
    saveNodes(list, null);
  }

  public boolean isDataFlavorSupported(DataFlavor flavor) {
    for (DataFlavor flavor1 : flavors) {
      if (flavor.equals(flavor1)) {
        return true;
      }
    }
    return false;
  }

   public Object getTransferData(DataFlavor flavor) throws UnsupportedFlavorException, IOException {
    if (flavor.equals(flavors[NODE])) {
      return this;
    } else if (flavor.equals(flavors[STRING])) {
      return getAsString();
    } else if (flavor.equals(flavors[PLAIN_TEXT])) {
      return new StringReader(getAsString());
    } else {
      throw new UnsupportedFlavorException(flavor);
    }
  }

  private String getAsString() {
    return myText;
  }

  private void saveNodes(@NotNull List<SNode> nodes, @Nullable Map<SNode, Set<SNode>> nodesAndAttributes) {
    mySNodes.clear();
    PasteNodeData pasteNodeData = CopyPasteUtil.createNodeDataIn(nodes, nodesAndAttributes);
    mySNodes.addAll(pasteNodeData.getNodes());
    myModelProperties = pasteNodeData.getModelProperties();
    myNecessaryImports = pasteNodeData.getNecessaryImports();
    myNecessaryLanguages = pasteNodeData.getNecessaryLanguages();
    myNecessaryDevKits = pasteNodeData.getNecessaryDevKits();
  }


  public PasteNodeData createNodeData(SModel sModel) {
    Set<ModuleReference> necessaryLanguages = myNecessaryLanguages;
    Set<SModelReference> necessaryImports = myNecessaryImports;
    Set<ModuleReference> necessaryDevKits = myNecessaryDevKits;
    if (necessaryImports == null) necessaryImports = new HashSet<SModelReference>();
    if (necessaryLanguages == null) necessaryLanguages = new HashSet<ModuleReference>();
    return CopyPasteUtil.createNodeDataOut(mySNodes, sModel, myModelProperties,
            new HashSet<ModuleReference>(necessaryLanguages),
            new HashSet<SModelReference>(necessaryImports),
            new HashSet<ModuleReference>(necessaryDevKits));
  }


  public boolean containsNodes() {
    return (!mySNodes.isEmpty());
  }



}

