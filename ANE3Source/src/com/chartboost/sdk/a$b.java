// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import com.chartboost.sdk.impl.a;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk:
//            a, Chartboost

private class b
    implements Runnable
{

    final com.chartboost.sdk.a a;
    private String b;

    public void run()
    {
        if (com.chartboost.sdk.a.b(a).hasCachedInterstitial(b))
        {
            com.chartboost.sdk.a.b(a, (a)com.chartboost.sdk.a.a(a).get(b));
            return;
        } else
        {
            com.chartboost.sdk.a.a(a, b, false);
            return;
        }
    }

    public .a(com.chartboost.sdk.a a1, String s)
    {
        a = a1;
        super();
        b = s;
    }
}
