// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

class DrawableCompatKitKat
{

    DrawableCompatKitKat()
    {
    }

    public static boolean isAutoMirrored(Drawable drawable)
    {
        return drawable.isAutoMirrored();
    }

    public static void setAutoMirrored(Drawable drawable, boolean flag)
    {
        drawable.setAutoMirrored(flag);
    }
}
