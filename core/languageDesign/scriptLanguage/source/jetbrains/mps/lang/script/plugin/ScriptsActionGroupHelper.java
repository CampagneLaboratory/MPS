package jetbrains.mps.lang.script.plugin;

import jetbrains.mps.lang.script.structure.MigrationScript;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.SModelDescriptor;
import jetbrains.mps.workbench.action.BaseGroup;

import java.util.*;


public class ScriptsActionGroupHelper {
  public static List<MigrationScript> getMigrationScripts(List<Language> languages) {
    List<MigrationScript> migrationScripts = new ArrayList<MigrationScript>();
    for (Language language : languages) {
      SModelDescriptor scriptsModel = language.getScriptsModelDescriptor();
      if (scriptsModel == null) continue;
      migrationScripts.addAll(scriptsModel.getSModel().getRootsAdapters(MigrationScript.class));
    }
    return migrationScripts;
  }

  public static void populateByCategoryGroup(List<MigrationScript> migrationScripts, BaseGroup ownerGroup, boolean applyToSelection) {
    Map<String, List<MigrationScript>> byCategory = new HashMap<String, List<MigrationScript>>();
    for (MigrationScript migrationScript : migrationScripts) {
      String cat = migrationScript.getCategory();
      if (cat == null) {
        cat = "<uncategorized>";
      }
      if (!byCategory.containsKey(cat)) {
        byCategory.put(cat, new ArrayList<MigrationScript>());
      }
      byCategory.get(cat).add(migrationScript);
    }

    Set<String> sorted = new TreeSet<String>(new Comparator<String>() {
      public int compare(String o1, String o2) {
        if ("<uncategorized>".equals(o1)) return 1;
        if ("<uncategorized>".equals(o2)) return -1;
        return o1.compareTo(o2);
      }
    });
    sorted.addAll(byCategory.keySet());
    for (String cat : sorted) {
      BaseGroup categoryGroup = new BaseGroup(cat, "");
      for (MigrationScript script : byCategory.get(cat)) {
        categoryGroup.add(new RunMigrationScriptAction(script,
          makeScriptActionName(null, script.getTitle(), script.getMigrationFromBuild()), applyToSelection));
      }
      categoryGroup.setPopup(true);
      ownerGroup.add(categoryGroup);
    }
  }

  public static void populateByBuildGroup(List<MigrationScript> migrationScripts, BaseGroup ownerGroup, boolean applyToSelection) {
    Map<String, List<MigrationScript>> byBuild = new HashMap<String, List<MigrationScript>>();
    for (MigrationScript migrationScript : migrationScripts) {
      String build = migrationScript.getMigrationFromBuild();
      if (build == null) {
        build = "<unspecified>";
      }
      if (!byBuild.containsKey(build)) {
        byBuild.put(build, new ArrayList<MigrationScript>());
      }
      byBuild.get(build).add(migrationScript);
    }

    Set<String> sorted = new TreeSet<String>(byBuild.keySet());
    for (String build : sorted) {
      BaseGroup categoryGroup = new BaseGroup("migrate from b." + build, "");
      for (MigrationScript script : byBuild.get(build)) {
        categoryGroup.add(new RunMigrationScriptAction(script,
          makeScriptActionName(script.getCategory(), script.getTitle(), null), applyToSelection));
      }
      categoryGroup.setPopup(true);
      ownerGroup.add(categoryGroup);
    }
  }

  public static void populateByLanguageGroup(Language language, BaseGroup ownerGroup, boolean applyToSelection) {
    SModelDescriptor scriptsModel = language.getScriptsModelDescriptor();
    if (scriptsModel == null) return;
    List<MigrationScript> migrationScripts = scriptsModel.getSModel().getRootsAdapters(MigrationScript.class);
    if (migrationScripts.isEmpty()) return;
    BaseGroup languageScriptsGroup = new BaseGroup(language.getNamespace(), "");
    for (MigrationScript script : migrationScripts) {
      languageScriptsGroup.add(new RunMigrationScriptAction(script,
        makeScriptActionName(script.getCategory(), script.getTitle(), script.getMigrationFromBuild()), applyToSelection));
    }
    if (!(migrationScripts.isEmpty())) {
      languageScriptsGroup.addSeparator();
    }

    languageScriptsGroup.setPopup(true);
    ownerGroup.add(languageScriptsGroup);
  }

  public static String makeScriptActionName(String category, String title, String build) {
    StringBuilder sb = new StringBuilder();
    if (category != null) {
      sb.append(category).append(": ");
    }
    sb.append(title);
    if (build != null) {
      sb.append(" [migrate from b.").append(build).append("]");
    }
    return sb.toString();
  }
}
