/*
 * Copyright 2003-2013 JetBrains s.r.o.
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
package jetbrains.mps.openapi.editor.cells;

import java.util.List;

/**
 * User: shatalin
 * Date: 2/14/13
 */
public interface SubstituteInfo {
  List<SubstituteAction> getMatchingActions(String pattern, boolean strictMatching);
  List<SubstituteAction> getFluentActions(String pattern, boolean strictMatching);


  List<SubstituteAction> getSmartMatchingActions(String pattern, boolean strictMatching, EditorCell contextCell);

  // TODO: check if this method should be in API
  void invalidateActions();

  void setOriginalText(String text);

  String getOriginalText();

  boolean hasExactlyNActions(final String pattern, boolean strictMatching, final int n);
}
