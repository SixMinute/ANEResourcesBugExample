// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;

// Referenced classes of package com.adobe.air:
//            AndroidGcmIntentService

public class AndroidGcmBroadcastReceiver extends WakefulBroadcastReceiver
{

    public AndroidGcmBroadcastReceiver()
    {
    }

    public void onReceive(Context context, Intent intent)
    {
        startWakefulService(context, intent.setComponent(new ComponentName(context.getPackageName(), com/adobe/air/AndroidGcmIntentService.getName())));
        setResultCode(-1);
    }
}
