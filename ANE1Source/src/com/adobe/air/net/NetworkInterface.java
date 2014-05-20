// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.net;

import java.util.Vector;

// Referenced classes of package com.adobe.air.net:
//            InterfaceAddress

public class NetworkInterface
{

    public boolean active;
    private Vector addresses;
    public String displayName;
    public String hardwareAddress;
    public int mtu;
    public String name;
    public NetworkInterface parent;
    public NetworkInterface subInterfaces;

    public NetworkInterface()
    {
        active = false;
        displayName = "";
        hardwareAddress = "";
        mtu = -1;
        name = "";
        parent = null;
        subInterfaces = null;
        addresses = new Vector();
    }

    public InterfaceAddress GetAddress(int i)
    {
        return (InterfaceAddress)addresses.elementAt(i);
    }

    public int GetAddressesCount()
    {
        return addresses.size();
    }

    public void addAddress(InterfaceAddress interfaceaddress)
    {
        addresses.add(interfaceaddress);
    }
}
