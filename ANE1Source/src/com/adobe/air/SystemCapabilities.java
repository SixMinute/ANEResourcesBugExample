// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.PixelFormat;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.util.Arrays;

public class SystemCapabilities
{

    public SystemCapabilities()
    {
    }

    public static int GetBitsPerPixel(Context context)
    {
        Display display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        PixelFormat pixelformat = new PixelFormat();
        PixelFormat.getPixelFormatInfo(display.getPixelFormat(), pixelformat);
        return pixelformat.bitsPerPixel;
    }

    public static int GetScreenDPI(Context context)
    {
        String as[] = {
            "SCH-I800", "SPH-P100", "SC-01C", "GT-P1000", "GT-P1010", "GT-P1000R", "GT-P1000M", "SHW-M180W", "SHW-M180L", "SHW-M180K", 
            "SHW-M180S", "SGH-I987", "SGH-t849"
        };
        String s = Build.MODEL;
        Arrays.sort(as);
        if (Arrays.binarySearch(as, s) >= 0)
        {
            return 160;
        } else
        {
            WindowManager windowmanager = (WindowManager)context.getSystemService("window");
            DisplayMetrics displaymetrics = new DisplayMetrics();
            windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
            return displaymetrics.densityDpi;
        }
    }

    public static int GetScreenHRes(Context context)
    {
        WindowManager windowmanager = (WindowManager)context.getSystemService("window");
        DisplayMetrics displaymetrics = new DisplayMetrics();
        windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        return displaymetrics.widthPixels;
    }

    public static int GetScreenVRes(Context context)
    {
        WindowManager windowmanager = (WindowManager)context.getSystemService("window");
        DisplayMetrics displaymetrics = new DisplayMetrics();
        windowmanager.getDefaultDisplay().getMetrics(displaymetrics);
        return displaymetrics.heightPixels;
    }

    public static boolean HasTrackBall(Context context)
    {
        return context.getResources().getConfiguration().navigation == 3;
    }
}
