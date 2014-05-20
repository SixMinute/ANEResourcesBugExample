// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;


// Referenced classes of package com.chartboost.sdk.Libraries:
//            e

private static class <init> extends <init>
{

    public String a()
    {
        return "object must be a number (primitive type or derived from Number).";
    }

    public boolean a(Object obj)
    {
        return (obj instanceof Number) || Integer.TYPE.isInstance(obj) || Long.TYPE.isInstance(obj) || Short.TYPE.isInstance(obj) || Float.TYPE.isInstance(obj) || Double.TYPE.isInstance(obj) || Byte.TYPE.isInstance(obj);
    }

    private ()
    {
    }

    ( )
    {
        this();
    }
}
