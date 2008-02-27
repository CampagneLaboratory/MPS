package jetbrains.mps.logging;

import org.apache.log4j.Level;

/**
 * Igor Alshannikov
 * Oct 17, 2007
 */
public abstract class LoggingHandlerAdapter implements ILoggingHandler {
  public abstract void addLogEntry(LogEntry e);

  private org.apache.log4j.Logger getLogger(String fqName) {
    return org.apache.log4j.Logger.getLogger(fqName);
  }
  public final void info(LogEntry e) {
    if(Level.INFO.isGreaterOrEqual(getLogger(e.getSourceClass()).getEffectiveLevel())) {
      addLogEntry(e);
    }
  }

  public final void warning(LogEntry e) {
    if(Level.WARN.isGreaterOrEqual(getLogger(e.getSourceClass()).getEffectiveLevel())) {
      addLogEntry(e);
    }
  }

  public final void debug(LogEntry e) {
    if(Level.DEBUG.isGreaterOrEqual(getLogger(e.getSourceClass()).getEffectiveLevel())) {
      addLogEntry(e);
    }
  }

  public final void error(LogEntry e) {
    if(Level.ERROR.isGreaterOrEqual(getLogger(e.getSourceClass()).getEffectiveLevel())) {
      addLogEntry(e);
    }
  }

  public final void fatal(LogEntry e) {
    if(Level.FATAL.isGreaterOrEqual(getLogger(e.getSourceClass()).getEffectiveLevel())) {
      addLogEntry(e);
    }
  }
}
