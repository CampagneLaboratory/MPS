/*
 * Copyright 2003-2010 JetBrains s.r.o.
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
package jetbrains.mps.generator;

import jetbrains.mps.ide.projectPane.Icons;
import org.jetbrains.annotations.Nullable;

import javax.swing.*;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;
import javax.swing.text.DefaultFormatter;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.text.ParseException;

class GenerationSettingsPreferencesPage {
  private JPanel myPage;
  private JCheckBox mySaveTransientModelsCheckBox = new JCheckBox("Save transient models on generation");
  private JCheckBox myGenerateRequirementsCheckBox = new JCheckBox("Checking if regeneration of other models is required");
  private JCheckBox myCheckModelsBeforeGenerationCheckBox = new JCheckBox("Check models for errors before generation");
  private JCheckBox myStrictMode = new JCheckBox("Strict mode");
  private JCheckBox myUseNewGenerator = new JCheckBox("Generate in parallel.");
  private JFormattedTextField myNumberOfParallelThreads = new JFormattedTextField(new RangeDecimalFormatter(2,32));

  private JRadioButton myTraceNone = new JRadioButton("None");
  private JRadioButton myTraceSteps = new JRadioButton("Generation steps only");
  private JRadioButton myTraceLanguages = new JRadioButton("Time spent in language generators");
  private JRadioButton myTraceTypes = new JRadioButton("Time spent in types calculation");

  private JCheckBox myShowInfo = new JCheckBox("Show informational messages");
  private JCheckBox myShowWarnings = new JCheckBox("Show warnings");
  private JCheckBox myKeepModelsWithWarnings = new JCheckBox("Keep transient models with warnings");
  private JCheckBox myLimitNumberOfModels = new JCheckBox("Keep no more than");
  private JFormattedTextField myNumberOfModelsToKeep = new JFormattedTextField(new RangeDecimalFormatter(1,128));

  private GenerationSettings myGenerationSettings;

  public GenerationSettingsPreferencesPage(GenerationSettings settings) {
    myGenerationSettings = settings;
    update();
    myPage = createComponent();
  }

  public String getName() {
    return "Generation";
  }

  public Icon getIcon() {
    return Icons.GENERATORS_ICON;
  }

  public JComponent getComponent() {
    return myPage;
  }

  public JPanel createComponent() {
    JPanel myMainPanel = new JPanel(new GridBagLayout());
    GridBagConstraints c = new GridBagConstraints();
    c.gridx = 0;
    c.weightx = 1;
    c.fill = GridBagConstraints.BOTH;

    c.gridy = 0;
    myMainPanel.add(createOptionsPanel(), c);

    c.gridy = 1;
    myMainPanel.add(createReportingPanel(), c);

    c.gridy = 2;
    myMainPanel.add(createTracingPanel(), c);

    c.gridy = 3;
    c.weighty = 1;
    myMainPanel.add(new JPanel(), c);
    return myMainPanel;
  }

  private JPanel createOptionsPanel() {
    JPanel optionsPanel = new JPanel(new GridBagLayout());
    GridBagConstraints c = new GridBagConstraints();
    c.weightx = 1;
    c.gridx = 0;
    c.ipady = 2;
    c.fill = GridBagConstraints.BOTH;
    optionsPanel.add(mySaveTransientModelsCheckBox, c);
    optionsPanel.add(myGenerateRequirementsCheckBox, c);
    optionsPanel.add(myCheckModelsBeforeGenerationCheckBox, c);
    optionsPanel.add(myStrictMode, c);
    c.ipady = 0;
    optionsPanel.add(createParallelGenerationGroup(), c);
    optionsPanel.setBorder(BorderFactory.createTitledBorder("General"));
    return optionsPanel;
  }

  private JPanel createParallelGenerationGroup() {
    JPanel parallelGen = new JPanel(new GridBagLayout());
    GridBagConstraints c = new GridBagConstraints();
    c.gridy = 0;
    parallelGen.add(myUseNewGenerator, c);
    final ChangeListener listener = new ChangeListener() {
      public void stateChanged(ChangeEvent e) {
        myUseNewGenerator.setEnabled(myStrictMode.isSelected());
        myNumberOfParallelThreads.setEditable(myUseNewGenerator.isSelected() && myStrictMode.isSelected());
      }
    };
    myStrictMode.addChangeListener(listener);
    myUseNewGenerator.addChangeListener(listener);
    c.insets.left = 7;
    parallelGen.add(new JLabel("Use"), c);
    c.insets.left = 3;
    myNumberOfParallelThreads.setColumns(2);
    parallelGen.add(myNumberOfParallelThreads, c);
    c.insets.left = 2;
    parallelGen.add(new JLabel("cores"), c);
    c.weightx = 1;
    parallelGen.add(new JPanel(), c);
    return parallelGen;
  }

  private JPanel createReportingPanel() {
    JPanel panel = new JPanel(new GridBagLayout());
    GridBagConstraints c = new GridBagConstraints();
    c.weightx = 1;
    c.gridx = 0;
    c.ipady = 2;
    c.fill = GridBagConstraints.BOTH;
    panel.add(myShowInfo, c);
    panel.add(myShowWarnings, c);
    c.insets.left = 16;
    panel.add(myKeepModelsWithWarnings, c);
    c.insets.left = 0;
    final ChangeListener listener = new ChangeListener() {
      public void stateChanged(ChangeEvent e) {
        myKeepModelsWithWarnings.setEnabled(myShowWarnings.isSelected());
      }
    };
    myShowWarnings.addChangeListener(listener);
    c.ipady = 0;
    panel.add(createLinkErrorsGroup(), c);
    panel.setBorder(BorderFactory.createTitledBorder("Reporting"));
    return panel;
  }

  private JPanel createLinkErrorsGroup() {
    JPanel group = new JPanel(new GridBagLayout());
    GridBagConstraints c = new GridBagConstraints();
    c.gridy = 0;
    group.add(myLimitNumberOfModels, c);
    final ChangeListener listener = new ChangeListener() {
      public void stateChanged(ChangeEvent e) {
        myNumberOfModelsToKeep.setEditable(myLimitNumberOfModels.isSelected());
      }
    };
    myLimitNumberOfModels.addChangeListener(listener);
    c.insets.left = 0;
    myNumberOfModelsToKeep.setColumns(2);
    group.add(myNumberOfModelsToKeep, c);
    c.insets.left = 3;
    group.add(new JLabel("transient models"), c);
    c.weightx = 1;
    group.add(new JPanel(), c);
    return group;
  }

  private JPanel createTracingPanel() {
    final ButtonGroup group = new ButtonGroup();
    group.add(myTraceNone);
    group.add(myTraceSteps);
    group.add(myTraceLanguages);
    group.add(myTraceTypes);

    JPanel gotoPanel = new JPanel();
    gotoPanel.setLayout(new BoxLayout(gotoPanel, BoxLayout.Y_AXIS));
    gotoPanel.add(myTraceNone);
    gotoPanel.add(myTraceSteps);
    gotoPanel.add(myTraceLanguages);
    gotoPanel.add(myTraceTypes);
    gotoPanel.setBorder(BorderFactory.createTitledBorder("Model generation performance report"));
    return gotoPanel;
  }


  public boolean validate() {
    return true;
  }

  public void commit() {
    myGenerationSettings.setSaveTransientModels(mySaveTransientModelsCheckBox.isSelected());
    myGenerationSettings.setGenerateRequirements(myGenerateRequirementsCheckBox.isSelected());
    myGenerationSettings.setCheckModelsBeforeGeneration(myCheckModelsBeforeGenerationCheckBox.isSelected());
    myGenerationSettings.setParallelGenerator(myUseNewGenerator.isSelected());
    myGenerationSettings.setStrictMode(myStrictMode.isSelected());
    myGenerationSettings.setNumberOfParallelThreads((Integer) myNumberOfParallelThreads.getValue());
    myGenerationSettings.setPerformanceTracingLevel(getTracingLevel());
    myGenerationSettings.setShowInfo(myShowInfo.isSelected());
    myGenerationSettings.setShowWarnings(myShowWarnings.isSelected());
    myGenerationSettings.setKeepModelsWithWarnings(myKeepModelsWithWarnings.isSelected());
    myGenerationSettings.setNumberOfModelsToKeep(getNumberOfModelsToKeep());
  }

  private int getTracingLevel() {
    return
      myTraceTypes.isSelected() ? GenerationSettings.TRACE_TYPES :
        myTraceLanguages.isSelected() ? GenerationSettings.TRACE_LANGS :
          myTraceSteps.isSelected() ? GenerationSettings.TRACE_STEPS
            : GenerationSettings.TRACE_OFF;
  }

  private int getNumberOfModelsToKeep() {
    return myLimitNumberOfModels.isSelected() ? (Integer) myNumberOfModelsToKeep.getValue() : 0;
  }

  public boolean isModified() {
    return !(myGenerationSettings.isSaveTransientModels() == mySaveTransientModelsCheckBox.isSelected() &&
      myGenerationSettings.isGenerateRequirements() == myGenerateRequirementsCheckBox.isSelected() &&
      myGenerationSettings.isCheckModelsBeforeGeneration() == myCheckModelsBeforeGenerationCheckBox.isSelected() &&
      myGenerationSettings.isParallelGenerator() == myUseNewGenerator.isSelected() &&
      myGenerationSettings.isShowInfo() == myShowInfo.isSelected() &&
      myGenerationSettings.isShowWarnings() == myShowWarnings.isSelected() &&
      myGenerationSettings.isKeepModelsWithWarnings() == myKeepModelsWithWarnings.isSelected() &&
      myGenerationSettings.getNumberOfModelsToKeep() == getNumberOfModelsToKeep() &&
      myGenerationSettings.getNumberOfParallelThreads() == ((Integer) myNumberOfParallelThreads.getValue()).intValue() &&
      myGenerationSettings.getPerformanceTracingLevel() == getTracingLevel() &&
      myGenerationSettings.isStrictMode() == myStrictMode.isSelected());
  }

  public void update() {
    mySaveTransientModelsCheckBox.setSelected(myGenerationSettings.isSaveTransientModels());
    myGenerateRequirementsCheckBox.setSelected(myGenerationSettings.isGenerateRequirements());
    myCheckModelsBeforeGenerationCheckBox.setSelected(myGenerationSettings.isCheckModelsBeforeGeneration());
    myUseNewGenerator.setSelected(myGenerationSettings.isParallelGenerator());

    myStrictMode.setSelected(myGenerationSettings.isStrictMode());
    myUseNewGenerator.setEnabled(myGenerationSettings.isStrictMode());
    myNumberOfParallelThreads.setEditable(myGenerationSettings.isParallelGenerator() && myGenerationSettings.isStrictMode());
    myNumberOfParallelThreads.setValue(myGenerationSettings.getNumberOfParallelThreads());

    myShowInfo.setSelected(myGenerationSettings.isShowInfo());
    myShowWarnings.setSelected(myGenerationSettings.isShowWarnings());
    myKeepModelsWithWarnings.setEnabled(myGenerationSettings.isShowWarnings());
    myKeepModelsWithWarnings.setSelected(myGenerationSettings.isKeepModelsWithWarnings());
    myNumberOfModelsToKeep.setEditable(myGenerationSettings.getNumberOfModelsToKeep() != 0);
    myNumberOfModelsToKeep.setValue(myGenerationSettings.getNumberOfModelsToKeep() == 0 ? 16 : myGenerationSettings.getNumberOfModelsToKeep());
    myLimitNumberOfModels.setSelected(myGenerationSettings.getNumberOfModelsToKeep() != 0);

    final JRadioButton[] allbuttons = {myTraceNone, myTraceSteps, myTraceLanguages, myTraceTypes};
    allbuttons[myGenerationSettings.getPerformanceTracingLevel()].setSelected(true);
  }

  private class RangeDecimalFormatter extends DefaultFormatter {
    private final int myLo;
    private final int myHi;

    private RangeDecimalFormatter(int lo, int hi) {
      super();
      setAllowsInvalid(true);
      setCommitsOnValidEdit(true);
      myLo = lo;
      myHi = hi;
    }

    @Override
    public Object stringToValue(String text) throws ParseException {
      try {
        int i = Integer.parseInt(text);
        if (i < myLo || i > myHi) {
          throw new ParseException(text, text.length() - 1);
        }
        return i;
      } catch (NumberFormatException e) {
        throw new ParseException(text, 0);
      }
    }

    @Override
    public String valueToString(@Nullable Object value) throws ParseException {
      if (value == null) return null;
      return Integer.toString((Integer) value);
    }
  }
}
