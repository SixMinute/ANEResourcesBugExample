// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.flashplayer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

// Referenced classes of package com.adobe.flashplayer:
//            HDMIUtils

class this._cls0 extends BroadcastReceiver
{

    final HDMIUtils this$0;

    public void onReceive(Context context, Intent intent)
    {
        String s;
        Bundle bundle;
        s = intent.getAction();
        boolean flag3;
        if (intent != null)
        {
            bundle = intent.getExtras();
        } else
        {
            bundle = null;
        }
        if (!s.equals("com.motorola.intent.action.EXTDISP_STATUS_CONNECTION")) goto _L2; else goto _L1
_L1:
        if (bundle != null)
        {
            flag3 = bundle.getBoolean("hdmi");
            if (flag3 != HDMIUtils.access$000(HDMIUtils.this))
            {
                HDMIUtils.access$002(HDMIUtils.this, flag3);
                HDMIUtils.access$102(HDMIUtils.this, true);
            }
        }
_L4:
        return;
_L2:
        if (!s.equals("com.motorola.intent.action.EXTDISP_STATUS_DISPLAY"))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (bundle == null) goto _L4; else goto _L3
_L3:
        boolean flag2 = bundle.getBoolean("hdmi");
        if (flag2 == HDMIUtils.access$200(HDMIUtils.this)) goto _L4; else goto _L5
_L5:
        HDMIUtils.access$202(HDMIUtils.this, flag2);
        HDMIUtils.access$102(HDMIUtils.this, true);
        return;
        if (!s.equals("com.motorola.intent.action.externaldisplaystate") || bundle == null) goto _L4; else goto _L6
_L6:
        HDMIUtils hdmiutils = HDMIUtils.this;
        boolean flag;
        HDMIUtils hdmiutils1;
        boolean flag1;
        if (bundle.getInt("hdmi") == 1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        HDMIUtils.access$202(hdmiutils, flag);
        hdmiutils1 = HDMIUtils.this;
        if (bundle.getInt("hdcp") == 1)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        HDMIUtils.access$302(hdmiutils1, flag1);
        HDMIUtils.access$102(HDMIUtils.this, true);
        return;
    }

    ()
    {
        this$0 = HDMIUtils.this;
        super();
    }
}
