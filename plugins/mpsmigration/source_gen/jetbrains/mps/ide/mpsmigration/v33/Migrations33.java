package jetbrains.mps.ide.mpsmigration.v33;

/*Generated by MPS */

import com.intellij.openapi.components.ApplicationComponent;
import jetbrains.mps.migration.global.ProjectMigration;
import jetbrains.mps.migration.global.ProjectMigrationsRegistry;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;

public class Migrations33 implements ApplicationComponent {
  private final ProjectMigration[] myMigrations = new ProjectMigration[]{new CleanSourcesMigration(), new Persistence8Elimination(), new UpdateModuleUsedLang()};

  public void initComponent() {
    for (ProjectMigration pm : myMigrations) {
      ProjectMigrationsRegistry.getInstance().addProjectMigration(pm);
    }
  }

  public void disposeComponent() {
    for (ProjectMigration pm : myMigrations) {
      ProjectMigrationsRegistry.getInstance().removeProjectMigration(pm);
    }
  }

  @NonNls
  @NotNull
  public String getComponentName() {
    return "Migrations33";
  }
}
