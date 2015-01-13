/*
 * Copyright 2003-2011 JetBrains s.r.o.
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

import com.intellij.openapi.application.Application;
import com.intellij.openapi.application.ApplicationManager;
import org.apache.log4j.Logger;
import org.apache.log4j.LogManager;

import javax.swing.SwingUtilities;

public class ThreadUtils {
  private static final Logger LOG = LogManager.getLogger(ThreadUtils.class);

  public static boolean runInUIThreadAndWait(Runnable r) {
    if (SwingUtilities.isEventDispatchThread()) {
      try {
          r.run();
      } catch (Exception e) {
        LOG.error(null, e);
        return false;
      }
    } else {
      try {
        SwingUtilities.invokeAndWait(r);
      } catch (Exception e) {
        LOG.error(null, e);
        return false;
      }
    }
    return true;
  }

  public static void runInUIThreadNoWait(Runnable r) {
    if (SwingUtilities.isEventDispatchThread()) {
      r.run();
    } else {
      try {
        SwingUtilities.invokeLater(r);
      } catch (Exception e) {
        LOG.error(null, e);
      }
    }
  }

  /**
   * use {@link #isInEDT()}
   */
  @Deprecated
  public static boolean isEventDispatchThread() {
    return ApplicationManager.getApplication().isDispatchThread();
  }

  public static boolean isInEDT() {
    return isEventDispatchThread();
  }

  public static void assertEDT() {
    ApplicationManager.getApplication().assertIsDispatchThread();
  }
}
