// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import com.chartboost.sdk.impl.a;

// Referenced classes of package com.chartboost.sdk:
//            b

private class c
    implements Runnable
{

    final b a;
    private a b;
    private boolean c;

    public void run()
    {
        if (b.c == com.chartboost.sdk.impl.d)
        {
            b.c = com.chartboost.sdk.impl.a;
            a.b(b, c);
        }
    }

    public .a(b b1, a a1, boolean flag)
    {
        a = b1;
        super();
        b = a1;
        c = flag;
    }
}
