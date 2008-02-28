package jetbrains.mps.smodel;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 07.06.2006
 * Time: 14:55:52
 * To change this template use File | Settings | File Templates.
 */
public class AttributesRolesUtil {
  public static final String DEFAULT_ATTRIBUTE_ROLE = "_attr_";
  public static final String STEREOTYPE_DELIM = "$";
  public static final String ATTRIBUTE_STEREOTYPE = "attribute";
  public static final String PROPERTY_ATTRIBUTE_STEREOTYPE = "property_attribute";
  public static final String LINK_ATTRIBUTE_STEREOTYPE = "link_attribute";

  public static String childRoleFromAttributeRole(String attributeRole) {
    String attrRole = ensureNotEmpty(attributeRole);
    return attrRole + STEREOTYPE_DELIM + ATTRIBUTE_STEREOTYPE;
  }

  public static String childRoleFromPropertyAttributeRole(String propertyAttributeRole, String propertyName) {
    String attrRole = ensureNotEmpty(propertyAttributeRole);
    return attrRole + STEREOTYPE_DELIM + PROPERTY_ATTRIBUTE_STEREOTYPE + STEREOTYPE_DELIM + propertyName;
  }

  public static boolean isChildRoleOfPropertyAttributeRole(String propertyAttributeRole, String childRole) {
    String attrRole = ensureNotEmpty(propertyAttributeRole);
    return childRole.startsWith(attrRole + STEREOTYPE_DELIM + PROPERTY_ATTRIBUTE_STEREOTYPE + STEREOTYPE_DELIM);
  }

  public static boolean isChildRoleOfPropertyAttributeForPropertyName(String propertyName, String childRole) {
    return childRole.endsWith(STEREOTYPE_DELIM + PROPERTY_ATTRIBUTE_STEREOTYPE + STEREOTYPE_DELIM + propertyName);
  }

  public static boolean isChildRoleOfLinkAttributeForLinkRole(String linkRole, String childRole) {
    return childRole.endsWith(STEREOTYPE_DELIM + LINK_ATTRIBUTE_STEREOTYPE + STEREOTYPE_DELIM + linkRole);
  }

  public static String childRoleFromLinkAttributeRole(String linkAttributeRole, String linkRole) {
    String attrRole = ensureNotEmpty(linkAttributeRole);
    return attrRole + STEREOTYPE_DELIM + LINK_ATTRIBUTE_STEREOTYPE + STEREOTYPE_DELIM + linkRole;
  }

  public static boolean isChildRoleOfLinkAttributeRole(String linkAttributeRole, String childRole) {
    String attrRole = ensureNotEmpty(linkAttributeRole);
    return childRole.startsWith(attrRole + STEREOTYPE_DELIM + LINK_ATTRIBUTE_STEREOTYPE + STEREOTYPE_DELIM);
  }

  private static String ensureNotEmpty(String attributeRole) {
    if (attributeRole == null || "".equals(attributeRole)) {
      attributeRole = DEFAULT_ATTRIBUTE_ROLE;
    }
    return attributeRole;
  }

  public static boolean isNodeAttributeRole(String role) {
    return role.endsWith(STEREOTYPE_DELIM + ATTRIBUTE_STEREOTYPE);
  }

  public static boolean isLinkAttributeRole(String role) {
    return role.indexOf(STEREOTYPE_DELIM + LINK_ATTRIBUTE_STEREOTYPE + STEREOTYPE_DELIM) > 0;
  }

  public static boolean isPropertyAttributeRole(String role) {
    return role.indexOf(STEREOTYPE_DELIM + PROPERTY_ATTRIBUTE_STEREOTYPE + STEREOTYPE_DELIM) > 0;
  }

  public static boolean isAttributeRole(String role) {
    return (AttributesRolesUtil.isNodeAttributeRole(role) ||
            AttributesRolesUtil.isLinkAttributeRole(role) ||
            AttributesRolesUtil.isPropertyAttributeRole(role));
  }

  public static String replaceLinkRoleInLinkAttributeRole(String attributeRole, String linkRole) {
    assert isLinkAttributeRole(attributeRole) : "attribute role must be link attribute role. was: " + attributeRole;
    int i = attributeRole.lastIndexOf(STEREOTYPE_DELIM);
    String result = attributeRole.substring(0, i + 1) + linkRole;
    return result;
  }

  public static String getLinkRoleFromLinkAttributeRole(String attributeRole) {
    int index = attributeRole.indexOf(STEREOTYPE_DELIM);
    if (index < 0) return null;
    String tail = attributeRole.substring(index + 1);
    if (tail.startsWith(LINK_ATTRIBUTE_STEREOTYPE)) {
      return tail.substring((STEREOTYPE_DELIM + LINK_ATTRIBUTE_STEREOTYPE).length());
    } else {
      return null;
    }
  }

  public static String getPropertyNameFromPropertyAttributeRole(String attributeRole) {
    int index = attributeRole.indexOf(STEREOTYPE_DELIM);
    if (index < 0) return null;
    String tail = attributeRole.substring(index + 1);
    if (tail.startsWith(PROPERTY_ATTRIBUTE_STEREOTYPE)) {
      return tail.substring((STEREOTYPE_DELIM + PROPERTY_ATTRIBUTE_STEREOTYPE).length());
    } else {
      return null;
    }
  }

  public static String getFeatureAttributeRoleFromChildRole(String attributeRole) {
    int index = attributeRole.indexOf(STEREOTYPE_DELIM);
    if (index < 0) return null;
    String tail = attributeRole.substring(0, index);
    return tail;
  }

  public static void main(String[] args) {
    String childRole = "declaration$link_attribute$macro";
    System.err.println(getFeatureAttributeRoleFromChildRole(childRole));
  }
}
