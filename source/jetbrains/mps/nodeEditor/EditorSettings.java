package jetbrains.mps.nodeEditor;

import jetbrains.mps.components.DefaultExternalizableComponent;
import jetbrains.mps.components.Externalizable;
import jetbrains.mps.ide.preferences.IComponentWithPreferences;
import jetbrains.mps.ide.preferences.IPreferencesPage;
import jetbrains.mps.ide.projectPane.Icons;
import jetbrains.mps.reloading.ReloadUtils;
import jetbrains.mps.project.ApplicationComponents;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.util.IntegerValueDocumentFilter;
import jetbrains.mps.component.Dependency;

import javax.swing.*;
import javax.swing.Timer;
import javax.swing.text.AbstractDocument;
import javax.swing.border.EmptyBorder;
import java.awt.*;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.util.*;
import java.util.List;

/**
 * @author Kostik
 */
public class EditorSettings extends DefaultExternalizableComponent implements IComponentWithPreferences {
  public static EditorSettings getInstance() {
    return ApplicationComponents.getInstance().getComponent(EditorSettings.class);
  }

  private @Externalizable String myFontFamily = "Monospaced";
  private @Externalizable int myFontSize = 12;

  private @Externalizable int myTextWidth = 500;
  private @Externalizable boolean myUseAntialiasing = true;
  private @Externalizable Color mySelectionColor = null;
  private @Externalizable Color myRangeSelectionColor = null;
  private @Externalizable boolean myUseLegacyTypesystem = true;

  private CaretBlinker myCaretBlinker;


  @Dependency
  public void setCaretBlinker(CaretBlinker caretBlinker) {
    myCaretBlinker = caretBlinker;
  }

  public Font getDefaultEditorFont() {
    return new Font(myFontFamily, 0, myFontSize);
  }

  public void setDefaultEditorFont(Font newFont) {
    myFontFamily = newFont.getFamily();
    myFontSize = newFont.getSize();
    ReloadUtils.rebuildAllEditors();
  }


  public boolean isUseAntialiasing() {
    return myUseAntialiasing;
  }

  public void setUseAntialiasing(boolean useAntialiasing) {
    myUseAntialiasing = useAntialiasing;
  }

  public int getTextWidth() {
    return myTextWidth;
  }

  public void setTextWidth(int textWidth) {
    myTextWidth = textWidth;
  }

  public Color getSelectionBackgroundColor() {
    if (mySelectionColor != null) {
      return mySelectionColor;
    }
    Color baseColor = getDefaultSelectionBackgroundColor();
    return baseColor;
  }

  public Color getSelectionForegroundColor() {
    return UIManager.getColor("TextArea.selectionForeground");
  }

  private Color getDefaultSelectionBackgroundColor() {
    return UIManager.getColor("TextArea.selectionBackground");
  }

  public Color getRangeSelectionForegroundColor() {
    if (myRangeSelectionColor != null) {
      return myRangeSelectionColor;
    }
    return getSelectionBackgroundColor();
  }

  public boolean getUseLegacyTypesystem() {
    return myUseLegacyTypesystem;
  }

  public void setUseLegacyTypesystem(boolean useLegacyTypesystem) {
    myUseLegacyTypesystem = useLegacyTypesystem;
  }

  public IPreferencesPage createPreferencesPage() {
    return new MyPreferencesPage();
  }

  private abstract static class MyColorComponent extends JPanel {
    private JTextField myRedTextField = new JTextField();
    private JTextField myGreenTextField = new JTextField();
    private JTextField myBlueTextField = new JTextField();
    private JTextField myAlphaTextField = new JTextField();

    private JButton myResetButton = new JButton(new AbstractAction("Reset") {
      public void actionPerformed(ActionEvent e) {
        setColor(getDefaultColor());
      }
    });

    private JButton myChooseButton = new JButton(new AbstractAction("Choose") {
      public void actionPerformed(ActionEvent e) {
        chooseColor();
      }
    });

    private JLabel myLabel = new JLabel("Sample Text") {
      public void paint(Graphics g) {
        super.paint(g);
        g.setColor(getColor());
        g.fillRect(0,0,getWidth(), getHeight());
      }
    };

    MyColorComponent(Color c) {
      prepareColorPartField(myRedTextField);
      prepareColorPartField(myBlueTextField);
      prepareColorPartField(myAlphaTextField);
      prepareColorPartField(myGreenTextField);
      setColor(c);
      myAlphaTextField.setText(c.getAlpha()+"");
      myLabel.setSize(40, 20);
      myLabel.setBackground(Color.white);
      setLayout(new FlowLayout(FlowLayout.LEFT));
      add(myLabel);
      add(myRedTextField);
      add(myGreenTextField);
      add(myBlueTextField);
      add(myAlphaTextField);
      add(myChooseButton);
      add(myResetButton);
    }

    protected abstract Color getDefaultColor();

