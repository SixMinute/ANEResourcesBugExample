// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.view.MenuItem;
import android.view.View;

class MenuItemCompatHoneycomb
{

    MenuItemCompatHoneycomb()
    {
    }

    public static View getActionView(MenuItem menuitem)
    {
        return menuitem.getActionView();
    }

    public static MenuItem setActionView(MenuItem menuitem, int i)
    {
        return menuitem.setActionView(i);
    }

    public static MenuItem setActionView(MenuItem menuitem, View view)
    {
        return menuitem.setActionView(view);
    }

    public static void setShowAsAction(MenuItem menuitem, int i)
    {
        menuitem.setShowAsAction(i);
    }
}
