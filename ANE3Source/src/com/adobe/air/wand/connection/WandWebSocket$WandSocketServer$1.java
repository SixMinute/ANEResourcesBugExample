// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.connection;

import java.util.TimerTask;
import org.java_websocket.WebSocket;

// Referenced classes of package com.adobe.air.wand.connection:
//            WandWebSocket

class this._cls1 extends TimerTask
{

    final is._cls0 this$1;

    public void run()
    {
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorenter ;
        if (WandWebSocket.access$100(_fld0) != null)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        return;
        "HANDSHAKE_SYNCHRONIZER";
        JVM INSTR monitorenter ;
        if (WandWebSocket.access$500(_fld0) == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        "HANDSHAKE_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        throw exception;
        "HANDSHAKE_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        WandWebSocket.access$100(_fld0).close(1003);
        return;
        Exception exception1;
        exception1;
        "HANDSHAKE_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        throw exception1;
    }

    ()
    {
        this$1 = this._cls1.this;
        super();
    }
}
