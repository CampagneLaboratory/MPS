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
package jetbrains.mps.smodel.persistence.def.v4;

import jetbrains.mps.smodel.LanguageAspect;
import jetbrains.mps.smodel.SModelReference;
import jetbrains.mps.smodel.SModelVersionsInfo;
import jetbrains.mps.smodel.SNode;
import jetbrains.mps.smodel.persistence.def.ModelPersistence;
import org.jdom.Element;

public class VersionUtil {
  private static final char VERSION_SEPARATOR_CHAR = ':';
  private static final String VERSION_SEPARATOR = "" + VERSION_SEPARATOR_CHAR;
  private static final int NO_VERSION = -100;

  private static int parseVersionedString(String rawString) {
    int result = 0;
    int mul = 1;
    char[] chars = rawString.toCharArray();
    int lastCharNum = rawString.length() - 1;

    for (int i = lastCharNum; i <= 0; i--) {
      int digit = Character.digit(chars[i], 10);
      if (digit != -1) {
        result += digit * mul;
        mul *= 10;
      } else {
        if (chars[i] == VERSION_SEPARATOR_CHAR) return result;
        return NO_VERSION;
      }
    }
    return NO_VERSION;
  }

  private static String getBeforeSeparator(String s) {
    int index = s.lastIndexOf(VERSION_SEPARATOR_CHAR);
    if (index == -1) return s;
    return s.substring(0, index);
  }

  public static String formVersionedString(String parameter, int version) {
    if (version == -1) return parameter;
    return parameter + VERSION_SEPARATOR + version;
  }

  public static void fetchConceptVersion(String rawFqName, SNode node, SModelVersionsInfo versionsInfo) {
    int version = parseVersionedString(rawFqName);
    if (version != NO_VERSION) {
      versionsInfo.addConceptNameVersion(node, version);
    }
  }

  public static String getConceptFQName(String rawFqName) {
    return getBeforeSeparator(rawFqName);
  }

  public static void fetchChildNodeRoleVersion(String rawRole, SNode childNode, SModelVersionsInfo versionsInfo) {
    int version = parseVersionedString(rawRole);
    if (version != NO_VERSION) {
      versionsInfo.addRoleVersion(childNode, version);
    }
  }

  public static String getRole(String rawRole) {
    return getBeforeSeparator(rawRole);
  }

  public static String getPropertyName(Element propertyElement, SNode node, SModelVersionsInfo versionsInfo) {
    String raw = propertyElement.getAttributeValue(ModelPersistence.NAME);
    String propertyName = getBeforeSeparator(raw);
    int version = parseVersionedString(raw);
    if (version != NO_VERSION) {
      versionsInfo.addPropertyVersion(node, propertyName, version);
    }
    return propertyName;
  }

  public static String getLinkRole(String rawRole, SNode node, SModelVersionsInfo versionsInfo) {
    int version = parseVersionedString(rawRole);
    String linkRole = getBeforeSeparator(rawRole);
    if (version != NO_VERSION) {
      versionsInfo.addLinkRoleVersion(node, linkRole, version);
    }
    return linkRole;
  }

  //this did not work: a model reference did not equal nothing
  public static int getNodeLanguageVersion(SNode node) {
    SModelReference reference = LanguageAspect.STRUCTURE.get(node.getConceptLanguage());
    reference = reference.update();
    return node.getModel().getUsedVersion(reference);
  }

  public static int getReferenceToNodeVersion(SNode node, SModelReference targetModelReference) {
    if (targetModelReference == null) return -1;//target model reference is nullable in postponed references
    return node.getModel().getUsedVersion(targetModelReference);
  }

  //for children's roles version: finds a parent's concept, its version is a version of a role
  public static int getRoleVersion(SNode node) {
    final SNode parent = node.getParent();
    if (parent == null) return -1;
    return VersionUtil.getNodeLanguageVersion(parent);
  }


  public static String getTargetNodeId(String targetId, String role, SNode node, SModelVersionsInfo versionsInfo) {
    final String linkRole = getBeforeSeparator(targetId);
    int version = parseVersionedString(targetId);
    if (version != NO_VERSION) {
      versionsInfo.addLinkTargetIdVersion(node, role, version);
    }
    return linkRole;
  }
}
