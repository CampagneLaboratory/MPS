/*
 * Copyright 2003-2012 JetBrains s.r.o.
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
package org.jetbrains.mps.openapi.model;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.language.SAbstractConcept;
import org.jetbrains.mps.openapi.language.SConcept;
import org.jetbrains.mps.openapi.module.SRepository;

/**
 * This class implement complex operations on the node structure.
 * Unlike the SNode implementations, which may focus on their specific needs, this class should consider all cases,
 * e.g. replacing a node with a root node from another model
 */
public class SNodeUtil {

  /**
   * Returns whether the given node belongs to the repository (or to one of its parent repositories).
   */
  public static boolean isAccessible(SNode node, SRepository inRepository) {
    inRepository.getModelAccess().checkReadAccess();

    SModel model = node.getModel();
    if (model == null) return false;

    SRepository mrep = model.getRepository();
    if (mrep == null) return false;

    SRepository repository = inRepository;
    while (repository != null && repository != mrep) {
      repository = repository.getParent();
    }
    return repository != null;
  }

  public static boolean isInstanceOf(@Nullable SNode node, @NotNull SAbstractConcept concept) {
    if (node == null) return false;
    SConcept c = node.getConcept();
    if (c == null) return false;
    return c.isSubConceptOf(concept);
  }

  /**
   * Replaces a node with another, preserving attributes
   */
  public static SNode replaceWithAnother(@NotNull SNode node, SNode replacer) {
    SNode nodeParent = node.getParent();
    if (nodeParent == null) {
      SModel model = node.getModel();
      if (model != null && model.isRoot(node)) {
        node.delete();
        model.addRootNode(replacer);
      }
      return replacer;
    }

    if (replacer != null) {
      SNode replacerParent = replacer.getParent();
      if (replacerParent != null) {
        replacerParent.removeChild(replacer);
      }

      SNode anchor = node.getPrevSibling();
      String role = nodeParent.getRoleOf(node);
      assert role != null;
      // old and new child can have the same node Id
      // thus it is important to remove old child first
      nodeParent.removeChild(node);
      nodeParent.insertChild(role, replacer, anchor);
    } else {
      nodeParent.removeChild(node);
    }

    return replacer;
  }

  public static String getDebugText(@NotNull SNode node) {
    String roleText = "";
    if (node.getModel() != null) {
      SNode parent = node.getParent();
      roleText = parent == null ? "[root]" : "[" + parent.getRoleOf(node) + "]";
    }
    String nameText;
    String modelName;
    try {
      String role = SNodeAccessUtil.getProperty(node, "role");
      if (role != null) {
        nameText = '"' + role + '"';
      } else {
        boolean linkDecl = jetbrains.mps.smodel.SNodeUtil.concept_LinkDeclaration.equals(node.getConcept().getId());
        nameText = linkDecl ? "<no role>" : "<no name>";
      }

      nameText = nameText + "[" + node.getNodeId() + "]";

      SModel model = node.getModel();
      modelName = model != null ? model.getModelName() : "<no model>";

    } catch (Exception e) {
      nameText = "<??name??>";
      modelName = "<??model??>";
    }
    return roleText + " " + node.getConcept().getName() + " " + nameText + " in " + modelName;
  }
}
