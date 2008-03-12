package jetbrains.mps.util;

import java.awt.*;
import java.awt.image.BufferedImage;

public class ColorAndGraphicsUtil {
  public static final int WAVE_HEIGHT = 2;
  public static final int WAVE_SEGMENT_LENGTH = WAVE_HEIGHT * 2;

  public static Color saturateColor(Color c, float factor) {
    float[] hsb = new float[3];
    Color.RGBtoHSB(c.getRed(), c.getGreen(), c.getBlue(), hsb);
    float saturation = hsb[1];
    saturation = saturation * factor;
    if (saturation > 1.0f) saturation = 1.0f;
    hsb[1] = saturation;
    int rgb = Color.HSBtoRGB(hsb[0], hsb[1], hsb[2]);
    return new Color(rgb);
  }

  public static Color brightenColor(Color c, float factor) {
    float[] hsb = new float[3];
    Color.RGBtoHSB(c.getRed(), c.getGreen(), c.getBlue(), hsb);
    float brightness = hsb[2];
    brightness = brightness * factor;
    if (brightness > 1.0f) brightness = 1.0f;
    hsb[2] = brightness;
    int rgb = Color.HSBtoRGB(hsb[0], hsb[1], hsb[2]);
    return new Color(rgb);
  }

  public static BasicStroke dashedStroke() {
    float[] dash = new float[]{3.0f};
    return new BasicStroke(1.0f, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER, 1.0f, dash, 0.0f);
  }

  public static BasicStroke dottedStroke() {
    float[] dash = new float[]{1.0f,3.0f};
    return new BasicStroke(1.0f, BasicStroke.CAP_BUTT, BasicStroke.JOIN_MITER, 1.0f, dash, 0.0f);
  }

  public static void drawWave(Graphics g, int xStart, int xEnd, int y) {
    Graphics2D g2d = (Graphics2D) g;
    Paint oldPaint = g2d.getPaint();
    g2d.setPaint(createPaintForLine(g.getColor()));
    g2d.fillRect(xStart, y, xEnd - xStart, WAVE_HEIGHT);
    g2d.setPaint(oldPaint);
  }

  public static void drawWaveOld(Graphics g, int xStart, int xEnd, int y) {
    int startSegment = xStart / WAVE_SEGMENT_LENGTH;
    int endSegment = xEnd / WAVE_SEGMENT_LENGTH;
    for (int i = startSegment; i < endSegment; i++) {
      drawWaveSegment(g, WAVE_SEGMENT_LENGTH * i, y);
    }

    int x = WAVE_SEGMENT_LENGTH * endSegment;
    g.drawLine(x, y + WAVE_HEIGHT, x + WAVE_SEGMENT_LENGTH / 2, y);
  }

  public static void drawWaveSegment(Graphics g, int x, int y) {
    g.drawLine(x, y + WAVE_HEIGHT, x + WAVE_SEGMENT_LENGTH / 2, y);
    g.drawLine(x + WAVE_SEGMENT_LENGTH / 2, y, x + WAVE_SEGMENT_LENGTH, y + WAVE_HEIGHT);
  }

  private static TexturePaint createPaintForLine(Color c) {
    BufferedImage image = new BufferedImage(WAVE_SEGMENT_LENGTH, WAVE_HEIGHT, BufferedImage.TYPE_INT_ARGB);
    Graphics g = image.getGraphics();
    g.setColor(new Color(0, 0, 0, 0));
    g.fillRect(0, 0, WAVE_SEGMENT_LENGTH, WAVE_HEIGHT);
    g.setColor(c);
    drawWaveSegment(g, 0, 0);
    return new TexturePaint(image, new Rectangle(0, 0, WAVE_SEGMENT_LENGTH , WAVE_HEIGHT));
  }

  public static Point getCentralPosition(Component parent, Component component) {
    return new Point(parent.getX() + (parent.getWidth() - component.getWidth()) / 2,
             parent.getY() + (parent.getHeight() - component.getHeight()) / 2);
  }
}
