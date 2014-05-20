// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Iterator;

// Referenced classes of package com.chartboost.sdk.impl:
//            ah, af

private static class <init> extends <init>
{

    public void a(Object obj, StringBuilder stringbuilder)
    {
        boolean flag = true;
        stringbuilder.append("[ ");
        Iterator iterator = ((Iterable)obj).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                stringbuilder.append("]");
                return;
            }
            Object obj1 = iterator.next();
            if (flag)
            {
                flag = false;
            } else
            {
                stringbuilder.append(" , ");
            }
            a.a(obj1, stringbuilder);
        } while (true);
    }

    (ah ah1)
    {
        super(ah1);
    }
}
