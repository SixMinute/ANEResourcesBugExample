// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.util.Arrays;

public class av
    implements Serializable
{

    final byte a;
    final byte b[];

    public byte a()
    {
        return a;
    }

    public byte[] b()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof av))
        {
            return false;
        }
        av av1 = (av)obj;
        if (a != av1.a)
        {
            return false;
        }
        return Arrays.equals(b, av1.b);
    }

    public int hashCode()
    {
        int i = 31 * a;
        int j;
        if (b != null)
        {
            j = Arrays.hashCode(b);
        } else
        {
            j = 0;
        }
        return i + j;
    }
}
