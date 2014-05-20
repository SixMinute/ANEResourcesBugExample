// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.Context;
import com.facebook.LoggingBehavior;
import com.facebook.Settings;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.InvalidParameterException;
import java.util.Date;
import java.util.PriorityQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.facebook.internal:
//            Utility, Logger

public final class FileLruCache
{
    private static class BufferFile
    {

        private static final String FILE_NAME_PREFIX = "buffer";
        private static final FilenameFilter filterExcludeBufferFiles = new FilenameFilter() {

            public boolean accept(File file, String s)
            {
                return !s.startsWith("buffer");
            }

        };
        private static final FilenameFilter filterExcludeNonBufferFiles = new FilenameFilter() {

            public boolean accept(File file, String s)
            {
                return s.startsWith("buffer");
            }

        };

        static void deleteAll(File file)
        {
            File afile[] = file.listFiles(excludeNonBufferFiles());
            if (afile == null) goto _L2; else goto _L1
_L1:
            int i;
            int j;
            i = afile.length;
            j = 0;
_L5:
            if (j < i) goto _L3; else goto _L2
_L2:
            return;
_L3:
            afile[j].delete();
            j++;
            if (true) goto _L5; else goto _L4
_L4:
        }

        static FilenameFilter excludeBufferFiles()
        {
            return filterExcludeBufferFiles;
        }

        static FilenameFilter excludeNonBufferFiles()
        {
            return filterExcludeNonBufferFiles;
        }

        static File newFile(File file)
        {
            return new File(file, (new StringBuilder("buffer")).append(Long.valueOf(FileLruCache.bufferIndex.incrementAndGet()).toString()).toString());
        }


        private BufferFile()
        {
        }
    }

    private static class CloseCallbackOutputStream extends OutputStream
    {

        final StreamCloseCallback callback;
        final OutputStream innerStream;

        public void close()
            throws IOException
        {
            innerStream.close();
            callback.onClose();
            return;
            Exception exception;
            exception;
            callback.onClose();
            throw exception;
        }

        public void flush()
            throws IOException
        {
            innerStream.flush();
        }

        public void write(int i)
            throws IOException
        {
            innerStream.write(i);
        }

        public void write(byte abyte0[])
            throws IOException
        {
            innerStream.write(abyte0);
        }

        public void write(byte abyte0[], int i, int j)
            throws IOException
        {
            innerStream.write(abyte0, i, j);
        }

        CloseCallbackOutputStream(OutputStream outputstream, StreamCloseCallback streamclosecallback)
        {
            innerStream = outputstream;
            callback = streamclosecallback;
        }
    }

    private static final class CopyingInputStream extends InputStream
    {

        final InputStream input;
        final OutputStream output;

        public int available()
            throws IOException
        {
            return input.available();
        }

        public void close()
            throws IOException
        {
            input.close();
            output.close();
            return;
            Exception exception;
            exception;
            output.close();
            throw exception;
        }

        public void mark(int i)
        {
            throw new UnsupportedOperationException();
        }

        public boolean markSupported()
        {
            return false;
        }

        public int read()
            throws IOException
        {
            int i = input.read();
            if (i >= 0)
            {
                output.write(i);
            }
            return i;
        }

        public int read(byte abyte0[])
            throws IOException
        {
            int i = input.read(abyte0);
            if (i > 0)
            {
                output.write(abyte0, 0, i);
            }
            return i;
        }

        public int read(byte abyte0[], int i, int j)
            throws IOException
        {
            int k = input.read(abyte0, i, j);
            if (k > 0)
            {
                output.write(abyte0, i, k);
            }
            return k;
        }

        public void reset()
        {
            this;
            JVM INSTR monitorenter ;
            throw new UnsupportedOperationException();
            Exception exception;
            exception;
            this;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public long skip(long l)
            throws IOException
        {
            byte abyte0[];
            long l1;
            abyte0 = new byte[1024];
            l1 = 0L;
_L5:
            if (l1 < l) goto _L2; else goto _L1
_L1:
            int i;
            return l1;
_L2:
            if ((i = read(abyte0, 0, (int)Math.min(l - l1, abyte0.length))) < 0) goto _L1; else goto _L3
_L3:
            l1 += i;
            if (true) goto _L5; else goto _L4
_L4:
        }

        CopyingInputStream(InputStream inputstream, OutputStream outputstream)
        {
            input = inputstream;
            output = outputstream;
        }
    }

    public static final class Limits
    {

        private int byteCount;
        private int fileCount;

