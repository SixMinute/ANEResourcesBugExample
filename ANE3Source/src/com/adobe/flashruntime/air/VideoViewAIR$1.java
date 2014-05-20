// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.flashruntime.air;

import android.view.SurfaceHolder;
import com.adobe.air.AndroidActivityWrapper;

// Referenced classes of package com.adobe.flashruntime.air:
//            VideoViewAIR

class this._cls0
    implements android.view.allback
{

    final VideoViewAIR this$0;

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
        VideoViewAIR.access$000(VideoViewAIR.this, getFPInstance(), j, k);
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        mActivityWrapper.planeStepCascade();
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        mActivityWrapper.planeBreakCascade();
    }

    ()
    {
        this$0 = VideoViewAIR.this;
        super();
    }
}
