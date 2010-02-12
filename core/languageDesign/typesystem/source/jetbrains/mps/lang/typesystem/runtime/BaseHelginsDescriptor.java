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
package jetbrains.mps.lang.typesystem.runtime;

import jetbrains.mps.typesystem.inference.util.IDependency_Runtime;
import jetbrains.mps.typesystem.inference.IVariableConverter_Runtime;

import java.util.Set;
import java.util.HashSet;

public class BaseHelginsDescriptor implements IHelginsDescriptor {
  protected Set<InferenceRule_Runtime> myInferenceRules = new HashSet<InferenceRule_Runtime>();
  protected Set<NonTypesystemRule_Runtime> myNonTypesystemRules = new HashSet<NonTypesystemRule_Runtime>();
  protected Set<AbstractDependentComputation_Runtime> myDependentComputations = new HashSet<AbstractDependentComputation_Runtime>();
  protected Set<SubtypingRule_Runtime> mySubtypingRules = new HashSet<SubtypingRule_Runtime>();
  protected Set<ComparisonRule_Runtime> myComparisonRules = new HashSet<ComparisonRule_Runtime>();
  protected Set<InequationReplacementRule_Runtime> myInequationReplacementRules = new HashSet<InequationReplacementRule_Runtime>();
  protected Set<IDependency_Runtime> myDependencies = new HashSet<IDependency_Runtime>();
  protected Set<IVariableConverter_Runtime> myVariableConverters = new HashSet<IVariableConverter_Runtime>();
  protected Set<IOverloadedOpsTypesProvider> myOverloadedOperationsTypesProviders = new HashSet<IOverloadedOpsTypesProvider>();

  public Set<InferenceRule_Runtime> getInferenceRules() {
    return new HashSet<InferenceRule_Runtime>(this.myInferenceRules);
  }

  public Set<NonTypesystemRule_Runtime> getNonTypesystemRules() {
    return new HashSet<NonTypesystemRule_Runtime>(this.myNonTypesystemRules);
  }

  public Set<SubtypingRule_Runtime> getSubtypingRules() {
    return new HashSet<SubtypingRule_Runtime>(this.mySubtypingRules);
  }

  public Set<ComparisonRule_Runtime> getComparisonRules() {
    return new HashSet<ComparisonRule_Runtime>(this.myComparisonRules);
  }

  public Set<IDependency_Runtime> getDependencies() {
    return new HashSet<IDependency_Runtime>(this.myDependencies);
  }

  public Set<InequationReplacementRule_Runtime> getEliminationRules() {
    return new HashSet<InequationReplacementRule_Runtime>(this.myInequationReplacementRules);
  }

  public Set<IVariableConverter_Runtime> getVariableConverters() {
    return new HashSet<IVariableConverter_Runtime>(this.myVariableConverters);
  }

  public Set<IOverloadedOpsTypesProvider> getOverloadedOperationsTypesProviders() {
    return new HashSet<IOverloadedOpsTypesProvider>(this.myOverloadedOperationsTypesProviders);
  }

  public Set<AbstractDependentComputation_Runtime> getDependentComputations() {
    return new HashSet<AbstractDependentComputation_Runtime>(this.myDependentComputations);
  }
}
