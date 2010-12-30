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
package jetbrains.mps.debug.evaluation.ui;

import com.intellij.openapi.application.ApplicationManager;
import com.intellij.ui.components.JBScrollPane;
import jetbrains.mps.debug.evaluation.EvaluationProvider;
import jetbrains.mps.debug.evaluation.EvaluationProvider.WatchAdapter;
import jetbrains.mps.debug.evaluation.model.AbstractEvaluationModel;
import jetbrains.mps.debug.runtime.SessionStopDisposer;

import java.awt.BorderLayout;

public class WatchesPanel extends EvaluationUi {
  private final SessionStopDisposer mySessionStopDisposer;
  private final EvaluationProvider myProvider;

  public WatchesPanel(final EvaluationProvider provider) {
    super(provider.getDebugSession(), true);
    myProvider = provider;

    myProvider.addWatchListener(new WatchAdapter() {
      @Override
      public void watchAdded(final AbstractEvaluationModel model) {
        myTree.addModel(model);
        evaluate(model);
      }

      @Override
      public void watchUpdated(AbstractEvaluationModel model) {
        evaluate(model);
      }
    });

    mySessionStopDisposer = new SessionStopDisposer(myDebugSession) {
      @Override
      public void doDispose() {
        ApplicationManager.getApplication().invokeLater(new Runnable() {
          @Override
          public void run() {
            WatchesPanel.this.dispose();
          }
        });
      }
    };

    add(new JBScrollPane(myTree), BorderLayout.CENTER);
  }

  @Override
  protected void update() {
    for (AbstractEvaluationModel model : myProvider.getWatches()) {
      model.updateState();
    }
  }

  @Override
  public void evaluate() {
    for (AbstractEvaluationModel model : myProvider.getWatches()) {
      evaluate(model);
    }
  }
}
