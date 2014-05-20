// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.os.Handler;
import android.os.Looper;

// Referenced classes of package com.adobe.air:
//            customHandler

public class WorkerLooper
{

    private Handler mHandler;
    private Looper mLooper;

    public WorkerLooper()
    {
        Looper.prepare();
        mHandler = new customHandler();
        mLooper = Looper.myLooper();
    }

    public Handler getHandler()
    {
        return mHandler;
    }

    public void quit()
    {
        mLooper.quit();
    }

    public void start()
    {
        Looper.loop();
    }
}
