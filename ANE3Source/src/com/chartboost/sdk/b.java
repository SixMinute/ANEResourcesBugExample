// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import com.chartboost.sdk.impl.a;
import com.chartboost.sdk.impl.p;
import com.chartboost.sdk.impl.q;
import com.chartboost.sdk.impl.t;
import com.chartboost.sdk.impl.u;
import java.lang.ref.WeakReference;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk:
//            c, Chartboost, ChartboostDelegate, CBImpressionActivity

public final class com.chartboost.sdk.b
{
    protected static final class a
    {

        protected boolean a;
        protected com.chartboost.sdk.impl.a b;

        public a(com.chartboost.sdk.impl.a a1)
        {
            a = false;
            b = a1;
        }

        protected a(boolean flag, com.chartboost.sdk.impl.a a1)
        {
            a = flag;
            b = a1;
        }
    }

    private class b
        implements Runnable
    {

        final com.chartboost.sdk.b a;
        private com.chartboost.sdk.impl.a b;
        private boolean c;

        public void run()
        {
            if (b.c == com.chartboost.sdk.impl.a.b.d)
            {
                b.c = com.chartboost.sdk.impl.a.b.a;
                a.b(b, c);
            }
        }

        public b(com.chartboost.sdk.impl.a a1, boolean flag)
        {
            a = com.chartboost.sdk.b.this;
            super();
            b = a1;
            c = flag;
        }
    }


    private Chartboost a;
    private WeakReference b;
    private t c;
    private boolean d;
    private boolean e;
    private boolean f;
    private u g;
    private u h;

    protected com.chartboost.sdk.b(Chartboost chartboost, Activity activity)
    {
        d = false;
        e = false;
        f = false;
        a = chartboost;
        b = new WeakReference(activity);
    }

    static Chartboost a(com.chartboost.sdk.b b1)
    {
        return b1.a;
    }

    private void b(com.chartboost.sdk.impl.a a1)
    {
        if (!e) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Activity activity;
        a1.c = com.chartboost.sdk.impl.a.b.b;
        activity = (Activity)b.get();
        if (a1.f.b() && activity != null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (a1.f.d != null)
        {
            a1.f.d.a();
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        if (a1.i)
        {
            a1.i = false;
            g = new u(activity, a1.f.d());
            activity.addContentView(g, new android.widget.FrameLayout.LayoutParams(-1, -1));
            a1.c = com.chartboost.sdk.impl.a.b.c;
            a1.h = g;
            e = true;
            return;
        }
        g = new u(activity, a1.f.d());
        activity.addContentView(g, new android.widget.FrameLayout.LayoutParams(-1, -1));
        g.b().a();
        com.chartboost.sdk.impl.p.b b1 = com.chartboost.sdk.impl.p.b.a;
        if (a1.d == com.chartboost.sdk.impl.a.c.c)
        {
            b1 = com.chartboost.sdk.impl.p.b.c;
        }
        com.chartboost.sdk.impl.p.b b2 = com.chartboost.sdk.impl.p.b.a(a1.a.optInt("animation"));
        if (b2 != null)
        {
            b1 = b2;
        }
        if (a.getAnimationsOff())
        {
            b1 = com.chartboost.sdk.impl.p.b.f;
        }
        a1.c = com.chartboost.sdk.impl.a.b.c;
        a1.h = g;
        p.a(b1, a1);
        e = true;
        ChartboostDelegate chartboostdelegate = a.getDelegate();
        if (chartboostdelegate != null)
        {
            if (a1.d == com.chartboost.sdk.impl.a.c.b)
            {
                chartboostdelegate.didShowInterstitial(a1.e);
                return;
            }
            if (a1.d == com.chartboost.sdk.impl.a.c.c)
            {
                chartboostdelegate.didShowMoreApps();
                return;
            }
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    private com.chartboost.sdk.impl.p.a c(com.chartboost.sdk.impl.a a1)
    {
        return new com.chartboost.sdk.impl.p.a() {

            final com.chartboost.sdk.b a;

            public void a(com.chartboost.sdk.impl.a a2)
            {
                com.chartboost.sdk.b.a(a).c.post(a. new b(a2, false));
            }

            
            {
                a = com.chartboost.sdk.b.this;
                super();
            }
        };
    }

    private void d()
    {
        Activity activity = (Activity)b.get();
        if (activity == null)
        {
            return;
        } else
        {
            c = new t(activity);
            h = new u(activity, c);
            h.b().a(true);
            activity.addContentView(h, new android.widget.FrameLayout.LayoutParams(-1, -1));
            h.b().a();
            h.b().a((View)c.getParent());
            d = true;
            return;
        }
    }

    protected void a(Activity activity)
    {
        b = new WeakReference(activity);
    }

    protected void a(a a1)
    {
        if (a1.a)
        {
            d();
        } else
        if (a1.b != null)
        {
            b(a1.b);
            return;
        }
    }

    public void a(com.chartboost.sdk.impl.a a1)
    {
        e = false;
        (new b(a1, true)).run();
        if (a1.c == com.chartboost.sdk.impl.a.b.c)
        {
            a1.c = com.chartboost.sdk.impl.a.b.b;
        } else
        {
            a1.c = com.chartboost.sdk.impl.a.b.a;
        }
        a1.c();
        try
        {
            ((ViewGroup)g.getParent()).removeView(g);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        g = null;
    }

    public void a(com.chartboost.sdk.impl.a a1, boolean flag)
    {
        e = false;
        if (!flag)
        {
            f = true;
        }
        a1.c = com.chartboost.sdk.impl.a.b.d;
        com.chartboost.sdk.impl.p.b b1 = com.chartboost.sdk.impl.p.b.a;
        if (a1.d == com.chartboost.sdk.impl.a.c.c)
        {
            b1 = com.chartboost.sdk.impl.p.b.c;
        }
        com.chartboost.sdk.impl.p.b b2 = com.chartboost.sdk.impl.p.b.a(a1.a.optInt("animation"));
        if (b2 != null)
        {
            b1 = b2;
        }
        if (a.getAnimationsOff())
        {
            b1 = com.chartboost.sdk.impl.p.b.f;
        }
        p.b(b1, a1, c(a1));
    }

    public void a(boolean flag)
    {
        if (a())
        {
            Activity activity;
            try
            {
                ((ViewGroup)h.getParent()).removeView(h);
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            c = null;
            h = null;
            d = false;
            activity = (Activity)b.get();
            if (!f && flag && a.getImpressionsUseActivities() && !e && activity != null && (activity instanceof CBImpressionActivity))
            {
                a.d();
                activity.finish();
            }
        }
    }

    protected boolean a()
    {
        return d;
    }

    public void b(com.chartboost.sdk.impl.a a1, boolean flag)
    {
        if (g != null)
        {
            try
            {
                ((ViewGroup)g.getParent()).removeView(g);
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
            a1.b();
            g = null;
            f = false;
            if (a.getImpressionsUseActivities() && !flag && !d)
            {
                Activity activity = (Activity)b.get();
                if (activity != null && (activity instanceof CBImpressionActivity))
                {
                    activity.finish();
                    return;
                }
            }
        }
    }

    protected boolean b()
    {
        return e;
    }

    protected boolean c()
    {
        return a() || b();
    }
}
