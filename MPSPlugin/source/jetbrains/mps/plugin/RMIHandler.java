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
package jetbrains.mps.plugin;

import java.rmi.RemoteException;
import java.rmi.registry.LocateRegistry;
import java.rmi.registry.Registry;

public class RMIHandler {
  public static final int REGISTRY_PORT = 2390;

  private static IDEAHandler ourProjectCreator;
  private static MPSPluginImpl ourPlugin;

  public static synchronized void setProjectCreator(IDEAHandler ourProjectCreator) {
    RMIHandler.ourProjectCreator = ourProjectCreator;
  }

  static IDEAHandler getProjectCreator() {
    return ourProjectCreator;
  }

  public static MPSPluginImpl getOurPlugin() {
    return ourPlugin;
  }

  static {
    try {
      Registry registry = LocateRegistry.createRegistry(REGISTRY_PORT);
      ourPlugin = new MPSPluginImpl();
      registry.rebind("MPSPlugin", ourPlugin);
    } catch (RemoteException e) {
      e.printStackTrace();
    }
  }
}