        int getByteCount()
        {
            return byteCount;
        }

        int getFileCount()
        {
            return fileCount;
        }

        void setByteCount(int i)
        {
            if (i < 0)
            {
                throw new InvalidParameterException("Cache byte-count limit must be >= 0");
            } else
            {
                byteCount = i;
                return;
            }
        }

        void setFileCount(int i)
        {
            if (i < 0)
            {
                throw new InvalidParameterException("Cache file count limit must be >= 0");
            } else
            {
                fileCount = i;
                return;
            }
        }

        public Limits()
        {
            fileCount = 1024;
            byteCount = 0x100000;
        }
    }

    private static final class ModifiedFile
        implements Comparable
    {

        private static final int HASH_MULTIPLIER = 37;
        private static final int HASH_SEED = 29;
        private final File file;
        private final long modified;

        public int compareTo(ModifiedFile modifiedfile)
        {
            if (getModified() < modifiedfile.getModified())
            {
                return -1;
            }
            if (getModified() > modifiedfile.getModified())
            {
                return 1;
            } else
            {
                return getFile().compareTo(modifiedfile.getFile());
            }
        }

        public volatile int compareTo(Object obj)
        {
            return compareTo((ModifiedFile)obj);
        }

        public boolean equals(Object obj)
        {
            return (obj instanceof ModifiedFile) && compareTo((ModifiedFile)obj) == 0;
        }

        File getFile()
        {
            return file;
        }

        long getModified()
        {
            return modified;
        }

        public int hashCode()
        {
            int _tmp = 29 * 37;
            return 37 * (1073 + file.hashCode()) + (int)(modified % 0x7fffffffL);
        }

        ModifiedFile(File file1)
        {
            file = file1;
            modified = file1.lastModified();
        }
    }

    private static interface StreamCloseCallback
    {

        public abstract void onClose();
    }

    private static final class StreamHeader
    {

        private static final int HEADER_VERSION;

        static JSONObject readHeader(InputStream inputstream)
            throws IOException
        {
            int i;
            int j;
            if (inputstream.read() != 0)
            {
                return null;
            }
            i = 0;
            j = 0;
_L8:
            if (i < 3) goto _L2; else goto _L1
_L1:
            byte abyte0[];
            int i1;
            abyte0 = new byte[j];
            i1 = 0;
_L6:
            if (i1 < abyte0.length) goto _L4; else goto _L3
_L3:
            JSONTokener jsontokener = new JSONTokener(new String(abyte0));
            Object obj;
            obj = jsontokener.nextValue();
            if (obj instanceof JSONObject)
            {
                break; /* Loop/switch isn't completed */
            }
            Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, (new StringBuilder("readHeader: expected JSONObject, got ")).append(obj.getClass().getCanonicalName()).toString());
            return null;
_L2:
            int k = inputstream.read();
            if (k == -1)
            {
                Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: stream.read returned -1 while reading header size");
                return null;
            }
            int l = (j << 8) + (k & 0xff);
            i++;
            j = l;
            continue; /* Loop/switch isn't completed */
_L4:
            int j1 = inputstream.read(abyte0, i1, abyte0.length - i1);
            if (j1 < 1)
            {
                Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, (new StringBuilder("readHeader: stream.read stopped at ")).append(Integer.valueOf(i1)).append(" when expected ").append(abyte0.length).toString());
                return null;
            }
            i1 += j1;
            if (true) goto _L6; else goto _L5
_L5:
            JSONObject jsonobject = (JSONObject)obj;
            return jsonobject;
            JSONException jsonexception;
            jsonexception;
            throw new IOException(jsonexception.getMessage());
            if (true) goto _L8; else goto _L7
_L7:
        }

        static void writeHeader(OutputStream outputstream, JSONObject jsonobject)
            throws IOException
        {
            byte abyte0[] = jsonobject.toString().getBytes();
            outputstream.write(0);
            outputstream.write(0xff & abyte0.length >> 16);
            outputstream.write(0xff & abyte0.length >> 8);
            outputstream.write(0xff & abyte0.length >> 0);
            outputstream.write(abyte0);
        }

