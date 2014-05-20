// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

// Referenced classes of package com.adobe.air:
//            GamePreviewAppEntry

class this._cls0
    implements ServiceConnection
{

    final GamePreviewAppEntry this$0;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        unbindService(this);
        GamePreviewAppEntry.access$100(GamePreviewAppEntry.this);
        GamePreviewAppEntry.access$200(GamePreviewAppEntry.this, false);
        if (GamePreviewAppEntry.access$300())
        {
            GamePreviewAppEntry.access$400(GamePreviewAppEntry.this);
            return;
        } else
        {
            GamePreviewAppEntry.access$500();
            return;
        }
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
    }

    ()
    {
        this$0 = GamePreviewAppEntry.this;
        super();
    }
}
