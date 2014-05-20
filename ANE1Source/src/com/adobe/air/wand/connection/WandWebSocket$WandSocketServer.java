// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.connection;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.UnknownHostException;
import java.nio.channels.CancelledKeyException;
import java.util.Timer;
import java.util.TimerTask;
import org.java_websocket.WebSocket;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.server.WebSocketServer;

// Referenced classes of package com.adobe.air.wand.connection:
//            WandWebSocket

private class mHasStartedServer extends WebSocketServer
{

    private boolean mHasStartedServer;
    final WandWebSocket this$0;

    private void scheduleHandshakeTimer()
    {
        try
        {
            WandWebSocket.access$600(WandWebSocket.this).schedule(new TimerTask() {

                final WandWebSocket.WandSocketServer this$1;

                public void run()
                {
                    "OPEN_SYNCHRONIZER";
                    JVM INSTR monitorenter ;
                    if (WandWebSocket.access$100(this$0) != null)
                    {
                        break MISSING_BLOCK_LABEL_20;
                    }
                    "OPEN_SYNCHRONIZER";
                    JVM INSTR monitorexit ;
                    return;
                    "HANDSHAKE_SYNCHRONIZER";
                    JVM INSTR monitorenter ;
                    if (WandWebSocket.access$500(this$0) == null)
                    {
                        break MISSING_BLOCK_LABEL_49;
                    }
                    "HANDSHAKE_SYNCHRONIZER";
                    JVM INSTR monitorexit ;
                    "OPEN_SYNCHRONIZER";
                    JVM INSTR monitorexit ;
                    return;
                    Exception exception1;
                    exception1;
                    "OPEN_SYNCHRONIZER";
                    JVM INSTR monitorexit ;
                    throw exception1;
                    "HANDSHAKE_SYNCHRONIZER";
                    JVM INSTR monitorexit ;
                    "OPEN_SYNCHRONIZER";
                    JVM INSTR monitorexit ;
                    WandWebSocket.access$100(this$0).close(1003);
                    return;
                    Exception exception2;
                    exception2;
                    "HANDSHAKE_SYNCHRONIZER";
                    JVM INSTR monitorexit ;
                    throw exception2;
                }

            
            {
                this$1 = WandWebSocket.WandSocketServer.this;
                super();
            }
            }, 30000L);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void onClose(WebSocket websocket, int i, String s, boolean flag)
    {
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorenter ;
        if (WandWebSocket.access$100(WandWebSocket.this) != websocket) goto _L2; else goto _L1
_L1:
        WandWebSocket.access$102(WandWebSocket.this, null);
        "HANDSHAKE_SYNCHRONIZER";
        JVM INSTR monitorenter ;
        if (WandWebSocket.access$500(WandWebSocket.this) != null)
        {
            WandWebSocket.access$502(WandWebSocket.this, null);
            if (WandWebSocket.access$700(WandWebSocket.this) != null)
            {
                WandWebSocket.access$700(WandWebSocket.this).nClose();
            }
        }
        "HANDSHAKE_SYNCHRONIZER";
        JVM INSTR monitorexit ;
_L2:
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
        "HANDSHAKE_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        throw exception1;
        Exception exception;
        exception;
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onError(WebSocket websocket, Exception exception)
    {
        if (WandWebSocket.access$100(WandWebSocket.this) == null || WandWebSocket.access$100(WandWebSocket.this) == websocket || websocket == null)
        {
            break MISSING_BLOCK_LABEL_34;
        }
        websocket.close(1003);
        return;
        Exception exception1;
        exception1;
    }

    public void onMessage(WebSocket websocket, String s)
    {
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorenter ;
        "HANDSHAKE_SYNCHRONIZER";
        JVM INSTR monitorenter ;
        if (WandWebSocket.access$500(WandWebSocket.this) == null)
        {
            break MISSING_BLOCK_LABEL_86;
        }
        if (websocket == WandWebSocket.access$100(WandWebSocket.this))
        {
            break MISSING_BLOCK_LABEL_34;
        }
        "HANDSHAKE_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        return;
        if (!s.equals("NO_OP"))
        {
            break MISSING_BLOCK_LABEL_56;
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
        if (WandWebSocket.access$700(WandWebSocket.this) != null)
        {
            WandWebSocket.access$700(WandWebSocket.this)._mth0(s);
        }
        "HANDSHAKE_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        return;
        this._cls0 _lcls0;
        _lcls0 = com.adobe.air.wand.connection.this._mth0(s);
        if (WandWebSocket.access$800(WandWebSocket.this, _lcls0))
        {
            break MISSING_BLOCK_LABEL_127;
        }
        websocket.send(_lcls0.ureResponse(WandWebSocket.access$900(WandWebSocket.this), "1.0.0"));
        _lcls0 = null;
_L2:
        if (_lcls0 != null)
        {
            break; /* Loop/switch isn't completed */
        }
        websocket.close(1003);
        "HANDSHAKE_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        return;
        Exception exception2;
        exception2;
        _lcls0 = null;
        if (true) goto _L2; else goto _L1
_L1:
        WandWebSocket.access$502(WandWebSocket.this, _lcls0);
        WandWebSocket.access$100(WandWebSocket.this).send(_lcls0.essResponse(WandWebSocket.access$900(WandWebSocket.this), "1.0.0"));
        if (WandWebSocket.access$700(WandWebSocket.this) != null)
        {
            WandWebSocket.access$700(WandWebSocket.this).nOpen(_lcls0.ion());
        }
_L3:
        "HANDSHAKE_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        return;
        Exception exception3;
        exception3;
        WandWebSocket.access$502(WandWebSocket.this, null);
          goto _L3
        Exception exception1;
        exception1;
        "HANDSHAKE_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public void onOpen(WebSocket websocket, ClientHandshake clienthandshake)
    {
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorenter ;
        if (!WandWebSocket.access$400(WandWebSocket.this) || WandWebSocket.access$100(WandWebSocket.this) != null)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        WandWebSocket.access$102(WandWebSocket.this, websocket);
        scheduleHandshakeTimer();
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        return;
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        websocket.closeConnection(1003, "Already connected");
        return;
        Exception exception;
        exception;
        "OPEN_SYNCHRONIZER";
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void start()
    {
        if (mHasStartedServer)
        {
            return;
        } else
        {
            super.start();
            mHasStartedServer = true;
            return;
        }
    }

    public void stop()
        throws IOException, InterruptedException
    {
        if (mHasStartedServer)
        {
            try
            {
                super.stop();
            }
            catch (CancelledKeyException cancelledkeyexception) { }
            mHasStartedServer = false;
            if (WandWebSocket.access$000(WandWebSocket.this) != null)
            {
                if (WandWebSocket.access$100(WandWebSocket.this) != null)
                {
                    WandWebSocket.access$200(WandWebSocket.this);
                }
                WandWebSocket.access$002(WandWebSocket.this, null);
                try
                {
                    WandWebSocket.access$300(WandWebSocket.this);
                    return;
                }
                catch (Exception exception)
                {
                    return;
                }
            }
        }
    }

    public _cls1.this._cls1(InetSocketAddress inetsocketaddress)
        throws UnknownHostException
    {
        this$0 = WandWebSocket.this;
        super(inetsocketaddress);
        mHasStartedServer = false;
    }
}
