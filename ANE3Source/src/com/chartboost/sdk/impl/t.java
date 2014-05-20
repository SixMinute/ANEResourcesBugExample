// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.chartboost.sdk.Chartboost;

// Referenced classes of package com.chartboost.sdk.impl:
//            v, w

public class t extends LinearLayout
    implements u.a
{

    private static int d[];
    private TextView a;
    private v b;
    private w c;

    public t(Context context)
    {
        super(context);
        a(context);
    }

    private void a(Context context)
    {
        setGravity(17);
        a = new TextView(getContext());
        a.setTextColor(-1);
        a.setTextSize(2, 16F);
        a.setTypeface(null, 1);
        a.setText("Loading...");
        a.setGravity(17);
        b = new v(context, a);
        c = new w(getContext());
        addView(b);
        addView(c);
        a();
    }

    static int[] b()
    {
        int ai[] = d;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[com.chartboost.sdk.Libraries.CBOrientation.Difference.values().length];
        try
        {
            ai1[com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_0.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_180.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_270.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_90.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        d = ai1;
        return ai1;
    }

    public void a()
    {
        removeView(b);
        removeView(c);
        float f = getContext().getResources().getDisplayMetrics().density;
        int i = Math.round(20F * f);
        com.chartboost.sdk.Libraries.CBOrientation.Difference difference = Chartboost.sharedChartboost().getForcedOrientationDifference();
        switch (b()[difference.ordinal()])
        {
        default:
            setOrientation(1);
            android.widget.LinearLayout.LayoutParams layoutparams6 = new android.widget.LinearLayout.LayoutParams(-1, -2);
            layoutparams6.setMargins(i, i, i, 0);
            addView(b, layoutparams6);
            android.widget.LinearLayout.LayoutParams layoutparams7 = new android.widget.LinearLayout.LayoutParams(-1, Math.round(f * 32F));
            layoutparams7.setMargins(i, i, i, i);
            addView(c, layoutparams7);
            return;

        case 2: // '\002'
            setOrientation(0);
            android.widget.LinearLayout.LayoutParams layoutparams4 = new android.widget.LinearLayout.LayoutParams(Math.round(f * 32F), -1);
            layoutparams4.setMargins(i, i, 0, i);
            addView(c, layoutparams4);
            android.widget.LinearLayout.LayoutParams layoutparams5 = new android.widget.LinearLayout.LayoutParams(-2, -1);
            layoutparams5.setMargins(i, i, i, i);
            addView(b, layoutparams5);
            return;

        case 3: // '\003'
            setOrientation(1);
            android.widget.LinearLayout.LayoutParams layoutparams2 = new android.widget.LinearLayout.LayoutParams(-1, Math.round(f * 32F));
            layoutparams2.setMargins(i, i, i, 0);
            addView(c, layoutparams2);
            android.widget.LinearLayout.LayoutParams layoutparams3 = new android.widget.LinearLayout.LayoutParams(-1, -2);
            layoutparams3.setMargins(i, i, i, i);
            addView(b, layoutparams3);
            return;

        case 4: // '\004'
            setOrientation(0);
            break;
        }
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -1);
        layoutparams.setMargins(i, i, 0, i);
        addView(b, layoutparams);
        android.widget.LinearLayout.LayoutParams layoutparams1 = new android.widget.LinearLayout.LayoutParams(Math.round(f * 32F), -1);
        layoutparams1.setMargins(i, i, i, i);
        addView(c, layoutparams1);
    }
}
