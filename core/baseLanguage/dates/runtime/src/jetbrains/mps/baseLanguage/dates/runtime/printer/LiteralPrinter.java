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
package jetbrains.mps.baseLanguage.dates.runtime.printer;

import org.joda.time.DateTime;

import java.util.Locale;
import java.io.IOException;

/**
 * @author Maxim.Mazin at date: 26.02.2007 time: 20:34:02
 */
public class LiteralPrinter implements Printer {
  private String myLiteral;

  public LiteralPrinter(String literal) {
    myLiteral = literal != null ? literal : "";
  }

  public int estimatePrintedLength() {
    return myLiteral.length();
  }

  public void printTo(Appendable out, DateTime dateTime, Locale locale) throws IOException {
    out.append(myLiteral);
  }
}
