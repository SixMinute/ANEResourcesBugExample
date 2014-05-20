// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.database.DataSetObserver;
import android.view.View;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;
import java.util.List;

// Referenced classes of package com.chartboost.sdk.impl:
//            s

class rver extends DataSetObserver
{

    final s a;

    public void onChanged()
    {
        int i;
        int j;
        i = s.a(a).getChildCount();
        j = 0;
_L3:
        if (j < i) goto _L2; else goto _L1
_L1:
        int k;
        int l;
        s.c(a).clear();
        s.a(a).removeAllViews();
        k = s.e(a).getCount();
        l = 0;
_L4:
        if (l >= k)
        {
            s.a(a).requestLayout();
            return;
        }
        break MISSING_BLOCK_LABEL_182;
_L2:
        List list = (List)s.b(a).get(((Integer)s.c(a).get(j)).intValue());
        List list1 = (List)s.d(a).get(((Integer)s.c(a).get(j)).intValue());
        View view = s.a(a).getChildAt(j);
        list.remove(view);
        list1.add(view);
        j++;
          goto _L3
        int i1 = s.e(a).getItemViewType(l);
        List list2 = (List)s.b(a).get(i1);
        List list3 = (List)s.d(a).get(i1);
        s.c(a).add(Integer.valueOf(i1));
        View view1;
        View view2;
        android.widget.arLayout.LayoutParams layoutparams;
        if (!list3.isEmpty())
        {
            View view3 = (View)list3.get(0);
            list3.remove(0);
            view1 = view3;
        } else
        {
            view1 = null;
        }
        view2 = s.e(a).getView(l, view1, s.a(a));
        list2.add(view2);
        if (s.f(a) == 0)
        {
            layoutparams = new android.widget.arLayout.LayoutParams(-2, -1);
        } else
        {
            layoutparams = new android.widget.arLayout.LayoutParams(-1, -2);
        }
        if (l < k - 1)
        {
            layoutparams.setMargins(0, 0, 0, 1);
        }
        s.a(a).addView(view2, layoutparams);
        l++;
          goto _L4
    }

    LayoutParams(s s1)
    {
        a = s1;
        super();
    }
}
