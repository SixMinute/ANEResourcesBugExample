// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.adobe.air:
//            AndroidIdleState, AndroidActivityWrapper

class  extends BroadcastReceiver
{

    final AndroidIdleState this$0;

    public void onReceive(Context context, Intent intent)
    {
        boolean flag;
        if (intent.getAction().equals("android.intent.action.SCREEN_OFF"))
        {
            flag = false;
        } else
        if (intent.getAction().equals("android.intent.action.SCREEN_ON"))
        {
            flag = true;
        } else
        {
            flag = true;
        }
        if (AndroidIdleState.access$000(AndroidIdleState.this) != flag)
        {
            AndroidIdleState.access$002(AndroidIdleState.this, flag);
            AndroidActivityWrapper.GetAndroidActivityWrapper().onScreenStateChanged(AndroidIdleState.access$000(AndroidIdleState.this));
        }
    }

    per()
    {
        this$0 = AndroidIdleState.this;
        super();
    }
}
