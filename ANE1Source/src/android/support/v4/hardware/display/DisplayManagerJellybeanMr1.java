// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.hardware.display;

import android.content.Context;
import android.hardware.display.DisplayManager;
import android.view.Display;

final class DisplayManagerJellybeanMr1
{

    DisplayManagerJellybeanMr1()
    {
    }

    public static Display getDisplay(Object obj, int i)
    {
        return ((DisplayManager)obj).getDisplay(i);
    }

    public static Object getDisplayManager(Context context)
    {
        return context.getSystemService("display");
    }

    public static Display[] getDisplays(Object obj)
    {
        return ((DisplayManager)obj).getDisplays();
    }

    public static Display[] getDisplays(Object obj, String s)
    {
        return ((DisplayManager)obj).getDisplays(s);
    }
}
