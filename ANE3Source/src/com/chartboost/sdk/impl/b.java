// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.CBOrientation;
import com.chartboost.sdk.Libraries.d;
import com.chartboost.sdk.c;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.impl:
//            a, v

public class b extends c
{
    public class a extends com.chartboost.sdk.c.b
    {

        public ImageView c;
        public ImageView d;
        public Button e;
        public v f;
        final b g;

        private Point a(String s)
        {
            JSONObject jsonobject = b.a(g).optJSONObject(s);
            if (jsonobject != null)
            {
                JSONObject jsonobject1 = jsonobject.optJSONObject("offset");
                if (jsonobject1 != null)
                {
                    return new Point(jsonobject1.optInt("x", 0), jsonobject1.optInt("y", 0));
                }
            }
            return new Point(0, 0);
        }

        static b a(a a1)
        {
            return a1.g;
        }

        protected void a(int i1, int j1)
        {
            boolean flag = Chartboost.sharedChartboost().getOrientation().isPortrait();
            com.chartboost.sdk.Libraries.a.a a1;
            com.chartboost.sdk.Libraries.a.a a2;
            android.widget.RelativeLayout.LayoutParams layoutparams;
            android.widget.RelativeLayout.LayoutParams layoutparams1;
            android.widget.RelativeLayout.LayoutParams layoutparams2;
            String s;
            Point point;
            String s1;
            Point point1;
            Point point2;
            Point point3;
            BitmapDrawable bitmapdrawable;
            BitmapDrawable bitmapdrawable1;
            BitmapDrawable bitmapdrawable2;
            if (flag)
            {
                a1 = g.h;
            } else
            {
                a1 = g.i;
            }
            if (flag)
            {
                a2 = g.j;
            } else
            {
                a2 = g.k;
            }
            layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams.width = (int)((float)a2.c() / a2.e());
            layoutparams.height = (int)((float)a2.d() / a2.e());
            if (flag)
            {
                s = "frame-portrait";
            } else
            {
                s = "frame-landscape";
            }
            point = a(s);
            layoutparams.leftMargin = Math.round((float)(i1 - layoutparams.width) / 2.0F + (float)point.x);
            layoutparams.topMargin = Math.round((float)(j1 - layoutparams.height) / 2.0F + (float)point.y);
            d.setId(100);
            layoutparams1.width = (int)((float)a1.c() / a1.e());
            layoutparams1.height = (int)((float)a1.d() / a1.e());
            if (flag)
            {
                s1 = "ad-portrait";
            } else
            {
                s1 = "ad-landscape";
            }
            point1 = a(s1);
            layoutparams1.leftMargin = Math.round((float)(i1 - layoutparams1.width) / 2.0F + (float)point1.x);
            layoutparams1.topMargin = Math.round((float)(j1 - layoutparams1.height) / 2.0F + (float)point1.y);
            layoutparams2.width = (int)((float)g.l.c() / g.l.e());
            layoutparams2.height = (int)((float)g.l.d() / g.l.e());
            point2 = a("close");
            point3 = b.a(g, getContext());
            layoutparams2.leftMargin = layoutparams1.leftMargin + layoutparams1.width + Math.round(point2.x + point3.x);
            layoutparams2.topMargin = (layoutparams1.topMargin - layoutparams2.height) + Math.round(point2.y + point3.y);
            layoutparams2.leftMargin = Math.min(Math.max(0, layoutparams2.leftMargin), i1 - layoutparams2.width);
            layoutparams2.topMargin = Math.min(Math.max(0, layoutparams2.topMargin), j1 - layoutparams2.height);
            c.setLayoutParams(layoutparams);
            d.setLayoutParams(layoutparams1);
            e.setLayoutParams(layoutparams2);
            bitmapdrawable = new BitmapDrawable(a2.b());
            c.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
            c.setImageDrawable(bitmapdrawable);
            bitmapdrawable1 = new BitmapDrawable(a1.b());
            d.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
            d.setImageDrawable(bitmapdrawable1);
            bitmapdrawable2 = new BitmapDrawable(g.l.b());
            e.setBackgroundDrawable(bitmapdrawable2);
        }

        public void b()
        {
            super.b();
            d = null;
            c = null;
            e = null;
        }

