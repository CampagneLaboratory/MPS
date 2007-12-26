package jetbrains.mps.refactoring.framework;

import jetbrains.mps.generator.TransientModels;
import jetbrains.mps.logging.Logger;
import jetbrains.mps.refactoring.framework.RefactoringContext.FullNodeId;
import jetbrains.mps.smodel.*;
import jetbrains.mps.smodel.persistence.def.ModelPersistence;
import org.jdom.Element;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 12.12.2007
 * Time: 18:57:52
 * To change this template use File | Settings | File Templates.
 */
public class Serializer {
  private static final Logger LOG = Logger.getLogger(Serializer.class);

  public static final String OBJECT_TYPE = "objectType";

  //types
  public static final String SNODE = "snode";
  public static final String STRING = "string";
  public static final String SMODEL = "smodel";
  public static final String SMODEL_DESCRIPTOR = "smodelDescriptor";
  public static final String ISERIALIZABLE = "iserializable";

  public static final String STRING_VALUE = "stringValue";
  public static final String MODEL_UID = "modelUID";
  public static final String CLASS_NAME = "className";
  public ModelOwner myOwner;


  public void serialize(Element element, Object value) {
    if (value instanceof String) {
      element.setAttribute(OBJECT_TYPE, STRING);
      element.setAttribute(STRING_VALUE, (String) value);
    }
    if (value instanceof SNode) {
      element.setAttribute(OBJECT_TYPE, SNODE);
      FullNodeId fullNodeId = new FullNodeId((SNode)value);
      fullNodeId.toElement(element);
    }
    if (value instanceof SModel) {
      element.setAttribute(OBJECT_TYPE, SMODEL);
      element.setAttribute(MODEL_UID, ((SModel)value).toString());
    }
    if (value instanceof SModelDescriptor) {
      element.setAttribute(OBJECT_TYPE, SMODEL_DESCRIPTOR);
      element.setAttribute(MODEL_UID, ((SModelDescriptor)value).toString());
    }
    if (value instanceof ISerializable) {
      element.setAttribute(OBJECT_TYPE, ISERIALIZABLE);
      element.setAttribute(CLASS_NAME, value.getClass().getName());
      ((ISerializable)value).toElement(element);
    }
  }

  public Object deserialize(Element element) {
    String objectType = element.getAttributeValue(OBJECT_TYPE);
    if (STRING.equals(objectType)) {
      return element.getAttributeValue(STRING_VALUE);
    }
    if (SNODE.equals(OBJECT_TYPE)) {
      FullNodeId fullNodeId = new FullNodeId(element);
      return fullNodeId.getNode();
    }
    if (SMODEL_DESCRIPTOR.equals(OBJECT_TYPE)) {
      return SModelRepository.getInstance().getModelDescriptor(SModelUID.fromString(element.getAttributeValue(MODEL_UID)));
    }
    if (SMODEL.equals(OBJECT_TYPE)) {
      SModelDescriptor modelDescriptor = SModelRepository.getInstance().
              getModelDescriptor(SModelUID.fromString(element.getAttributeValue(MODEL_UID)));
      if (modelDescriptor == null) {
        return null;
      }
      return modelDescriptor.getSModel();
    }
    if (ISERIALIZABLE.equals(OBJECT_TYPE)) {
      String className = element.getAttributeValue(CLASS_NAME);
      try {
        Class<ISerializable> c = (Class<ISerializable>) Class.forName(className);
      } catch (Throwable t) {
        LOG.error(t);
      }
    }
    return null;
  }
}