        private StreamHeader()
        {
        }
    }


    private static final String HEADER_CACHEKEY_KEY = "key";
    private static final String HEADER_CACHE_CONTENT_TAG_KEY = "tag";
    static final String TAG = com/facebook/internal/FileLruCache.getSimpleName();
    private static final AtomicLong bufferIndex = new AtomicLong();
    private final File directory;
    private boolean isTrimInProgress;
    private boolean isTrimPending;
    private AtomicLong lastClearCacheTime;
    private final Limits limits;
    private final Object lock = new Object();
    private final String tag;

    public FileLruCache(Context context, String s, Limits limits1)
    {
        lastClearCacheTime = new AtomicLong(0L);
        tag = s;
        limits = limits1;
        directory = new File(context.getCacheDir(), s);
        if (directory.mkdirs() || directory.isDirectory())
        {
            BufferFile.deleteAll(directory);
        }
    }

    private void postTrim()
    {
        synchronized (lock)
        {
            if (!isTrimPending)
            {
                isTrimPending = true;
                Settings.getExecutor().execute(new Runnable() {

                    final FileLruCache this$0;

                    public void run()
                    {
                        trim();
                    }

            
            {
                this$0 = FileLruCache.this;
                super();
            }
                });
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private void renameToTargetAndTrim(String s, File file)
    {
        if (!file.renameTo(new File(directory, Utility.md5hash(s))))
        {
            file.delete();
        }
        postTrim();
    }

    private void trim()
    {
        synchronized (lock)
        {
            isTrimPending = false;
            isTrimInProgress = true;
        }
        PriorityQueue priorityqueue;
        Logger.log(LoggingBehavior.CACHE, TAG, "trim started");
        priorityqueue = new PriorityQueue();
        long l;
        long l1;
        l = 0L;
        l1 = 0L;
        File afile[] = directory.listFiles(BufferFile.excludeBufferFiles());
        if (afile == null) goto _L2; else goto _L1
_L1:
        int i = afile.length;
        int j = 0;
          goto _L3
_L2:
        if (l > (long)limits.getByteCount()) goto _L5; else goto _L4
_L4:
        int k = limits.getFileCount();
        if (l1 <= (long)k)
        {
            synchronized (lock)
            {
                isTrimInProgress = false;
                lock.notifyAll();
            }
            return;
        }
          goto _L5
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
_L6:
        File file1 = afile[j];
        ModifiedFile modifiedfile = new ModifiedFile(file1);
        priorityqueue.add(modifiedfile);
        Logger.log(LoggingBehavior.CACHE, TAG, (new StringBuilder("  trim considering time=")).append(Long.valueOf(modifiedfile.getModified())).append(" name=").append(modifiedfile.getFile().getName()).toString());
        l += file1.length();
        l1++;
        j++;
        continue; /* Loop/switch isn't completed */
_L5:
        File file;
        file = ((ModifiedFile)priorityqueue.remove()).getFile();
        Logger.log(LoggingBehavior.CACHE, TAG, (new StringBuilder("  trim removing ")).append(file.getName()).toString());
        l -= file.length();
        l1--;
        file.delete();
        break; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        synchronized (lock)
        {
            isTrimInProgress = false;
            lock.notifyAll();
        }
        throw exception1;
        exception2;
        obj1;
        JVM INSTR monitorexit ;
        throw exception2;
        exception3;
        obj2;
        JVM INSTR monitorexit ;
        throw exception3;
_L3:
        if (j < i) goto _L6; else goto _L2
    }

    public void clearCache()
    {
        final File filesToDelete[] = directory.listFiles(BufferFile.excludeBufferFiles());
        lastClearCacheTime.set(System.currentTimeMillis());
        if (filesToDelete != null)
        {
            Settings.getExecutor().execute(new Runnable() {

                final FileLruCache this$0;
                private final File val$filesToDelete[];

                public void run()
                {
                    File afile[] = filesToDelete;
                    int i = afile.length;
                    int j = 0;
                    do
                    {
                        if (j >= i)
                        {
                            return;
                        }
                        afile[j].delete();
                        j++;
                    } while (true);
                }

            
            {
                this$0 = FileLruCache.this;
                filesToDelete = afile;
                super();
            }
            });
        }
    }

    public InputStream get(String s)
        throws IOException
    {
        return get(s, null);
    }

    public InputStream get(String s, String s1)
        throws IOException
    {
        File file;
        BufferedInputStream bufferedinputstream;
        JSONObject jsonobject;
        file = new File(directory, Utility.md5hash(s));
        FileInputStream fileinputstream;
        try
        {
            fileinputstream = new FileInputStream(file);
        }
        catch (IOException ioexception)
        {
            return null;
        }
        bufferedinputstream = new BufferedInputStream(fileinputstream, 8192);
        jsonobject = StreamHeader.readHeader(bufferedinputstream);
        if (jsonobject == null)
        {
            if (true)
            {
                bufferedinputstream.close();
            }
            return null;
        }
        String s2 = jsonobject.optString("key");
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_94;
        }
        boolean flag = s2.equals(s);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_105;
        }
        if (true)
        {
            bufferedinputstream.close();
        }
        return null;
        String s3 = jsonobject.optString("tag", null);
        if (s1 == null && s3 != null)
        {
            break MISSING_BLOCK_LABEL_141;
        }
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_152;
        }
        boolean flag1 = s1.equals(s3);
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_152;
        }
        if (true)
        {
            bufferedinputstream.close();
        }
        return null;
        long l = (new Date()).getTime();
        Logger.log(LoggingBehavior.CACHE, TAG, (new StringBuilder("Setting lastModified to ")).append(Long.valueOf(l)).append(" for ").append(file.getName()).toString());
        file.setLastModified(l);
        if (false)
        {
            bufferedinputstream.close();
        }
        return bufferedinputstream;
        Exception exception;
        exception;
        if (true)
        {
            bufferedinputstream.close();
        }
        throw exception;
    }

    public InputStream interceptAndPut(String s, InputStream inputstream)
        throws IOException
    {
        return new CopyingInputStream(inputstream, openPutStream(s));
    }

    OutputStream openPutStream(String s)
        throws IOException
    {
        return openPutStream(s, null);
    }

    public OutputStream openPutStream(String s, String s1)
        throws IOException
    {
        BufferedOutputStream bufferedoutputstream;
        File file = BufferFile.newFile(directory);
        file.delete();
        if (!file.createNewFile())
        {
            throw new IOException((new StringBuilder("Could not create file at ")).append(file.getAbsolutePath()).toString());
        }
        FileOutputStream fileoutputstream;
        JSONObject jsonobject;
        try
        {
            fileoutputstream = new FileOutputStream(file);
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            Logger.log(LoggingBehavior.CACHE, 5, TAG, (new StringBuilder("Error creating buffer output stream: ")).append(filenotfoundexception).toString());
            throw new IOException(filenotfoundexception.getMessage());
        }
        bufferedoutputstream = new BufferedOutputStream(new CloseCallbackOutputStream(fileoutputstream, new StreamCloseCallback() {

            final FileLruCache this$0;
            private final File val$buffer;
            private final long val$bufferFileCreateTime;
            private final String val$key;

            public void onClose()
            {
                if (bufferFileCreateTime < lastClearCacheTime.get())
                {
                    buffer.delete();
                    return;
                } else
                {
                    renameToTargetAndTrim(key, buffer);
                    return;
                }
            }

            
            {
                this$0 = FileLruCache.this;
                bufferFileCreateTime = l;
                buffer = file;
                key = s;
                super();
            }
        }), 8192);
        jsonobject = new JSONObject();
        jsonobject.put("key", s);
        if (!Utility.isNullOrEmpty(s1))
        {
            jsonobject.put("tag", s1);
        }
        StreamHeader.writeHeader(bufferedoutputstream, jsonobject);
        if (false)
        {
            bufferedoutputstream.close();
        }
        return bufferedoutputstream;
        JSONException jsonexception;
        jsonexception;
        Logger.log(LoggingBehavior.CACHE, 5, TAG, (new StringBuilder("Error creating JSON header for cache file: ")).append(jsonexception).toString());
        throw new IOException(jsonexception.getMessage());
        Exception exception;
        exception;
        if (true)
        {
            bufferedoutputstream.close();
        }
        throw exception;
    }

    long sizeInBytesForTest()
    {
        Object obj = lock;
        obj;
        JVM INSTR monitorenter ;
_L5:
        if (isTrimPending || isTrimInProgress) goto _L2; else goto _L1
_L1:
        File afile[];
        long l;
        afile = directory.listFiles();
        l = 0L;
        if (afile == null) goto _L4; else goto _L3
_L3:
        int i;
        int j;
        i = afile.length;
        j = 0;
_L6:
        if (j < i)
        {
            break MISSING_BLOCK_LABEL_77;
        }
_L4:
        return l;
_L2:
        Exception exception;
        try
        {
            lock.wait();
        }
        catch (InterruptedException interruptedexception) { }
        finally { }
          goto _L5
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        l += afile[j].length();
        j++;
          goto _L6
    }

    public String toString()
    {
        return (new StringBuilder("{FileLruCache: tag:")).append(tag).append(" file:").append(directory.getName()).append("}").toString();
    }





}
