// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk.impl:
//            bh, bg, be, bi

public class bf
{
    private final class a
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

        private a()
        {
            a = bf.this;
            super();
        }

        a(a a1)
        {
            this();
        }
    }


    private final Map a = bh.c();
    private final Map b = bg.a(new a(null));

    public bf()
    {
    }

    public static List a(Class class1)
    {
        return be.a(class1);
    }

    static Map a(bf bf1)
    {
        return bf1.a;
    }

    public int a()
    {
        return a.size();
    }

    public Object a(Class class1, Object obj)
    {
        Object obj1 = a.put(class1, obj);
        b.clear();
        return obj1;
        Exception exception;
        exception;
        b.clear();
        throw exception;
    }

    public Object a(Object obj)
    {
        return b.get(obj);
    }
}
