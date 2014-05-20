// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.SystemClock;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

class ConfigDownloadListener
{

    private static String LOG_TAG = "ConfigDownloadListener";
    private static ConfigDownloadListener sListener = null;
    private long lastPauseTime;
    private AndroidActivityWrapper.StateChangeCallback mActivityStateCB;
    private BroadcastReceiver mDownloadConfigRecv;

    private ConfigDownloadListener()
    {
        mDownloadConfigRecv = new BroadcastReceiver() {

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
                            int i = lastPauseTime != l;
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

            
            {
                this$0 = ConfigDownloadListener.this;
                super();
                LOG_TAG = "ConfigDownloadListenerBR";
            }
        };
        mActivityStateCB = new AndroidActivityWrapper.StateChangeCallback() {

            final ConfigDownloadListener this$0;

            public void onActivityStateChanged(AndroidActivityWrapper.ActivityState activitystate)
            {
                Activity activity = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity();
                if (activitystate == AndroidActivityWrapper.ActivityState.PAUSED)
                {
                    activity.unregisterReceiver(mDownloadConfigRecv);
                    lastPauseTime = SystemClock.uptimeMillis();
                } else
                if (activitystate == AndroidActivityWrapper.ActivityState.RESUMED)
                {
                    activity.registerReceiver(mDownloadConfigRecv, new IntentFilter("com.adobe.air.DownloadConfigComplete"));
                    return;
                }
            }

            public void onConfigurationChanged(Configuration configuration)
            {
            }

            
            {
                this$0 = ConfigDownloadListener.this;
                super();
            }
        };
        lastPauseTime = SystemClock.uptimeMillis();
        AndroidActivityWrapper.GetAndroidActivityWrapper().addActivityStateChangeListner(mActivityStateCB);
    }

    public static ConfigDownloadListener GetConfigDownloadListener()
    {
        if (sListener == null)
        {
            sListener = new ConfigDownloadListener();
        }
        return sListener;
    }




/*
    static long access$002(ConfigDownloadListener configdownloadlistener, long l)
    {
        configdownloadlistener.lastPauseTime = l;
        return l;
    }

*/

}
