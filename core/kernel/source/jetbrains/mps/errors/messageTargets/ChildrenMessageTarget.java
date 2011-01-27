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
package jetbrains.mps.errors.messageTargets;

import org.apache.commons.lang.ObjectUtils;
import org.jetbrains.annotations.NotNull;

/**
 * @author Evgeny Gerashchenko
 * @since 26 January 2011
 */
public class ChildrenMessageTarget implements MessageTarget {
  private String myRole;
  private int myBeginIndex = -1;
  private int myEndIndex = -1;

  public ChildrenMessageTarget(String role, int beginIndex, int endIndex) {
    myRole = role;
    myBeginIndex = beginIndex;
    myEndIndex = endIndex;
  }

  public MessageTargetEnum getTarget() {
    return MessageTargetEnum.CHILDREN;
  }

  public String getRole() {
    return myRole;
  }

  public int getBeginIndex() {
    return myBeginIndex;
  }

  public int getEndIndex() {
    return myEndIndex;
  }

  public boolean sameAs(@NotNull MessageTarget errorTarget) {
    return errorTarget instanceof ChildrenMessageTarget
      && ObjectUtils.equals(errorTarget.getRole(), myRole)
      && myBeginIndex == ((ChildrenMessageTarget) errorTarget).myBeginIndex
      && myEndIndex == ((ChildrenMessageTarget) errorTarget).myEndIndex;
  }
}
