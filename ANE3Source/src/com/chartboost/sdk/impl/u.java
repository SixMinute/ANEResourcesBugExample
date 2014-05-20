// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.MotionEvent;
import android.view.OrientationEventListener;
import android.view.View;
import android.widget.RelativeLayout;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.CBOrientation;

// Referenced classes of package com.chartboost.sdk.impl:
//            q

public class u extends RelativeLayout
{
    public static interface a
    {

        public abstract void a();
    }


    private View a;
    private q b;
    private OrientationEventListener c;
    private com.chartboost.sdk.Libraries.CBOrientation.Difference d;

    public u(Context context, a a1)
    {
        super(context);
        d = null;
        a = (View)a1;
        b = new q(context);
        addView(b, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        addView(a, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        Chartboost chartboost = Chartboost.sharedChartboost();
        if (chartboost.getOrientation() != null && chartboost.getOrientation() != CBOrientation.UNSPECIFIED)
        {
            d = Chartboost.sharedChartboost().getForcedOrientationDifference();
            c = new OrientationEventListener(context, 1) {

                final u a;

                public void onOrientationChanged(int i)
                {
                    com.chartboost.sdk.Libraries.CBOrientation.Difference difference = Chartboost.sharedChartboost().getForcedOrientationDifference();
                    if (u.a(a) == difference)
                    {
                        return;
                    } else
                    {
                        u.a(a, difference);
                        ((a)u.b(a)).a();
                        a.invalidate();
                        return;
                    }
                }

            
            {
                a = u.this;
                super(context, i);
            }
            };
            c.enable();
        }
        setOnTouchListener(new android.view.View.OnTouchListener() {

            final u a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                return true;
            }

            
            {
                a = u.this;
                super();
            }
        });
    }

    static com.chartboost.sdk.Libraries.CBOrientation.Difference a(u u1)
    {
        return u1.d;
    }

    static void a(u u1, com.chartboost.sdk.Libraries.CBOrientation.Difference difference)
    {
        u1.d = difference;
    }

    static View b(u u1)
    {
        return u1.a;
    }

    public void a()
    {
        if (c != null)
        {
            c.disable();
            c = null;
        }
    }

    public q b()
    {
        return b;
    }

    public View c()
    {
        return a;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return true;
    }
}
