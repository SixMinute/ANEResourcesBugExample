// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.Xfermode;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.widget.ImageView;

public class g extends ImageView
{

    private RectF a;
    private Paint b;
    private Xfermode c;

    public g(Context context)
    {
        super(context);
        a(context);
    }

    private void a(Context context)
    {
        float f = getContext().getResources().getDisplayMetrics().density;
        c = new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN);
        a = new RectF();
        b = new Paint();
        b.setStyle(android.graphics.Paint.Style.STROKE);
        b.setColor(0xa6000000);
        b.setStrokeWidth(Math.max(1.0F, f * 1.0F));
        b.setAntiAlias(true);
    }

    protected void onDraw(Canvas canvas)
    {
        float f = getContext().getResources().getDisplayMetrics().density;
        float f1 = 10F * f;
        float f2 = 1.0F * f;
        Drawable drawable = getDrawable();
        if (drawable instanceof BitmapDrawable)
        {
            Paint paint = ((BitmapDrawable)drawable).getPaint();
            android.graphics.Rect rect = drawable.getBounds();
            a.set(rect);
            if (getImageMatrix() != null)
            {
                getImageMatrix().mapRect(a);
            }
            int i = canvas.saveLayer(a, null, 31);
            paint.setAntiAlias(true);
            canvas.drawARGB(0, 0, 0, 0);
            paint.setColor(0xff000000);
            canvas.drawRoundRect(a, f1, f1, paint);
            Xfermode xfermode = paint.getXfermode();
            paint.setXfermode(c);
            super.onDraw(canvas);
            paint.setXfermode(xfermode);
            canvas.restoreToCount(i);
        } else
        {
            super.onDraw(canvas);
        }
        a.set(0.0F, 0.0F, getWidth(), getHeight());
        a.inset(f2 / 2.0F, f2 / 2.0F);
        canvas.drawRoundRect(a, f1, f1, b);
    }
}
