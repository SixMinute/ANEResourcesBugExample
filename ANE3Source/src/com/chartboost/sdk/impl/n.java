// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import com.chartboost.sdk.Chartboost;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.concurrent.ExecutorService;

// Referenced classes of package com.chartboost.sdk.impl:
//            l, m

public class n
{
    public static interface a
    {

        public abstract void a(boolean flag, String s);
    }


    public a a;

    public n(a a1)
    {
        a = a1;
    }

    static void a(n n1, String s, Context context)
    {
        n1.a(s, context);
    }

    private void a(String s, Context context)
    {
        Context context1;
        Exception exception;
        String s1;
        Exception exception1;
        String s2;
        String s3;
        Exception exception2;
        if (context == null)
        {
            context1 = Chartboost.sharedChartboost().getContext();
        } else
        {
            context1 = context;
        }
        if (context1 != null) goto _L2; else goto _L1
_L1:
        if (a != null)
        {
            a.a(false, s);
        }
_L4:
        return;
_L2:
        Intent intent = new Intent("android.intent.action.VIEW");
        if (!(context1 instanceof Activity))
        {
            intent.addFlags(0x10000000);
        }
        intent.setData(Uri.parse(s));
        context1.startActivity(intent);
        s1 = s;
_L7:
        if (a != null)
        {
            a.a(true, s1);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        exception;
        if (!s.startsWith("market://")) goto _L6; else goto _L5
_L5:
        s3 = (new StringBuilder("http://market.android.com/")).append(s.substring(9)).toString();
        Intent intent1 = new Intent("android.intent.action.VIEW");
        if (!(context1 instanceof Activity))
        {
            intent1.addFlags(0x10000000);
        }
        intent1.setData(Uri.parse(s3));
        context1.startActivity(intent1);
        s1 = s3;
          goto _L7
        exception1;
        s2 = s;
_L8:
        if (a != null)
        {
            a.a(false, s2);
            return;
        }
          goto _L4
_L6:
        if (a != null)
        {
            a.a(false, s);
        }
        s1 = s;
          goto _L7
        exception2;
        s2 = s3;
          goto _L8
    }

    public void a(String s, Activity activity)
    {
        URI uri = new URI(s);
        String s1;
        s1 = uri.getScheme();
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        if (a != null)
        {
            a.a(false, s);
        }
_L2:
        return;
        URISyntaxException urisyntaxexception;
        urisyntaxexception;
        if (a == null) goto _L2; else goto _L1
_L1:
        a.a(false, s);
        return;
        if (!s1.equals("http") && !s1.equals("https"))
        {
            a(s, ((Context) (activity)));
            return;
        } else
        {
            Runnable runnable = new Runnable(s, activity) {

                final n a;
                private final String b;
                private final Activity c;

                static n a(_cls1 _pcls1)
                {
                    return _pcls1.a;
                }

                public void a(String s2)
                {
                    Runnable runnable1 = new Runnable(this, s2, c) {

                        final _cls1 a;
                        private final String b;
                        private final Activity c;

                        public void run()
                        {
                            n.a(_cls1.a(a), b, c);
                        }

            
            {
                a = _pcls1;
                b = s;
                c = activity;
                super();
            }
                    };
                    if (c != null)
                    {
                        c.runOnUiThread(runnable1);
                        return;
                    } else
                    {
                        Chartboost.sharedChartboost().getHandler().post(runnable1);
                        return;
                    }
                }

                public void run()
                {
                    String s2;
                    s2 = b;
                    if (!m.a())
                    {
                        break MISSING_BLOCK_LABEL_88;
                    }
                    HttpURLConnection httpurlconnection1;
                    Chartboost chartboost;
                    chartboost = Chartboost.sharedChartboost();
                    httpurlconnection1 = (HttpURLConnection)(new URL(b)).openConnection();
                    String s4;
                    httpurlconnection1.setInstanceFollowRedirects(false);
                    httpurlconnection1.setConnectTimeout(chartboost.getTimeout());
                    httpurlconnection1.setReadTimeout(chartboost.getTimeout());
                    s4 = httpurlconnection1.getHeaderField("Location");
                    if (s4 != null)
                    {
                        s2 = s4;
                    }
                    if (httpurlconnection1 != null)
                    {
                        httpurlconnection1.disconnect();
                    }
_L2:
                    String s3 = s2;
_L3:
                    a(s3);
                    return;
                    Exception exception1;
                    exception1;
                    httpurlconnection1 = null;
_L6:
                    if (httpurlconnection1 == null) goto _L2; else goto _L1
_L1:
                    httpurlconnection1.disconnect();
                    s3 = s2;
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
                a = n.this;
                b = s;
                c = activity;
                super();
            }
            };
            l.a().execute(runnable);
            return;
        }
    }
}
