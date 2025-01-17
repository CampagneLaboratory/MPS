package jetbrains.mps.lang.migration.runtime.base;

/*Generated by MPS */


public abstract class Problem<T> {
  private T myReason;

  public Problem(T reason) {
    myReason = reason;
  }

  public abstract String getMessage();

  public abstract String getCategory();

  public T getReason() {
    return myReason;
  }
}
