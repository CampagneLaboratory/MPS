/*
 * Copyright 2003-2009 JetBrains s.r.o.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.intellij.execution.impl;

import com.intellij.execution.*;
import com.intellij.execution.configurations.*;
import com.intellij.ide.util.PropertiesComponent;
import com.intellij.openapi.components.ProjectComponent;
import com.intellij.openapi.extensions.Extensions;
import com.intellij.openapi.project.Project;
import com.intellij.openapi.util.*;
import org.jdom.Element;
import org.jetbrains.annotations.NonNls;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

import java.util.*;

import jetbrains.mps.util.annotation.Patch;
import jetbrains.mps.util.annotation.PatchConstr;
import jetbrains.mps.runconfigs.RunConfigManager;


public class RunManagerImpl extends RunManagerEx implements JDOMExternalizable, ProjectComponent {
  private final Project myProject;

  private final Map<String, ConfigurationType> myTypesByName = new LinkedHashMap<String, ConfigurationType>();

  private Map<String, RunnerAndConfigurationSettingsImpl> myConfigurations =
      new LinkedHashMap<String, RunnerAndConfigurationSettingsImpl>(); // template configurations are not included here
  private final Map<Integer, Boolean> mySharedConfigurations = new TreeMap<Integer, Boolean>();
  private final Map<Integer, Map<String, Boolean>> myMethod2CompileBeforeRun = new TreeMap<Integer, Map<String, Boolean>>();

  private final Map<String, RunnerAndConfigurationSettingsImpl> myTemplateConfigurationsMap =
      new HashMap<String, RunnerAndConfigurationSettingsImpl>();
  private RunnerAndConfigurationSettingsImpl mySelectedConfiguration = null;
  private String mySelectedConfig = null;
  private RunnerAndConfigurationSettingsImpl myTempConfiguration;

  @NonNls
  private static final String TEMP_CONFIGURATION = "tempConfiguration";
  @NonNls
  protected static final String CONFIGURATION = "configuration";
  private ConfigurationType[] myTypes;
  private final RunManagerConfig myConfig;
  @NonNls
  protected static final String NAME_ATTR = "name";
  @NonNls
  protected static final String SELECTED_ATTR = "selected";
  @NonNls private static final String METHOD = "method";
  @NonNls private static final String OPTION = "option";
  @NonNls private static final String VALUE = "value";

  private List<Element> myUnloadedElements = null;
  private JDOMExternalizableStringList myOrder = new JDOMExternalizableStringList();

  @PatchConstr
  public RunManagerImpl(final Project project,
                        PropertiesComponent propertiesComponent,
                        RunConfigManager runManager) {
    myConfig = new RunManagerConfig(propertiesComponent, this);
    myProject = project;

    runManager.firstInit();

    initConfigurationTypes();
  }

  @Patch
  // separate method needed for tests
  public final void initializeConfigurationTypes(@NotNull final ConfigurationType[] factories) {
    Arrays.sort(factories, new Comparator<ConfigurationType>() {
      public int compare(final ConfigurationType o1, final ConfigurationType o2) {
        return o1.getDisplayName().compareTo(o2.getDisplayName());
      }
    });
    myTypes = factories;
    for (final ConfigurationType type : factories) {
      myTypesByName.put(type.getId(), type);
    }
  }

  private void initConfigurationTypes() {
    final ConfigurationType[] configurationTypes = Extensions.getExtensions(ConfigurationType.CONFIGURATION_TYPE_EP);
    initializeConfigurationTypes(configurationTypes);
  }

  public void disposeComponent() {
  }

  public void initComponent() {
  }

  public void projectOpened() {
  }

  public RunnerAndConfigurationSettingsImpl createConfiguration(final String name, final ConfigurationFactory factory) {
    return createConfiguration(doCreateConfiguration(name, factory), factory);
  }

  protected RunConfiguration doCreateConfiguration(String name, ConfigurationFactory factory) {
    return factory.createConfiguration(name, getConfigurationTemplate(factory).getConfiguration());
  }

  public RunnerAndConfigurationSettingsImpl createConfiguration(final RunConfiguration runConfiguration,
                                                                final ConfigurationFactory factory) {
    RunnerAndConfigurationSettingsImpl template = getConfigurationTemplate(factory);
    setCompileMethodBeforeRun(runConfiguration, getStepsBeforeLaunch(template.getConfiguration()));
    shareConfiguration(runConfiguration, isConfigurationShared(template));
    createStepsBeforeRun(template, runConfiguration);
    RunnerAndConfigurationSettingsImpl settings = new RunnerAndConfigurationSettingsImpl(this, runConfiguration, false);
    settings.importRunnerAndConfigurationSettings(template);
    return settings;
  }

  public void createStepsBeforeRun(final RunnerAndConfigurationSettingsImpl template, final RunConfiguration configuration) {
    final RunConfiguration templateConfiguration = template.getConfiguration();
    for (final StepsBeforeRunProvider provider : Extensions.getExtensions(StepsBeforeRunProvider.EXTENSION_POINT_NAME, myProject)) {
      final Boolean enabled = getStepsBeforeLaunch(templateConfiguration).get(provider.getStepName());
      if (enabled != null && enabled.booleanValue()) {
        provider.copyTaskData(templateConfiguration, configuration);
      }
    }
  }

  public void projectClosed() {
    myTemplateConfigurationsMap.clear();
  }

  public RunManagerConfig getConfig() {
    return myConfig;
  }

  public ConfigurationType[] getConfigurationFactories() {
    return myTypes.clone();
  }

  /**
   * Template configuration is not included
   */
  public RunConfiguration[] getConfigurations(@NotNull final ConfigurationType type) {

    final List<RunConfiguration> array = new ArrayList<RunConfiguration>();
    for (RunnerAndConfigurationSettingsImpl myConfiguration : getSortedConfigurations()) {
      final RunConfiguration configuration = myConfiguration.getConfiguration();
      final ConfigurationType configurationType = configuration.getType();
      if (type.getId().equals(configurationType.getId())) {
        array.add(configuration);
      }
    }
    return array.toArray(new RunConfiguration[array.size()]);
  }

  public RunConfiguration[] getAllConfigurations() {
    RunConfiguration[] result = new RunConfiguration[myConfigurations.size()];
    int i = 0;
    for (Iterator<RunnerAndConfigurationSettingsImpl> iterator = getSortedConfigurations().iterator(); iterator.hasNext(); i++) {
      RunnerAndConfigurationSettings settings = iterator.next();
      result[i] = settings.getConfiguration();
    }

    return result;
  }

  @Nullable
  public RunnerAndConfigurationSettingsImpl getSettings(RunConfiguration configuration) {
    for (RunnerAndConfigurationSettingsImpl settings : getSortedConfigurations()) {
      if (settings.getConfiguration() == configuration) return settings;
    }
    return null;
  }

  /**
   * Template configuration is not included
   */
  public RunnerAndConfigurationSettingsImpl[] getConfigurationSettings(@NotNull final ConfigurationType type) {

    final LinkedHashSet<RunnerAndConfigurationSettingsImpl> array = new LinkedHashSet<RunnerAndConfigurationSettingsImpl>();
    for (RunnerAndConfigurationSettingsImpl configuration : getSortedConfigurations()) {
      final ConfigurationType configurationType = configuration.getType();
      if (configurationType != null && type.getId().equals(configurationType.getId())) {
        array.add(configuration);
      }
    }
    return array.toArray(new RunnerAndConfigurationSettingsImpl[array.size()]);
  }

  public RunnerAndConfigurationSettingsImpl getConfigurationTemplate(final ConfigurationFactory factory) {
    RunnerAndConfigurationSettingsImpl template = myTemplateConfigurationsMap.get(factory.getType().getId() + "." + factory.getName());
    if (template == null) {
      template = new RunnerAndConfigurationSettingsImpl(this, factory.createTemplateConfiguration(myProject, this), true);
      myTemplateConfigurationsMap.put(factory.getType().getId() + "." + factory.getName(), template);
    }
    return template;
  }

  public void addConfiguration(RunnerAndConfigurationSettingsImpl settings, boolean shared, Map<String, Boolean> method) {
    final String configName = getUniqueName(settings.getConfiguration());
    myConfigurations.put(configName, settings);

    int id = settings.getConfiguration().getUniqueID();
    mySharedConfigurations.put(id, shared);
    myMethod2CompileBeforeRun.put(id, method);
  }

  public static String getUniqueName(final RunConfiguration settings) {
    return settings.getType().getDisplayName() + "." + settings.getName();
  }

  public RunConfiguration getConfigurationByUniqueID(int id) {
    for (RunConfiguration each : getAllConfigurations()) {
      if (each.getUniqueID() == id) {
        return each;
      }
    }
    return null;
  }

  public RunConfiguration getConfigurationByUniqueName(String name) {
    for (RunConfiguration each : getAllConfigurations()) {
      if (getUniqueName(each).equals(name)) {
        return each;
      }
    }
    return null;
  }

  public void removeConfigurations(@NotNull final ConfigurationType type) {

    //for (Iterator<Pair<RunConfiguration, JavaProgramRunner>> it = myRunnerPerConfigurationSettings.keySet().iterator(); it.hasNext();) {
    //  final Pair<RunConfiguration, JavaProgramRunner> pair = it.next();
    //  if (type.equals(pair.getFirst().getType())) {
    //    it.remove();
    //  }
    //}
    for (Iterator<RunnerAndConfigurationSettingsImpl> it = getSortedConfigurations().iterator(); it.hasNext();) {
      final RunnerAndConfigurationSettings configuration = it.next();
      final ConfigurationType configurationType = configuration.getType();
      if (configurationType != null && type.getId().equals(configurationType.getId())) {
        it.remove();
      }
    }

    if (myTempConfiguration != null) {
      final ConfigurationType tempType = myTempConfiguration.getType();
      if (tempType != null && type.getId().equals(tempType.getId())) {
        myTempConfiguration = null;
      }
    }
  }

  @Patch
  private Collection<RunnerAndConfigurationSettingsImpl> getSortedConfigurations() {
    if (myOrder != null && !myOrder.isEmpty()) { //compatibility
      final HashMap<String, RunnerAndConfigurationSettingsImpl> settings =
          new HashMap<String, RunnerAndConfigurationSettingsImpl>(myConfigurations); //sort shared and local configurations
      myConfigurations.clear();
      final List<String> order = new ArrayList<String>(settings.keySet());
      Collections.sort(order, new Comparator<String>() {
        public int compare(final String o1, final String o2) {
          return myOrder.indexOf(o1) - myOrder.indexOf(o2);
        }
      });
      for (String configName : order) {
        myConfigurations.put(configName, settings.get(configName));
      }
      //myOrder = null;
    }
    return myConfigurations.values();
  }


  public RunnerAndConfigurationSettingsImpl getSelectedConfiguration() {
    if (mySelectedConfiguration == null && mySelectedConfig != null) {
      mySelectedConfiguration = myConfigurations.get(mySelectedConfig);
      mySelectedConfig = null;
    }
    return mySelectedConfiguration;
  }

  public void setSelectedConfiguration(final RunnerAndConfigurationSettingsImpl configuration) {
    mySelectedConfiguration = configuration;
  }

  public static boolean canRunConfiguration(@NotNull final RunnerAndConfigurationSettingsImpl configuration, final @NotNull Executor executor) {
    try {
      configuration.checkSettings(executor);
    }
    catch (RuntimeConfigurationError er) {
      return false;
    }
    catch (RuntimeConfigurationException e) {
      return true;
    }
    return true;
  }

  @Patch
  public void writeExternal(@NotNull final Element parentNode) throws WriteExternalException {
    if (myTempConfiguration != null) {
      addConfigurationElement(parentNode, myTempConfiguration, TEMP_CONFIGURATION);
    }

    for (final RunnerAndConfigurationSettingsImpl runnerAndConfigurationSettings : myTemplateConfigurationsMap.values()) {
      addConfigurationElement(parentNode, runnerAndConfigurationSettings);
    }

    final Collection<RunnerAndConfigurationSettingsImpl> configurations = getStableConfigurations().values();
    for (RunnerAndConfigurationSettingsImpl configuration : configurations) {
      if (!isConfigurationShared(configuration)) {
        addConfigurationElement(parentNode, configuration);
      }
    }

    final JDOMExternalizableStringList order = new JDOMExternalizableStringList();
    order.addAll(myConfigurations.keySet()); //temp && stable configurations
    order.writeExternal(parentNode);

    getSelectedConfiguration();
    if (mySelectedConfiguration != null) {
      parentNode.setAttribute(SELECTED_ATTR, getUniqueName(mySelectedConfiguration.getConfiguration()));
    }

    if (myUnloadedElements != null) {
      for (Element unloadedElement : myUnloadedElements) {
        parentNode.addContent((Element)unloadedElement.clone());
      }
    }
  }

  public void addConfigurationElement(final Element parentNode, RunnerAndConfigurationSettingsImpl template) throws WriteExternalException {
    addConfigurationElement(parentNode, template, CONFIGURATION);
  }

  private void addConfigurationElement(final Element parentNode, RunnerAndConfigurationSettingsImpl template, String elementType)
      throws WriteExternalException {
    final Element configurationElement = new Element(elementType);
    parentNode.addContent(configurationElement);
    template.writeExternal(configurationElement);
    final Map<String, Boolean> methods = myMethod2CompileBeforeRun.get(template.getConfiguration().getUniqueID());
    if (methods != null) {
      Element methodsElement = new Element(METHOD);
      for (String key : methods.keySet()) {
        final Element child = new Element(OPTION);
        child.setAttribute(NAME_ATTR, key);
        child.setAttribute(VALUE, String.valueOf(methods.get(key)));
        methodsElement.addContent(child);
      }
      configurationElement.addContent(methodsElement);
    }
  }

  public void readExternal(final Element parentNode) throws InvalidDataException {
    clear();

    final List children = parentNode.getChildren();
    for (final Object aChildren : children) {
      final Element element = (Element)aChildren;
      if (loadConfiguration(element, false) == null && Comparing.strEqual(element.getName(), CONFIGURATION)) {
        if (myUnloadedElements == null) myUnloadedElements = new ArrayList<Element>(2);
        myUnloadedElements.add(element);
      }
    }

    myOrder.readExternal(parentNode);

    mySelectedConfig = parentNode.getAttributeValue(SELECTED_ATTR);
  }

  public void clear() {
    myConfigurations.clear();
    myUnloadedElements = null;
    myMethod2CompileBeforeRun.clear();
    mySharedConfigurations.clear();
  }

  @Nullable
  public RunnerAndConfigurationSettingsImpl loadConfiguration(final Element element, boolean isShared) throws InvalidDataException {
    RunnerAndConfigurationSettingsImpl configuration = new RunnerAndConfigurationSettingsImpl(this);
    configuration.readExternal(element);
    ConfigurationFactory factory = configuration.getFactory();
    if (factory == null) {
      return null;
    }

    final Element methodsElement = element.getChild(METHOD);
    if (configuration.isTemplate()) {
      myTemplateConfigurationsMap.put(factory.getType().getId() + "." + factory.getName(), configuration);
      final Map<String, Boolean> map = updateStepsBeforeRun(methodsElement);
      setCompileMethodBeforeRun(configuration.getConfiguration(), map);
    }
    else {
      if (Boolean.valueOf(element.getAttributeValue(SELECTED_ATTR)).booleanValue()) { //to support old style
        mySelectedConfiguration = configuration;
      }
      if (TEMP_CONFIGURATION.equals(element.getName())) {
        myTempConfiguration = configuration;
      }
      final Map<String, Boolean> map = updateStepsBeforeRun(methodsElement);
      addConfiguration(configuration, isShared, map);
    }
    return configuration;
  }

  @Nullable
  private static Map<String, Boolean> updateStepsBeforeRun(final Element child) {
    if (child == null) {
      return null;
    }
    final List list = child.getChildren(OPTION);
    final Map<String, Boolean> map = new HashMap<String, Boolean>();
    for (Object o : list) {
      Element methodElement = (Element)o;
      final String methodName = methodElement.getAttributeValue(NAME_ATTR);
      final Boolean enabled = Boolean.valueOf(methodElement.getAttributeValue(VALUE));
      map.put(methodName, enabled);
    }
    return map;
  }


  @Nullable
  public ConfigurationFactory getFactory(final String typeName, String factoryName) {
    final ConfigurationType type = myTypesByName.get(typeName);
    if (factoryName == null) {
      factoryName = type != null ? type.getConfigurationFactories()[0].getName() : null;
    }
    return findFactoryOfTypeNameByName(typeName, factoryName);
  }


  @Nullable
  private ConfigurationFactory findFactoryOfTypeNameByName(final String typeName, final String factoryName) {
    return findFactoryOfTypeByName(myTypesByName.get(typeName), factoryName);
  }

  @Nullable
  private static ConfigurationFactory findFactoryOfTypeByName(final ConfigurationType type, final String factoryName) {
    if (type == null || factoryName == null) return null;
    final ConfigurationFactory[] factories = type.getConfigurationFactories();
    for (final ConfigurationFactory factory : factories) {
      if (factoryName.equals(factory.getName())) return factory;
    }
    return null;
  }

  @NotNull
  public String getComponentName() {
    return "RunManager";
  }

  public void setTemporaryConfiguration(@NotNull final RunnerAndConfigurationSettingsImpl tempConfiguration) {
    myConfigurations = getStableConfigurations();
    myTempConfiguration = tempConfiguration;
    addConfiguration(myTempConfiguration, isConfigurationShared(tempConfiguration),
                     getStepsBeforeLaunch(tempConfiguration.getConfiguration()));
    setActiveConfiguration(myTempConfiguration);
  }

  public void setActiveConfiguration(final RunnerAndConfigurationSettingsImpl configuration) {
    setSelectedConfiguration(configuration);
  }

  public Map<String, RunnerAndConfigurationSettingsImpl> getStableConfigurations() {
    final Map<String, RunnerAndConfigurationSettingsImpl> result =
        new LinkedHashMap<String, RunnerAndConfigurationSettingsImpl>(myConfigurations);
    if (myTempConfiguration != null) {
      result.remove(getUniqueName(myTempConfiguration.getConfiguration()));
    }
    return result;
  }

  public boolean isTemporary(final RunConfiguration configuration) {
    return myTempConfiguration != null && myTempConfiguration.getConfiguration() == configuration;
  }

  public boolean isTemporary(RunnerAndConfigurationSettingsImpl settings) {
    return settings.equals(myTempConfiguration);
  }

  @Nullable
  public RunConfiguration getTempConfiguration() {
    return myTempConfiguration == null ? null : myTempConfiguration.getConfiguration();
  }

  public void makeStable(final RunConfiguration configuration) {
    if (isTemporary(configuration)) {
      myTempConfiguration = null;
    }
  }

  public RunnerAndConfigurationSettings createRunConfiguration(String name, ConfigurationFactory type) {
    return createConfiguration(name, type);
  }


  public boolean isConfigurationShared(final RunnerAndConfigurationSettingsImpl settings) {
    Boolean shared = mySharedConfigurations.get(settings.getConfiguration().getUniqueID());
    if (shared == null) {
      final RunnerAndConfigurationSettingsImpl template = getConfigurationTemplate(settings.getFactory());
      shared = mySharedConfigurations.get(template.getConfiguration().getUniqueID());
    }
    return shared != null && shared.booleanValue();
  }

  public Map<String, Boolean> getStepsBeforeLaunch(final RunConfiguration settings) {
    Map<String, Boolean> method = myMethod2CompileBeforeRun.get(settings.getUniqueID());
    if (method == null) {
      final RunnerAndConfigurationSettingsImpl template = getConfigurationTemplate(settings.getFactory());
      method = myMethod2CompileBeforeRun.get(template.getConfiguration().getUniqueID());
    }
    if (method == null) {
      method = new HashMap<String, Boolean>();
      for (StepsBeforeRunProvider provider : Extensions.getExtensions(StepsBeforeRunProvider.EXTENSION_POINT_NAME, myProject)) {
        if (provider.isEnabledByDefault()) {
          method.put(provider.getStepName(), Boolean.TRUE);
        }
      }
    }
    return new HashMap<String, Boolean>(method);
  }

  public void shareConfiguration(final RunConfiguration runConfiguration, final boolean shareConfiguration) {
    mySharedConfigurations.put(runConfiguration.getUniqueID(), shareConfiguration);
  }

  public void setCompileMethodBeforeRun(final RunConfiguration runConfiguration, Map<String, Boolean> method) {
    myMethod2CompileBeforeRun.put(runConfiguration.getUniqueID(), method);
  }

  public void addConfiguration(final RunnerAndConfigurationSettingsImpl settings, final boolean isShared) {
    final HashMap<String, Boolean> map = new HashMap<String, Boolean>();
    map.put(RunManagerConfig.MAKE, Boolean.TRUE);
    addConfiguration(settings, isShared, map);
  }

  public static RunManagerImpl getInstanceImpl(final Project project) {
    return (RunManagerImpl)RunManager.getInstance(project);
  }

  public void removeNotExistingSharedConfigurations(final Set<String> existing) {
    for (Iterator<Map.Entry<String, RunnerAndConfigurationSettingsImpl>> it = myConfigurations.entrySet().iterator(); it.hasNext();) {
      Map.Entry<String, RunnerAndConfigurationSettingsImpl> c = it.next();
      final RunnerAndConfigurationSettingsImpl o = c.getValue();
      if (!o.isTemplate() && isConfigurationShared(o) && !existing.contains(getUniqueName(o.getConfiguration()))) {
        it.remove();
      }
    }
  }
}

