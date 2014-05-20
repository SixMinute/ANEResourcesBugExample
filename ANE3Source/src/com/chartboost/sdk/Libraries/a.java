// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import android.graphics.Bitmap;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

public class com.chartboost.sdk.Libraries.a
{
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

        public a(Bitmap bitmap, int i, float f)
        {
            a(bitmap);
            a(i);
            a(f);
            a(true);
        }
    }


    private Map a;
    private long b;
    private long c;

    public com.chartboost.sdk.Libraries.a()
    {
        a = Collections.synchronizedMap(new LinkedHashMap(10, 1.5F, true));
        b = 0L;
        c = 0xf4240L;
        a((int)(0.15F * (float)Runtime.getRuntime().maxMemory()));
    }

    private static long a(Bitmap bitmap)
    {
        if (bitmap == null)
        {
            return 0L;
        } else
        {
            return (long)(bitmap.getRowBytes() * bitmap.getHeight());
        }
    }

    private void b()
    {
        if (b <= c) goto _L2; else goto _L1
_L1:
        Iterator iterator = a.entrySet().iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        return;
_L3:
        java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
        b = b - a(((a)entry.getValue()).b());
        iterator.remove();
        if (b <= c)
        {
            return;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public a a(String s)
    {
        if (!a.containsKey(s))
        {
            return null;
        } else
        {
            return (a)a.get(s);
        }
    }

    public void a()
    {
        a.clear();
    }

    public void a(long l)
    {
        c = l;
    }

    public void a(String s, a a1)
    {
        try
        {
            if (a.containsKey(s))
            {
                b = b - a(((a)a.get(s)).b());
            }
            a.put(s, a1);
            b = b + a(a1.b());
            b();
            return;
        }
        catch (Throwable throwable)
        {
            throwable.printStackTrace();
        }
    }
}
