// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            aj, as

public class am
    implements aj
{

    static final String a[] = new String[128];
    private byte b[];
    private byte c[];
    private as d;

    public am()
    {
        b = new byte[1024];
        c = new byte[1024];
        d = new as();
    }

    static void a(byte byte0, byte byte1)
    {
        byte byte2 = byte0;
        do
        {
            if (byte2 >= byte1)
            {
                return;
            }
            String s = (new StringBuilder(String.valueOf(""))).append((char)byte2).toString();
            a[byte2] = s;
            byte2++;
        } while (true);
    }

    static 
    {
        a((byte)48, (byte)57);
        a((byte)97, (byte)122);
        a((byte)65, (byte)90);
    }
}
