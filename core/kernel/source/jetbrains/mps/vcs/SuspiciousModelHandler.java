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
package jetbrains.mps.vcs;

import jetbrains.mps.project.AbstractModule;
import jetbrains.mps.smodel.DefaultSModelDescriptor;

/**
 * @author Evgeny Gerashchenko
 * @since 10/14/11
 */
public abstract class SuspiciousModelHandler {
  // TODO replace with extension point & interface
  public abstract void handleSuspiciousModel(DefaultSModelDescriptor modelDescriptor, boolean isInConflict);
  public abstract void handleSuspiciousModule(AbstractModule abstractModule, boolean isInConflict);

  private static SuspiciousModelHandler ourHandler = new SuspiciousModelHandler() {
    @Override
    public void handleSuspiciousModel(DefaultSModelDescriptor modelDescriptor, boolean isInConflict) {
    }

    @Override
    public void handleSuspiciousModule(AbstractModule abstractModule, boolean isInConflict) {
    }
  };

  public static SuspiciousModelHandler getHandler() {
    return ourHandler;
  }

  public static void setHandler(SuspiciousModelHandler handler) {
    ourHandler = handler;
  }
}
