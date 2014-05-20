// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.hardware.Camera;

// Referenced classes of package com.adobe.air:
//            AndroidCamera

class this._cls0
    implements android.hardware.llback
{

    final AndroidCamera this$0;

    public void onPreviewFrame(byte abyte0[], Camera camera)
    {
        if (AndroidCamera.access$000(AndroidCamera.this) != 0L && AndroidCamera.access$100(AndroidCamera.this))
        {
            AndroidCamera.access$200(AndroidCamera.this, AndroidCamera.access$000(AndroidCamera.this), abyte0);
        }
        if (AndroidCamera.access$300(AndroidCamera.this) != AndroidCamera.access$400(AndroidCamera.this))
        {
            break MISSING_BLOCK_LABEL_87;
        }
        AndroidCamera.access$302(AndroidCamera.this, AndroidCamera.access$500(AndroidCamera.this));
_L1:
        AndroidCamera.access$600(AndroidCamera.this).addCallbackBuffer(AndroidCamera.access$300(AndroidCamera.this));
        return;
        try
        {
            AndroidCamera.access$302(AndroidCamera.this, AndroidCamera.access$400(AndroidCamera.this));
        }
        catch (Exception exception)
        {
            return;
        }
          goto _L1
    }

    wCallback()
    {
        this$0 = AndroidCamera.this;
        super();
    }
}
