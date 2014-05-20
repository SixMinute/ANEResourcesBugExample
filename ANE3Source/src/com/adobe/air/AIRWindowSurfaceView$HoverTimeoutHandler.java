// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.os.Handler;
import android.os.Message;

// Referenced classes of package com.adobe.air:
//            AIRWindowSurfaceView, TouchEventData, Entrypoints

class mAIRWindowSurfaceView extends Handler
{

    static final int INTERVAL = 500;
    private AIRWindowSurfaceView mAIRWindowSurfaceView;
    private long mLastMove;
    final AIRWindowSurfaceView this$0;

    public void handleMessage(Message message)
    {
        if (System.currentTimeMillis() - mLastMove >= 500L)
        {
            AIRWindowSurfaceView.access$002(AIRWindowSurfaceView.this, false);
            Entrypoints.registerTouchCallback(0, new TouchEventData(32, AIRWindowSurfaceView.access$100(mAIRWindowSurfaceView), AIRWindowSurfaceView.access$200(mAIRWindowSurfaceView), 0.0F, 0, 0.0F, 0.0F, true, null, AIRWindowSurfaceView.access$300(mAIRWindowSurfaceView)), null);
            return;
        } else
        {
            AIRWindowSurfaceView.access$400(AIRWindowSurfaceView.this).sendEmptyMessageDelayed(0, 500L);
            return;
        }
    }

    public void setLastMove(long l)
    {
        mLastMove = l;
    }

    public (AIRWindowSurfaceView airwindowsurfaceview1)
    {
        this$0 = AIRWindowSurfaceView.this;
        super();
        mAIRWindowSurfaceView = airwindowsurfaceview1;
    }
}
