// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.util.Date;

public class au
    implements Serializable, Comparable
{

    static final boolean a = Boolean.getBoolean("DEBUG.DBTIMESTAMP");
    final int b = 0;
    final Date c = null;

    public au()
    {
    }

    public int a()
    {
        if (c == null)
        {
            return 0;
        } else
        {
            return (int)(c.getTime() / 1000L);
        }
    }

    public int a(au au1)
    {
        if (a() != au1.a())
        {
            return a() - au1.a();
        } else
        {
            return b() - au1.b();
        }
    }

    public int b()
    {
        return b;
    }

    public int compareTo(Object obj)
    {
        return a((au)obj);
    }

    public boolean equals(Object obj)
    {
        if (obj == this)
        {
            return true;
        }
        if (obj instanceof au)
        {
            au au1 = (au)obj;
            return a() == au1.a() && b() == au1.b();
        } else
        {
            return false;
        }
    }

    public int hashCode()
    {
        int _tmp = 1 * 31;
        return 31 * (31 + b) + a();
    }

    public String toString()
    {
        return (new StringBuilder("TS time:")).append(c).append(" inc:").append(b).toString();
    }

}
