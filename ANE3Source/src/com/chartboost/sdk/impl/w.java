// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import com.chartboost.sdk.Chartboost;
import java.lang.reflect.Method;

public class w extends View
{

    private Handler a;
    private float b;
    private long c;
    private Paint d;
    private Paint e;
    private Path f;
    private Path g;
    private RectF h;
    private RectF i;
    private Bitmap j;
    private Canvas k;
    private Runnable l;

    public w(Context context)
    {
        super(context);
        j = null;
        k = null;
        l = new Runnable() {

            final w a;

            public void run()
            {
                com.chartboost.sdk.Libraries.CBOrientation.Difference difference = Chartboost.sharedChartboost().getForcedOrientationDifference();
                float f1 = a.getContext().getResources().getDisplayMetrics().density;
                w w1 = a;
                w.a(w1, w.a(w1) + 1.0F * f1);
                int i1;
                float f2;
                if (difference.isOdd())
                {
                    i1 = a.getWidth();
                } else
                {
                    i1 = a.getHeight();
                }
                f2 = (float)i1 - f1 * 9F;
                if (w.a(a) > f2)
                {
                    w w2 = a;
                    w.a(w2, w.a(w2) - f2 * 2.0F);
                }
                if (a.getWindowVisibility() == 0)
                {
                    a.invalidate();
                }
            }

            
            {
                a = w.this;
                super();
            }
        };
        a(context);
    }

    static float a(w w1)
    {
        return w1.b;
    }

    private void a(Context context)
    {
        float f1 = context.getResources().getDisplayMetrics().density;
        b = 0.0F;
        a = new Handler();
        c = (long)((double)System.nanoTime() / 1000000D);
        d = new Paint();
        d.setColor(-1);
        d.setStyle(android.graphics.Paint.Style.STROKE);
        d.setStrokeWidth(f1 * 3F);
        d.setAntiAlias(true);
        e = new Paint();
        e.setColor(-1);
        e.setStyle(android.graphics.Paint.Style.FILL);
        e.setAntiAlias(true);
        f = new Path();
        g = new Path();
        i = new RectF();
        h = new RectF();
        try
        {
            Class class1 = getClass();
            Class aclass[] = new Class[2];
            aclass[0] = Integer.TYPE;
            aclass[1] = android/graphics/Paint;
            Method method = class1.getMethod("setLayerType", aclass);
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(1);
            method.invoke(this, aobj);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    static void a(w w1, float f1)
    {
        w1.b = f1;
    }

    private boolean a(Canvas canvas)
    {
        boolean flag;
        try
        {
            flag = ((Boolean)android/graphics/Canvas.getMethod("isHardwareAccelerated", new Class[0]).invoke(canvas, new Object[0])).booleanValue();
        }
        catch (Exception exception)
        {
            return false;
        }
        return flag;
    }

    protected void onAttachedToWindow()
    {
        a.removeCallbacks(l);
        a.post(l);
    }

    protected void onDetachedFromWindow()
    {
        a.removeCallbacks(l);
        if (j != null && !j.isRecycled())
        {
            j.recycle();
        }
        j = null;
    }

    protected void onDraw(Canvas canvas)
    {
        float f1 = getContext().getResources().getDisplayMetrics().density;
        boolean flag = a(canvas);
        Canvas canvas1;
        if (flag)
        {
            if (j == null || j.getWidth() != canvas.getWidth() || j.getHeight() != canvas.getHeight())
            {
                if (j != null && !j.isRecycled())
                {
                    j.recycle();
                }
                com.chartboost.sdk.Libraries.CBOrientation.Difference difference;
                int i1;
                float f2;
                float f3;
                float f4;
                float f5;
                boolean flag1;
                UnsupportedOperationException unsupportedoperationexception;
                long l1;
                float f6;
                float f7;
                float f8;
                float f9;
                Canvas canvas2;
                Canvas canvas3;
                try
                {
                    j = Bitmap.createBitmap(canvas.getWidth(), canvas.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
                    k = new Canvas(j);
                }
                catch (Throwable throwable)
                {
                    return;
                }
            }
            j.eraseColor(0);
            canvas2 = k;
            canvas3 = canvas;
            canvas = canvas2;
            canvas1 = canvas3;
        } else
        {
            canvas1 = null;
        }
        difference = Chartboost.sharedChartboost().getForcedOrientationDifference();
        canvas.save();
        if (difference.isReverse())
        {
            canvas.rotate(180F, (float)getWidth() / 2.0F, (float)getHeight() / 2.0F);
        }
        h.set(0.0F, 0.0F, getWidth(), getHeight());
        h.inset(1.5F * f1, 1.5F * f1);
        if (difference.isOdd())
        {
            i1 = getWidth();
        } else
        {
            i1 = getHeight();
        }
        f2 = (float)i1 / 2.0F;
        canvas.drawRoundRect(h, f2, f2, d);
        i.set(h);
        i.inset(3F * f1, f1 * 3F);
        if (difference.isOdd())
        {
            f3 = i.width();
        } else
        {
            f3 = i.height();
        }
        f4 = f3 / 2.0F;
        f.reset();
        f.addRoundRect(i, f4, f4, android.graphics.Path.Direction.CW);
        if (difference.isOdd())
        {
            f5 = i.width();
        } else
        {
            f5 = i.height();
        }
        g.reset();
        if (difference.isOdd())
        {
            g.moveTo(f5, 0.0F);
            g.lineTo(f5, f5);
            g.lineTo(0.0F, f5 * 2.0F);
            g.lineTo(0.0F, f5);
        } else
        {
            g.moveTo(0.0F, f5);
            g.lineTo(f5, f5);
            g.lineTo(f5 * 2.0F, 0.0F);
            g.lineTo(f5, 0.0F);
        }
        g.close();
        canvas.save();
        flag1 = true;
        try
        {
            canvas.clipPath(f);
        }
        // Misplaced declaration of an exception variable
        catch (UnsupportedOperationException unsupportedoperationexception)
        {
            flag1 = false;
        }
        if (!flag1) goto _L2; else goto _L1
_L1:
        f6 = -f5 + b;
_L3:
        if (difference.isOdd())
        {
            f7 = i.height();
        } else
        {
            f7 = i.width();
        }
        if (f6 < f7 + f5)
        {
            break MISSING_BLOCK_LABEL_637;
        }
_L2:
        canvas.restore();
        canvas.restore();
        if (flag && canvas1 != null)
        {
            canvas1.drawBitmap(j, 0.0F, 0.0F, null);
            canvas1;
        }
        l1 = Math.max(0L, 16L - ((long)((double)System.nanoTime() / 1000000D) - c));
        a.removeCallbacks(l);
        a.postDelayed(l, l1);
        return;
        if (difference.isOdd())
        {
            f8 = i.top;
        } else
        {
            f8 = i.left;
        }
        f9 = f8 + f6;
        canvas.save();
        if (difference.isOdd())
        {
            canvas.translate(i.left, f9);
        } else
        {
            canvas.translate(f9, i.top);
        }
        canvas.drawPath(g, e);
        canvas.restore();
        f6 += 2.0F * f5;
          goto _L3
    }

    protected void onWindowVisibilityChanged(int i1)
    {
        super.onWindowVisibilityChanged(i1);
        a.removeCallbacks(l);
        if (i1 == 0)
        {
            a.post(l);
        }
    }
}
