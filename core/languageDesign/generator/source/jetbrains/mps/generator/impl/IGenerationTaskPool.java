package jetbrains.mps.generator.impl;

import jetbrains.mps.generator.GenerationCanceledException;
import jetbrains.mps.generator.GenerationFailureException;

import java.util.Deque;
import java.util.LinkedList;

/**
 * Evgeny Gryaznov, Mar 4, 2010
 */
public interface IGenerationTaskPool {

  public interface GenerationTask {
    void run() throws GenerationCanceledException, GenerationFailureException;
    
    boolean requiresReadAccess();
  }

  void addTask(GenerationTask r);

  void waitForCompletion() throws GenerationCanceledException, GenerationFailureException;

  public static class SimpleGenerationTaskPool implements IGenerationTaskPool {
    private Deque<GenerationTask> queue = new LinkedList<GenerationTask>();

    public void addTask(GenerationTask r) {
      queue.addFirst(r);
    }

    public void waitForCompletion() throws GenerationCanceledException, GenerationFailureException {
      GenerationTask next;
      while((next = queue.poll()) != null) {
        next.run();
      }
      queue.clear();
    }
  }
}
