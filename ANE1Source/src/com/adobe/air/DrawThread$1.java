// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.os.Handler;
import android.os.Message;
import java.util.concurrent.Semaphore;

// Referenced classes of package com.adobe.air:
//            DrawThread, DrawRequest, AIRWindowThreadedSurfaceView

class this._cls0 extends Handler
{

    final DrawThread this$0;

    public void handleMessage(Message message)
    {
        if (message.what == 1009)
        {
            DrawThread.access$000(DrawThread.this, (DrawRequest)message.obj);
            DrawThread.access$100(DrawThread.this).drawSemaphore.release();
        }
    }

    ore()
    {
        this$0 = DrawThread.this;
        super();
    }
}
