/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.text;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.mps.annotations.Immutable;

/**
 * @author Artem Tikhomirov
 */
public interface BufferSnapshot {

  /**
   * @return 0-based positions of mark start within buffer text
   */
  TextPosition getStart(@NotNull TextMark mark);

  /**
   * @return 0-based positions of mark end within buffer text
   */
  TextPosition getEnd(@NotNull TextMark mark);

  /**
   * @return marked text chunk
   */
  CharSequence getText(@NotNull TextMark mark);

  /**
   * XXX TextLocation?
   */
  @Immutable
  final class TextPosition {
    public final int line;
    public final int column;

    public TextPosition(int line, int column) {
      this.line = line;
      this.column = column;
    }
  }
}
