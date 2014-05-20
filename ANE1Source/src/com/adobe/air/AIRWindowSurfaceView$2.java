// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.view.SurfaceHolder;

// Referenced classes of package com.adobe.air:
//            AIRWindowSurfaceView

class val.format
    implements Runnable
{

    final AIRWindowSurfaceView this$0;
    final int val$format;

    public void run()
    {
        mSurfaceHolder.setFormat(val$format);
        AIRWindowSurfaceView.access$802(AIRWindowSurfaceView.this, val$format);
    }

    ()
    {
        this$0 = final_airwindowsurfaceview;
        val$format = I.this;
        super();
    }
}