    private void prepareColorPartField(JTextField field) {
      ((AbstractDocument) field.getDocument()).setDocumentFilter(new IntegerValueDocumentFilter() {

        protected boolean isValidText(String text) {
          if (!(super.isValidText(text))) return false;
          int i = Integer.parseInt(text);
          return 0 <= i && i <= 255;
        }

        protected void textChanged() {
          myLabel.repaint();
        }
      });
    }

    private void setColor(Color c) {
      myRedTextField.setText(c.getRed()+"");
      myGreenTextField.setText(c.getGreen()+"");
      myBlueTextField.setText(c.getBlue()+"");
    }

    public Color getColor() {
      int r = Integer.parseInt(myRedTextField.getText());
      int g = Integer.parseInt(myGreenTextField.getText());
      int b = Integer.parseInt(myBlueTextField.getText());
      int a = Integer.parseInt(myAlphaTextField.getText());
      return new Color(r, g, b, a);
    }

    private void chooseColor() {
      Color c = JColorChooser.showDialog(this, "Choose color", getColor());
      if (c != null) {
        setColor(c);
      }
      myLabel.repaint();
    }
  }

  private class MyPreferencesPage implements IPreferencesPage {
    private static final int SLIDER_RATIO = 10000;
    private JPanel myEditorSettingsPanel = new JPanel(new BorderLayout());
    private JComboBox myFontsComboBox = createFontsComboBox();
    private JComboBox myFontSizesComboBox = createSizeComboBox();
    private JComboBox myTextWidthComboBox = createTextWidthComboBox();
    private MyColorComponent mySelectedColorComponent = new MyColorComponent(getSelectionBackgroundColor()) {
      protected Color getDefaultColor() {
        return getDefaultSelectionBackgroundColor();
      }
    };
    private MyColorComponent myRangeSelColorComponent = new MyColorComponent(getRangeSelectionForegroundColor()) {
      protected Color getDefaultColor() {
        return getDefaultSelectionBackgroundColor();
      }
    };
    private JCheckBox myAntialiasingCheckBox = createAntialiasinbCheckBox();
    private JCheckBox myLegacyTypesystemCheckBox = createLegacyTypesystemCheckBox();
    private JSlider myBlinkingRateSlider = createBlinkingRateSlider();
    private final AbstractEditorComponent myBlinkingDemo = createBlinkingDemo();
    Timer myTimer;

    public MyPreferencesPage() {

      JPanel panel = new JPanel();
      panel.setLayout(new BoxLayout(panel, BoxLayout.Y_AXIS));

      JPanel fontPropertiesPanel = new JPanel(new GridLayout(0, 1));
      fontPropertiesPanel.setBorder(new EmptyBorder(5, 5, 5, 5));
      fontPropertiesPanel.add(new JLabel("Font Name : "));
      fontPropertiesPanel.add(myFontsComboBox);
      fontPropertiesPanel.add(new JLabel("Font Size : "));
      fontPropertiesPanel.add(myFontSizesComboBox);
      fontPropertiesPanel.add(new JLabel("Text Width : "));
      fontPropertiesPanel.add(myTextWidthComboBox);

      panel.add(fontPropertiesPanel);

      JPanel antialiasingPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
      antialiasingPanel.add(myAntialiasingCheckBox);
      antialiasingPanel.add(new JLabel("Use Antialiasing"));

      panel.add(antialiasingPanel);

      JPanel legacyTypesystemPanel = new JPanel(new FlowLayout(FlowLayout.LEFT));
      legacyTypesystemPanel.add(myLegacyTypesystemCheckBox);
      legacyTypesystemPanel.add(new JLabel("Use Legacy Typesystem For Highlighting"));

      panel.add(legacyTypesystemPanel);


      JPanel colorSettingsPanel = new JPanel(new GridLayout(0, 1));
      colorSettingsPanel.add(new JLabel("Selection Color : "));
      colorSettingsPanel.add(mySelectedColorComponent);

      colorSettingsPanel.add(new JLabel("Range Selection Color : "));
      colorSettingsPanel.add(myRangeSelColorComponent);

      colorSettingsPanel.add(new JLabel(" "));
      colorSettingsPanel.add(new JLabel("Cursor Blinking Rate : "));
      colorSettingsPanel.add(myBlinkingRateSlider);
      colorSettingsPanel.add(myBlinkingDemo);

      panel.add(colorSettingsPanel);

      myBlinkingDemo.setBackground(fontPropertiesPanel.getBackground());

      ActionListener listener = new ActionListener() {
        public void actionPerformed(ActionEvent e) {
          myBlinkingDemo.getRootCell().switchCaretVisible();
          myBlinkingDemo.repaint();
          myTimer.setDelay(getBlinkingPeriod());
        }
      };
      myTimer = new Timer(myCaretBlinker.getCaretBlinkingRateTimeMillis(), listener);

      myEditorSettingsPanel.add(panel, BorderLayout.NORTH);
      myTimer.start();
    }

