// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.lang.reflect.Array;

// Referenced classes of package com.chartboost.sdk.impl:
//            ah, af

private static class <init> extends <init>
{

    public void a(Object obj, StringBuilder stringbuilder)
    {
        stringbuilder.append("[ ");
        int i = 0;
        do
        {
            if (i >= Array.getLength(obj))
            {
                stringbuilder.append("]");
                return;
            }
            if (i > 0)
            {
                stringbuilder.append(" , ");
            }
            a.a(Array.get(obj, i), stringbuilder);
            i++;
        } while (true);
    }

    (ah ah1)
    {
        super(ah1);
    }
}
