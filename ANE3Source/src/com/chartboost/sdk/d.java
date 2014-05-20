// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import com.chartboost.sdk.impl.j;
import com.chartboost.sdk.impl.k;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost

final class d
{

    private static d a = null;
    private j b;

    private d()
    {
        b = new j("https://www.chartboost.com", null);
    }

    private static d a()
    {
        if (a == null)
        {
            a = new d();
        }
        return a;
    }

    protected static void a(Chartboost.CBAPIResponseCallback cbapiresponsecallback)
    {
        k k1 = new k("api/more");
        k1.a("format", "data");
        a().a(k1, cbapiresponsecallback);
    }

    private void a(k k1, Chartboost.CBAPIResponseCallback cbapiresponsecallback)
    {
        Chartboost chartboost = Chartboost.sharedChartboost();
        k1.a(chartboost.a.b());
        k1.b(chartboost.getAppID(), chartboost.getAppSignature());
        b.a(k1, new com.chartboost.sdk.impl.j.b(cbapiresponsecallback) {

            final d a;
            private final Chartboost.CBAPIResponseCallback b;

            public void a(k k2, String s)
            {
                if (b != null)
                {
                    b.onFailure(s);
                }
            }

            public void a(JSONObject jsonobject, k k2)
            {
                if (b != null)
                {
                    b.onSuccess(jsonobject);
                }
            }

            
            {
                a = d.this;
                b = cbapiresponsecallback;
                super();
            }
        });
    }

    protected static void a(String s, int i, Chartboost.CBAPIResponseCallback cbapiresponsecallback)
    {
        k k1 = new k("api/get_batch");
        k1.a("raw", Integer.valueOf(1));
        k1.a("cache", Integer.valueOf(1));
        if (s != null)
        {
            k1.a("location", s);
        }
        int l;
        if (i > 10)
        {
            l = 10;
        } else
        {
            l = i;
        }
        k1.a("amount", Integer.valueOf(l));
        a().a(k1, cbapiresponsecallback);
    }

    protected static void a(String s, Chartboost.CBAPIResponseCallback cbapiresponsecallback)
    {
        k k1 = new k("api/get");
        k1.a("raw", Integer.valueOf(1));
        k1.a("cache", Integer.valueOf(1));
        if (s != null)
        {
            k1.a("location", s);
        }
        a().a(k1, cbapiresponsecallback);
    }

    protected static void b(String s, Chartboost.CBAPIResponseCallback cbapiresponsecallback)
    {
        k k1 = new k("api/show");
        k1.a("ad_id", s);
        a().a(k1, cbapiresponsecallback);
    }

}
