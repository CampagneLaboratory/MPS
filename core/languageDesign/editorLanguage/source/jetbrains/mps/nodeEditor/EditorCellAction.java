package jetbrains.mps.nodeEditor;

/**
 * Author: Sergey Dmitriev
 * Created Nov 4, 2003
 */
public abstract class EditorCellAction {
  public static final String INSERT = "INSERT";
  public static final String INSERT_BEFORE = "INSERT_BEFORE";
  public static final String DELETE = "DELETE";
  public static final String COPY = "COPY";
  public static final String CUT = "CUT";
  public static final String PASTE = "PASTE";
  public static final String PASTE_BEFORE = "PASTE_BEFORE";
  public static final String PASTE_AFTER = "PASTE_AFTER";

  // -- navigation
  public static final String LEFT = "LEFT";
  public static final String RIGHT = "RIGHT";
  public static final String UP = "UP";
  public static final String DOWN = "DOWN";
  public static final String NEXT = "NEXT";
  public static final String PREV = "PREV";
  public static final String LEFT_SPECIAL = "LEFT_SPECIAL";
  public static final String RIGHT_SPECIAL = "RIGHT_SPECIAL";
  public static final String UP_SPECIAL = "UP_SPECIAL";
  public static final String DOWN_SPECIAL = "DOWN_SPECIAL";
  public static final String CTRL_HOME = "CTRL_HOME";
  public static final String CTRL_END = "CTRL_END";
  public static final String HOME = "HOME";
  public static final String END = "END";
  public static final String PAGE_UP = "PAGE_UP";
  public static final String PAGE_DOWN = "PAGE_DOWN";
  // --
  public static final String RIGHT_TRANSFORM = "RIGHT_TRANSFORM";

  public static final String FOLD = "FOLD";
  public static final String UNFOLD = "UNFOLD";
  public static final String FOLD_ALL = "FOLD_ALL";
  public static final String UNFOLD_ALL = "UNFOLD_ALL";


  public String getDescriptionText() {
    return "no description : " + this.getClass().getName();
  }

  public boolean canExecute(EditorContext context) {
    return true;
  }  

  public abstract void execute(EditorContext context);
}
