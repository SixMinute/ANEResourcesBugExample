// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsoluteLayout;
import android.widget.HorizontalScrollView;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import com.chartboost.sdk.Chartboost;

public class v extends AbsoluteLayout
{

    private Matrix a;
    private Matrix b;
    private float c[];
    private View d;
    private RelativeLayout e;

    public v(Context context)
    {
        super(context);
        a = new Matrix();
        b = new Matrix();
        c = new float[2];
        e = new RelativeLayout(context);
        addView(e, new android.widget.AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
        d = e;
    }

    public v(Context context, View view)
    {
        super(context);
        a = new Matrix();
        b = new Matrix();
        c = new float[2];
        addView(view, new android.widget.AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
        d = view;
    }

    public View a()
    {
        return d;
    }

    public void a(View view)
    {
        a(view, new android.widget.RelativeLayout.LayoutParams(-2, -2));
    }

    public void a(View view, android.widget.RelativeLayout.LayoutParams layoutparams)
    {
        if (e != null)
        {
            e.addView(view, layoutparams);
            return;
        } else
        {
            throw new IllegalStateException("cannot call addViewToContainer() on CBRotatableContainer that was set up with a default view");
        }
    }

    protected void dispatchDraw(Canvas canvas)
    {
        com.chartboost.sdk.Libraries.CBOrientation.Difference difference;
        int i;
        difference = Chartboost.sharedChartboost().getForcedOrientationDifference();
        i = difference.getAsInt();
        if (difference == com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_0)
        {
            super.dispatchDraw(canvas);
            return;
        }
        canvas.save();
        canvas.clipRect(0.0F, 0.0F, getWidth(), getHeight(), android.graphics.Region.Op.REPLACE);
        ViewGroup viewgroup = (ViewGroup)getParent();
        ViewGroup viewgroup1;
        boolean flag;
        viewgroup1 = (ViewGroup)viewgroup.getParent();
        if (viewgroup1 instanceof ScrollView)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        flag = viewgroup1 instanceof HorizontalScrollView;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_93;
        }
        viewgroup = viewgroup1;
_L2:
        try
        {
            int j = getLeft() - viewgroup.getScrollX();
            int k = getTop() - viewgroup.getScrollY();
            canvas.clipRect(0 - j, 0 - k, viewgroup.getWidth() - j, viewgroup.getHeight() - k, android.graphics.Region.Op.INTERSECT);
        }
        catch (Exception exception) { }
        canvas.translate((float)getWidth() / 2.0F, (float)getHeight() / 2.0F);
        canvas.rotate(i);
        if (difference.isOdd())
        {
            canvas.translate((float)(-getHeight()) / 2.0F, (float)(-getWidth()) / 2.0F);
        } else
        {
            canvas.translate((float)(-getWidth()) / 2.0F, (float)(-getHeight()) / 2.0F);
        }
        a = canvas.getMatrix();
        a.invert(b);
        super.dispatchDraw(canvas);
        canvas.restore();
        return;
        Exception exception1;
        exception1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        if (Chartboost.sharedChartboost().getForcedOrientationDifference() == com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_0)
        {
            return super.dispatchTouchEvent(motionevent);
        } else
        {
            float af[] = c;
            af[0] = motionevent.getRawX();
            af[1] = motionevent.getRawY();
            b.mapPoints(af);
            motionevent.setLocation(af[0], af[1]);
            return super.dispatchTouchEvent(motionevent);
        }
    }

    protected void onMeasure(int i, int j)
    {
        if (Chartboost.sharedChartboost().getForcedOrientationDifference().isOdd())
        {
            super.onMeasure(j, i);
            setMeasuredDimension(getMeasuredHeight(), getMeasuredWidth());
            return;
        } else
        {
            super.onMeasure(i, j);
            return;
        }
    }

    public void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        com.chartboost.sdk.Libraries.CBOrientation.Difference difference = Chartboost.sharedChartboost().getForcedOrientationDifference();
        android.view.ViewGroup.LayoutParams layoutparams = d.getLayoutParams();
        int i1;
        int j1;
        if (difference.isOdd())
        {
            i1 = j;
        } else
        {
            i1 = i;
        }
        layoutparams.width = i1;
        if (difference.isOdd())
        {
            j1 = i;
        } else
        {
            j1 = j;
        }
        layoutparams.height = j1;
        d.setLayoutParams(layoutparams);
        d.measure(android.view.View.MeasureSpec.makeMeasureSpec(layoutparams.width, 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(layoutparams.height, 0x40000000));
        d.layout(0, 0, layoutparams.width, layoutparams.height);
    }
}
