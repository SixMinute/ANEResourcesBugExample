// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.SystemClock;

// Referenced classes of package com.adobe.air:
//            ConfigDownloadListener, AndroidActivityWrapper

class this._cls0
    implements ateChangeCallback
{

    final ConfigDownloadListener this$0;

    public void onActivityStateChanged(tivityState tivitystate)
    {
        Activity activity = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity();
        if (tivitystate == tivityState.PAUSED)
        {
            activity.unregisterReceiver(ConfigDownloadListener.access$100(ConfigDownloadListener.this));
            ConfigDownloadListener.access$002(ConfigDownloadListener.this, SystemClock.uptimeMillis());
        } else
        if (tivitystate == tivityState.RESUMED)
        {
            activity.registerReceiver(ConfigDownloadListener.access$100(ConfigDownloadListener.this), new IntentFilter("com.adobe.air.DownloadConfigComplete"));
            return;
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
    }

    tivityState()
    {
        this$0 = ConfigDownloadListener.this;
        super();
    }
}
