/*
 * Copyright 2003-2015 JetBrains s.r.o.
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
package jetbrains.mps.smodel.persistence.def;

import jetbrains.mps.extapi.model.GeneratableSModel;
import jetbrains.mps.generator.ModelDigestUtil;
import jetbrains.mps.persistence.IndexAwareModelFactory.Callback;
import jetbrains.mps.persistence.xml.XMLPersistence;
import jetbrains.mps.persistence.xml.XMLPersistence.Indexer;
import jetbrains.mps.smodel.DefaultSModel;
import jetbrains.mps.smodel.ModelAccess;
import jetbrains.mps.smodel.SModel;
import jetbrains.mps.smodel.SModelHeader;
import jetbrains.mps.smodel.loading.ModelLoadResult;
import jetbrains.mps.smodel.loading.ModelLoadingState;
import jetbrains.mps.smodel.persistence.def.v8.ModelPersistence8;
import jetbrains.mps.smodel.persistence.def.v9.ModelPersistence9;
import jetbrains.mps.smodel.persistence.lines.LineContent;
import jetbrains.mps.util.Computable;
import jetbrains.mps.util.FileUtil;
import jetbrains.mps.util.JDOMUtil;
import jetbrains.mps.util.StringUtil;
import jetbrains.mps.util.xml.BreakParseSAXException;
import jetbrains.mps.util.xml.XMLSAXHandler;
import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;
import org.jdom.Document;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.jetbrains.mps.openapi.model.SModelReference;
import org.jetbrains.mps.openapi.persistence.PersistenceFacade;
import org.jetbrains.mps.openapi.persistence.StreamDataSource;
import org.jetbrains.mps.openapi.util.Consumer;
import org.xml.sax.Attributes;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;

import javax.xml.parsers.ParserConfigurationException;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.StringReader;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ModelPersistence {
  private static final Logger LOG = LogManager.getLogger(ModelPersistence.class);

  public static final String MODEL = "model";
  public static final String REF = "ref";

  public static final String PERSISTENCE = "persistence";
  public static final String PERSISTENCE_VERSION = "version";

  public static final int LAST_VERSION = 9;

  @Nullable
  public static IModelPersistence getPersistence(int version) {
    if (version == 8) return new ModelPersistence8();
    if (version == 9) return new ModelPersistence9();

    LOG.error("Unknown persistence version requested: " + version, new Throwable());
    return null;
  }

  private static void loadDescriptor(SModelHeader result, StreamDataSource dataSource) throws ModelReadException {
    InputStream in = null;
    try {
      in = dataSource.openInputStream();
      InputSource source = new InputSource(new InputStreamReader(in, FileUtil.DEFAULT_CHARSET));

      loadDescriptor(result, source);
    } catch (IOException e) {
      throw new ModelReadException("Couldn't read descriptor from " + dataSource.getLocation() + ": " + e.getMessage(), e);
    } finally {
      FileUtil.closeFileSafe(in);
    }
  }

  @NotNull
  public static SModelHeader loadDescriptor(InputSource source) throws IOException {
    SModelHeader result = new SModelHeader();
    loadDescriptor(result, source);
    return result;
  }

  @NotNull
  public static SModelHeader loadDescriptor(StreamDataSource source) throws ModelReadException {
    final SModelHeader result = new SModelHeader();
    loadDescriptor(result, source);
    return result;
  }

  static void loadDescriptor(SModelHeader result, InputSource source) throws IOException {
    parseAndHandleExceptions(source, new MyDescriptorHandler(result), "model descriptor");
  }

  private static ModelLoadResult readModel(@NotNull SModelHeader header, @NotNull InputSource source, ModelLoadingState state) throws IOException,
      ModelReadException {
    int ver = header.getPersistenceVersion();
    if (ver < 0) throw new ModelReadException("Couldn't read model because of unknown persistence version", null);

    IModelPersistence mp = getPersistence(ver);
    if (mp == null) {
      String m = "Can not find appropriate persistence version for model %s\n Use newer version of JetBrains MPS to load this model.";
      throw new PersistenceVersionNotFoundException(String.format(m, header.getModelReference()));
    }

    XMLSAXHandler<ModelLoadResult> handler = mp.getModelReaderHandler(state, header);
    if (handler == null) {
      String m = "Can not find appropriate persistence version for model %s\n Use newer version of JetBrains MPS to load this model.";
      throw new PersistenceVersionNotFoundException(String.format(m, header.getModelReference()));
    }

    parseAndHandleExceptions(source, handler, "model");
    // in case persistence version could change during IModelPersistence activities, might need to update header:
    // header.setPersistenceVersion(mp.getVersion());
    return handler.getResult();
  }

  @NotNull
  public static ModelLoadResult readModel(@NotNull SModelHeader header, @NotNull StreamDataSource dataSource, ModelLoadingState state) throws
      ModelReadException {
    InputStream in = null;
    try {
      in = dataSource.openInputStream();
      InputSource source = new InputSource(new InputStreamReader(in, FileUtil.DEFAULT_CHARSET));
      return readModel(header, source, state);
    } catch (IOException e) {
      throw new ModelReadException("Couldn't read model: " + e.getMessage(), e, header);
    } finally {
      FileUtil.closeFileSafe(in);
    }
  }

  @Nullable
  public static List<LineContent> getLineToContentMap(String content) throws ModelReadException {
    try {
      SModelHeader header = loadDescriptor(new InputSource(new StringReader(content)));
      IModelPersistence mp = getPersistence(header.getPersistenceVersion());

      if (mp == null) return null;

      XMLSAXHandler<List<LineContent>> handler = mp.getLineToContentMapReaderHandler();
      if (handler == null) return null;

      parseAndHandleExceptions(new InputSource(new StringReader(content)), handler, "line to content map");
      return handler.getResult();
    } catch (IOException ex) {
      throw new ModelReadException(ex.toString(), ex);
    }
  }

  /*
   * FIXME why on earth we pass SModelData here, not openapi.SModel?
   * FIXME why does this method do silent update? Would be better to update explicitly, and fail from the method if can't save with specified version
   *  returns upgraded model, or null if the model doesn't require update
   */
  public static DefaultSModel saveModel(@NotNull SModel model, @NotNull StreamDataSource source, int persistenceVersion) throws IOException {
    LOG.debug("Saving model " + model.getReference() + " to " + source.getLocation());

    if (source.isReadOnly()) {
      throw new IOException("`" + source.getLocation() + "' is read-only");
    }

    // upgrade?
    int oldVersion = persistenceVersion;
    if (model instanceof DefaultSModel) {
      DefaultSModel dsm = (DefaultSModel) model;
      SModelHeader modelHeader = dsm.getSModelHeader();
      oldVersion = modelHeader.getPersistenceVersion();
      if (oldVersion != persistenceVersion) {
        modelHeader.setPersistenceVersion(persistenceVersion);
      }
    }

    // save model
    Document document = modelToXml(model, persistenceVersion);
    JDOMUtil.writeDocument(document, source);

    if (oldVersion != persistenceVersion) {
      LOG.info("persistence upgraded: " + oldVersion + "->" + persistenceVersion + " " + model.getReference());
      return (DefaultSModel) model;
    }
    return null;
  }

  /**
   * Serialize model into xml, conformant to actual model's persistence version, if any, or current persistence version otherwise.
   * The method doesn't update persistence version of the model (as it used to do)
   */
  @NotNull
  public static Document saveModel(@NotNull SModel sourceModel) {
    int persistenceVersion = -1;
    if (sourceModel instanceof DefaultSModel) {
      persistenceVersion = ((DefaultSModel) sourceModel).getSModelHeader().getPersistenceVersion();
    }
    if (persistenceVersion == -1 || getPersistence(persistenceVersion) == null) {
      persistenceVersion = ModelPersistence.LAST_VERSION;
    }
    return modelToXml(sourceModel, persistenceVersion);
  }

  /**
   * Serialize model to xml in conformance with given persistence version.
   *
   * @throws java.lang.IllegalArgumentException if persistenceVersion is invalid (use {@link #LAST_VERSION} if uncertain
   */
  private static Document modelToXml(@NotNull SModel model, int persistenceVersion) {
    IModelPersistence modelPersistence = getPersistence(persistenceVersion);
    if (modelPersistence == null) {
      throw new IllegalArgumentException(String.format("Unknown persistence version %d", persistenceVersion));
    }
    if (persistenceVersion < 9) {
      model.getImplicitImportsSupport().calculateImplicitImports();
    }
    return modelPersistence.getModelWriter(model instanceof DefaultSModel ? ((DefaultSModel) model).getSModelHeader() : null).saveModel(model);
  }

  public static Map<String, String> calculateHashes(String content) throws IOException {
    SModelHeader header = loadDescriptor(new InputSource(new StringReader(content)));
    IModelPersistence mp = getPersistence(header.getPersistenceVersion());
    Map<String, String> result;
    if (mp != null) {
      IHashProvider hashProvider = mp.getHashProvider();
      result = hashProvider.getRootHashes(content);
      result.put(GeneratableSModel.FILE, hashProvider.getHash(content));
    } else {
      result = new HashMap<String, String>();
      result.put(GeneratableSModel.FILE, ModelDigestUtil.hashText(content));
    }
    return result;
  }

  @NotNull
  public static DefaultSModel readModel(@NotNull final StreamDataSource source, boolean interfaceOnly) throws ModelReadException {
    SModelHeader header = loadDescriptor(source);
    ModelLoadingState state = interfaceOnly ? ModelLoadingState.INTERFACE_LOADED : ModelLoadingState.FULLY_LOADED;
    return (DefaultSModel) readModel(header, source, state).getModel();
  }

  @NotNull
  public static DefaultSModel readModel(@NotNull final String content, boolean interfaceOnly) throws ModelReadException {
    try {
      SModelHeader header = loadDescriptor(new InputSource(new StringReader(content)));
      ModelLoadingState state = interfaceOnly ? ModelLoadingState.INTERFACE_LOADED : ModelLoadingState.FULLY_LOADED;
      return (DefaultSModel) readModel(header, new InputSource(new StringReader(content)), state).getModel();
    } catch (IOException ex) {
      throw new ModelReadException(ex.toString(), ex);
    }
  }

  @NotNull
  public static String modelToString(@NotNull final SModel model) {
    return JDOMUtil.asString(ModelAccess.instance().runReadAction(new Computable<Document>() {
      @Override
      public Document compute() {
        return saveModel(model);
      }
    }));
  }

  static void parseAndHandleExceptions(InputSource source, DefaultHandler handler, String what) throws IOException {
    try {
      JDOMUtil.createSAXParser().parse(source, handler);
    } catch (BreakParseSAXException e) {
      /* used to break SAX parsing flow */
    } catch (ParserConfigurationException e) {
      LOG.error(e.toString(), e);
      throw new IOException(String.format("Couldn't read %s: %s", what, e.getMessage()), e);
    } catch (SAXException e) {
      throw new IOException(String.format("Couldn't read %s: %s", what, e.getMessage()), e);
    }
  }

  public static void index(byte[] data, Callback newConsumer) throws IOException {
    SModelHeader header = loadDescriptor(new InputSource(new InputStreamReader(new ByteArrayInputStream(data), FileUtil.DEFAULT_CHARSET)));
    IModelPersistence mp = getPersistence(header.getPersistenceVersion());
    assert mp instanceof XMLPersistence : "Using unsupported persistence version: " + header.getPersistenceVersion();

    Indexer indexSupport = ((XMLPersistence) mp).getIndexSupport(newConsumer);
    indexSupport.index(new InputStreamReader(new ByteArrayInputStream(data), FileUtil.DEFAULT_CHARSET));
  }

  private static class MyDescriptorHandler extends DefaultHandler {
    private final SModelHeader myResult;

    public MyDescriptorHandler(SModelHeader result) {
      myResult = result;
    }

    @Override
    public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
      //todo this must be simplified as soon as all models are re-saved in last v9 persistence or later
      if (MODEL.equals(qName)) {
        for (int idx = 0; idx < attributes.getLength(); idx++) {
          String name = attributes.getQName(idx);
          String value = attributes.getValue(idx);
          if ("modelUID".equals(name) || ModelPersistence9.REF.equals(name)) {
            final SModelReference mr = value == null ? null : PersistenceFacade.getInstance().createModelReference(value);
            myResult.setModelReference(mr);
          } else if (SModelHeader.DO_NOT_GENERATE.equals(name)) {
            myResult.setDoNotGenerate(Boolean.parseBoolean(value));
          } else {
            myResult.setOptionalProperty(name, StringUtil.unescapeXml(value));
          }
        }
      } else if (PERSISTENCE.equals(qName)) {
        String s = attributes.getValue(PERSISTENCE_VERSION);
        if (s != null) {
          try {
            myResult.setPersistenceVersion(Integer.parseInt(s));
          } catch (NumberFormatException ignored) {
          }
        }
      } else {
        throw new BreakParseSAXException();
      }
    }

    @Override
    public void endElement(String uri, String localName, String qName) throws SAXException {
      throw new BreakParseSAXException();
    }
  }
}
