// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.app.Activity;
import android.os.Handler;
import com.chartboost.sdk.Chartboost;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.chartboost.sdk.impl:
//            n, m

class c
    implements Runnable
{

    final c a;
    private final String b;
    private final Activity c;

    public void run()
    {
        n.a(c(a), b, c);
    }

    ( , String s, Activity activity)
    {
        a = ;
        b = s;
        c = activity;
        super();
    }

    // Unreferenced inner class com/chartboost/sdk/impl/n$1

/* anonymous class */
    class n._cls1
        implements Runnable
    {

        final n a;
        private final String b;
        private final Activity c;

        static n a(n._cls1 _pcls1)
        {
            return _pcls1.a;
        }

        public void a(String s)
        {
            n._cls1._cls1 _lcls1 = new n._cls1._cls1(this, s, c);
            if (c != null)
            {
                c.runOnUiThread(_lcls1);
                return;
            } else
            {
                Chartboost.sharedChartboost().getHandler().post(_lcls1);
                return;
            }
        }

        public void run()
        {
            String s;
            s = b;
            if (!m.a())
            {
                break MISSING_BLOCK_LABEL_88;
            }
            HttpURLConnection httpurlconnection1;
            Chartboost chartboost;
            chartboost = Chartboost.sharedChartboost();
            httpurlconnection1 = (HttpURLConnection)(new URL(b)).openConnection();
            String s2;
            httpurlconnection1.setInstanceFollowRedirects(false);
            httpurlconnection1.setConnectTimeout(chartboost.getTimeout());
            httpurlconnection1.setReadTimeout(chartboost.getTimeout());
            s2 = httpurlconnection1.getHeaderField("Location");
            if (s2 != null)
            {
                s = s2;
            }
            if (httpurlconnection1 != null)
            {
                httpurlconnection1.disconnect();
            }
_L2:
            String s1 = s;
_L3:
            a(s1);
            return;
            Exception exception1;
            exception1;
            httpurlconnection1 = null;
_L6:
            if (httpurlconnection1 == null) goto _L2; else goto _L1
_L1:
            httpurlconnection1.disconnect();
            s1 = s;
              goto _L3
            Exception exception;
            exception;
            HttpURLConnection httpurlconnection = null;
_L5:
            if (httpurlconnection != null)
            {
                httpurlconnection.disconnect();
            }
            throw exception;
            Exception exception3;
            exception3;
            httpurlconnection = httpurlconnection1;
            exception = exception3;
            if (true) goto _L5; else goto _L4
_L4:
            Exception exception2;
            exception2;
              goto _L6
        }

            
            {
                a = n1;
                b = s;
                c = activity;
                super();
            }
    }

}
