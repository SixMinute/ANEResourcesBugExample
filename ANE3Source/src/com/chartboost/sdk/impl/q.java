// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.RelativeLayout;

public class q extends RelativeLayout
{
    private class a extends View
    {

        final q a;

        public void a()
        {
            int i;
            int j;
            GradientDrawable gradientdrawable;
            if (q.a(a))
            {
                i = 0x88000000;
            } else
            {
                i = 0xcc000000;
            }
            if (q.a(a))
            {
                j = 0xcc000000;
            } else
            {
                j = 0x88000000;
            }
            gradientdrawable = new GradientDrawable(android.graphics.drawable.GradientDrawable.Orientation.TL_BR, new int[] {
                j, i
            });
            gradientdrawable.setGradientType(1);
            gradientdrawable.setGradientRadius((float)Math.min(getWidth(), getHeight()) / 2.0F);
            gradientdrawable.setGradientCenter((float)getWidth() / 2.0F, (float)getHeight() / 2.0F);
            setBackgroundDrawable(gradientdrawable);
        }

        protected void onSizeChanged(int i, int j, int k, int l)
        {
            super.onSizeChanged(i, j, k, l);
            a();
        }

        public a(Context context)
        {
            a = q.this;
            super(context);
            setFocusable(false);
        }
    }


    public a a;
    private boolean b;

    public q(Context context)
    {
        super(context);
        a = new a(context);
        a.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        addView(a);
        setFocusable(false);
    }

    static boolean a(q q1)
    {
        return q1.b;
    }

    public void a()
    {
        a(((View) (a)));
    }

    public void a(View view)
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setDuration(510L);
        alphaanimation.setFillAfter(true);
        view.startAnimation(alphaanimation);
    }

    public void a(boolean flag)
    {
        b = flag;
        a.a();
    }
}
