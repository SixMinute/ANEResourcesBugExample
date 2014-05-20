// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.net;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.DhcpInfo;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.text.format.Formatter;
import java.util.Vector;

// Referenced classes of package com.adobe.air.net:
//            NetworkInterface, InterfaceAddress

class AndroidNetworkInfo
{

    private static final String LOG_TAG = "AndroidNetworkInfo";
    private static AndroidNetworkInfo sAndroidNetworkInfo = null;
    private Context mContext;
    private Vector mInterfaces;

    private AndroidNetworkInfo(Context context)
    {
        mContext = context;
        mInterfaces = new Vector();
    }

    public static AndroidNetworkInfo GetAndroidNetworkInfo(Context context)
    {
        if (sAndroidNetworkInfo == null)
        {
            sAndroidNetworkInfo = new AndroidNetworkInfo(context);
        }
        return sAndroidNetworkInfo;
    }

    private void enumerateNetworkInterfaces()
    {
        NetworkInfo anetworkinfo[] = ((ConnectivityManager)mContext.getSystemService("connectivity")).getAllNetworkInfo();
        int i = 0;
_L7:
        if (i >= anetworkinfo.length) goto _L2; else goto _L1
_L1:
        NetworkInfo networkinfo = anetworkinfo[i];
        networkinfo.getType();
        JVM INSTR tableswitch 1 1: default 52
    //                   1 76;
           goto _L3 _L4
_L3:
        NetworkInterface networkinterface1 = getDefaultData(networkinfo);
_L5:
        mInterfaces.add(networkinterface1);
        i++;
        continue; /* Loop/switch isn't completed */
_L4:
        NetworkInterface networkinterface = getWifiData(networkinfo);
        networkinterface1 = networkinterface;
          goto _L5
        Exception exception;
        exception;
        mInterfaces.clear();
_L2:
        return;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public NetworkInterface GetNetworkInterface(int i)
    {
        if (i < 0 || i >= mInterfaces.size())
        {
            return null;
        } else
        {
            return (NetworkInterface)mInterfaces.elementAt(i);
        }
    }

    public int GetNetworkInterfacesCount()
    {
        mInterfaces.clear();
        enumerateNetworkInterfaces();
        return mInterfaces.size();
    }

    public void InterfacesReadComplete()
    {
        mInterfaces.clear();
    }

    InterfaceAddress getAddress(NetworkInfo networkinfo)
    {
        InterfaceAddress interfaceaddress = new InterfaceAddress();
        if (!networkinfo.isConnected())
        {
            return null;
        }
        WifiManager wifimanager = (WifiManager)mContext.getSystemService("wifi");
        if (wifimanager == null)
        {
            return null;
        }
        DhcpInfo dhcpinfo = wifimanager.getDhcpInfo();
        if (dhcpinfo != null)
        {
            interfaceaddress.address = Formatter.formatIpAddress(dhcpinfo.ipAddress);
            interfaceaddress.prefixLength = Integer.bitCount(dhcpinfo.netmask);
            interfaceaddress.broadcast = Formatter.formatIpAddress(dhcpinfo.ipAddress | -1 ^ dhcpinfo.netmask);
            interfaceaddress.ipVersion = "IPv4";
            return interfaceaddress;
        }
        WifiInfo wifiinfo = wifimanager.getConnectionInfo();
        if (wifiinfo == null)
        {
            return null;
        } else
        {
            interfaceaddress.address = Formatter.formatIpAddress(wifiinfo.getIpAddress());
            interfaceaddress.ipVersion = "IPv4";
            return interfaceaddress;
        }
    }

    NetworkInterface getDefaultData(NetworkInfo networkinfo)
    {
        NetworkInterface networkinterface = new NetworkInterface();
        networkinterface.active = networkinfo.isConnected();
        networkinterface.displayName = networkinfo.getTypeName();
        networkinterface.name = networkinfo.getTypeName();
        return networkinterface;
    }

    NetworkInterface getWifiData(NetworkInfo networkinfo)
    {
        NetworkInterface networkinterface = new NetworkInterface();
        WifiManager wifimanager = (WifiManager)mContext.getSystemService("wifi");
        if (wifimanager != null);
        WifiInfo wifiinfo = wifimanager.getConnectionInfo();
        if (wifiinfo != null);
        networkinterface.active = networkinfo.isConnected();
        networkinterface.displayName = networkinfo.getTypeName();
        networkinterface.name = networkinfo.getTypeName();
        if (wifiinfo != null)
        {
            String s = wifiinfo.getMacAddress();
            if (s == null)
            {
                s = "";
            }
            networkinterface.hardwareAddress = s;
        }
        networkinterface.addAddress(getAddress(networkinfo));
        return networkinterface;
    }

}
