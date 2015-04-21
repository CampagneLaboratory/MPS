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
package jetbrains.mps.smodel.persistence.def.v4;

import jetbrains.mps.logging.Logger;
import jetbrains.mps.smodel.SModelLegacy;
import jetbrains.mps.smodel.persistence.SNodeFactory;
import jetbrains.mps.util.SNodeOperations;
import org.apache.log4j.LogManager;
import jetbrains.mps.smodel.DefaultSModel;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SModel.ImportElement;
import jetbrains.mps.smodel.SModelHeader;
import jetbrains.mps.smodel.SModelVersionsInfo;
import jetbrains.mps.smodel.persistence.def.IModelReader;
import jetbrains.mps.smodel.persistence.def.IReferencePersister;
import jetbrains.mps.smodel.persistence.def.ModelPersistence;
import jetbrains.mps.smodel.persistence.def.VisibleModelElements;
import jetbrains.mps.util.InternUtil;
import org.jdom.Document;
import org.jdom.Element;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.model.SNode;
import org.jetbrains.mps.openapi.model.SNodeAccessUtil;
import org.jetbrains.mps.openapi.model.SNodeId;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;

import java.util.ArrayList;
import java.util.List;

public class ModelReader4 implements IModelReader {
  private static final Logger LOG = Logger.wrap(LogManager.getLogger(ModelReader4.class));

  protected String getLegacyImportedModelUIDString(Element element) {
    return null;
  }

  protected ReferencePersister4 createReferencePersister() {
    return new ReferencePersister4();
  }

  @Override
  public int getVersion() {
    return 4;
  }

  @Override
  public DefaultSModel readModel(Document document, SModelHeader header) {
    SModelVersionsInfo versionsInfo = new SModelVersionsInfo();
    Element rootElement = document.getRootElement();

    SModelReference modelReference = PersistenceFacade.getInstance().createModelReference(rootElement.getAttributeValue(ModelPersistence.MODEL_UID));
    DefaultSModel model = new DefaultSModel(modelReference, header);

    // languages
    List languages = rootElement.getChildren(ModelPersistence.LANGUAGE);
    for (Object language : languages) {
      Element element = (Element) language;
      String languageNamespace = element.getAttributeValue(ModelPersistence.NAMESPACE);
      new SModelLegacy(model).addLanguage(PersistenceFacade.getInstance().createModuleReference(languageNamespace));
      List<Element> aspectElements = element.getChildren(ModelPersistence.LANGUAGE_ASPECT);

      //aspect models versions
      readLanguageAspects(model, aspectElements);
    }
    //additional aspects
    List<Element> aspectElements = rootElement.getChildren(ModelPersistence.LANGUAGE_ASPECT);
    readLanguageAspects(model, aspectElements);

    // languages engaged on generation
    List languagesEOG = rootElement.getChildren(ModelPersistence.LANGUAGE_ENGAGED_ON_GENERATION);
    for (Object languageEOG : languagesEOG) {
      Element element = (Element) languageEOG;
      String languageNamespace = element.getAttributeValue(ModelPersistence.NAMESPACE);
      model.addEngagedOnGenerationLanguage(PersistenceFacade.getInstance().createModuleReference(languageNamespace));
    }

    //devkits
    List devkits = rootElement.getChildren(ModelPersistence.DEVKIT);
    for (Object devkit : devkits) {
      Element element = (Element) devkit;
      String devkitNamespace = element.getAttributeValue(ModelPersistence.NAMESPACE);
      model.addDevKit(PersistenceFacade.getInstance().createModuleReference(devkitNamespace));
    }

    // imports
    List imports = rootElement.getChildren(ModelPersistence.IMPORT_ELEMENT);
    for (Object anImport : imports) {
      Element element = (Element) anImport;

      String indexValue = element.getAttributeValue(ModelPersistence.MODEL_IMPORT_INDEX, element.getAttributeValue("referenceID"));
      int importIndex = Integer.parseInt(indexValue);

      String importedModelUIDString = element.getAttributeValue(ModelPersistence.MODEL_UID);

      if (importedModelUIDString == null) {
        // read in old manner...
        importedModelUIDString = getLegacyImportedModelUIDString(element);
      }

      if (importedModelUIDString == null) {
        LOG.error("Error loading import element for index " + importIndex + " in " + model.getReference());
        continue;
      }

      SModelReference importedModelReference = PersistenceFacade.getInstance().createModelReference(importedModelUIDString);
      model.addModelImport(new ImportElement(importedModelReference, importIndex, -1));
    }

    ArrayList<IReferencePersister> referenceDescriptors = new ArrayList<IReferencePersister>();

    readRefactorings(rootElement, model);

    // nodes
    List children = rootElement.getChildren(ModelPersistence.NODE);
    for (Object child : children) {
      Element element = (Element) child;
      SNode snode = readNode(element, model, referenceDescriptors, false, versionsInfo);
      if (snode != null) {
        model.addRootNode(snode);
      }
    }

    VisibleModelElements visibleModelElements = new DOMVisibleModelElements(rootElement);
    for (IReferencePersister referencePersister : referenceDescriptors) {
      referencePersister.createReferenceInModel(model, visibleModelElements);
    }

    return model;
  }

