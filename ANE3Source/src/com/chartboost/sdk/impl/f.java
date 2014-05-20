// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.LinearGradient;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.widget.Button;

public class f extends Button
{

    private Path a;
    private Path b;
    private Path c;
    private RectF d;
    private Paint e;
    private Paint f;
    private Shader g;
    private Shader h;
    private int i;

    public f(Context context)
    {
        super(context);
        a(context);
    }

    static Path a(f f1)
    {
        return f1.a;
    }

    private void a()
    {
        int j = getHeight();
        if (j == i)
        {
            return;
        } else
        {
            i = j;
            int ai[] = {
                0xfffec22a, 0xfffea200, 0xfffe8400
            };
            g = new LinearGradient(0.0F, 0.0F, 0.0F, getHeight(), ai, null, android.graphics.Shader.TileMode.CLAMP);
            int ai1[] = {
                0xfffe8400, 0xfffea200, 0xfffec22a
            };
            h = new LinearGradient(0.0F, 0.0F, 0.0F, getHeight(), ai1, null, android.graphics.Shader.TileMode.CLAMP);
            return;
        }
    }

    private void a(Context context)
    {
        float f1 = context.getResources().getDisplayMetrics().density;
        setTextSize(2, 13F);
        setShadowLayer(1.0F * f1, 1.0F * f1, 1.0F * f1, 0xff004b73);
        setTypeface(null, 1);
        setTextColor(-1);
        setClickable(true);
        setGravity(17);
        setPadding(Math.round(12F * f1), Math.round(5F * f1), Math.round(12F * f1), Math.round(f1 * 5F));
        a = new Path();
        b = new Path();
        c = new Path();
        d = new RectF();
        e = new Paint();
        e.setStyle(android.graphics.Paint.Style.STROKE);
        e.setColor(0xffbb6400);
        e.setAntiAlias(true);
        i = -1;
        f = new Paint();
        f.setStyle(android.graphics.Paint.Style.FILL);
        f.setAntiAlias(true);
        setBackgroundDrawable(new Drawable() {

            boolean a;
            final f b;

            public void draw(Canvas canvas)
            {
                int j = 0;
                float f2 = b.getContext().getResources().getDisplayMetrics().density;
                int ai[] = getState();
                boolean flag = false;
                do
                {
                    if (j >= ai.length)
                    {
                        float f3 = 6F * f2;
                        f.a(b).reset();
                        f.b(b).set(getBounds());
                        f.a(b).addRoundRect(f.b(b), f3, f3, android.graphics.Path.Direction.CW);
                        f.c(b);
                        Paint paint = f.d(b);
                        Shader shader;
                        float f4;
                        if (flag)
                        {
                            shader = f.e(b);
                        } else
                        {
                            shader = f.f(b);
                        }
                        paint.setShader(shader);
                        canvas.drawPath(f.a(b), f.d(b));
                        f4 = f2 * 1.0F;
                        f.g(b).reset();
                        f.b(b).inset(f4 / 2.0F, f4 / 2.0F);
                        f.g(b).addRoundRect(f.b(b), f3, f3, android.graphics.Path.Direction.CW);
                        f.h(b).reset();
                        f.b(b).offset(0.0F, f4 / 2.0F);
                        f.h(b).addRoundRect(f.b(b), f3, f3, android.graphics.Path.Direction.CW);
                        if (!flag)
                        {
                            f.i(b).setColor(-1);
                            canvas.drawPath(f.h(b), f.i(b));
                        }
                        f.i(b).setColor(0xffbb6400);
                        canvas.drawPath(f.g(b), f.i(b));
                        return;
                    }
                    if (ai[j] == 0x10100a7)
                    {
                        flag = true;
                    }
                    j++;
                } while (true);
            }

            public int getOpacity()
            {
                return 1;
            }

            public boolean isStateful()
            {
                return true;
            }

            protected boolean onStateChange(int ai[])
            {
                int j = 0;
                boolean flag = false;
                do
                {
                    if (j >= ai.length)
                    {
                        if (a != flag)
                        {
                            a = flag;
                            invalidateSelf();
                            return true;
                        } else
                        {
                            return false;
                        }
                    }
                    if (ai[j] == 0x10100a7)
                    {
                        flag = true;
                    }
                    j++;
                } while (true);
            }

            public void setAlpha(int j)
            {
                f.i(b).setAlpha(j);
                f.d(b).setAlpha(j);
            }

            public void setColorFilter(ColorFilter colorfilter)
            {
                f.i(b).setColorFilter(colorfilter);
                f.d(b).setColorFilter(colorfilter);
            }

            
            {
                b = f.this;
                super();
                a = false;
            }
        });
    }

    static RectF b(f f1)
    {
        return f1.d;
    }

    static void c(f f1)
    {
        f1.a();
    }

    static Paint d(f f1)
    {
        return f1.f;
    }

    static Shader e(f f1)
    {
        return f1.h;
    }

    static Shader f(f f1)
    {
        return f1.g;
    }

    static Path g(f f1)
    {
        return f1.b;
    }

    static Path h(f f1)
    {
        return f1.c;
    }

    static Paint i(f f1)
    {
        return f1.e;
    }
}
