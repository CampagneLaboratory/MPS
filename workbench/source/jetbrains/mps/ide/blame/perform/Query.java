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
package jetbrains.mps.ide.blame.perform;

public class Query {
  public static final Query ANONYMOUS = new Query("mpsexception", "mpsexception");

  private String myUser = "";
  private String myPassword = "";
  private String myIssue = "";
  private String myDescription = "";

  public Query() {
  }

  public Query(String user, String password) {
    this(user, password, null, null);
  }

  public Query(String user, String password, String issue, String description) {
    myDescription = description;
    myIssue = issue;
    myPassword = password;
    myUser = user;
  }

  public String getDescription() {
    return myDescription;
  }

  public void setDescription(String description) {
    myDescription = description;
  }

  public String getIssue() {
    return myIssue;
  }

  public void setIssue(String issue) {
    myIssue = issue;
  }

  public String getPassword() {
    return myPassword;
  }

  public void setPassword(String password) {
    myPassword = password;
  }

  public String getUser() {
    return myUser;
  }

  public void setUser(String user) {
    myUser = user;
  }
}
