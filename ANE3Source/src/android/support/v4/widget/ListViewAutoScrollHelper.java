// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.view.View;
import android.widget.ListView;

// Referenced classes of package android.support.v4.widget:
//            AutoScrollHelper

public class ListViewAutoScrollHelper extends AutoScrollHelper
{

    private final ListView mTarget;

    public ListViewAutoScrollHelper(ListView listview)
    {
        super(listview);
        mTarget = listview;
    }

    public boolean canTargetScrollHorizontally(int i)
    {
        return false;
    }

    public boolean canTargetScrollVertically(int i)
    {
        ListView listview = mTarget;
        int j = listview.getCount();
        int k = listview.getChildCount();
        int l = listview.getFirstVisiblePosition();
        int i1 = l + k;
        if (i > 0)
        {
            if (i1 >= j && listview.getChildAt(k - 1).getBottom() <= listview.getHeight())
            {
                return false;
            }
        } else
        if (i < 0)
        {
            if (l <= 0 && listview.getChildAt(0).getTop() >= 0)
            {
                return false;
            }
        } else
        {
            return false;
        }
        return true;
    }

    public void scrollTargetBy(int i, int j)
    {
        ListView listview = mTarget;
        int k = listview.getFirstVisiblePosition();
        View view;
        if (k != -1)
        {
            if ((view = listview.getChildAt(0)) != null)
            {
                listview.setSelectionFromTop(k, view.getTop() - j);
                return;
            }
        }
    }
}
