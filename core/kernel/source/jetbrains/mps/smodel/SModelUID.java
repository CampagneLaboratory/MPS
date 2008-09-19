package jetbrains.mps.smodel;

import jetbrains.mps.util.NameUtil;
import jetbrains.mps.util.InternUtil;
import org.jetbrains.annotations.NotNull;

/**
 * Created by IntelliJ IDEA.
 * User: Cyril.Konopko
 * Date: 21.07.2005
 * Time: 14:07:53
 * To change this template use File | Settings | File Templates.
 */
public class SModelUID implements Comparable<Object> {
  private String myLongName;
  private String myStereotype;
  private String myUIDString;

  public SModelUID(String namePrefix, String shortName, String stereotype) {
    this(namePrefix + "." + shortName, stereotype);
  }

  public SModelUID(String longName, String stereotype) {
    if (longName == null) longName = "";
    if (stereotype == null) stereotype = "";
    myLongName = InternUtil.intern(longName);
    myStereotype = InternUtil.intern(stereotype);
    myUIDString = InternUtil.intern(myLongName + (myStereotype.length() == 0 ? "" : "@" + myStereotype));
  }

  public static SModelUID fromString(String s) {
    if (s == null) s = "";
    int index = s.indexOf("@");
    String stereotype = "";
    if (index >= 0) {
      stereotype = s.substring(index + 1);
    }
    String longName = s;
    if (index >= 0) {
      longName = s.substring(0, index);
    }

    return new SModelUID(longName, stereotype);
  }

  public boolean equals(Object o) {
    if (o == this) return true;
    if (!(o instanceof SModelUID)) return false;
    SModelUID otherUID = (SModelUID) o;
    return otherUID.myUIDString.equals(myUIDString);
  }

  public int hashCode() {
    return myUIDString.hashCode();
  }

  public String toString() {
    return myUIDString;
  }

  public String getLongName() {
    return myLongName;
  }

  public String getCompactPresentation() {
    return NameUtil.compactNamespace(getLongName()) + (myStereotype.length() == 0 ? "" : "@" + myStereotype.charAt(0));
  }

  public String getNamespace() {
    return NameUtil.namespaceFromLongName(getLongName());
  }

  public String getShortName() {
    int offset = getLongName().lastIndexOf('.');
    if (offset < 0) {
      return getLongName();
    }
    return getLongName().substring(offset + 1);
  }

  public String getStereotype() {
    return myStereotype;
  }

  public boolean hasStereotype() {
    return myStereotype.length() > 0;
  }

  public int compareTo(Object o) {
    int compareStereotypes = this.getStereotype().compareTo(((SModelUID)o).getStereotype());
    if (compareStereotypes != 0) return compareStereotypes;
    return this.toString().compareTo(o.toString());
  }
}
