// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.Serializable;

public class aw
    implements Serializable
{

    final String a;

    public String a()
    {
        return a;
    }

    public boolean equals(Object obj)
    {
        if (!(obj instanceof aw))
        {
            return false;
        } else
        {
            aw aw1 = (aw)obj;
            return a.equals(aw1.a);
        }
    }

    public int hashCode()
    {
        return a.hashCode();
    }

    public String toString()
    {
        return a();
    }
}
