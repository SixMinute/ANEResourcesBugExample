// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.chartboost.sdk.impl.a;
import com.chartboost.sdk.impl.o;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost

public abstract class com.chartboost.sdk.c
{
    public static interface a
    {

        public abstract void a();
    }

    public abstract class b extends RelativeLayout
        implements com.chartboost.sdk.impl.u.a
    {

        protected boolean a;
        final com.chartboost.sdk.c b;

        private boolean b(int l, int i1)
        {
            try
            {
                a(l, i1);
            }
            catch (Exception exception)
            {
                return false;
            }
            return true;
        }

        public void a()
        {
            a((Activity)getContext());
        }

        protected abstract void a(int l, int i1);

        public boolean a(Activity activity)
        {
            int l;
            int i1;
            int k1;
            int l1;
            View view;
            int i2;
            try
            {
                k1 = getWidth();
                l1 = getHeight();
            }
            catch (Exception exception)
            {
                l = 0;
                i1 = 0;
                continue; /* Loop/switch isn't completed */
            }
            if (k1 != 0 && l1 != 0) goto _L2; else goto _L1
_L1:
            view = activity.getWindow().findViewById(0x1020002);
            if (view != null)
            {
                break MISSING_BLOCK_LABEL_47;
            }
            view = activity.getWindow().getDecorView();
            i1 = view.getWidth();
            i2 = view.getHeight();
            l = i2;
_L4:
            if (i1 == 0 || l == 0)
            {
                DisplayMetrics displaymetrics = new DisplayMetrics();
                activity.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
                i1 = displaymetrics.widthPixels;
                l = displaymetrics.heightPixels;
            }
            if (Chartboost.sharedChartboost().getForcedOrientationDifference().isOdd())
            {
                int j1 = i1;
                i1 = l;
                l = j1;
            }
            return b(i1, l);
_L2:
            i1 = k1;
            l = l1;
            if (true) goto _L4; else goto _L3
_L3:
        }

        public void b()
        {
        }

        protected void onSizeChanged(int l, int i1, int j1, int k1)
        {
            super.onSizeChanged(l, i1, j1, k1);
            if (a)
            {
                return;
            }
            if (Chartboost.sharedChartboost().getForcedOrientationDifference().isOdd())
            {
                b(i1, l);
                return;
            } else
            {
                b(l, i1);
                return;
            }
        }

        public b(Context context)
        {
            b = com.chartboost.sdk.c.this;
            super(context);
            a = false;
            setFocusableInTouchMode(true);
            requestFocus();
            setOnTouchListener(new _cls1(this));
        }
    }

    public static interface c
    {

        public abstract void a(String s, JSONObject jsonobject);
    }


    public a a;
    public c b;
    public a c;
    public a d;
    protected int e;
    protected JSONObject f;
    protected com.chartboost.sdk.impl.a g;
    private int h;
    private int i;
    private int j;
    private b k;

    public com.chartboost.sdk.c(com.chartboost.sdk.impl.a a1)
    {
        a = null;
        b = null;
        c = null;
        d = null;
        e = 0;
        g = a1;
        k = null;
    }

    protected abstract b a(Context context);

    protected void a(com.chartboost.sdk.Libraries.a.a a1)
    {
        if (a1 != null)
        {
            h = 1 + h;
        }
        for (i = 1 + i; i != e || a() || d == null;)
        {
            return;
        }

        d.a();
    }

    protected void a(String s, com.chartboost.sdk.impl.o.b b1)
    {
        a(s, b1, false);
    }

    protected void a(String s, com.chartboost.sdk.impl.o.b b1, boolean flag)
    {
        Bundle bundle = new Bundle();
        bundle.putBoolean("paramNoMemoryCache", flag);
        a(f, s, b1, bundle);
    }

    public void a(JSONObject jsonobject)
    {
        i = 0;
        j = 0;
        h = 0;
        f = jsonobject.optJSONObject("assets");
        if (f == null && d != null)
        {
            d.a();
        }
    }

    protected void a(JSONObject jsonobject, String s, com.chartboost.sdk.impl.o.b b1, Bundle bundle)
    {
        JSONObject jsonobject1 = jsonobject.optJSONObject(s);
        if (jsonobject1 != null)
        {
            j = 1 + j;
            String s1 = jsonobject1.optString("url");
            String s2 = jsonobject1.optString("checksum");
            float f1 = (float)jsonobject1.optDouble("scale", 1.0D);
            Bundle bundle1;
            if (bundle == null)
            {
                bundle1 = new Bundle();
            } else
            {
                bundle1 = bundle;
            }
            bundle1.putFloat("paramAssetScale", f1);
            o.a().a(s1, s2, b1, null, bundle1);
            return;
        } else
        {
            a(((com.chartboost.sdk.Libraries.a.a) (null)));
            return;
        }
    }

    public boolean a()
    {
        if (h != j)
        {
            return false;
        }
        if (c != null)
        {
            c.a();
        }
        return true;
    }

    public boolean b()
    {
        if (g.c != com.chartboost.sdk.impl.a.b.b)
        {
            return false;
        }
        Chartboost.sharedChartboost().a(g);
        Activity activity = Chartboost.sharedChartboost().c();
        if (activity == null)
        {
            k = null;
            return false;
        }
        k = a(activity);
        if (k.a(activity))
        {
            return true;
        } else
        {
            k = null;
            return false;
        }
    }

    public void c()
    {
        e();
        c = null;
        d = null;
        b = null;
        a = null;
        f = null;
    }

    public b d()
    {
        return k;
    }

    public void e()
    {
        if (k != null)
        {
            k.b();
        }
        k = null;
    }

    // Unreferenced inner class com/chartboost/sdk/c$b$1

/* anonymous class */
    class b._cls1
        implements android.view.View.OnTouchListener
    {

        final b a;

        public boolean onTouch(View view, MotionEvent motionevent)
        {
            return true;
        }

            
            {
                a = b1;
                super();
            }
    }

}
