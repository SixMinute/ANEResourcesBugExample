// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


public class ab
{

    final Object a;
    final String b;

    public Object a()
    {
        return a;
    }

    public String b()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (obj == null || getClass() != obj.getClass())
        {
            return false;
        }
        ab ab1 = (ab)obj;
        if (a == null ? ab1.a != null : !a.equals(ab1.a))
        {
            return false;
        }
        return b == null ? ab1.b != null : !b.equals(ab1.b);
    }

    public int hashCode()
    {
        int i;
        int j;
        int k;
        if (a != null)
        {
            i = a.hashCode();
        } else
        {
            i = 0;
        }
        j = i * 31;
        if (b != null)
        {
            k = b.hashCode();
        } else
        {
            k = 0;
        }
        return j + k;
    }

    public String toString()
    {
        return (new StringBuilder("{ \"$ref\" : \"")).append(b).append("\", \"$id\" : \"").append(a).append("\" }").toString();
    }
}