        private a(Context context)
        {
            g = b.this;
            super(b.this, context);
            setBackgroundColor(0);
            setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
            f = new v(context);
            d = new ImageView(context);
            e = new Button(context);
            c = new ImageView(context);
            e.setOnClickListener(new _cls1(this));
            d.setClickable(true);
            d.setOnClickListener(new _cls2(this));
            f.a(c);
            f.a(d);
            f.a(e);
            addView(f, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        }

        a(Context context, a a1)
        {
            this(context);
        }
    }


    private static Point m = null;
    public com.chartboost.sdk.Libraries.a.a h;
    public com.chartboost.sdk.Libraries.a.a i;
    public com.chartboost.sdk.Libraries.a.a j;
    public com.chartboost.sdk.Libraries.a.a k;
    public com.chartboost.sdk.Libraries.a.a l;

    public b(com.chartboost.sdk.impl.a a1)
    {
        super(a1);
        e = 5;
        j = null;
        k = null;
        h = null;
        i = null;
        l = null;
    }

    static Point a(b b1, Context context)
    {
        return b1.b(context);
    }

    static JSONObject a(b b1)
    {
        return b1.f;
    }

    static void a(b b1, com.chartboost.sdk.Libraries.a.a a1)
    {
        b1.a(a1);
    }

    private Point b(Context context)
    {
        if (m == null)
        {
            m = new Point(-(int)(0.5F + d.b(10, context)), -(int)(0.5F + d.b(10, context)));
        }
        return m;
    }

    protected com.chartboost.sdk.c.b a(Context context)
    {
        return new a(context, null);
    }

    public void a(JSONObject jsonobject)
    {
        super.a(jsonobject);
        o.b b1 = new o.b() {

            final b a;

            public void a(com.chartboost.sdk.Libraries.a.a a1, Bundle bundle)
            {
                a.i = a1;
                b.a(a, a1);
            }

            
            {
                a = b.this;
                super();
            }
        };
        o.b b2 = new o.b() {

            final b a;

            public void a(com.chartboost.sdk.Libraries.a.a a1, Bundle bundle)
            {
                a.h = a1;
                b.a(a, a1);
            }

            
            {
                a = b.this;
                super();
            }
        };
        o.b b3 = new o.b() {

            final b a;

            public void a(com.chartboost.sdk.Libraries.a.a a1, Bundle bundle)
            {
                a.k = a1;
                b.a(a, a1);
            }

            
            {
                a = b.this;
                super();
            }
        };
        o.b b4 = new o.b() {

            final b a;

            public void a(com.chartboost.sdk.Libraries.a.a a1, Bundle bundle)
            {
                a.j = a1;
                b.a(a, a1);
            }

            
            {
                a = b.this;
                super();
            }
        };
        o.b b5 = new o.b() {

            final b a;

            public void a(com.chartboost.sdk.Libraries.a.a a1, Bundle bundle)
            {
                a.l = a1;
                b.a(a, a1);
            }

            
            {
                a = b.this;
                super();
            }
        };
        a("ad-landscape", b1, true);
        a("ad-portrait", b2, true);
        a("frame-landscape", b3);
        a("frame-portrait", b4);
        a("close", b5);
    }

    public void c()
    {
        super.c();
        if (i != null)
        {
            i.a();
            i = null;
        }
        if (h != null)
        {
            h.a();
            h = null;
        }
        k = null;
        j = null;
        l = null;
    }


    // Unreferenced inner class com/chartboost/sdk/impl/b$a$1

/* anonymous class */
    class a._cls1
        implements android.view.View.OnClickListener
    {

        final a a;

        public void onClick(View view)
        {
            if (a.a(a).a != null)
            {
                a.a(a).a.a();
            }
        }

            
            {
                a = a1;
                super();
            }
    }


    // Unreferenced inner class com/chartboost/sdk/impl/b$a$2

/* anonymous class */
    class a._cls2
        implements android.view.View.OnClickListener
    {

        final a a;

        public void onClick(View view)
        {
            if (a.a(a).b != null)
            {
                a.a(a).b.a(null, null);
            }
        }

            
            {
                a = a1;
                super();
            }
    }

}
