package jetbrains.mps.intentions;

import com.intellij.openapi.options.Configurable;
import com.intellij.openapi.options.ConfigurationException;
import com.intellij.openapi.util.Computable;
import jetbrains.mps.smodel.Language;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SNode;
import org.apache.commons.lang.builder.CompareToBuilder;
import org.jetbrains.annotations.Nls;

import javax.swing.*;
import javax.swing.border.TitledBorder;
import java.awt.Component;
import java.util.*;

public class IntentionsPreferencesPage implements Configurable {
  private List<IntentionEnabledCheckBox> myCheckBoxes = null;
  private IntentionsManager myIntentionsManager;

  public IntentionsPreferencesPage(IntentionsManager intentionsManager) {
    myIntentionsManager = intentionsManager;
  }

  @Nls
  @Override
  public String getDisplayName() {
    return "Intentions";
  }

  @Override
  public Icon getIcon() {
    return null;
  }

  @Override
  public String getHelpTopic() {
    return null;
  }

  @Override
  public JComponent createComponent() {
    initCheckBoxes();
    JPanel mainPanel = new JPanel();
    mainPanel.setLayout(new BoxLayout(mainPanel, BoxLayout.Y_AXIS));
    mainPanel.setBackground(UIManager.getLookAndFeel().getDefaults().getColor("TextArea.background"));
    LinkedHashMap<Language, JPanel> languagesToPanels = new LinkedHashMap<Language, JPanel>();
    for (IntentionEnabledCheckBox checkBox : myCheckBoxes) {
      Language language = myIntentionsManager.getIntentionLanguage(checkBox.getIntention());
      if (language != null) {
        JPanel languagePanel = languagesToPanels.get(language);
        if (languagePanel == null) {
          languagePanel = new JPanel();
          languagePanel.setLayout(new BoxLayout(languagePanel, BoxLayout.Y_AXIS));
          languagePanel.add(Box.createHorizontalGlue());
          languagePanel.setBorder(new TitledBorder(language.getModuleFqName()));
          languagePanel.setBackground(UIManager.getLookAndFeel().getDefaults().getColor("TextArea.background"));
          languagePanel.setAlignmentX(Component.CENTER_ALIGNMENT);

          languagesToPanels.put(language, languagePanel);
          mainPanel.add(languagePanel);
        }
        languagePanel.add(checkBox.getCheckBox());
      }
    }
    return mainPanel;
  }

  private void initCheckBoxes() {
    myCheckBoxes = new ArrayList<IntentionEnabledCheckBox>();
    List<Intention> allIntentions = new ArrayList<Intention>(myIntentionsManager.getAllIntentions());
    Collections.sort(allIntentions, new Comparator<Intention>() {
      @Override
      public int compare(Intention o1, Intention o2) {
        return new CompareToBuilder()
          .append(o1.getClass().getPackage().getName(), o2.getClass().getPackage().getName())
          .append(o1.getClass().getSimpleName(), o2.getClass().getSimpleName())
          .toComparison();
      }
    });
    for (Intention intention : allIntentions) {
      myCheckBoxes.add(new IntentionEnabledCheckBox(intention));
    }
  }

  @Override
  public boolean isModified() {
    for (IntentionEnabledCheckBox checkBox : myCheckBoxes) {
      if (checkBox.isModified()) {
        return true;
      }
    }
    return false;
  }

  @Override
  public void apply() throws ConfigurationException {
    for (IntentionEnabledCheckBox checkBox : myCheckBoxes) {
      checkBox.apply();
    }
  }

  @Override
  public void reset() {
    for (IntentionEnabledCheckBox checkBox : myCheckBoxes) {
      checkBox.reset();
    }
  }

  @Override
  public void disposeUIResources() {
    myCheckBoxes = null;
  }

  private class IntentionEnabledCheckBox {
    private Intention myIntention;
    private JCheckBox myCheckBox;

    private IntentionEnabledCheckBox(Intention intention) {
      myIntention = intention;
      String intentionName = myIntention.getClass().getName();
      final SNode intentionNode = myIntentionsManager.getNodeByIntention(intention);
      if (intentionNode != null) {
        intentionName = ModelAccess.instance().runReadAction(new Computable<String>() {
          @Override
          public String compute() {
            return intentionNode.getName();
          }
        });
      }
      myCheckBox = new JCheckBox(intentionName);
      myCheckBox.setBackground(UIManager.getLookAndFeel().getDefaults().getColor("TextArea.background"));
    }

    private boolean isModified() {
      return myIntentionsManager.intentionIsDisabled(myIntention) == myCheckBox.isSelected();
    }

    private JCheckBox getCheckBox() {
      return myCheckBox;
    }

    public Intention getIntention() {
      return myIntention;
    }

    private void apply() {
      myIntentionsManager.setIntentionState(myIntention, !myCheckBox.isSelected());
    }

    private void reset() {
      myCheckBox.setSelected(!myIntentionsManager.intentionIsDisabled(myIntention));
    }
  }
}
