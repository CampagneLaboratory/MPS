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
package jetbrains.mps.vfs;

import org.jetbrains.annotations.NotNull;

/**
 * @author Evgeny Gerashchenko
 */
public interface FileSystemProvider {
  /**
   * Creates an appropriate IFile from the path parameter, depending on the current fs provider and paths itself
   */
  @NotNull
  IFile getFile(@NotNull String path);

  /**
   * Part of platform functionality.
   * @see jetbrains.mps.ide.vfs.IdeaFileSystemProvider implementation for details
   */
  boolean isFileIgnored(String name);
  void scheduleUpdateForWrittenFiles(Iterable<IFile> writtenFiles);

  /**
   * @see FileSystem#runWriteTransaction(Runnable)
   * @param r code to execute within platform write lock
   * @return <code>false</code> if an exception was encountered
   */
  boolean runWriteTransaction(@NotNull Runnable r);

  void addListener(FileSystemListener listener);
  void removeListener(FileSystemListener listener);
}
