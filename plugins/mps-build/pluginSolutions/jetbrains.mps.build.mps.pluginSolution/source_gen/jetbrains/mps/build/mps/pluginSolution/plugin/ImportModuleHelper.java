package jetbrains.mps.build.mps.pluginSolution.plugin;

/*Generated by MPS */

import org.jetbrains.mps.openapi.model.SNode;
import jetbrains.mps.vfs.IFile;
import jetbrains.mps.project.structure.modules.ModuleDescriptor;
import jetbrains.mps.build.mps.util.PathConverter;
import jetbrains.mps.project.structure.modules.LanguageDescriptor;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SConceptOperations;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SNodeOperations;
import jetbrains.mps.smodel.adapter.structure.MetaAdapterFactory;
import jetbrains.mps.project.structure.modules.SolutionDescriptor;
import jetbrains.mps.project.structure.modules.DevkitDescriptor;
import jetbrains.mps.internal.collections.runtime.ListSequence;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SLinkOperations;
import org.apache.log4j.Level;
import jetbrains.mps.lang.smodel.generator.smodelAdapter.SPropertyOperations;
import jetbrains.mps.build.mps.util.VisibleModules;
import jetbrains.mps.build.mps.util.ModuleLoader;
import jetbrains.mps.build.mps.util.ModuleChecker;
import jetbrains.mps.build.mps.util.ModuleLoaderException;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

public class ImportModuleHelper {
  private SNode project;
  private IFile moduleFile;
  private ModuleDescriptor moduleDescriptor;
  private PathConverter converter;
  private SNode created;
  public ImportModuleHelper(SNode project, PathConverter converter, IFile moduleFile, ModuleDescriptor moduleDescriptor) {
    this.project = project;
    this.moduleFile = moduleFile;
    this.moduleDescriptor = moduleDescriptor;
    this.converter = converter;
  }
  public void create() {
    try {
      if (moduleDescriptor instanceof LanguageDescriptor) {
        SNode lang = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f8L, "jetbrains.mps.build.mps.structure.BuildMps_Language")));
        initModule(lang);
        created = lang;
      } else if (moduleDescriptor instanceof SolutionDescriptor) {
        SNode solution = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x2c446791464290f7L, "jetbrains.mps.build.mps.structure.BuildMps_Solution")));
        initModule(solution);
        created = solution;
      } else if (moduleDescriptor instanceof DevkitDescriptor) {
        SNode devkit = SConceptOperations.createNewNode(SNodeOperations.asInstanceConcept(MetaAdapterFactory.getConcept(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d2060eL, "jetbrains.mps.build.mps.structure.BuildMps_DevKit")));
        initModule(devkit);
        created = devkit;
      }
      ListSequence.fromList(SLinkOperations.getChildren(project, MetaAdapterFactory.getContainmentLink(0x798100da4f0a421aL, 0xb99171f8c50ce5d2L, 0x4df58c6f18f84a13L, 0x668c6cfbafacf6f2L, "parts"))).addElement(created);
    } catch (PathConverter.PathConvertException ex) {
      // ignore 
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error(ex.getMessage());
      }
    }
  }
  private void initModule(SNode module) throws PathConverter.PathConvertException {
    SPropertyOperations.set(module, MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d333ebL, 0x742675d05378e98dL, "compact"), "" + (true));
    SPropertyOperations.set(module, MetaAdapterFactory.getProperty(0xceab519525ea4f22L, 0x9b92103b95ca8c0cL, 0x110396eaaa4L, 0x110396ec041L, "name"), moduleDescriptor.getModuleReference().getModuleName());
    SPropertyOperations.set(module, MetaAdapterFactory.getProperty(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d333ebL, 0x4780308f5d3868bL, "uuid"), moduleDescriptor.getModuleReference().getModuleId().toString());
    SLinkOperations.setTarget(module, MetaAdapterFactory.getContainmentLink(0xcf935df46994e9cL, 0xa132fa109541cba3L, 0x4780308f5d333ebL, 0x4780308f5d47f25L, "path"), ListSequence.fromList(converter.convertPath(moduleFile.getPath(), SNodeOperations.getModel(project))).first());
  }
  public void update(VisibleModules visible) {
    if ((created == null)) {
      return;
    }

    try {
      ModuleLoader.createModuleChecker(created, visible, converter).check(ModuleChecker.CheckType.LOAD_IMPORTANT_PART);
    } catch (ModuleLoaderException ex) {
      if (LOG.isEnabledFor(Level.ERROR)) {
        LOG.error(ex.getMessage());
      }
    }
  }
  protected static Logger LOG = LogManager.getLogger(ImportModuleHelper.class);
}
