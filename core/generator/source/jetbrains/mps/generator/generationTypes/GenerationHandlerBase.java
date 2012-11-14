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
package jetbrains.mps.generator.generationTypes;

import jetbrains.mps.generator.GenerationCanceledException;
import jetbrains.mps.generator.IGeneratorLogger;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.progress.ProgressMonitor;
import jetbrains.mps.smodel.IOperationContext;
import jetbrains.mps.util.Pair;
import org.jetbrains.mps.openapi.model.SModel;
import org.jetbrains.mps.openapi.module.SModule;

import java.io.IOException;
import java.util.List;

/**
 * Evgeny Gryaznov, Jan 20, 2010
 */
public abstract class GenerationHandlerBase implements IGenerationHandler {
  protected static final Logger LOG = Logger.getLogger(IGenerationHandler.class);

  protected IGeneratorLogger myLogger;

  @Override
  public void startGeneration(IGeneratorLogger logger) {
    myLogger = logger;
  }

  @Override
  public void startModule(SModule module, List<SModel> inputModels, IOperationContext operationContext) {
  }

  @Override
  public void finishGeneration() {
    myLogger = null;
  }

  protected final void info(String text) {
    myLogger.info(text);
  }

  protected final void warning(String text) {
    myLogger.warning(text);
  }

  protected final void error(String text) {
    myLogger.error(text);
  }

  protected final void checkMonitorCanceled(ProgressMonitor progressMonitor) throws GenerationCanceledException {
    if (progressMonitor.isCanceled()) throw new GenerationCanceledException();
  }

  @Override
  public boolean compile(IOperationContext operationContext, List<Pair<SModule, List<SModel>>> input, boolean generationOK, ProgressMonitor progressMonitor) throws IOException, GenerationCanceledException {
    return true;
  }

  @Override
  public void generationCompleted() {
  }
}
