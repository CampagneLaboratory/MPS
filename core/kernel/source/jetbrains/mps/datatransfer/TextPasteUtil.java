/*
 * Copyright 2003-2009 JetBrains s.r.o.
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
package jetbrains.mps.datatransfer;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 13.07.2005
 * Time: 19:29:37
 * To change this template use File | Settings | File Templates.
 */
import jetbrains.mps.smodel.SModel;

import java.awt.datatransfer.*;
import java.awt.*;
import java.io.IOException;

public class TextPasteUtil {


  public static String getStringFromClipboard () {
    Clipboard cb = Toolkit.getDefaultToolkit().getSystemClipboard();
    Transferable content = null;
    try {
    	content = cb.getContents(null);
    }
    catch (RuntimeException ignored) {}
    if (content == null) return null;
    return getStringFromTransferable(content);
  }

  public static String getStringFromTransferable(Transferable content) {
    String result;
    try {
      result = (String) content.getTransferData(DataFlavor.stringFlavor);
    } catch(Exception e) {
      return null;
    }
    return result;
  }

}
