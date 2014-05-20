// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import java.net.InetAddress;
import java.net.Socket;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

class val.aDebuggerPort
    implements Runnable
{

    final AndroidActivityWrapper this$0;
    final int val$aDebuggerPort;

    public void run()
    {
        try
        {
            Thread.sleep(30000L);
            (new Socket(InetAddress.getLocalHost(), val$aDebuggerPort)).close();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    ()
    {
        this$0 = final_androidactivitywrapper;
        val$aDebuggerPort = I.this;
        super();
    }
}
