// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.view.SurfaceHolder;

// Referenced classes of package com.adobe.air:
//            AndroidCamera

class this._cls0
    implements android.view.
{

    final AndroidCamera this$0;

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        AndroidCamera.access$702(AndroidCamera.this, true);
        if (AndroidCamera.access$000(AndroidCamera.this) != 0L && AndroidCamera.access$100(AndroidCamera.this))
        {
            AndroidCamera.access$800(AndroidCamera.this, AndroidCamera.access$000(AndroidCamera.this));
        }
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        AndroidCamera.access$702(AndroidCamera.this, false);
        if (AndroidCamera.access$000(AndroidCamera.this) != 0L && AndroidCamera.access$100(AndroidCamera.this))
        {
            AndroidCamera.access$900(AndroidCamera.this, AndroidCamera.access$000(AndroidCamera.this));
        }
    }

    ()
    {
        this$0 = AndroidCamera.this;
        super();
    }
}
