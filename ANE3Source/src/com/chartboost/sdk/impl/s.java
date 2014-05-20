// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.database.DataSetObserver;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import java.util.ArrayList;
import java.util.List;

public class s
{

    private ScrollView a;
    private HorizontalScrollView b;
    private ViewGroup c;
    private LinearLayout d;
    private BaseAdapter e;
    private List f;
    private List g;
    private List h;
    private int i;
    private DataSetObserver j;

    public s(Context context, int k)
    {
        j = new DataSetObserver() {

            final s a;

            public void onChanged()
            {
                int l;
                int i1;
                l = s.a(a).getChildCount();
                i1 = 0;
_L3:
                if (i1 < l) goto _L2; else goto _L1
_L1:
                int j1;
                int k1;
                s.c(a).clear();
                s.a(a).removeAllViews();
                j1 = s.e(a).getCount();
                k1 = 0;
_L4:
                if (k1 >= j1)
                {
                    s.a(a).requestLayout();
                    return;
                }
                break MISSING_BLOCK_LABEL_182;
_L2:
                List list = (List)s.b(a).get(((Integer)s.c(a).get(i1)).intValue());
                List list1 = (List)s.d(a).get(((Integer)s.c(a).get(i1)).intValue());
                View view = s.a(a).getChildAt(i1);
                list.remove(view);
                list1.add(view);
                i1++;
                  goto _L3
                int l1 = s.e(a).getItemViewType(k1);
                List list2 = (List)s.b(a).get(l1);
                List list3 = (List)s.d(a).get(l1);
                s.c(a).add(Integer.valueOf(l1));
                View view1;
                View view2;
                android.widget.LinearLayout.LayoutParams layoutparams;
                if (!list3.isEmpty())
                {
                    View view3 = (View)list3.get(0);
                    list3.remove(0);
                    view1 = view3;
                } else
                {
                    view1 = null;
                }
                view2 = s.e(a).getView(k1, view1, s.a(a));
                list2.add(view2);
                if (s.f(a) == 0)
                {
                    layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -1);
                } else
                {
                    layoutparams = new android.widget.LinearLayout.LayoutParams(-1, -2);
                }
                if (k1 < j1 - 1)
                {
                    layoutparams.setMargins(0, 0, 0, 1);
                }
                s.a(a).addView(view2, layoutparams);
                k1++;
                  goto _L4
            }

            
            {
                a = s.this;
                super();
            }
        };
        d = new LinearLayout(context);
        i = k;
        d.setOrientation(k);
        if (k == 0)
        {
            c = a(context);
        } else
        {
            c = b(context);
        }
        c.addView(d);
        f = new ArrayList();
        g = new ArrayList();
        h = new ArrayList();
        d.setOnTouchListener(new android.view.View.OnTouchListener() {

            final s a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                View view1;
                try
                {
                    view1 = ((Activity)s.a(a).getContext()).getCurrentFocus();
                }
                catch (Exception exception)
                {
                    return false;
                }
                if (view1 == null)
                {
                    break MISSING_BLOCK_LABEL_51;
                }
                ((InputMethodManager)s.a(a).getContext().getSystemService("input_method")).hideSoftInputFromWindow(view1.getApplicationWindowToken(), 0);
                return false;
            }

            
            {
                a = s.this;
                super();
            }
        });
    }

    private HorizontalScrollView a(Context context)
    {
        if (b == null)
        {
            b = new HorizontalScrollView(context);
            b.setFillViewport(true);
        }
        return b;
    }

    static LinearLayout a(s s1)
    {
        return s1.d;
    }

    private ScrollView b(Context context)
    {
        if (a == null)
        {
            a = new ScrollView(context);
            a.setFillViewport(true);
        }
        return a;
    }

    static List b(s s1)
    {
        return s1.g;
    }

    static List c(s s1)
    {
        return s1.h;
    }

    private Context d()
    {
        return d.getContext();
    }

    static List d(s s1)
    {
        return s1.f;
    }

    static BaseAdapter e(s s1)
    {
        return s1.e;
    }

    static int f(s s1)
    {
        return s1.i;
    }

    public ViewGroup a()
    {
        return c;
    }

    public void a(int k)
    {
        if (k != i)
        {
            i = k;
            d.setOrientation(k);
            c.removeView(d);
            if (k == 0)
            {
                c = a(d());
            } else
            {
                c = b(d());
            }
            c.addView(d);
        }
    }

    public void a(BaseAdapter baseadapter)
    {
        if (e != null)
        {
            e.unregisterDataSetObserver(j);
        }
        e = baseadapter;
        e.registerDataSetObserver(j);
        d.removeAllViews();
        f.clear();
        g.clear();
        int k = 0;
        do
        {
            if (k >= e.getViewTypeCount())
            {
                h.clear();
                e.notifyDataSetChanged();
                return;
            }
            f.add(new ArrayList());
            g.add(new ArrayList());
            k++;
        } while (true);
    }

    public LinearLayout b()
    {
        return d;
    }

    public void c()
    {
        if (c == a && a != null)
        {
            a.fullScroll(130);
        } else
        if (c == b && b != null)
        {
            b.fullScroll(66);
            return;
        }
    }
}
