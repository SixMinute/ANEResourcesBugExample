// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            j

class .e.c extends com.chartboost.sdk.Libraries.
{

    public String a()
    {
        return "Must be a valid status code (>=200 && <300)";
    }

    public boolean a(Object obj)
    {
        int i = ((Number)obj).intValue();
        return i >= 200 && i < 300;
    }

    .e.c()
    {
    }
}
