// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.flashplayer;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

// Referenced classes of package com.adobe.flashplayer:
//            HDMIUtils

class this._cls0
    implements ServiceConnection
{

    final HDMIUtils this$0;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        HDMIUtils.access$102(HDMIUtils.this, false);
    }

    ()
    {
        this$0 = HDMIUtils.this;
        super();
    }
}
