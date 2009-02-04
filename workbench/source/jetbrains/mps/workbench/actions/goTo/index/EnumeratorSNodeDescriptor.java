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
package jetbrains.mps.workbench.actions.goTo.index;

import com.intellij.util.io.KeyDescriptor;

import java.io.DataOutput;
import java.io.IOException;
import java.io.DataInput;

class EnumeratorSNodeDescriptor implements KeyDescriptor<SNodeDescriptor> {
    private final byte mySizeOfUUID = 16;

    private void putLong(byte[] b, int off, long val) {
      b[off + 7] = (byte) (val);
      b[off + 6] = (byte) (val >>> 8);
      b[off + 5] = (byte) (val >>> 16);
      b[off + 4] = (byte) (val >>> 24);
      b[off + 3] = (byte) (val >>> 32);
      b[off + 2] = (byte) (val >>> 40);
      b[off + 1] = (byte) (val >>> 48);
      b[off + 0] = (byte) (val >>> 56);
    }

    private long getLong(byte[] b, int off) {
      return ((b[off + 7] & 0xFFL)) +
        ((b[off + 6] & 0xFFL) << 8) +
        ((b[off + 5] & 0xFFL) << 16) +
        ((b[off + 4] & 0xFFL) << 24) +
        ((b[off + 3] & 0xFFL) << 32) +
        ((b[off + 2] & 0xFFL) << 40) +
        ((b[off + 1] & 0xFFL) << 48) +
        (((long) b[off + 0]) << 56);
    }

    private void putString(byte[] b, int off, String str) {
      byte[] val = str.getBytes();
      int i = 0;
      while (i < val.length) {
        b[off + i] = val[i];
        ++i;
      }
    }

    private String getString(byte[] b, int off, int len) {
      byte[] bytes = new byte[len];
      System.arraycopy(b, off, bytes, 0, len);
      return new String(bytes);
    }

    private byte[] nodeDescriptorToBytes(SNodeDescriptor node) {
      int conceptNameLength = node.getConceptFqName().getBytes().length;
      int nodeNameLength = node.getNodeName().getBytes().length;
      int len = mySizeOfUUID + conceptNameLength + nodeNameLength + 3;
      byte[] result = new byte[mySizeOfUUID + conceptNameLength + nodeNameLength + 4];
      result[0] = (byte) len;
      putLong(result, 1, node.getMostSignificantBits());
      putLong(result, mySizeOfUUID / 2 + 1, node.getLeastSignificantBits());
      result[mySizeOfUUID + 1] = (byte) node.getNumberInModel();
      result[mySizeOfUUID + 2] = (byte) conceptNameLength;
      putString(result, mySizeOfUUID + 3, node.getConceptFqName());
      result[mySizeOfUUID + 3 + conceptNameLength] = (byte) nodeNameLength;
      putString(result, mySizeOfUUID + 4 + conceptNameLength, node.getNodeName());
      return result;
    }

    private SNodeDescriptor bytesToNodeDescriptor(byte[] bytes) {
      long mostSignificantBits = getLong(bytes, 0);
      long leastSignificantBits = getLong(bytes, mySizeOfUUID / 2);
      int numberInModel = 0xFF & (int)bytes[mySizeOfUUID];
      int conceptNameLength = 0xFF & (int)bytes[mySizeOfUUID + 1];
      String conceptFqName = getString(bytes, mySizeOfUUID + 2, conceptNameLength);
      int nodeNameLength = 0xFF & (int)bytes[mySizeOfUUID + conceptNameLength + 2];
      String nodeName = getString(bytes, mySizeOfUUID + conceptNameLength + 3, nodeNameLength);
      return new SNodeDescriptor(nodeName, conceptFqName, mostSignificantBits, leastSignificantBits, false, numberInModel);
    }

    public int getHashCode(SNodeDescriptor value) {
      return value.getModelReference().toString().hashCode() * 10 + value.getNumberInModel();
    }

    public boolean isEqual(SNodeDescriptor val1, SNodeDescriptor val2) {
      return val1.getConceptFqName().equals(val2.getConceptFqName())
        && val1.isDependOnOtherModel().equals(val2.isDependOnOtherModel())
        && val1.getNodeName().equals(val2.getNodeName())
        && val1.getNumberInModel() == val2.getNumberInModel()
        && val1.getLeastSignificantBits() == val2.getLeastSignificantBits()
        && val1.getMostSignificantBits() == val2.getMostSignificantBits();
    }

    public void save(DataOutput out, SNodeDescriptor value) throws IOException {
      out.write(nodeDescriptorToBytes(value));
    }

    public SNodeDescriptor read(DataInput in) throws IOException {
      int len = 0xFF & (int)in.readByte();
      byte[] bytes = new byte[len];
      in.readFully(bytes, 0, len);
      return bytesToNodeDescriptor(bytes);
    }
  }
