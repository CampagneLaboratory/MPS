package jetbrains.mps.ide;

import jetbrains.mps.logging.LoggerUtil;
import jetbrains.mps.plugin.MPSPlugin;
import jetbrains.mps.project.ApplicationComponents;
import jetbrains.mps.util.PathManager;

import javax.swing.JOptionPane;
import javax.swing.UIDefaults;
import javax.swing.UIManager;
import java.awt.Font;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;

public class IdeMain {
  private static boolean ourTestMode = false;

  public static void initFonts() {
    UIDefaults defaults = UIManager.getDefaults();

    Font font = new Font("Tahoma", Font.PLAIN, 12);

    defaults.put("Button.font", font);
    defaults.put("ToggleButton.font", font);
    defaults.put("RadioButton.font", font);
    defaults.put("CheckBox.font", font);
    defaults.put("ColorChooser.font", font);
    defaults.put("ComboBox.font", font);
    defaults.put("Label.font", font);
    defaults.put("List.font", font);
    defaults.put("MenuBar.font", font);
    defaults.put("MenuItem.font", font.deriveFont(Font.BOLD));
    defaults.put("MenuItem.acceleratorFont", font);
    defaults.put("RadioButtonMenuItem.font", font);
    defaults.put("CheckBoxMenuItem.font", font);
    defaults.put("Menu.font", font.deriveFont(Font.BOLD));
    defaults.put("PopupMenu.font", font.deriveFont(Font.BOLD));
    defaults.put("OptionPane.font", font);
    defaults.put("Panel.font", font);
    defaults.put("ProgressBar.font", font);
    defaults.put("ScrollPane.font", font);
    defaults.put("Viewport.font", font);
    defaults.put("TabbedPane.font", font.deriveFont(Font.BOLD));
    defaults.put("Table.font", font);
    defaults.put("TableHeader.font", font);
    defaults.put("TextField.font", font);
    defaults.put("TitledBorder.font", font);
    defaults.put("ToolBar.font", font);
    defaults.put("ToolTip.font", font);
    defaults.put("Tree.font", font);
  }

  public static void main(String[] args) {
    openProjectWindow(true);
  }

  public static IDEProjectFrame openProjectWindow(boolean loadOldProject) {
    long start = System.currentTimeMillis();

    SplashScreen.getInstance().showSplashScreen();
    MPSPlugin.getInstance();

    initFonts();

    if (expirationDate().compareTo(new Date()) == -1) {
      JOptionPane.showMessageDialog(SplashScreen.getInstance(), "Program is expired. You can download latest version from www.jetbrains.com");
      System.exit(0);
    }

    LoggerUtil.configureLogger();

    ApplicationComponents.getInstance();
    IDEProjectFrame projectWindow = new IDEProjectFrame();
    if (loadOldProject) {
      projectWindow.loadLastProjectIfAny();
    }
    SplashScreen.getInstance().hideSplashScreen();
    projectWindow.show();

    long end = System.currentTimeMillis();
    System.out.println("MPS Started in " + (end - start) + " ms");
    return projectWindow;
  }

  public static Date expirationDate() {
    GregorianCalendar calendar = new GregorianCalendar(2007, Calendar.OCTOBER, 31);
    return new Date(calendar.getTimeInMillis());
  }

  public static boolean isTestMode() {
    return ourTestMode;
  }

  public static void setTestMode(boolean testMode) {
    ourTestMode = testMode;
  }

}
