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

package jetbrains.mps.idea.java.index;

import com.intellij.util.io.DataExternalizer;
import jetbrains.mps.workbench.goTo.index.SNodeDescriptor;

import java.io.DataInput;
import java.io.DataOutput;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/**
* User: fyodor
* Date: 3/28/13
*/
class SNodeDescriptorsDataExternalizer implements DataExternalizer<Collection<SNodeDescriptor>> {

  static SNodeDescriptorsDataExternalizer INSTANCE = new SNodeDescriptorsDataExternalizer();

  @Override
  public void save(DataOutput out, Collection<SNodeDescriptor> value) throws IOException {
    out.writeInt(value.size());
    for (SNodeDescriptor descriptor : value) {
      descriptor.save(out);
    }
  }

  @Override
  public Collection<SNodeDescriptor> read(DataInput in) throws IOException {
    int size = in.readInt();
    List<SNodeDescriptor> result = new ArrayList<SNodeDescriptor>();
    for (int i = 0; i < size; i++) {
      SNodeDescriptor d = SNodeDescriptor.read(in);
      result.add(d);
    }
    return result;
  }
}
