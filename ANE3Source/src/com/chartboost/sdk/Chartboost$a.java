// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;


// Referenced classes of package com.chartboost.sdk:
//            Chartboost

private class <init>
    implements Runnable
{

    final Chartboost a;
    private int b;
    private int c;
    private int d;
    private int e;

    public void run()
    {
        if (a.getContext() != null)
        {
            a.clearImageCache();
        }
        if (a.a != null && a.a.hashCode() == c)
        {
            a.a = null;
        }
        if (Chartboost.a(a) != null && Chartboost.a(a).hashCode() == b)
        {
            Chartboost.a(a, null);
        }
        if (Chartboost.b(a) != null && Chartboost.b(a).hashCode() == d)
        {
            Chartboost.a(a, null);
        }
        if (Chartboost.c(a) != null && Chartboost.c(a).hashCode() == e)
        {
            Chartboost.a(a, null);
        }
    }

    private (Chartboost chartboost)
    {
        a = chartboost;
        super();
        int i;
        int j;
        int k;
        int l;
        if (Chartboost.a(chartboost) == null)
        {
            i = -1;
        } else
        {
            i = Chartboost.a(chartboost).hashCode();
        }
        b = i;
        if (chartboost.a == null)
        {
            j = -1;
        } else
        {
            j = chartboost.a.hashCode();
        }
        c = j;
        if (Chartboost.b(chartboost) == null)
        {
            k = -1;
        } else
        {
            k = Chartboost.b(chartboost).hashCode();
        }
        d = k;
        if (Chartboost.c(chartboost) == null)
        {
            l = -1;
        } else
        {
            l = Chartboost.c(chartboost).hashCode();
        }
        e = l;
    }

    e(Chartboost chartboost, e e1)
    {
        this(chartboost);
    }
}
