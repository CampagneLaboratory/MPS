/*
 * Copyright 2003-2011 JetBrains s.r.o.
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
package jetbrains.mps.ide.projectPane.logicalview.highlighting.visitor;

import jetbrains.mps.ide.projectPane.logicalview.highlighting.visitor.updates.ErrorStateNodeUpdate;
import jetbrains.mps.ide.projectPane.logicalview.nodes.ProjectModuleTreeNode;
import jetbrains.mps.ide.projectPane.logicalview.nodes.ProjectTreeNode;
import jetbrains.mps.ide.ui.smodel.SModelTreeNode;
import jetbrains.mps.project.StandaloneMPSProject;
import jetbrains.mps.project.validation.ModelValidator;
import jetbrains.mps.project.validation.ModuleValidator;
import jetbrains.mps.project.validation.ModuleValidatorFactory;
import org.jetbrains.mps.openapi.model.SNode;import jetbrains.mps.smodel.*;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.Pair;
import org.jetbrains.mps.openapi.module.SModule;

import java.util.Collections;
import java.util.List;

public class ProjectPaneTreeErrorChecker extends TreeNodeVisitor {
  protected void visitModelNode(final SModelTreeNode node) {
    List<String> errors = ModelAccess.instance().runReadAction(new Computable<List<String>>() {
      public List<String> compute() {
        final SModelDescriptor modelDescriptor = node.getSModelDescriptor();
        if (modelDescriptor == null) return Collections.emptyList();
        if (!(modelDescriptor.isLoaded())) return Collections.emptyList();
        IOperationContext context = node.getOperationContext();
        if (!context.isValid()) return Collections.emptyList();
        final IScope scope = context.getScope();

        return new ModelValidator(modelDescriptor).validate(scope);
      }
    });

    String result = null;
    if (!errors.isEmpty()) {
      result = "<html>";
      for (String r : errors) {
        result += r + "<br>";
      }
    }

    ourUpdater.addUpdate(node, new ErrorStateNodeUpdate(result, false));
  }

  protected void visitModuleNode(final ProjectModuleTreeNode node) {
    Pair<List<String>, List<String>> problems = ModelAccess.instance().runReadAction(new Computable<Pair<List<String>, List<String>>>() {
      public Pair<List<String>, List<String>> compute() {
        SModule module = node.getModule();
        if (module == null) return null;
        ModuleValidator validator = ModuleValidatorFactory.createValidator(module);
        return new Pair(validator.getErrors(), validator.getWarnings());
      }
    });

    String result = null;
    boolean hasErrors = false;
    if (problems != null) {
      List<String> errors = problems.o1;
      List<String> warns = problems.o2;

      if (!errors.isEmpty()) {
        result = "<html>";
        for (String error : errors) {
          result += error + "<br>";
        }
        hasErrors = true;
      }
      if (!warns.isEmpty()) {
        if (result == null) {
          result = "<html>";
        }
        for (String warn : warns) {
          result += "warn: " + warn + "<br>";
        }
      }
    }
    final boolean warning = !hasErrors;
    ourUpdater.addUpdate(node, new ErrorStateNodeUpdate(result, warning));
  }

  protected void visitProjectNode(final ProjectTreeNode node) {
    String errors = ((StandaloneMPSProject)node.getProject()).getErrors();
    ourUpdater.addUpdate(node, new ErrorStateNodeUpdate(errors, false));
  }
}
