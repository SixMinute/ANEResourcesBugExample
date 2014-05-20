// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.content.Context;
import java.lang.ref.WeakReference;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost

static class a extends WeakReference
{

    private int a;

    public int a()
    {
        return a;
    }

    public boolean a(Activity activity)
    {
        if (activity == null)
        {
            return false;
        }
        return activity.hashCode() == a;
    }

    public boolean a(a a1)
    {
        if (a1 == null)
        {
            return false;
        }
        return a1.a() == a;
    }

    public Context b()
    {
        Context context = (Context)get();
        if (context == null)
        {
            return Chartboost.sharedChartboost().getContext();
        } else
        {
            return context;
        }
    }

    public int hashCode()
    {
        return a();
    }

    public (Activity activity)
    {
        super(activity);
        a = activity.hashCode();
    }
}
