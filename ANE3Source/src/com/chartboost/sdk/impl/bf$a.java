// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk.impl:
//            bi, bf

private final class <init>
    implements bi
{

    final bf a;

    public Object a(Class class1)
    {
        Iterator iterator = bf.a(class1).iterator();
        Object obj;
        do
        {
            if (!iterator.hasNext())
            {
                return null;
            }
            Class class2 = (Class)iterator.next();
            obj = bf.a(a).get(class2);
        } while (obj == null);
        return obj;
    }

    public volatile Object a(Object obj)
    {
        return a((Class)obj);
    }

    private (bf bf1)
    {
        a = bf1;
        super();
    }

    a(bf bf1, a a1)
    {
        this(bf1);
    }
}
