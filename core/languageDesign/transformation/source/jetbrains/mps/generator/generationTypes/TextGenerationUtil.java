package jetbrains.mps.generator.generationTypes;

import jetbrains.mps.smodel.*;
import jetbrains.mps.textGen.TextGenManager;
import jetbrains.mps.textPresentation.TextPresentationManager;
import jetbrains.mps.compiler.JavaCompiler;
import jetbrains.mps.generator.JavaNameUtil;
import jetbrains.mps.baseLanguage.structure.ClassConcept;
import jetbrains.mps.baseLanguage.structure.Interface;
import jetbrains.mps.reloading.CompositeClassPathItem;
import jetbrains.mps.reloading.CommonPaths;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import com.intellij.openapi.progress.ProgressIndicator;

public class TextGenerationUtil {
  public static TextGenerationResult generateText(IOperationContext context, SNode node) {
    String nodeText;
    boolean containsErrors = false;
    if (TextGenManager.instance().canGenerateTextFor(node)) {
      TextGenManager.TextGenerationResult generationResult = TextGenManager.instance().generateText(context, node);
      containsErrors = generationResult.hasErrors();
      nodeText = generationResult.getText();
    } else {
      nodeText = TextPresentationManager.generateTextPresentation(node);
    }
    return new TextGenerationResult(nodeText, containsErrors);
  }

  public static JavaCompiler compile(IOperationContext context, SModel targetModel, ProgressIndicator progress) {
    CompositeClassPathItem item = new CompositeClassPathItem();
    item.add(context.getModule().getModuleWithDependenciesClassPathItem());
    item.add(CommonPaths.getMPSPath());
    item.add(CommonPaths.getJDK());

    JavaCompiler compiler = new JavaCompiler(item);

    for (SNode root : targetModel.getRoots()) {
      INodeAdapter outputNode = BaseAdapter.fromNode(root);
      if (outputNode instanceof ClassConcept || outputNode instanceof Interface) {
        compiler.addSource(JavaNameUtil.packageNameForModelUID(targetModel.getUID()) + "." + root.getName(), generateText(context, root).getText()
        );
      }
    }
    
    progress.setText2("Compiling...");
    compiler.compile();

    for (org.eclipse.jdt.internal.compiler.CompilationResult cr : compiler.getCompilationResults()) {
      CategorizedProblem[] categorizedProblems = cr.getErrors();
      if (categorizedProblems != null && categorizedProblems.length > 0) {
        System.err.println("Warning. Compilation failed.");
      }
    }

    progress.setText2("Compilation finished.");
    return compiler;
  }

  public static class TextGenerationResult {
    private boolean myContainsErrors;
    private String myText;

    public TextGenerationResult(String text, boolean containsErrors) {
      myContainsErrors = containsErrors;
      myText = text;
    }


    public boolean hasErrors() {
      return myContainsErrors;
    }

    public String getText() {
      return myText;
    }
  }

}
                                                            