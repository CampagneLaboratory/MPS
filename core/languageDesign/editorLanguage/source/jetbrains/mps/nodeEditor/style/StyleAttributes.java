package jetbrains.mps.nodeEditor.style;

import jetbrains.mps.nodeEditor.FocusPolicy;
import jetbrains.mps.nodeEditor.CaretPosition;

import java.awt.Color;
import java.awt.Font;

public class StyleAttributes {
  public static final StyleAttribute<Color> BACKGROUND_COLOR = new InheritableStyleAttribute<Color>("background-color");
  public static final StyleAttribute<Color> BRACKETS_COLOR = new InheritableStyleAttribute<Color>("bracket-color", Color.BLACK);
  public static final StyleAttribute<Color> TEXT_COLOR = new InheritableStyleAttribute<Color>("text-color", Color.BLACK);
  public static final StyleAttribute<Color> NULL_TEXT_COLOR = new InheritableStyleAttribute<Color>("null-text-color", Color.GRAY);
  public static final StyleAttribute<Color> TEXT_BACKGROUND_COLOR = new InheritableStyleAttribute<Color>("text-background-color");
  public static final StyleAttribute<Color> NULL_TEXT_BACKGROUND_COLOR = new InheritableStyleAttribute<Color>("null-text-color");
  public static final StyleAttribute<Color> SELECTED_TEXT_BACKGROUND_COLOR = new InheritableStyleAttribute<Color>("selected-text-background-color");
  public static final StyleAttribute<Color> NULL_SELECTED_TEXT_BACKGROUND_COLOR = new InheritableStyleAttribute<Color>("null-selected-text-color");

  public static final StyleAttribute<Boolean> DRAW_BRACKETS = new SimpleStyleAttribute<Boolean>("draw-brackets", false);
  public static final StyleAttribute<Boolean> DRAW_BORDER = new SimpleStyleAttribute<Boolean>("draw-border", false);
  public static final StyleAttribute<Boolean> SELECTABLE = new SimpleStyleAttribute<Boolean>("selectable", true);
  public static final StyleAttribute<Boolean> EDITABLE = new SimpleStyleAttribute<Boolean>("editable", true);
  public static final StyleAttribute<Boolean> UNDERLINED = new SimpleStyleAttribute<Boolean>("underlined", false);

  public static final StyleAttribute<String> RT_ANCHOR_TAG = new SimpleStyleAttribute<String>("rt-anchor-tag");
  public static final StyleAttribute<String> LAYOUT_CONSTRAINT = new SimpleStyleAttribute<String>("layout-constraint");
  public static final StyleAttribute<FocusPolicy> FOCUS_POLICY = new SimpleStyleAttribute<FocusPolicy>("focus-policy", FocusPolicy.NONE);
  public static final StyleAttribute<CaretPosition> DEFAULT_CARET_POSITON = new SimpleStyleAttribute<CaretPosition>("default-caret-position");

  public static final StyleAttribute<Integer> FONT_STYLE = new InheritableStyleAttribute("font-style", Font.PLAIN);
  public static final StyleAttribute<Integer> FONT_SIZE = new InheritableStyleAttribute("font-size");
}
