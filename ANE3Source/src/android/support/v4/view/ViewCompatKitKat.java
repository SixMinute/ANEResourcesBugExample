// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.view.View;

public class ViewCompatKitKat
{

    public ViewCompatKitKat()
    {
    }

    public static int getAccessibilityLiveRegion(View view)
    {
        return view.getAccessibilityLiveRegion();
    }

    public static void setAccessibilityLiveRegion(View view, int i)
    {
        view.setAccessibilityLiveRegion(i);
    }
}
