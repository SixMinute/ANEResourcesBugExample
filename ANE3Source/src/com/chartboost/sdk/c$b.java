// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.RelativeLayout;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost, c

public abstract class t extends RelativeLayout
    implements com.chartboost.sdk.impl.t
{

    protected boolean a;
    final c b;

    private boolean b(int i, int j)
    {
        try
        {
            a(i, j);
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

    protected abstract void a(int i, int j);

    public boolean a(Activity activity)
    {
        int i;
        int j;
        int l;
        int i1;
        View view;
        int j1;
        try
        {
            l = getWidth();
            i1 = getHeight();
        }
        catch (Exception exception)
        {
            i = 0;
            j = 0;
            continue; /* Loop/switch isn't completed */
        }
        if (l != 0 && i1 != 0) goto _L2; else goto _L1
_L1:
        view = activity.getWindow().findViewById(0x1020002);
        if (view != null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        view = activity.getWindow().getDecorView();
        j = view.getWidth();
        j1 = view.getHeight();
        i = j1;
_L4:
        if (j == 0 || i == 0)
        {
            DisplayMetrics displaymetrics = new DisplayMetrics();
            activity.getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
            j = displaymetrics.widthPixels;
            i = displaymetrics.heightPixels;
        }
        if (Chartboost.sharedChartboost().getForcedOrientationDifference().isOdd())
        {
            int k = j;
            j = i;
            i = k;
        }
        return b(j, i);
_L2:
        j = l;
        i = i1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void b()
    {
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (a)
        {
            return;
        }
        if (Chartboost.sharedChartboost().getForcedOrientationDifference().isOdd())
        {
            b(j, i);
            return;
        } else
        {
            b(i, j);
            return;
        }
    }

    public stener(c c1, Context context)
    {
        b = c1;
        super(context);
        a = false;
        setFocusableInTouchMode(true);
        requestFocus();
        setOnTouchListener(new android.view.View.OnTouchListener() {

            final c.b a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                return true;
            }

            
            {
                a = c.b.this;
                super();
            }
        });
    }
}
