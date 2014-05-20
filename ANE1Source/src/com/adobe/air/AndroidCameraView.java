// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.view.SurfaceHolder;
import android.view.SurfaceView;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

class AndroidCameraView extends SurfaceView
    implements android.view.SurfaceHolder.Callback
{

    private AndroidActivityWrapper mActivityWrapper;
    private boolean mRecreating;

    public AndroidCameraView(Context context, AndroidActivityWrapper androidactivitywrapper)
    {
        super(context);
        mActivityWrapper = null;
        mRecreating = false;
        mActivityWrapper = androidactivitywrapper;
        getHolder().setType(3);
        setZOrderMediaOverlay(false);
        getHolder().addCallback(this);
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        mActivityWrapper.planeStepCascade();
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        mActivityWrapper.planeBreakCascade();
    }
}
