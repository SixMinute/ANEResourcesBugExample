// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Analytics;

import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.d;
import com.chartboost.sdk.impl.j;
import com.chartboost.sdk.impl.k;
import java.math.BigDecimal;
import java.util.Date;

public class CBAnalytics
{

    public static final String TAG = "Chartboost Analytics";
    private static CBAnalytics a = null;
    private j b;

    private CBAnalytics()
    {
        b = new j(null, "CBAnalytics");
        b.a();
    }

    private String a(double d1, int i, int l)
    {
        return (new StringBuilder(String.valueOf((new BigDecimal(d1)).setScale(i, l).doubleValue()))).toString();
    }

    public static CBAnalytics sharedAnalytics()
    {
        com/chartboost/sdk/Analytics/CBAnalytics;
        JVM INSTR monitorenter ;
        CBAnalytics cbanalytics;
        if (a == null)
        {
            a = new CBAnalytics();
        }
        cbanalytics = a;
        com/chartboost/sdk/Analytics/CBAnalytics;
        JVM INSTR monitorexit ;
        return cbanalytics;
        Exception exception;
        exception;
        throw exception;
    }

    public Boolean recordPaymentTransaction(String s, String s1, double d1, String s2, int i, Object obj)
    {
        Chartboost chartboost = Chartboost.sharedChartboost();
        if (chartboost.getContext() == null)
        {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling recordPaymentTransaction().");
        }
        if (chartboost.getAppID() == null || chartboost.getAppSignature() == null)
        {
            return Boolean.valueOf(false);
        }
        k k1 = new k("api/purchase");
        k1.a(chartboost.getContext());
        k1.a("product_id", s);
        k1.a("title", s1);
        k1.a("price", a(d1, 2, 4));
        k1.a("currency", s2);
        k1.a("quantity", (new StringBuilder(String.valueOf(i))).toString());
        k1.a("timestamp", Integer.valueOf(Long.valueOf((new Date()).getTime() / 1000L).intValue()));
        if (obj != null)
        {
            k1.a("meta", d.a(obj));
        }
        k1.b(chartboost.getAppID(), chartboost.getAppSignature());
        b.a(k1);
        return Boolean.valueOf(true);
    }

    public Boolean trackEvent(String s)
    {
        return trackEvent(s, 1.0D, null);
    }

    public Boolean trackEvent(String s, double d1)
    {
        return trackEvent(s, d1, null);
    }

    public Boolean trackEvent(String s, double d1, Object obj)
    {
        Chartboost chartboost = Chartboost.sharedChartboost();
        if (chartboost.getContext() == null)
        {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling trackEvent().");
        }
        if (chartboost.getAppID() == null || chartboost.getAppSignature() == null)
        {
            return Boolean.valueOf(false);
        }
        k k1 = new k("api/event");
        k1.a(chartboost.getContext());
        k1.a("key", s);
        k1.a("value", (new StringBuilder(String.valueOf(d1))).toString());
        k1.a("timestamp", (new StringBuilder(String.valueOf((double)System.currentTimeMillis() / 1000D))).toString());
        if (obj != null)
        {
            k1.a("meta", d.a(obj));
        }
        k1.b(chartboost.getAppID(), chartboost.getAppSignature());
        k1.a(true);
        b.a(k1);
        return Boolean.valueOf(true);
    }

}
