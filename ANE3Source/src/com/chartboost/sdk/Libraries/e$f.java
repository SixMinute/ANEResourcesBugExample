// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import java.math.BigInteger;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            e

private static class <init> extends <init>
{

    public String a()
    {
        return "object must be a number w/o decimals (int, long, short, or byte).";
    }

    public boolean a(Object obj)
    {
        return java/lang/Integer.isInstance(obj) || java/lang/Long.isInstance(obj) || java/lang/Short.isInstance(obj) || java/lang/Byte.isInstance(obj) || java/math/BigInteger.isInstance(obj) || Integer.TYPE.isInstance(obj) || Long.TYPE.isInstance(obj) || Short.TYPE.isInstance(obj) || Byte.TYPE.isInstance(obj);
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
