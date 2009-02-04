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
package jetbrains.mps.ide;

public class SystemInfo {
  private static final String OS_NAME = System.getProperty("os.name").toLowerCase();
  public static final String OS_VERSION = System.getProperty("os.version").toLowerCase();
  public static final String JAVA_VERSION = System.getProperty("java.version");
  public static final String JAVA_RUNTIME_VERSION = System.getProperty("java.runtime.version");

  public static final boolean isWindows = OS_NAME.startsWith("windows");
  public static final boolean isWindowsNT = OS_NAME.startsWith("windows nt");
  public static final boolean isWindows2000 = OS_NAME.startsWith("windows 2000");
  public static final boolean isWindows2003 = OS_NAME.startsWith("windows 2003");
  public static final boolean isWindowsXP = OS_NAME.startsWith("windows xp");
  public static final boolean isWindows9x = OS_NAME.startsWith("windows 9") || OS_NAME.startsWith("windows me");
  public static final boolean isOS2 = OS_NAME.startsWith("os/2") || OS_NAME.startsWith("os2");
  public static final boolean isMac = OS_NAME.startsWith("mac");
  public static final boolean isFreeBSD = OS_NAME.startsWith("freebsd");
  public static final boolean isLinux = OS_NAME.startsWith("linux");
  public static final boolean isUnix = !isWindows && !isOS2;

  public static final boolean isMacSystemMenu = isMac && "true".equals(System.getProperty("apple.laf.useScreenMenuBar"));

  public static final boolean isFileSystemCaseSensitive = !isWindows && !isOS2;
}
