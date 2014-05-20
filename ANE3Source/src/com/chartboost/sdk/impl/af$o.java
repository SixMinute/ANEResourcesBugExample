// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.regex.Pattern;

// Referenced classes of package com.chartboost.sdk.impl:
//            y, aa, z, ah, 
//            af

private static class <init> extends <init>
{

    public void a(Object obj, StringBuilder stringbuilder)
    {
        y y1 = new y();
        y1.a("$regex", obj.toString());
        if (((Pattern)obj).flags() != 0)
        {
            y1.a("$options", z.a(((Pattern)obj).flags()));
        }
        a.a(y1, stringbuilder);
    }

    (ah ah1)
    {
        super(ah1);
    }
}
