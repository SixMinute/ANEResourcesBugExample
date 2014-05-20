// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.chartboost.sdk.Chartboost;

public class m
{

    public static boolean a()
    {
        ConnectivityManager connectivitymanager;
        NetworkInfo networkinfo;
        boolean flag;
        try
        {
            connectivitymanager = (ConnectivityManager)Chartboost.sharedChartboost().getContext().getSystemService("connectivity");
        }
        catch (Exception exception)
        {
            return true;
        }
        if (connectivitymanager == null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        networkinfo = connectivitymanager.getActiveNetworkInfo();
        if (networkinfo == null)
        {
            break MISSING_BLOCK_LABEL_39;
        }
        flag = networkinfo.isConnectedOrConnecting();
        if (flag)
        {
            return true;
        }
        return false;
    }

    public static int b()
    {
        ConnectivityManager connectivitymanager;
        NetworkInfo networkinfo;
        int i;
        try
        {
            connectivitymanager = (ConnectivityManager)Chartboost.sharedChartboost().getContext().getSystemService("connectivity");
        }
        catch (Exception exception)
        {
            return -1;
        }
        if (connectivitymanager == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        networkinfo = connectivitymanager.getActiveNetworkInfo();
        if (networkinfo == null)
        {
            break MISSING_BLOCK_LABEL_49;
        }
        if (!networkinfo.isConnectedOrConnecting())
        {
            break MISSING_BLOCK_LABEL_49;
        }
        i = networkinfo.getType();
        return i != 1 ? 2 : 1;
        return 0;
        return -1;
    }
}
