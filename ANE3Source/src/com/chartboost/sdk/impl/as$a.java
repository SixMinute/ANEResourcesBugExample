// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            as

static class a
{

    int a;
    int b;

    void a()
    {
        a = -1;
        b = 0;
    }

    void a(int i)
    {
        a = i / 16384 - 1;
        b = i % 16384;
    }

    void a(b b1)
    {
        a = b1.a;
        b = b1.b;
    }

    int b()
    {
        return 16384 * (1 + a) + b;
    }

    void b(int i)
    {
        b = i + b;
        if (b > 16384)
        {
            throw new IllegalArgumentException("something is wrong");
        } else
        {
            return;
        }
    }

    int c()
    {
        int i = b;
        b = i + 1;
        return i;
    }

    int c(int i)
    {
        if (i < a)
        {
            return 16384;
        } else
        {
            return b;
        }
    }

    void d()
    {
        if (b != 16384)
        {
            throw new IllegalArgumentException("broken");
        } else
        {
            a = 1 + a;
            b = 0;
            return;
        }
    }

    public String toString()
    {
        return (new StringBuilder(String.valueOf(a))).append(",").append(b).toString();
    }

    ption()
    {
        a();
    }
}
