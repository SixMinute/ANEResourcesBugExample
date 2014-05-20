// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.Log;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;

// Referenced classes of package com.facebook:
//            FacebookException

public final class NativeAppCallAttachmentStore
    implements NativeAppCallContentProvider.AttachmentDataSource
{
    static interface ProcessAttachment
    {

        public abstract void processAttachment(Object obj, File file)
            throws IOException;
    }


    static final String ATTACHMENTS_DIR_NAME = "com.facebook.NativeAppCallAttachmentStore.files";
    private static final String TAG = com/facebook/NativeAppCallAttachmentStore.getName();
    private static File attachmentsDirectory;

    public NativeAppCallAttachmentStore()
    {
    }

    private void addAttachments(Context context, UUID uuid, Map map, ProcessAttachment processattachment)
    {
        if (map.size() != 0) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (attachmentsDirectory == null)
        {
            cleanupAllAttachments(context);
        }
        ensureAttachmentsDirectoryExists(context);
        ArrayList arraylist = new ArrayList();
        try
        {
            Iterator iterator1 = map.entrySet().iterator();
            while (iterator1.hasNext()) 
            {
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
                String s = (String)entry.getKey();
                Object obj = entry.getValue();
                File file1 = getAttachmentFile(uuid, s, true);
                arraylist.add(file1);
                processattachment.processAttachment(obj, file1);
            }
        }
        catch (IOException ioexception)
        {
            Log.e(TAG, (new StringBuilder("Got unexpected exception:")).append(ioexception).toString());
            Iterator iterator = arraylist.iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    throw new FacebookException(ioexception);
                }
                File file = (File)iterator.next();
                try
                {
                    file.delete();
                }
                catch (Exception exception) { }
            } while (true);
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    static File getAttachmentsDirectory(Context context)
    {
        com/facebook/NativeAppCallAttachmentStore;
        JVM INSTR monitorenter ;
        File file;
        if (attachmentsDirectory == null)
        {
            attachmentsDirectory = new File(context.getCacheDir(), "com.facebook.NativeAppCallAttachmentStore.files");
        }
        file = attachmentsDirectory;
        com/facebook/NativeAppCallAttachmentStore;
        JVM INSTR monitorexit ;
        return file;
        Exception exception;
        exception;
        throw exception;
    }

    public void addAttachmentFilesForCall(Context context, UUID uuid, Map map)
    {
        Validate.notNull(context, "context");
        Validate.notNull(uuid, "callId");
        Validate.containsNoNulls(map.values(), "imageAttachmentFiles");
        Validate.containsNoNullOrEmpty(map.keySet(), "imageAttachmentFiles");
        addAttachments(context, uuid, map, new ProcessAttachment() {

            final NativeAppCallAttachmentStore this$0;

            public void processAttachment(File file, File file1)
                throws IOException
            {
                FileOutputStream fileoutputstream = new FileOutputStream(file1);
                FileInputStream fileinputstream = new FileInputStream(file);
                byte abyte0[] = new byte[1024];
_L1:
                int i = fileinputstream.read(abyte0);
                if (i <= 0)
                {
                    Utility.closeQuietly(fileoutputstream);
                    Utility.closeQuietly(fileinputstream);
                    return;
                }
                fileoutputstream.write(abyte0, 0, i);
                  goto _L1
                Exception exception;
                exception;
                Object obj = fileinputstream;
_L3:
                Utility.closeQuietly(fileoutputstream);
                Utility.closeQuietly(((java.io.Closeable) (obj)));
                throw exception;
                exception;
                obj = null;
                if (true) goto _L3; else goto _L2
_L2:
            }

            public volatile void processAttachment(Object obj, File file)
                throws IOException
            {
                processAttachment((File)obj, file);
            }

            
            {
                this$0 = NativeAppCallAttachmentStore.this;
                super();
            }
        });
    }

    public void addAttachmentsForCall(Context context, UUID uuid, Map map)
    {
        Validate.notNull(context, "context");
        Validate.notNull(uuid, "callId");
        Validate.containsNoNulls(map.values(), "imageAttachments");
        Validate.containsNoNullOrEmpty(map.keySet(), "imageAttachments");
        addAttachments(context, uuid, map, new ProcessAttachment() {

            final NativeAppCallAttachmentStore this$0;

            public void processAttachment(Bitmap bitmap, File file)
                throws IOException
            {
                FileOutputStream fileoutputstream = new FileOutputStream(file);
                bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, fileoutputstream);
                Utility.closeQuietly(fileoutputstream);
                return;
                Exception exception;
                exception;
                Utility.closeQuietly(fileoutputstream);
                throw exception;
            }

            public volatile void processAttachment(Object obj, File file)
                throws IOException
            {
                processAttachment((Bitmap)obj, file);
            }

            
            {
                this$0 = NativeAppCallAttachmentStore.this;
                super();
            }
        });
    }

    void cleanupAllAttachments(Context context)
    {
        Utility.deleteDirectory(getAttachmentsDirectory(context));
    }

    public void cleanupAttachmentsForCall(Context context, UUID uuid)
    {
        Utility.deleteDirectory(getAttachmentsDirectoryForCall(uuid, false));
    }

    File ensureAttachmentsDirectoryExists(Context context)
    {
        File file = getAttachmentsDirectory(context);
        file.mkdirs();
        return file;
    }

    File getAttachmentFile(UUID uuid, String s, boolean flag)
        throws IOException
    {
        File file = getAttachmentsDirectoryForCall(uuid, flag);
        if (file == null)
        {
            return null;
        }
        File file1;
        try
        {
            file1 = new File(file, URLEncoder.encode(s, "UTF-8"));
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            return null;
        }
        return file1;
    }

    File getAttachmentsDirectoryForCall(UUID uuid, boolean flag)
    {
        if (attachmentsDirectory == null)
        {
            return null;
        }
        File file = new File(attachmentsDirectory, uuid.toString());
        if (flag && !file.exists())
        {
            file.mkdirs();
        }
        return file;
    }

    public File openAttachment(UUID uuid, String s)
        throws FileNotFoundException
    {
        if (Utility.isNullOrEmpty(s) || uuid == null)
        {
            throw new FileNotFoundException();
        }
        File file;
        try
        {
            file = getAttachmentFile(uuid, s, false);
        }
        catch (IOException ioexception)
        {
            throw new FileNotFoundException();
        }
        return file;
    }

}
