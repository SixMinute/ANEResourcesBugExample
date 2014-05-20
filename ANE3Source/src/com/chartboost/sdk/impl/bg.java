// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;

// Referenced classes of package com.chartboost.sdk.impl:
//            bi, bd, bh

final class bg
    implements bi, Map
{

    private final ConcurrentMap a;
    private final bi b;

    bg(ConcurrentMap concurrentmap, bi bi1)
    {
        a = (ConcurrentMap)bd.a("map", concurrentmap);
        b = (bi)bd.a("function", bi1);
    }

    public static Map a(bi bi1)
    {
        return new bg(bh.c(), bi1);
    }

    public Object a(Object obj)
    {
        return get(obj);
    }

    public void clear()
    {
        a.clear();
    }

    public boolean containsKey(Object obj)
    {
        return a.containsKey(obj);
    }

    public boolean containsValue(Object obj)
    {
        return a.containsValue(obj);
    }

    public Set entrySet()
    {
        return a.entrySet();
    }

    public boolean equals(Object obj)
    {
        return a.equals(obj);
    }

    public Object get(Object obj)
    {
        do
        {
            Object obj1 = a.get(obj);
            if (obj1 != null)
            {
                return obj1;
            }
            Object obj2 = b.a(obj);
            if (obj2 == null)
            {
                return null;
            }
            a.putIfAbsent(obj, obj2);
        } while (true);
    }

    public int hashCode()
    {
        return a.hashCode();
    }

    public boolean isEmpty()
    {
        return a.isEmpty();
    }

    public Set keySet()
    {
        return a.keySet();
    }

    public Object put(Object obj, Object obj1)
    {
        return a.put(obj, obj1);
    }

    public void putAll(Map map)
    {
        a.putAll(map);
    }

    public Object remove(Object obj)
    {
        return a.remove(obj);
    }

    public int size()
    {
        return a.size();
    }

    public Collection values()
    {
        return a.values();
    }
}
