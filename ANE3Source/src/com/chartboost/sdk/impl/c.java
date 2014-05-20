// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.RectF;
import android.widget.LinearLayout;

public abstract class c extends LinearLayout
    implements h.b
{

    protected android.view.View.OnClickListener a;
    private RectF b;
    private Paint c;
    private Paint d;
    private RectF e;

    public c(Context context)
    {
        super(context);
        b = new RectF();
        c = null;
        d = null;
        e = null;
        a = null;
    }

    private void a(Canvas canvas, RectF rectf)
    {
        if (d == null)
        {
            d = new Paint();
            d.setStyle(android.graphics.Paint.Style.FILL);
            d.setAntiAlias(true);
        }
        if (e == null || Math.abs(rectf.top - e.top) > 0.1F || Math.abs(rectf.bottom - e.bottom) > 0.1F)
        {
            d.setShader(new LinearGradient(0.0F, rectf.top, 0.0F, rectf.bottom, 0xffe9e9e9, 0xffdcdcdc, android.graphics.Shader.TileMode.CLAMP));
        }
        canvas.drawRect(rectf, d);
    }

    private void b(Canvas canvas, RectF rectf)
    {
        if (c == null)
        {
            c = new Paint();
            c.setStyle(android.graphics.Paint.Style.FILL);
            c.setAntiAlias(true);
        }
        c.setColor(0xfff4f4f4);
        canvas.drawRect(rectf.left, rectf.top, rectf.right, 1.0F + rectf.top, c);
        c.setColor(0xffcccccc);
        canvas.drawRect(rectf.left, rectf.bottom - 1.0F, rectf.right, rectf.bottom, c);
    }

    protected void onDraw(Canvas canvas)
    {
        b.set(0.0F, 0.0F, getWidth(), a());
        a(canvas, b);
        b(canvas, b);
    }
}
