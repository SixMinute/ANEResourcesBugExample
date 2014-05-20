// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.CBOrientation;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.impl:
//            v, b

public class <init> extends com.chartboost.sdk..b.a
{

    public ImageView c;
    public ImageView d;
    public Button e;
    public v f;
    final b g;

    private Point a(String s)
    {
        JSONObject jsonobject = com.chartboost.sdk.impl.b.a(g).optJSONObject(s);
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

    static b a(> >)
    {
        return >.g;
    }

    protected void a(int i, int j)
    {
        boolean flag = Chartboost.sharedChartboost().getOrientation().isPortrait();
        com.chartboost.sdk.Libraries.e e1;
        com.chartboost.sdk.Libraries.e e2;
        android.widget.tiveLayout.LayoutParams layoutparams;
        android.widget.tiveLayout.LayoutParams layoutparams1;
        android.widget.tiveLayout.LayoutParams layoutparams2;
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
            e1 = g.h;
        } else
        {
            e1 = g.i;
        }
        if (flag)
        {
            e2 = g.j;
        } else
        {
            e2 = g.k;
        }
        layoutparams = new android.widget.tiveLayout.LayoutParams(-2, -2);
        layoutparams1 = new android.widget.tiveLayout.LayoutParams(-2, -2);
        layoutparams2 = new android.widget.tiveLayout.LayoutParams(-2, -2);
        layoutparams.width = (int)((float)e2.c() / e2.e());
        layoutparams.height = (int)((float)e2.d() / e2.e());
        if (flag)
        {
            s = "frame-portrait";
        } else
        {
            s = "frame-landscape";
        }
        point = a(s);
        layoutparams.leftMargin = Math.round((float)(i - layoutparams.width) / 2.0F + (float)point.x);
        layoutparams.topMargin = Math.round((float)(j - layoutparams.height) / 2.0F + (float)point.y);
        d.setId(100);
        layoutparams1.width = (int)((float)e1.c() / e1.e());
        layoutparams1.height = (int)((float)e1.d() / e1.e());
        if (flag)
        {
            s1 = "ad-portrait";
        } else
        {
            s1 = "ad-landscape";
        }
        point1 = a(s1);
        layoutparams1.leftMargin = Math.round((float)(i - layoutparams1.width) / 2.0F + (float)point1.x);
        layoutparams1.topMargin = Math.round((float)(j - layoutparams1.height) / 2.0F + (float)point1.y);
        layoutparams2.width = (int)((float)g.l.c() / g.l.e());
        layoutparams2.height = (int)((float)g.l.d() / g.l.e());
        point2 = a("close");
        point3 = com.chartboost.sdk.impl.b.a(g, getContext());
        layoutparams2.leftMargin = layoutparams1.leftMargin + layoutparams1.width + Math.round(point2.x + point3.x);
        layoutparams2.topMargin = (layoutparams1.topMargin - layoutparams2.height) + Math.round(point2.y + point3.y);
        layoutparams2.leftMargin = Math.min(Math.max(0, layoutparams2.leftMargin), i - layoutparams2.width);
        layoutparams2.topMargin = Math.min(Math.max(0, layoutparams2.topMargin), j - layoutparams2.height);
        c.setLayoutParams(layoutparams);
        d.setLayoutParams(layoutparams1);
        e.setLayoutParams(layoutparams2);
        bitmapdrawable = new BitmapDrawable(e2.b());
        c.setScaleType(android.widget.eView.ScaleType.FIT_CENTER);
        c.setImageDrawable(bitmapdrawable);
        bitmapdrawable1 = new BitmapDrawable(e1.b());
        d.setScaleType(android.widget.eView.ScaleType.FIT_CENTER);
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

    private ams(b b1, Context context)
    {
        g = b1;
        super(b1, context);
        setBackgroundColor(0);
        setLayoutParams(new android.widget.tiveLayout.LayoutParams(-1, -1));
        f = new v(context);
        d = new ImageView(context);
        e = new Button(context);
        c = new ImageView(context);
        e.setOnClickListener(new android.view.View.OnClickListener() {

            final b.a a;

            public void onClick(View view)
            {
                if (b.a.a(a).a != null)
                {
                    b.a.a(a).a.a();
                }
            }

            
            {
                a = b.a.this;
                super();
            }
        });
        d.setClickable(true);
        d.setOnClickListener(new android.view.View.OnClickListener() {

            final b.a a;

            public void onClick(View view)
            {
                if (b.a.a(a).b != null)
                {
                    b.a.a(a).b.a(null, null);
                }
            }

            
            {
                a = b.a.this;
                super();
            }
        });
        f.a(c);
        f.a(d);
        f.a(e);
        addView(f, new android.widget.tiveLayout.LayoutParams(-1, -1));
    }

    youtParams(b b1, Context context, youtParams youtparams)
    {
        this(b1, context);
    }
}
