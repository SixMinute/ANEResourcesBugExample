// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.NetworkInfo;

public class AndroidNetworkDetector
{

    private static final String NET_DETECT_TAG = "AndroidNetworkDetector";
    private BroadcastReceiver mReceiver;
    private long objReference;
    private boolean registered;

    public AndroidNetworkDetector()
    {
        registered = false;
    }

    private native void callOnNetworkChange(long l);

    public void RegisterForNetworkChange(Context context, long l)
    {
        if (registered)
        {
            break MISSING_BLOCK_LABEL_56;
        }
        mReceiver = new BroadcastReceiver() {

            final AndroidNetworkDetector this$0;

            public void onReceive(Context context1, Intent intent)
            {
                if (!isInitialStickyBroadcast())
                {
                    NetworkInfo networkinfo = (NetworkInfo)intent.getParcelableExtra("networkInfo");
                    if (networkinfo != null)
                    {
                        networkinfo.getDetailedState();
                    }
                    callOnNetworkChange(objReference);
                }
            }

            
            {
                this$0 = AndroidNetworkDetector.this;
                super();
            }
        };
        objReference = l;
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(mReceiver, intentfilter);
        registered = true;
        return;
        Exception exception;
        exception;
    }


}
