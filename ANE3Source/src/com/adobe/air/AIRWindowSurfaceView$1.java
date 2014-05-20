// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.widget.RelativeLayout;

// Referenced classes of package com.adobe.air:
//            AIRWindowSurfaceView, AndroidWebView, AndroidStageText

class val.overlays
    implements Runnable
{

    final AIRWindowSurfaceView this$0;
    final int val$height;
    final RelativeLayout val$overlays;

    public void run()
    {
        if (val$height == 0 && AIRWindowSurfaceView.access$600(AIRWindowSurfaceView.this) != null)
        {
            AIRWindowSurfaceView.access$600(AIRWindowSurfaceView.this).resetGlobalBounds();
            AIRWindowSurfaceView.access$602(AIRWindowSurfaceView.this, null);
        }
        if (val$height == 0 && AIRWindowSurfaceView.access$700(AIRWindowSurfaceView.this) != null)
        {
            AIRWindowSurfaceView.access$700(AIRWindowSurfaceView.this).resetGlobalBounds();
            AIRWindowSurfaceView.access$702(AIRWindowSurfaceView.this, null);
        }
        val$overlays.setPadding(0, -val$height, 0, 0);
        val$overlays.requestLayout();
    }

    ()
    {
        this$0 = final_airwindowsurfaceview;
        val$height = i;
        val$overlays = RelativeLayout.this;
        super();
    }
}
