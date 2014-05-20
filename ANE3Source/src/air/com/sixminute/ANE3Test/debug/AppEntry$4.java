// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package air.com.sixminute.ANE3Test.debug;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;

// Referenced classes of package air.com.sixminute.ANE3Test.debug:
//            AppEntry

class this._cls0
    implements ServiceConnection
{

    final AppEntry this$0;

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        unbindService(this);
        AppEntry.access$100(AppEntry.this);
        AppEntry.access$200(AppEntry.this, false);
        if (AppEntry.access$300())
        {
            AppEntry.access$400(AppEntry.this);
            return;
        } else
        {
            AppEntry.access$500();
            return;
        }
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
    }

    ()
    {
        this$0 = AppEntry.this;
        super();
    }
}
