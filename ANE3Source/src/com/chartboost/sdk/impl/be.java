// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ConcurrentMap;

// Referenced classes of package com.chartboost.sdk.impl:
//            bh

class be
{

    private static final ConcurrentMap a = bh.c();

    public static List a(Class class1)
    {
        ConcurrentMap concurrentmap = a();
        do
        {
            List list = (List)concurrentmap.get(class1);
            if (list != null)
            {
                return list;
            }
            concurrentmap.putIfAbsent(class1, b(class1));
        } while (true);
    }

    private static ConcurrentMap a()
    {
        return a;
    }

    private static void a(Class class1, List list)
    {
        if (class1 != null && class1 != java/lang/Object) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Class aclass[] = class1.getInterfaces();
        int i = aclass.length - 1;
        do
        {
label0:
            {
                if (i >= 0)
                {
                    break label0;
                }
                a(class1.getSuperclass(), list);
                if (!list.contains(class1))
                {
                    list.add(class1);
                    return;
                }
            }
            if (true)
            {
                continue;
            }
            a(aclass[i], list);
            i--;
        } while (true);
        if (true) goto _L1; else goto _L3
_L3:
    }

    private static List b(Class class1)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(java/lang/Object);
        a(class1, arraylist);
        Collections.reverse(arraylist);
        return Collections.unmodifiableList(new ArrayList(arraylist));
    }

}
