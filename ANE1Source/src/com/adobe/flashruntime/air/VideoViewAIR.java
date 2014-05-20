// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.flashruntime.air;

import android.content.Context;
import android.view.SurfaceHolder;
import com.adobe.air.AndroidActivityWrapper;
import com.adobe.air.FlashEGL;
import com.adobe.flashruntime.shared.VideoView;

public class VideoViewAIR extends VideoView
{

    private static String kLogTag = "VideoViewAIR";
    protected AndroidActivityWrapper mActivityWrapper;
    private FlashEGL mVideoFlashEGL;

    public VideoViewAIR(Context context, AndroidActivityWrapper androidactivitywrapper)
    {
        super(context);
        mVideoFlashEGL = null;
        mActivityWrapper = androidactivitywrapper;
        mActivityWrapper.registerPlane(this, 7);
        mActivityWrapper.planeStepCascade();
        getHolder().addCallback(new android.view.SurfaceHolder.Callback() {

            final VideoViewAIR this$0;

            public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
            {
                nativeSetSurfaceSize(getFPInstance(), j, k);
            }

            public void surfaceCreated(SurfaceHolder surfaceholder)
            {
                mActivityWrapper.planeStepCascade();
            }

            public void surfaceDestroyed(SurfaceHolder surfaceholder)
            {
                mActivityWrapper.planeBreakCascade();
            }

            
            {
                this$0 = VideoViewAIR.this;
                super();
            }
        });
    }

    private native void nativeSetSurfaceSize(long l, int i, int j);

    public FlashEGL getVideoEgl()
    {
        if (mVideoFlashEGL == null)
        {
            mVideoFlashEGL = new FlashEGL();
        }
        return mVideoFlashEGL;
    }


}
