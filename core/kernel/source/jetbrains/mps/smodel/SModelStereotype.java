/*
 * Copyright 2003-2008 JetBrains s.r.o.
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
package jetbrains.mps.smodel;

/**
 * Igor Alshannikov
 * Jul 20, 2005
 */
public class SModelStereotype {
  public static final String NONE = "";
  @Deprecated
  public static final String TEMPLATES = "templates";
  public static final String GENERATOR = "generator";
  public static final String JAVA_STUB = "java_stub";
  public static final String GENERATED_MODEL = "generatedModel";
  public static final String INTERNAL_COPY = "internal_copy";
  public static final String INTERNAL = "$internal$";

  public static final String[] values = new String[]{NONE, GENERATOR};

  public static boolean isUserModel(SModel model) {
    return isUserModelStereotype(model.getStereotype());
  }

  public static boolean isUserModel(SModelDescriptor model) {
    return isUserModelStereotype(model.getStereotype());
  }

  private static boolean isUserModelStereotype(String stereotype) {
    return NONE.equals(stereotype) || GENERATOR.equals(stereotype) || TEMPLATES.equals(stereotype);
  }

  public static boolean isGeneratorModel(SModel model) {
    return isGeneratorModelStereotype(model.getStereotype());
  }

  public static boolean isGeneratorModel(SModelDescriptor model) {
    return isGeneratorModelStereotype(model.getStereotype());
  }

  private static boolean isGeneratorModelStereotype(String stereotype) {
    return GENERATOR.equals(stereotype) || TEMPLATES.equals(stereotype);
  }
}
