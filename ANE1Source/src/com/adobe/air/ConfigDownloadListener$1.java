// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

// Referenced classes of package com.adobe.air:
//            ConfigDownloadListener, AndroidActivityWrapper

class LOG_TAG extends BroadcastReceiver
{

    private String LOG_TAG;
    final ConfigDownloadListener this$0;

    public void onReceive(Context context, Intent intent)
    {
        if (intent.getAction().equals("com.adobe.air.DownloadConfigComplete"))
        {
            boolean flag;
            if (isInitialStickyBroadcast())
            {
                Bundle bundle = intent.getExtras();
                flag = false;
                if (bundle != null)
                {
                    long l = bundle.getLong("com.adobe.air.DownloadConfigCompleteTime");
                    int i = ConfigDownloadListener.access$000(ConfigDownloadListener.this) != l;
                    flag = false;
                    if (i < 0)
                    {
                        flag = true;
                    }
                }
            } else
            {
                flag = true;
            }
            if (flag)
            {
                AndroidActivityWrapper androidactivitywrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
                if (androidactivitywrapper != null)
                {
                    androidactivitywrapper.applyDownloadedConfig();
                }
            }
        }
    }

    ()
    {
        this$0 = ConfigDownloadListener.this;
        super();
        LOG_TAG = "ConfigDownloadListenerBR";
    }
}
