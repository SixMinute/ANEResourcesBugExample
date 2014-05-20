// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.connection;


public interface Connection
{
    public static interface Listener
    {

        public abstract void onConnectError();

        public abstract void onConnectSuccess();

        public abstract void onConnectionClose();

        public abstract void onConnectionOpen(String s);

        public abstract void onDisconnectError();

        public abstract void onDisconnectSuccess();

        public abstract void onReceive(String s);

        public abstract void updateConnectionToken(String s);
    }


    public abstract void connect()
        throws Exception;

    public abstract void disconnect()
        throws Exception;

    public abstract String getConnectionToken()
        throws Exception;

    public abstract void onConnectionChanged();

    public abstract void registerListener(Listener listener)
        throws Exception;

    public abstract void send(String s)
        throws Exception;

    public abstract void unregisterListener();
}
