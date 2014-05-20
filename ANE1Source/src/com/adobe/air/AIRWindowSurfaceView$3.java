// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            AIRWindowSurfaceView

class val.theThis
    implements android.view.tyChangeListener
{

    final AIRWindowSurfaceView this$0;
    final AIRWindowSurfaceView val$theThis;

    public void onSystemUiVisibilityChange(int i)
    {
        val$theThis.setOnSystemUiVisibilityChangeListener(null);
        if (val$theThis.getIsFullScreen())
        {
            AIRWindowSurfaceView.access$900(val$theThis, true);
            return;
        } else
        {
            AIRWindowSurfaceView.access$900(val$theThis, false);
            return;
        }
    }

    yChangeListener()
    {
        this$0 = final_airwindowsurfaceview;
        val$theThis = AIRWindowSurfaceView.this;
        super();
    }
}
