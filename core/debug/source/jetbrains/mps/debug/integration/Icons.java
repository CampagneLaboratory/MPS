/*
 * Copyright 2003-2010 JetBrains s.r.o.
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
package jetbrains.mps.debug.integration;

import javax.swing.Icon;
import javax.swing.ImageIcon;

public class Icons {
  public static final Icon VARIABLE_PRIMITIVE = new ImageIcon(Icons.class.getResource("ui/icons/db_primitive.png"));
  public static final Icon VARIABLE_OBJECT = new ImageIcon(Icons.class.getResource("ui/icons/db_object.png"));
  public static final Icon RUNCONFIGURATION_REMOTE = new ImageIcon(Icons.class.getResource("ui/icons/db_runconfig_remote.png"));
  public static final Icon EXCEPTION_BREAKPOINT = new ImageIcon(Icons.class.getResource("ui/icons/db_exception_breakpoint.png"));
  public static final Icon DISABLED_EXCEPTION_BREAKPOINT = new ImageIcon(Icons.class.getResource("ui/icons/db_disabled_exception_breakpoint.png"));
  public static final Icon METHOD_BREAKPOINT = new ImageIcon(Icons.class.getResource("ui/icons/db_method_breakpoint.png"));
  public static final Icon DISABLED_METHOD_BREAKPOINT = new ImageIcon(Icons.class.getResource("ui/icons/db_disabled_method_breakpoint.png"));
  public static final Icon FIELD_BREAKPOINT = new ImageIcon(Icons.class.getResource("ui/icons/db_field_breakpoint.png"));
  public static final Icon DISABLED_FIELD_BREAKPOINT = new ImageIcon(Icons.class.getResource("ui/icons/db_disabled_field_breakpoint.png"));
}