    private JComboBox createTextWidthComboBox() {
      List<String> sizes = new ArrayList<String>();

      for (int i = 200; i < 1600; i += 100) {
        sizes.add("" + i);
      }

      JComboBox result = new JComboBox(sizes.toArray());
      result.setSelectedItem("" + getTextWidth());
      return result;
    }

    private JCheckBox createAntialiasinbCheckBox() {
      JCheckBox result = new JCheckBox();
      result.setSelected(isUseAntialiasing());
      return result;
    }

    private JCheckBox createLegacyTypesystemCheckBox() {
      JCheckBox result = new JCheckBox();
      result.setSelected(getUseLegacyTypesystem());
      return result;
    }

    private JComboBox createSizeComboBox() {
      List<String> sizes = new ArrayList<String>();

      for (int i = 1; i <= 50; i++) {
        sizes.add("" + i);
      }

      JComboBox result = new JComboBox(sizes.toArray());
      result.setSelectedItem("" + myFontSize);
      return result;
    }

    private JComboBox createFontsComboBox() {
      JComboBox result = new JComboBox(GraphicsEnvironment.getLocalGraphicsEnvironment().getAvailableFontFamilyNames());

      result.setRenderer(new DefaultListCellRenderer() {
        public Component getListCellRendererComponent(JList list, Object value, int index, boolean isSelected, boolean cellHasFocus) {
          Component result = super.getListCellRendererComponent(list, value, index, isSelected, cellHasFocus);

          Font font = new Font(value.toString(), Font.PLAIN, 12);
          result.setFont(font);

          return result;
        }
      });

      result.setSelectedItem("" + myFontFamily);
      return result;
    }

    private JSlider createBlinkingRateSlider() {
      long value = CaretBlinker.getInstance().getCaretBlinkingRateTimeMillis();
      int intMin = (SLIDER_RATIO / CaretBlinker.MAX_BLINKING_PERIOD);
      int intMax = (SLIDER_RATIO / CaretBlinker.MIN_BLINKING_PERIOD);
      int intValue = (int) (SLIDER_RATIO / value);
      return new JSlider(intMin, intMax, intValue);
    }

    private AbstractEditorComponent createBlinkingDemo() {
      return new AbstractEditorComponent(null) {
        {
          setEditorContext(new EditorContext(this, null, null));
          CaretBlinker.getInstance().unregisterEditor(this);
          rebuildEditorContent();
        }
        public EditorCell createRootCell() {
          return new EditorCell_Demo(getEditorContext(), "blinking");
        }

        public EditorCell createRootCell(List<SModelEvent> events) {
          return createRootCell();
        }
      };
    }

    public String getName() {
      return "Editor Settings";
    }

    public Icon getIcon() {
      return Icons.EDITORS_ICON;
    }

    public JComponent getComponent() {
      return myEditorSettingsPanel;
    }

    public boolean validate() {
      return true;
    }

    public void commit() {
      String fontName = myFontsComboBox.getSelectedItem().toString();
      int fontSize = Integer.parseInt(myFontSizesComboBox.getSelectedItem().toString());

      Font newFont = new Font(fontName, Font.PLAIN, fontSize);
      setDefaultEditorFont(newFont);

      setTextWidth(Integer.parseInt(myTextWidthComboBox.getSelectedItem().toString()));

      int blinkingPeriod = getBlinkingPeriod();
      CaretBlinker.getInstance().setCaretBlinkingRateTimeMillis(blinkingPeriod);

      setUseAntialiasing(myAntialiasingCheckBox.isSelected());
      setUseLegacyTypesystem(myLegacyTypesystemCheckBox.isSelected());

      mySelectionColor = mySelectedColorComponent.getColor();
      myRangeSelectionColor = myRangeSelColorComponent.getColor();

      ReloadUtils.rebuildAllEditors();
    }

    private int getBlinkingPeriod() {
      int sliderValue = myBlinkingRateSlider.getValue();
      return SLIDER_RATIO / sliderValue;
    }
  }

  private class EditorCell_Demo extends EditorCell_Constant {
    public EditorCell_Demo(EditorContext editorContext, String text) {
      super(editorContext, null, text);
      this.getRenderedTextLine().setCaretPosition(3);
      this.setDrawBorder(false);
    }

    public void changeText(String text) {
    }

    public boolean isEditable() {
      return true;
    }

    public boolean isSelectable() {
      return true;
    }

    public void paintSelection(Graphics g, Color c) {

    }

    public void paintContent(Graphics g) {
      TextLine textLine = getRenderedTextLine();
      textLine.setCaretEnabled(true);
      boolean toShowCaret = myCaretIsVisible;
      textLine.paint(g, myX, myY, myWidth, myHeight, isSelected(), toShowCaret);
    }
  }
}
