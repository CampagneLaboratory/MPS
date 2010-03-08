package jetbrains.mps.debug.integration.runconfigs;

import com.intellij.execution.ExecutionException;
import com.intellij.execution.Executor;
import com.intellij.execution.configurations.*;
import com.intellij.execution.runners.ExecutionEnvironment;
import com.intellij.execution.runners.ProgramRunner;
import com.intellij.openapi.options.ConfigurationException;
import com.intellij.openapi.options.SettingsEditor;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.InvalidDataException;
import com.intellij.openapi.util.JDOMExternalizable;
import com.intellij.openapi.util.WriteExternalException;
import com.intellij.util.xmlb.XmlSerializer;
import jetbrains.mps.debug.integration.runconfigs.ui.RemoteSettingsEditor;
import jetbrains.mps.debug.runtime.settings.DebugConnectionSettings;
import jetbrains.mps.debug.runtime.settings.RemoteConnectionSettings;
import jetbrains.mps.plugins.pluginparts.runconfigs.BaseRunConfig;
import org.jdom.Element;
import org.jetbrains.annotations.NotNull;

import javax.swing.JComponent;

public class RemoteConfiguration extends BaseRunConfig {
  private final DebugConnectionSettings mySettings = new RemoteConnectionSettings();

  protected RemoteConfiguration(Project project, ConfigurationFactory factory, String name) {
    super(project, factory, name);
  }

  @Override
  public SettingsEditor<? extends RunConfiguration> getConfigurationEditor() {
    return new SettingsEditor<RemoteConfiguration>() {
      private RemoteSettingsEditor myRemoteSettingsEditor;
      @Override
      protected void resetEditorFrom(RemoteConfiguration s) {
        myRemoteSettingsEditor.reset(mySettings);
      }

      @Override
      protected void applyEditorTo(RemoteConfiguration s) throws ConfigurationException {
        myRemoteSettingsEditor.apply(mySettings);
      }

      @NotNull
      @Override
      protected JComponent createEditor() {
        myRemoteSettingsEditor = new RemoteSettingsEditor();
        return myRemoteSettingsEditor;
      }

      @Override
      protected void disposeEditor() {
      }
    };
  }

  public DebugConnectionSettings getSettings() {
    return mySettings;
  }

  public void writeExternal(Element e) throws WriteExternalException {
    e.addContent(XmlSerializer.serialize(this.mySettings));
  }

  public void readExternal(Element e) throws InvalidDataException {
    XmlSerializer.deserializeInto(this.mySettings, ((Element) e.getChildren().get(0)));
  }

  @Override
  public JDOMExternalizable createRunnerSettings(ConfigurationInfoProvider provider) {
    return null;
  }

  @Override
  public SettingsEditor<JDOMExternalizable> getRunnerSettingsEditor(ProgramRunner runner) {
    return null;
  }

  @Override
  public RunProfileState getState(@NotNull Executor executor, @NotNull ExecutionEnvironment env) throws ExecutionException {
    return new RemoteRunProfileState(env.getProject(), mySettings);
  }

  @Override
  public void checkConfiguration() throws RuntimeConfigurationException {
  }
}
