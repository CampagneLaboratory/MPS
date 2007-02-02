package jetbrains.mps.textGen;

import jetbrains.mps.logging.Logger;
import jetbrains.mps.reloading.ClassLoaderManager;
import jetbrains.mps.smodel.SNode;

/**
 * User: Dmitriev.
 * Date: Dec 22, 2003
 */
public class TextGenManager {
  private static final Logger LOG = Logger.getLogger(TextGenManager.class);
  private static TextGenManager myInstance;


  public static void reset() {
    myInstance = null;
  }

  public static TextGenManager instance() {
    if(myInstance == null) {
      myInstance = new TextGenManager();
    }
    return myInstance;
  }

  public TextGenerationResult generateText(SNode node) {
    TextGenBuffer buffer = new TextGenBuffer();
    appendNodeText(buffer, node);
    return new TextGenerationResult(buffer.getText(), buffer.hasErrors());
  }

  public boolean canGenerateTextFor(SNode node) {
    return !(loadNodeTextGen(node) instanceof DefaultTextGen);
  }

  protected void appendNodeText(TextGenBuffer buffer, SNode node) {
    if(node == null) {
      buffer.append("???");
      buffer.foundError();
      return;
    }

    SNodeTextGen nodeTextGen = loadNodeTextGen(node);
    LOG.assertLog(nodeTextGen != null, "Couldn't find text generator for " + node.getDebugText());
    
    assert nodeTextGen != null;

    nodeTextGen.setBuffer(buffer);
    nodeTextGen.doGenerateText(node.getAdapter());
  }

  private SNodeTextGen loadNodeTextGen(SNode node) {
    Class<? extends SNode> aClass = node.getClass();

    while (aClass != null) {
      String className = aClass.getName();
      className = className.substring(className.lastIndexOf('.') + 1);
      String packageName = node.getClass().getPackage().getName();
      String textgenClassname = packageName + ".textGen." + className + "_TextGen";

      try {
        Class textgenClass = Class.forName(textgenClassname, true, ClassLoaderManager.getInstance().getClassLoader());
        return (SNodeTextGen) textgenClass.newInstance();
      } catch (ClassNotFoundException e) {
        //this is ok
      } catch (InstantiationException e) {
        LOG.error(e);
      } catch (IllegalAccessException e) {
        LOG.error(e);
      }
      aClass = (Class<? extends SNode>) aClass.getSuperclass();
    }
    //test
//    loadNodeTextGen(node);
    return new DefaultTextGen();
  }

  public static class TextGenerationResult {
    private String myText;
    private boolean myContainErrors;

    private TextGenerationResult(String text, boolean containErrors) {
      myText = text;
      myContainErrors = containErrors;
    }


    public String getText() {
      return myText;
    }

    public boolean hasErrors() {
      return myContainErrors;
    }
  }
}
