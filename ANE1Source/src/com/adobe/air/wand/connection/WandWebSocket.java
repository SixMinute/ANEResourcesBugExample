// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.connection;

import android.app.Activity;
import android.net.ConnectivityManager;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.nio.channels.CancelledKeyException;
import java.util.Enumeration;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Pattern;
import org.apache.http.conn.util.InetAddressUtils;
import org.java_websocket.WebSocket;
import org.java_websocket.handshake.ClientHandshake;
import org.java_websocket.server.WebSocketServer;
import org.json.JSONObject;

// Referenced classes of package com.adobe.air.wand.connection:
//            Connection

public class WandWebSocket
    implements Connection
{
    private static class Handshake
    {

        private static final String DESTINATION_ID = "destinationID";
        private static final String PROTOCOL = "protocol";
        private static final String SOURCE_ID = "sourceID";
        private static final String STATUS = "status";
        private static final String STATUS_FAILURE = "FAILURE";
        private static final String STATUS_SUCCESS = "SUCCESS";
        public static final int TIMEOUT_MILLISECONDS = 30000;
        private static final String VERSION = "version";
        private String mDestinationID;
        private String mProtocol;
        private String mSourceID;
        private String mVersion;

        public static Handshake parse(String s)
            throws Exception
        {
            JSONObject jsonobject = new JSONObject(s);
            Handshake handshake = new Handshake();
            handshake.mProtocol = jsonobject.getString("protocol");
            handshake.mVersion = jsonobject.getString("version");
            handshake.mSourceID = jsonobject.getString("sourceID");
            handshake.mDestinationID = jsonobject.getString("destinationID");
            return handshake;
        }

        public String getDestinationID()
        {
            return mDestinationID;
        }

        public String getFailureResponse(String s, String s1)
            throws Exception
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("protocol", "WEBSOCKET");
            jsonobject.put("version", s1);
            jsonobject.put("sourceID", s);
            jsonobject.put("destinationID", mSourceID);
            jsonobject.put("status", "FAILURE");
            return jsonobject.toString();
        }

        public String getProtocol()
        {
            return mProtocol;
        }

        public String getSourceID()
        {
            return mSourceID;
        }

        public String getSuccessResponse(String s, String s1)
            throws Exception
        {
            JSONObject jsonobject = new JSONObject();
            jsonobject.put("protocol", "WEBSOCKET");
            jsonobject.put("version", s1);
            jsonobject.put("sourceID", s);
            jsonobject.put("destinationID", mSourceID);
            jsonobject.put("status", "SUCCESS");
            return jsonobject.toString();
        }

        public String getVersion()
        {
            return mVersion;
        }

        private Handshake()
        {
            mProtocol = "WEBSOCKET";
            mVersion = "1.0.0";
            mSourceID = null;
            mDestinationID = null;
        }
    }

    private class WandSocketServer extends WebSocketServer
    {

        private boolean mHasStartedServer;
        final WandWebSocket this$0;

        private void scheduleHandshakeTimer()
        {
            try
            {
                mHandshakeTimer.schedule(new TimerTask() {

                    final WandSocketServer this$1;

                    public void run()
                    {
                        "OPEN_SYNCHRONIZER";
                        JVM INSTR monitorenter ;
                        if (mConnection != null)
                        {
                            break MISSING_BLOCK_LABEL_20;
                        }
                        "OPEN_SYNCHRONIZER";
                        JVM INSTR monitorexit ;
                        return;
                        "HANDSHAKE_SYNCHRONIZER";
                        JVM INSTR monitorenter ;
                        if (mHandshake == null)
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
                        mConnection.close(1003);
                        return;
                        Exception exception1;
                        exception1;
                        "HANDSHAKE_SYNCHRONIZER";
                        JVM INSTR monitorexit ;
                        throw exception1;
                    }

            
            {
                this$1 = WandSocketServer.this;
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
            if (mConnection != websocket) goto _L2; else goto _L1
_L1:
            mConnection = null;
            "HANDSHAKE_SYNCHRONIZER";
            JVM INSTR monitorenter ;
            if (mHandshake != null)
            {
                mHandshake = null;
                if (mConnectionListener != null)
                {
                    mConnectionListener.onConnectionClose();
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
            if (mConnection == null || mConnection == websocket || websocket == null)
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
            if (mHandshake == null)
            {
                break MISSING_BLOCK_LABEL_86;
            }
            if (websocket == mConnection)
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
            if (mConnectionListener != null)
            {
                mConnectionListener.onReceive(s);
            }
            "HANDSHAKE_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            return;
            Handshake handshake;
            handshake = Handshake.parse(s);
            if (validateHandshake(handshake))
            {
                break MISSING_BLOCK_LABEL_127;
            }
            websocket.send(handshake.getFailureResponse(mLocalID, "1.0.0"));
            handshake = null;
_L2:
            if (handshake != null)
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
            handshake = null;
            if (true) goto _L2; else goto _L1
_L1:
            mHandshake = handshake;
            mConnection.send(handshake.getSuccessResponse(mLocalID, "1.0.0"));
            if (mConnectionListener != null)
            {
                mConnectionListener.onConnectionOpen(handshake.getVersion());
            }
_L3:
            "HANDSHAKE_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            "OPEN_SYNCHRONIZER";
            JVM INSTR monitorexit ;
            return;
            Exception exception3;
            exception3;
            mHandshake = null;
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
            if (!mAllowIncomingConnection || mConnection != null)
            {
                break MISSING_BLOCK_LABEL_40;
            }
            mConnection = websocket;
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
                if (mWandSocketServer != null)
                {
                    if (mConnection != null)
                    {
                        forceCloseConnection();
                    }
                    mWandSocketServer = null;
                    try
                    {
                        startSocketServer();
                        return;
                    }
                    catch (Exception exception)
                    {
                        return;
                    }
                }
            }
        }

        public WandSocketServer(InetSocketAddress inetsocketaddress)
            throws UnknownHostException
        {
            this$0 = WandWebSocket.this;
            super(inetsocketaddress);
            mHasStartedServer = false;
        }
    }


    private static final String LOG_TAG = "WandWebSocket";
    private static final String WEBSOCKET_PROTOCOL = "WEBSOCKET";
    private final String HANDSHAKE_SYNCHRONIZER = "HANDSHAKE_SYNCHRONIZER";
    private final String OPEN_SYNCHRONIZER = "OPEN_SYNCHRONIZER";
    private Activity mActivity;
    private boolean mAllowIncomingConnection;
    private WebSocket mConnection;
    private Connection.Listener mConnectionListener;
    private String mConnectionToken;
    private Handshake mHandshake;
    private Timer mHandshakeTimer;
    private boolean mIsDisposed;
    private String mLocalID;
    private WandSocketServer mWandSocketServer;

    public WandWebSocket(Activity activity)
        throws UnknownHostException
    {
        mConnectionListener = null;
        mConnection = null;
        mAllowIncomingConnection = false;
        mConnectionToken = null;
        mLocalID = null;
        mHandshake = null;
        mHandshakeTimer = null;
        mWandSocketServer = null;
        mActivity = null;
        mIsDisposed = false;
        mActivity = activity;
        mHandshakeTimer = new Timer();
    }

    private String constructLocalID()
        throws Exception
    {
        InetAddress inetaddress = getLocalIpAddress();
        if (inetaddress == null)
        {
            return null;
        } else
        {
            byte abyte0[] = inetaddress.getAddress();
            return Long.toString(1L * (long)getUnsignedByte(abyte0[3]) + 256L * (long)getUnsignedByte(abyte0[2]) + 0x10000L * (long)getUnsignedByte(abyte0[1]) + 0x1000000L * (long)getUnsignedByte(abyte0[0]), 32).toUpperCase();
        }
    }

    private void forceCloseConnection()
    {
        WebSocket websocket = mConnection;
        mWandSocketServer.onClose(mConnection, 1001, "Disconnecting", false);
        websocket.close(1001);
    }

    private InetAddress getLocalIpAddress()
    {
        InetAddress inetaddress;
        InetAddress inetaddress1;
        try
        {
            inetaddress = getWiFiIpAddress();
        }
        catch (Exception exception)
        {
            return null;
        }
        if (inetaddress != null)
        {
            break MISSING_BLOCK_LABEL_16;
        }
        inetaddress1 = getWiFiHotspotIpAddress();
        inetaddress = inetaddress1;
        return inetaddress;
    }

    private int getPreferredPort()
    {
        return 1234;
    }

    private int getUnsignedByte(byte byte0)
    {
        if (byte0 >= 0)
        {
            return byte0;
        } else
        {
            return byte0 + 256;
        }
    }

    private InetAddress getWiFiHotspotIpAddress()
        throws UnknownHostException, SocketException
    {
        WifiManager wifimanager;
        Method amethod[];
        int i;
        int j;
        boolean flag;
        if ((ConnectivityManager)mActivity.getSystemService("connectivity") == null)
        {
            return null;
        }
        wifimanager = (WifiManager)mActivity.getSystemService("wifi");
        if (wifimanager == null)
        {
            return null;
        }
        amethod = wifimanager.getClass().getDeclaredMethods();
        i = amethod.length;
        j = 0;
        flag = false;
_L2:
        Method method;
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        method = amethod[j];
        if (!method.getName().equals("isWifiApEnabled"))
        {
            break MISSING_BLOCK_LABEL_440;
        }
        boolean flag3 = ((Boolean)method.invoke(wifimanager, new Object[0])).booleanValue();
        boolean flag2;
        if (!flag3)
        {
            break MISSING_BLOCK_LABEL_440;
        }
        flag2 = true;
_L3:
        j++;
        flag = flag2;
        if (true) goto _L2; else goto _L1
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        flag2 = flag;
          goto _L3
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        flag2 = flag;
          goto _L3
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        flag2 = flag;
          goto _L3
_L1:
        byte abyte0[];
        Enumeration enumeration;
        if (!flag)
        {
            return null;
        }
        WifiInfo wifiinfo = wifimanager.getConnectionInfo();
        if (wifiinfo == null)
        {
            return null;
        }
        String s = wifiinfo.getMacAddress().toLowerCase();
        abyte0 = new byte[6];
        if (s.indexOf(":") == -1 && s.length() == 12)
        {
            for (int i1 = 0; i1 < abyte0.length; i1++)
            {
                abyte0[i1] = (byte)Integer.parseInt(s.substring(i1 * 2, 2 + i1 * 2), 16);
            }

        } else
        {
            String as[] = s.split(":");
            for (int k = 0; k < abyte0.length && k < as.length; k++)
            {
                abyte0[k] = (byte)Integer.parseInt(as[k], 16);
            }

        }
        enumeration = NetworkInterface.getNetworkInterfaces();
_L7:
        if (!enumeration.hasMoreElements()) goto _L5; else goto _L4
_L4:
        NetworkInterface networkinterface;
        Enumeration enumeration1;
        networkinterface = (NetworkInterface)enumeration.nextElement();
        enumeration1 = networkinterface.getInetAddresses();
_L9:
        if (!enumeration1.hasMoreElements()) goto _L7; else goto _L6
_L6:
        InetAddress inetaddress = (InetAddress)enumeration1.nextElement();
        if (inetaddress.isLoopbackAddress() || !InetAddressUtils.isIPv4Address(inetaddress.getHostAddress())) goto _L9; else goto _L8
_L8:
        byte abyte1[] = networkinterface.getHardwareAddress();
        if (abyte1 == null || abyte1.length != 6) goto _L9; else goto _L10
_L10:
        int l = 0;
_L13:
        if (l >= abyte1.length)
        {
            break MISSING_BLOCK_LABEL_434;
        }
        if (abyte1[l] == abyte0[l]) goto _L12; else goto _L11
_L11:
        boolean flag1 = false;
_L14:
        if (flag1)
        {
            return inetaddress;
        }
          goto _L9
_L12:
        l++;
          goto _L13
_L5:
        return null;
        SocketException socketexception;
        socketexception;
          goto _L9
        flag1 = true;
          goto _L14
        flag2 = flag;
          goto _L3
    }

    private InetAddress getWiFiIpAddress()
        throws UnknownHostException
    {
        WifiManager wifimanager = (WifiManager)mActivity.getSystemService("wifi");
        if (wifimanager == null)
        {
            return null;
        }
        WifiInfo wifiinfo = wifimanager.getConnectionInfo();
        if (wifiinfo == null)
        {
            return null;
        }
        int i = wifiinfo.getIpAddress();
        if (i == 0)
        {
            return null;
        } else
        {
            Object aobj[] = new Object[4];
            aobj[0] = Integer.valueOf(i & 0xff);
            aobj[1] = Integer.valueOf(0xff & i >> 8);
            aobj[2] = Integer.valueOf(0xff & i >> 16);
            aobj[3] = Integer.valueOf(0xff & i >> 24);
            return InetAddress.getByName(String.format("%d.%d.%d.%d", aobj));
        }
    }

    private void startSocketServer()
        throws Exception
    {
        if (mWandSocketServer == null)
        {
            mWandSocketServer = new WandSocketServer(new InetSocketAddress(getLocalIpAddress(), getPreferredPort()));
            mWandSocketServer.start();
        }
    }

    private void stopSocketServer()
    {
        WandSocketServer wandsocketserver;
        wandsocketserver = mWandSocketServer;
        mWandSocketServer = null;
        if (wandsocketserver == null)
        {
            break MISSING_BLOCK_LABEL_18;
        }
        wandsocketserver.stop();
        return;
        Exception exception;
        exception;
    }

    private boolean validateHandshake(Handshake handshake)
    {
        if (handshake == null)
        {
            return false;
        }
        if (!"WEBSOCKET".equals(handshake.getProtocol()))
        {
            return false;
        }
        if (!mLocalID.equals(handshake.getDestinationID()))
        {
            return false;
        }
        return Pattern.matches("\\d+\\.\\d+\\.\\d+", handshake.getVersion());
    }

    public void connect()
        throws Exception
    {
        if (mIsDisposed)
        {
            throw new Exception("Connection has been disposed");
        }
        if (mAllowIncomingConnection)
        {
            throw new Exception("Connection is already established");
        }
        mAllowIncomingConnection = true;
        if (mWandSocketServer == null)
        {
            startSocketServer();
        }
        mLocalID = constructLocalID();
        mConnectionToken = mLocalID;
        if (mConnectionListener != null)
        {
            mConnectionListener.updateConnectionToken(getConnectionToken());
        }
        if (mConnectionListener != null)
        {
            mConnectionListener.onConnectSuccess();
        }
    }

    public void disconnect()
        throws Exception
    {
        if (mIsDisposed)
        {
            throw new Exception("Connection has been disposed");
        }
        if (!mAllowIncomingConnection)
        {
            throw new Exception("Connection is not established");
        }
        if (mConnection != null)
        {
            forceCloseConnection();
        }
        stopSocketServer();
        mAllowIncomingConnection = false;
        if (mConnectionListener != null)
        {
            mConnectionListener.onDisconnectSuccess();
        }
    }

    public void dispose()
        throws Exception
    {
        if (mIsDisposed)
        {
            return;
        }
        mIsDisposed = true;
        if (mAllowIncomingConnection)
        {
            disconnect();
        }
        unregisterListener();
        if (mConnection != null)
        {
            mConnection.close();
        }
        mConnection = null;
        mHandshake = null;
        if (mHandshakeTimer != null)
        {
            mHandshakeTimer.cancel();
            mHandshakeTimer.purge();
        }
        mHandshakeTimer = null;
        mWandSocketServer = null;
        mActivity = null;
    }

    public String getConnectionToken()
        throws Exception
    {
        if (mIsDisposed)
        {
            throw new Exception("Connection has been disposed");
        }
        if (!mAllowIncomingConnection)
        {
            throw new Exception("Connection is not established");
        }
        if (mConnectionToken == null)
        {
            return "";
        } else
        {
            return mConnectionToken;
        }
    }

    public void onConnectionChanged()
    {
_L2:
        return;
        if (mIsDisposed || !mAllowIncomingConnection) goto _L2; else goto _L1
_L1:
        String s = constructLocalID();
        if (mLocalID == null && s == null) goto _L2; else goto _L3
_L3:
        if (mLocalID == null || s == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (mLocalID.equals(s)) goto _L2; else goto _L4
_L4:
        disconnect();
        connect();
        return;
        Exception exception;
        exception;
    }

    public void registerListener(Connection.Listener listener)
        throws Exception
    {
        if (mIsDisposed)
        {
            throw new Exception("Connection has been disposed");
        }
        if (listener == null)
        {
            throw new Exception("Invalid Connection.Listener");
        }
        if (mConnectionListener != null)
        {
            throw new Exception("A listener is already registered");
        } else
        {
            mConnectionListener = listener;
            return;
        }
    }

    public void send(String s)
        throws Exception
    {
        if (mIsDisposed)
        {
            throw new Exception("Connection has been disposed");
        }
        if (mConnection == null)
        {
            break MISSING_BLOCK_LABEL_35;
        }
        mConnection.send(s);
        return;
        Throwable throwable;
        throwable;
        throw new Exception("Unable to send Message");
    }

    public void unregisterListener()
    {
        mConnectionListener = null;
    }



/*
    static WandSocketServer access$002(WandWebSocket wandwebsocket, WandSocketServer wandsocketserver)
    {
        wandwebsocket.mWandSocketServer = wandsocketserver;
        return wandsocketserver;
    }

*/



/*
    static WebSocket access$102(WandWebSocket wandwebsocket, WebSocket websocket)
    {
        wandwebsocket.mConnection = websocket;
        return websocket;
    }

*/






/*
    static Handshake access$502(WandWebSocket wandwebsocket, Handshake handshake)
    {
        wandwebsocket.mHandshake = handshake;
        return handshake;
    }

*/




}
