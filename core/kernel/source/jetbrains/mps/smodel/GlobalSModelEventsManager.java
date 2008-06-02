package jetbrains.mps.smodel;

import jetbrains.mps.smodel.event.SModelListener;
import jetbrains.mps.smodel.event.SModelCommandListener;
import jetbrains.mps.smodel.event.SModelEvent;
import jetbrains.mps.logging.Logger;

import java.util.List;
import java.util.ArrayList;
import java.util.Collections;
import java.lang.reflect.Proxy;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.NonNls;
import com.intellij.openapi.application.ApplicationManager;
import com.intellij.openapi.components.ApplicationComponent;
import com.intellij.openapi.command.CommandListener;
import com.intellij.openapi.command.CommandProcessor;
import com.intellij.openapi.command.CommandAdapter;
import com.intellij.openapi.command.CommandEvent;

public class GlobalSModelEventsManager implements ApplicationComponent {
  private static Logger LOG = Logger.getLogger(GlobalSModelEventsManager.class);

  public static GlobalSModelEventsManager getInstance() {
    return ApplicationManager.getApplication().getComponent(GlobalSModelEventsManager.class);
  }

  private SModelRepository mySModelRepository;

  private List<SModelListener> myGlobalListeners = new ArrayList<SModelListener>();
  private List<SModelCommandListener> myGlobalCommandListeners = new ArrayList<SModelCommandListener>();

  private SModelListener myRelayListener = createRelayListener();
  private MyEventsCollector myEventsCollector = new MyEventsCollector();

  public GlobalSModelEventsManager(SModelRepository SModelRepository) {
    mySModelRepository = SModelRepository;
  }

  public void initComponent() {
    ModelAccess.instance().runReadAction(new Runnable() {
      public void run() {
        mySModelRepository.addModelRepositoryListener(new SModelRepositoryAdapter() {
          public void modelAdded(SModelDescriptor modelDescriptor) {
            addListeners(modelDescriptor);
          }

          public void modelRemoved(SModelDescriptor modelDescriptor) {
            removeListeners(modelDescriptor);
          }
        });

        for (SModelDescriptor sm : mySModelRepository.getAllModelDescriptors()) {
          addListeners(sm);
        }
      }
    });
  }


  @NonNls
  @NotNull
  public String getComponentName() {
    return "Global SModel Events Manager";
  }

  public void disposeComponent() {
  }

  private void addListeners(SModelDescriptor sm) {
    sm.addModelListener(myRelayListener);
    myEventsCollector.add(sm);
  }

  private void removeListeners(SModelDescriptor sm) {
    sm.removeModelListener(myRelayListener);
    myEventsCollector.remove(sm);
  }

  public void addGlobalModelListener(SModelListener l) {
    myGlobalListeners.add(l);
  }

  public void removeGlobalModelListener(SModelListener l) {
    myGlobalListeners.remove(l);
  }

  public void addGlobalCommandListener(SModelCommandListener l) {
    myGlobalCommandListeners.add(l);
  }

  public void removeGlobalCommandListener(SModelCommandListener l) {
    myGlobalCommandListeners.remove(l);
  }

  private List<SModelListener> globalListeners() {
    return new ArrayList<SModelListener>(myGlobalListeners);
  }

  private SModelListener createRelayListener() {
    return (SModelListener) Proxy.newProxyInstance(
      getClass().getClassLoader(),
      new Class[] { SModelListener.class },
      new InvocationHandler() {
        public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
          if (method.getName().equals("equals") && args.length == 1) {
            return proxy == args[0];
          }

          if (method.getName().equals("hashCode") && args == null) {
            return this.hashCode();
          }

          method.setAccessible(true);
          for (SModelListener l : globalListeners()) {
            try {
              method.invoke(l, args);
            } catch (Throwable t) {
              LOG.error(t);
            }
          }

          return null;
        }
      }
    );
  }

  private class MyEventsCollector extends EventsCollector {
    protected void eventsHappened(List<SModelEvent> events) {
      if (events.isEmpty()) return;

      for (SModelCommandListener l : myGlobalCommandListeners) {
        try {
          l.eventsHappenedInCommand(Collections.unmodifiableList(events));
        } catch (Throwable t) {
          LOG.error(t);
        }
      }
    }
  }
}
