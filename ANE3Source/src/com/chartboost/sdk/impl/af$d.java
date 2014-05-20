// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.chartboost.sdk.impl:
//            aa, ae, ah, af

private static class <init> extends <init>
{

    public void a(Object obj, StringBuilder stringbuilder)
    {
        stringbuilder.append("{ ");
        aa aa1 = (aa)obj;
        Iterator iterator = aa1.keySet().iterator();
        boolean flag = true;
        do
        {
            if (!iterator.hasNext())
            {
                stringbuilder.append("}");
                return;
            }
            String s = (String)iterator.next();
            if (flag)
            {
                flag = false;
            } else
            {
                stringbuilder.append(" , ");
            }
            ae.a(stringbuilder, s);
            stringbuilder.append(" : ");
            a.a(aa1.a(s), stringbuilder);
        } while (true);
    }

    (ah ah1)
    {
        super(ah1);
    }
}
