// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;

// Referenced classes of package com.adobe.air:
//            AndroidNetworkDetector

class > extends BroadcastReceiver
{

    final AndroidNetworkDetector this$0;

    public void onReceive(Context context, Intent intent)
    {
        if (!isInitialStickyBroadcast())
        {
            NetworkInfo networkinfo = (NetworkInfo)intent.getParcelableExtra("networkInfo");
            if (networkinfo != null)
            {
                networkinfo.getDetailedState();
            }
            AndroidNetworkDetector.access$100(AndroidNetworkDetector.this, AndroidNetworkDetector.access$000(AndroidNetworkDetector.this));
        }
    }

    ()
    {
        this$0 = AndroidNetworkDetector.this;
        super();
    }
}
