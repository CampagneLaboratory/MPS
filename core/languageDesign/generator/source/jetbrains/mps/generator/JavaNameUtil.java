/*
 * Copyright 2003-2009 JetBrains s.r.o.
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
package jetbrains.mps.generator;

import jetbrains.mps.lang.structure.structure.AbstractConceptDeclaration;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SModelReference;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.util.NameUtil;

/**
 * User: Dmitriev.
 * Date: Jan 13, 2004
 */
public final class JavaNameUtil {

  private JavaNameUtil() {
  }

  public static String fqClassName(SModel model, String shortClassName) {
    String packageName = packageName(model);
    if (packageName == null || packageName.length() == 0) {
      return shortClassName;
    }
    return packageName + "." + shortClassName;
  }

  public static String fqClassName(SNode node, String shortClassName) {
    return fqClassName(node.getModel(), shortClassName);
  }

  public static String packageNameForModelUID(SModelReference modelReference) {
    return modelReference.getLongName();
  }

  public static String packageName(SModel model) {
    return packageNameForModelUID(model.getSModelReference());
  }

  public static String withoutStructure(String ns) {
    assert ns.endsWith(".structure");
    ns = ns.substring(0, ns.length() - ".structure".length());
    return ns;
  }

  public static String packageName(String fqName) {
    if (fqName == null) {
      return fqName;
    }
    int offset = fqName.lastIndexOf('.');
    if (offset < 0) {
      return "";
    }
    return fqName.substring(0, offset);
  }

  public static String shortName(String fqName) {
    if (fqName == null) {
      return fqName;
    }
    int offset = fqName.lastIndexOf('.');
    if (offset < 0) {
      return fqName;
    }
    return fqName.substring(offset + 1);
  }

  public static String className(AbstractConceptDeclaration conceptDeclaration) {
    return NameUtil.nodeFQName(conceptDeclaration);
  }

}
