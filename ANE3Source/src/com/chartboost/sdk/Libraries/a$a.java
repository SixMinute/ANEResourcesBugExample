// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import android.graphics.Bitmap;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            a

public static class a
{

    private Bitmap a;
    private int b;
    private float c;
    private boolean d;

    public void a()
    {
        if (!d) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (a == null || a.isRecycled()) goto _L1; else goto _L3
_L3:
        a.recycle();
        return;
        Exception exception;
        exception;
    }

    public void a(float f)
    {
        c = f;
    }

    public void a(int i)
    {
        b = i;
    }

    public void a(Bitmap bitmap)
    {
        a = bitmap;
    }

    public void a(boolean flag)
    {
        d = flag;
    }

    public Bitmap b()
    {
        return a;
    }

    public int c()
    {
        return a.getWidth() * b;
    }

    public int d()
    {
        return a.getHeight() * b;
    }

    public float e()
    {
        return c;
    }

    public (Bitmap bitmap, int i, float f)
    {
        a(bitmap);
        a(i);
        a(f);
        a(true);
    }
}
