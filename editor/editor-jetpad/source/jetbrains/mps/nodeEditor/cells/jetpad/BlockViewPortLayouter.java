/*
 * Copyright 2003-2013 JetBrains s.r.o.
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
package jetbrains.mps.nodeEditor.cells.jetpad;

import jetbrains.jetpad.geometry.Rectangle;
import jetbrains.jetpad.geometry.Segment;
import jetbrains.jetpad.geometry.Vector;
import jetbrains.jetpad.projectional.diagram.base.GridDirection;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class BlockViewPortLayouter {
  private static final Vector[] SHIFT_TO_ORIGIN = new Vector[]{new Vector(0, 0), new Vector(0, -1), new Vector(-1, 0), new Vector(0, 0)};

  private Rectangle myRect;

  public BlockViewPortLayouter(Rectangle rect) {
    myRect = rect;
  }

  public List<Vector> layoutPorts(List<Vector> portDimensions, GridDirection dir) {
    List<Vector> portOrigins = new ArrayList<Vector>(portDimensions.size());

    Vector borderDir = dir.turnCounterclockwise().dir();
    Segment border = null;
    for (Segment s: myRect.getBoundSegments()) {
      Vector sDir = s.end.sub(s.start);
      if (borderDir.isParallel(sDir) && borderDir.dotProduct(sDir) > 0) {
        border = s;
        break;
      }
    }
    if (border == null) {
      throw new IllegalStateException();
    }

    boolean reverted = false;
    if (border.start.x > border.end.x || border.start.y > border.end.y) {
      border = new Segment(border.end, border.start);
      borderDir = dir.turnClockwise().dir();
      reverted = true;
    }

    if (portDimensions.size() == 1) {
      Vector dim = portDimensions.get(0);
      Vector borderShift = border.end.sub(border.start).sub(mulCoord(dim, borderDir));
      borderShift = new Vector(borderShift.x / 2, borderShift.y / 2);

      Vector portLoc = border.start.add(borderShift);
      portOrigins.add(portLoc.add(mulCoord(SHIFT_TO_ORIGIN[dir.ordinal()], dim)));
    } else if (portDimensions.size() > 1) {
      Vector childrenLen = Vector.ZERO;
      for (Vector dim: portDimensions) {
        childrenLen = childrenLen.add(mulCoord(dim, borderDir));
      }
      Vector space = border.end.sub(border.start).sub(childrenLen);

      Vector offset = Vector.ZERO;
      for (Vector dim: portDimensions) {
        Vector portLocation = border.start.add(offset);
        portOrigins.add(portLocation.add(mulCoord(SHIFT_TO_ORIGIN[dir.ordinal()], dim)));
        offset = offset.add(space).add(mulCoord(dim, borderDir));
      }
    }
    if (reverted) {
      Collections.reverse(portOrigins);
    }
    return portOrigins;
  }

  private Vector mulCoord(Vector v1, Vector v2) {
    return new Vector(v1.x * v2.x, v1.y * v2.y);
  }
}
