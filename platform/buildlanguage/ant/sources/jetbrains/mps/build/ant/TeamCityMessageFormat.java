package jetbrains.mps.build.ant;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class TeamCityMessageFormat implements IBuildServerMessageFormat {
  private static final String LINES_SEPARATOR = "|n";
  private static final String SERVER_PREFIX = "##teamcity[";
  private static final String SERVER_TEST_FAILED_PREFIX = "##teamcity[testFailed";

  public String escapeBuildMessage(String rawMessage) {
    return rawMessage.replace("|", "||").replace("'", "|'").replace("\n", LINES_SEPARATOR).replace("\r", "|r").replace("]", "|]");
  }

  public StringBuffer escapeBuildMessage(StringBuffer message) {
    String[] replacements = new String[]{
      "\\|", "||",
      "'", "|'",
      "\n", LINES_SEPARATOR,
      "\r", "|r",
      "]", "|]"
    };

    for (int i = 0; i < replacements.length; i += 2) {
      StringBuffer newMessage = new StringBuffer(message.length());
      Pattern p = Pattern.compile(replacements[i]);
      Matcher m = p.matcher(message);
      boolean found = false;
      while (m.find()) {
        found = true;
        m.appendReplacement(newMessage, replacements[i + 1]);
      }
      if (found) {
        m.appendTail(newMessage);
        message = newMessage;
      }
    }
    return message;
  }

  public String getLinesSeparator() {
    return LINES_SEPARATOR;
  }

  public String formatTestStart(String testName) {
    return "##teamcity[testStarted name='" + testName + "' captureStandardOutput='true']";
  }

  public String formatTestFinish(String testName) {
    return "##teamcity[testFinished name='" + testName + "']";
  }

  public String formatTestFailure(String testName, String message, String detailes) {
    return "##teamcity[testFailed name='" + testName + "' message='" + message + "' details='" + detailes + "']";
  }

  public CharSequence formatTestFailure(String testName, String message, CharSequence details) {
    StringBuffer sb = new StringBuffer();
    sb.append("##teamcity[testFailed name='")
      .append(testName)
      .append("' message='")
      .append(message)
      .append("' details='")
      .append(details)
      .append("']");
    return sb;
  }

  public boolean isBuildServerMessage(CharSequence message) {
    return (message.length() >= SERVER_PREFIX.length()) && message.subSequence(0, SERVER_PREFIX.length()).toString().equals(SERVER_PREFIX);
  }

  public int hasContinuation(String message) {
    return message.endsWith("\\") ? 1 : 0;
  }

  public boolean isTestFailMessage(CharSequence text) {
    return (text.length() >= SERVER_TEST_FAILED_PREFIX.length()) && text.subSequence(0, SERVER_TEST_FAILED_PREFIX.length()).toString().equals(SERVER_TEST_FAILED_PREFIX);
  }
}
