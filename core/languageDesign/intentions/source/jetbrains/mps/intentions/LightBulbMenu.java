/*
 * Copyright 2003-2008 JetBrains s.r.o.
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
package jetbrains.mps.intentions;

import jetbrains.mps.intentions.icons.Icons;

import javax.swing.JLabel;
import javax.swing.border.EmptyBorder;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.event.MouseAdapter;
import java.awt.event.MouseEvent;

public abstract class LightBulbMenu extends JLabel {
  public LightBulbMenu() {
    super(Icons.INTENTION);

    setBorder(new EmptyBorder(0, 2, 1, 2));
    setBackground(Color.WHITE);

    setToolTipText("press alt+enter to view intentions list");

    setPreferredSize(new Dimension(getWidth(), getHeight()));
    setSize(getWidth(), getHeight());

    addMouseListener(new MouseAdapter() {
      public void mousePressed(MouseEvent e) {
        activate();
      }
    });
  }

  public int getWidth() {
    return getIcon().getIconWidth() + 6;
  }

  public int getHeight() {
    return getIcon().getIconHeight();
  }

  public abstract void activate();
}
