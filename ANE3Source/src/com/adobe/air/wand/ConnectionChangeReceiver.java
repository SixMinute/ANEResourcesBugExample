// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.adobe.air.wand.connection.Connection;

public class ConnectionChangeReceiver extends BroadcastReceiver
{

    private static Connection mWandConn = null;

    public ConnectionChangeReceiver()
    {
    }

    public static void resisterWandConnection(Connection connection)
    {
        mWandConn = connection;
    }

    public static void unresisterWandConnection()
    {
        mWandConn = null;
    }

    public void onReceive(Context context, Intent intent)
    {
        if (mWandConn != null)
        {
            mWandConn.onConnectionChanged();
        }
    }

}
