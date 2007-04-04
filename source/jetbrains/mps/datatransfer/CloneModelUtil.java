package jetbrains.mps.datatransfer;

import jetbrains.mps.project.IModule;
import jetbrains.mps.projectLanguage.structure.ModelRoot;
import jetbrains.mps.refactoring.CopyUtil;
import jetbrains.mps.smodel.*;

import java.util.List;
import java.util.ArrayList;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 15.08.2005
 * Time: 16:27:28
 * To change this template use File | Settings | File Templates.
 */
public class CloneModelUtil {

  public static SModel cloneModel(SModel model, IOperationContext operationContext, SModelUID modelUID, ModelRoot modelRoot) {
    IModule module = operationContext.getModule();
    assert module != null;
    SModelDescriptor modelCopyDescriptor = module.createModel(modelUID, modelRoot);
    SModel modelCopy = modelCopyDescriptor.getSModel();
    return cloneModel(model, modelCopy, operationContext.getScope());
  }

  public static SModel cloneModel(SModel model, SModel modelCopy, IScope scope) {
    for (SNode root : CopyUtil.copy(model.getRoots(), modelCopy, scope)) {
      modelCopy.addRoot(root);
    }
    return modelCopy;
  }

}
