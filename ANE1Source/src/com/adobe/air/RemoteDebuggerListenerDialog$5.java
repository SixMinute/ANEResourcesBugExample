// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.os.AsyncTask;
import java.net.InetAddress;
import java.net.Socket;

// Referenced classes of package com.adobe.air:
//            RemoteDebuggerListenerDialog

class this._cls0 extends AsyncTask
{

    final RemoteDebuggerListenerDialog this$0;

    protected transient Integer doInBackground(Integer ainteger[])
    {
        try
        {
            (new Socket(InetAddress.getLocalHost(), ainteger[0].intValue())).close();
        }
        catch (Exception exception) { }
        return Integer.valueOf(0);
    }

    protected volatile Object doInBackground(Object aobj[])
    {
        return doInBackground((Integer[])aobj);
    }

    ()
    {
        this$0 = RemoteDebuggerListenerDialog.this;
        super();
    }
}
