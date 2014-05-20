// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.chartboost.sdk.impl:
//            ae, ah, af

private static class <init> extends <init>
{

    public void a(Object obj, StringBuilder stringbuilder)
    {
        stringbuilder.append("{ ");
        Iterator iterator = ((Map)obj).entrySet().iterator();
        boolean flag = true;
        do
        {
            if (!iterator.hasNext())
            {
                stringbuilder.append("}");
                return;
            }
            java.util.ntry ntry = (java.util.ntry)iterator.next();
            if (flag)
            {
                flag = false;
            } else
            {
                stringbuilder.append(" , ");
            }
            ae.a(stringbuilder, ntry.getKey().toString());
            stringbuilder.append(" : ");
            a.a(ntry.getValue(), stringbuilder);
        } while (true);
    }

    (ah ah1)
    {
        super(ah1);
    }
}
