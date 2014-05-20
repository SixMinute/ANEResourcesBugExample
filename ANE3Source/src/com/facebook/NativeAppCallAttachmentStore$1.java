// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.graphics.Bitmap;
import com.facebook.internal.Utility;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

// Referenced classes of package com.facebook:
//            NativeAppCallAttachmentStore

class this._cls0
    implements ocessAttachment
{

    final NativeAppCallAttachmentStore this$0;

    public void processAttachment(Bitmap bitmap, File file)
        throws IOException
    {
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        bitmap.compress(android.graphics.sAttachment, 100, fileoutputstream);
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

    ocessAttachment()
    {
        this$0 = NativeAppCallAttachmentStore.this;
        super();
    }
}
