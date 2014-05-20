// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.os.Bundle;
import android.os.ResultReceiver;

// Referenced classes of package com.adobe.air:
//            AIRWindowSurfaceView

class this._cls0 extends ResultReceiver
{

    final AIRWindowSurfaceView this$0;

    protected void onReceiveResult(int i, Bundle bundle)
    {
        if (i == 1 || i == 3)
        {
            nativeShowOriginalRect();
            return;
        } else
        {
            AIRWindowSurfaceView.access$500(AIRWindowSurfaceView.this, true);
            return;
        }
    }

    public ()
    {
        this$0 = AIRWindowSurfaceView.this;
        super(getHandler());
    }
}