  protected void readRefactorings(Element rootElement, DefaultSModel model) {
    Element history = rootElement.getChild("refactoringHistory");
    if (history != null) {
      Element copy = (Element) history.clone();
      copy.detach();
      //noinspection deprecation
      model.setRefactoringHistoryElement(copy);
    }
  }

  protected void readLanguageAspects(DefaultSModel model, List<Element> aspectElements) {
    for (Element aspectElement : aspectElements) {
      String aspectModelUID = aspectElement.getAttributeValue(ModelPersistence.MODEL_UID);
      String versionString = aspectElement.getAttributeValue(ModelPersistence.VERSION);
      int version = -1;
      if (versionString != null) {
        try {
          version = Integer.parseInt(versionString);
        } catch (Throwable t) {
          LOG.error(t);
        }
      }
      if (aspectModelUID != null) {
        model.getImplicitImportsSupport().addAdditionalModelVersion(PersistenceFacade.getInstance().createModelReference(aspectModelUID), version);
      }
    }
  }

  public SNode readNode(Element nodeElement, SModel model) {
    return readNode(nodeElement, model, true, null, new SModelVersionsInfo());
  }

  @Nullable
  protected SNode readNode(
      Element nodeElement,
      SModel model,
      boolean useUIDs,
      VisibleModelElements visibleModelElements, SModelVersionsInfo versionsInfo) {
    List<IReferencePersister> referenceDescriptors = new ArrayList<IReferencePersister>();
    SNode result = readNode(nodeElement, model, referenceDescriptors, useUIDs, versionsInfo);
    for (IReferencePersister referencePersister : referenceDescriptors) {
      referencePersister.createReferenceInModel(model, visibleModelElements);
    }
    return result;
  }

  @Nullable
  protected SNode readNode(
      Element nodeElement,
      SModel model,
      List<IReferencePersister> referenceDescriptors,
      boolean useUIDs, SModelVersionsInfo versionsInfo
  ) {

    String rawFqName = nodeElement.getAttributeValue(ModelPersistence.TYPE);
    String conceptFqName = VersionUtil.getConceptFQName(rawFqName);
    jetbrains.mps.smodel.SNode node = SNodeFactory.newRegular(conceptFqName);
    VersionUtil.fetchConceptVersion(rawFqName, node, versionsInfo);

    String idValue = nodeElement.getAttributeValue(ModelPersistence.ID);
    if (idValue != null) {
      SNodeId id = jetbrains.mps.smodel.SNodeId.fromString(idValue);
      if (id == null) {
        LOG.error("invalid id string");
        return null;
      }
      node.setId(id);
    }

    List properties = nodeElement.getChildren(ModelPersistence.PROPERTY);
    for (Object property : properties) {
      Element propertyElement = (Element) property;
      String raw = propertyElement.getAttributeValue(ModelPersistence.NAME);
      String propertyName = VersionUtil.getPropertyName(raw, node, versionsInfo);
      String propertyValue = propertyElement.getAttributeValue(ModelPersistence.VALUE);
      if (propertyValue != null) {
        SNodeAccessUtil.setProperty(node, propertyName, propertyValue);
      }
    }

    List links = nodeElement.getChildren(ModelPersistence.LINK);
    for (Object link : links) {
      Element linkElement = (Element) link;
      ReferencePersister4 referencePersister = createReferencePersister();
      referencePersister.fillFields(linkElement, node, useUIDs, versionsInfo);
      referenceDescriptors.add(referencePersister);
    }

    List childNodes = nodeElement.getChildren(ModelPersistence.NODE);
    for (Object childNode1 : childNodes) {
      Element childNodeElement = (Element) childNode1;
      String rawRole = childNodeElement.getAttributeValue(ModelPersistence.ROLE);
      String role = VersionUtil.getRole(rawRole);
      SNode childNode = readNode(childNodeElement, model, referenceDescriptors, useUIDs, versionsInfo);
      if (role == null || childNode == null) {
        LOG.errorWithTrace("Error reading child node in node " + SNodeOperations.getDebugText(node));
      } else {
        node.addChild(role, childNode);
        VersionUtil.fetchChildNodeRoleVersion(rawRole, childNode, versionsInfo);
      }
    }

    return node;
  }

}
