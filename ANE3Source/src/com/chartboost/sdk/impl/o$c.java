// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.graphics.drawable.BitmapDrawable;
import java.lang.ref.WeakReference;

// Referenced classes of package com.chartboost.sdk.impl:
//            o

static class <init> extends BitmapDrawable
{

    private final WeakReference a;

    public tmapDrawable a()
    {
        return (tmapDrawable)a.get();
    }

    public tmapDrawable(tmapDrawable tmapdrawable)
    {
        a = new WeakReference(tmapdrawable);
    }
}
