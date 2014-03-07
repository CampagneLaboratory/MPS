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
package jetbrains.mps.ide.ui.smodel;

import jetbrains.mps.smodel.EventsCollector;
import org.jetbrains.mps.openapi.model.SModel;
import jetbrains.mps.smodel.event.SModelEvent;
import org.jetbrains.annotations.NotNull;

import java.util.*;
import java.util.Map.Entry;

/**
 * User: Alexander Shatalin
 * Date: 16.04.2010
 */
public class SModelEventsDispatcher {
  private static SModelEventsDispatcher myInstance;

  private EventsCollector myEventsCollector;
  private final Map<SModel, Set<SModelEventsListener>> myDescriptorsToListenersMap = new HashMap<SModel, Set<SModelEventsListener>>();

  public static SModelEventsDispatcher getInstance() {
    if (myInstance == null) {
      myInstance = new SModelEventsDispatcher();
    }
    return myInstance;
  }

  public void registerListener(SModelEventsListener l) {
    SModel modelDescriptor = l.getModelDescriptor();
    Set<SModelEventsListener> listeners = myDescriptorsToListenersMap.get(modelDescriptor);
    if (listeners == null) {
      listeners = new HashSet();
      myDescriptorsToListenersMap.put(modelDescriptor, listeners);
      getEventsCollector().add(modelDescriptor);
    }
    listeners.add(l);
  }

  public void unregisterListener(SModelEventsListener l) {
    SModel modelDescriptor = l.getModelDescriptor();
    Set<SModelEventsListener> listeners = myDescriptorsToListenersMap.get(modelDescriptor);
    assert listeners != null : "specified listener was not registered";
    listeners.remove(l);
    if (listeners.isEmpty()) {
      myDescriptorsToListenersMap.remove(modelDescriptor);
      getEventsCollector().remove(modelDescriptor);
      if (myDescriptorsToListenersMap.isEmpty()) {
        disposeEventsCollector();
      }
    }
  }

  public void dispose() {
    disposeEventsCollector();
    myDescriptorsToListenersMap.clear();
  }

  private void disposeEventsCollector() {
    if (myEventsCollector != null) {
      myEventsCollector.dispose();
      myEventsCollector = null;
    }
  }

  private EventsCollector getEventsCollector() {
    if (myEventsCollector == null) {
      myEventsCollector = new MyEventsCollector();
    }
    return myEventsCollector;
  }

  public interface SModelEventsListener {

    @NotNull
    SModel getModelDescriptor();

    void eventsHappened(List<SModelEvent> events);
  }


  private class MyEventsCollector extends EventsCollector {

    @Override
    protected void eventsHappened(List<SModelEvent> events) {
      Map<SModel, List<SModelEvent>> descriptorsToEventsMap = new HashMap<SModel, List<SModelEvent>>();
      for (SModelEvent event : events) {
        SModel descriptor = event.getModelDescriptor();
        List<SModelEvent> collectedEvents = descriptorsToEventsMap.get(descriptor);
        if (collectedEvents == null) {
          collectedEvents = new ArrayList();
          descriptorsToEventsMap.put(descriptor, collectedEvents);
        }
        collectedEvents.add(event);
      }
      for (Entry<SModel, List<SModelEvent>> entry : descriptorsToEventsMap.entrySet()) {
        Set<SModelEventsListener> listeners = myDescriptorsToListenersMap.get(entry.getKey());
        if (listeners != null) {
          for (SModelEventsListener listener : listeners) {
            listener.eventsHappened(entry.getValue());
          }
        }
      }
    }
  }
}
