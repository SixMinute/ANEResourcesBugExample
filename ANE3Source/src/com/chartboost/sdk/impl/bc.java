// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package com.chartboost.sdk.impl:
//            bd

abstract class bc
    implements Serializable, ConcurrentMap
{
    protected static abstract class a
        implements Collection
    {

        abstract Collection a();

        public final boolean add(Object obj)
        {
            throw new UnsupportedOperationException();
        }

        public final boolean addAll(Collection collection)
        {
            throw new UnsupportedOperationException();
        }

        public final boolean contains(Object obj)
        {
            return a().contains(obj);
        }

        public final boolean containsAll(Collection collection)
        {
            return a().containsAll(collection);
        }

        public boolean equals(Object obj)
        {
            return a().equals(obj);
        }

        public int hashCode()
        {
            return a().hashCode();
        }

        public final boolean isEmpty()
        {
            return a().isEmpty();
        }

        public final Iterator iterator()
        {
            return new f(a().iterator());
        }

        public final int size()
        {
            return a().size();
        }

        public final Object[] toArray()
        {
            return a().toArray();
        }

        public final Object[] toArray(Object aobj[])
        {
            return a().toArray(aobj);
        }

        public String toString()
        {
            return a().toString();
        }

        protected a()
        {
        }
    }

    private class b extends a
        implements Set
    {

        final bc a;

        Collection a()
        {
            return bc.a(a).entrySet();
        }

        public void clear()
        {
            bc.b(a).lock();
            Map map = a.a();
            map.entrySet().clear();
            a.b(map);
            bc.b(a).unlock();
            return;
            Exception exception;
            exception;
            bc.b(a).unlock();
            throw exception;
        }

        public boolean remove(Object obj)
        {
            bc.b(a).lock();
            boolean flag = contains(obj);
            if (!flag)
            {
                bc.b(a).unlock();
                return false;
            }
            Map map = a.a();
            boolean flag1 = map.entrySet().remove(obj);
            a.b(map);
            bc.b(a).unlock();
            return flag1;
            Exception exception1;
            exception1;
            a.b(map);
            throw exception1;
            Exception exception;
            exception;
            bc.b(a).unlock();
            throw exception;
        }

        public boolean removeAll(Collection collection)
        {
            bc.b(a).lock();
            Map map = a.a();
            boolean flag = map.entrySet().removeAll(collection);
            a.b(map);
            bc.b(a).unlock();
            return flag;
            Exception exception1;
            exception1;
            a.b(map);
            throw exception1;
            Exception exception;
            exception;
            bc.b(a).unlock();
            throw exception;
        }

        public boolean retainAll(Collection collection)
        {
            bc.b(a).lock();
            Map map = a.a();
            boolean flag = map.entrySet().retainAll(collection);
            a.b(map);
            bc.b(a).unlock();
            return flag;
            Exception exception1;
            exception1;
            a.b(map);
            throw exception1;
            Exception exception;
            exception;
            bc.b(a).unlock();
            throw exception;
        }

        private b()
        {
            a = bc.this;
            super();
        }

        b(b b1)
        {
            this();
        }
    }

    final class c extends h
        implements Serializable
    {

        final bc a;

        public Set a()
        {
            return Collections.unmodifiableSet(bc.a(a).keySet());
        }

        public Set b()
        {
            return Collections.unmodifiableSet(bc.a(a).entrySet());
        }

        public Collection c()
        {
            return Collections.unmodifiableCollection(bc.a(a).values());
        }

        c()
        {
            a = bc.this;
            super();
        }
    }

    private class d extends a
        implements Set
    {

        final bc a;

        Collection a()
        {
            return bc.a(a).keySet();
        }

        public void clear()
        {
            bc.b(a).lock();
            Map map = a.a();
            map.keySet().clear();
            a.b(map);
            bc.b(a).unlock();
            return;
            Exception exception;
            exception;
            bc.b(a).unlock();
            throw exception;
        }

        public boolean remove(Object obj)
        {
            return a.remove(obj) != null;
        }

        public boolean removeAll(Collection collection)
        {
            bc.b(a).lock();
            Map map = a.a();
            boolean flag = map.keySet().removeAll(collection);
            a.b(map);
            bc.b(a).unlock();
            return flag;
            Exception exception1;
            exception1;
            a.b(map);
            throw exception1;
            Exception exception;
            exception;
            bc.b(a).unlock();
            throw exception;
        }

        public boolean retainAll(Collection collection)
        {
            bc.b(a).lock();
            Map map = a.a();
            boolean flag = map.keySet().retainAll(collection);
            a.b(map);
            bc.b(a).unlock();
            return flag;
            Exception exception1;
            exception1;
            a.b(map);
            throw exception1;
            Exception exception;
            exception;
            bc.b(a).unlock();
            throw exception;
        }

        private d()
        {
            a = bc.this;
            super();
        }

        d(d d1)
        {
            this();
        }
    }

    final class e extends h
        implements Serializable
    {

        final bc a;
        private final transient d b;
        private final transient b c;
        private final transient g d;

        public Set a()
        {
            return b;
        }

        public Set b()
        {
            return c;
        }

        public Collection c()
        {
            return d;
        }

        e()
        {
            a = bc.this;
            super();
            b = new d(null);
            c = new b(null);
            d = new g(null);
        }
    }

    private static class f
        implements Iterator
    {

        private final Iterator a;

        public boolean hasNext()
        {
            return a.hasNext();
        }

        public Object next()
        {
            return a.next();
        }

        public void remove()
        {
            throw new UnsupportedOperationException();
        }

        public f(Iterator iterator)
        {
            a = iterator;
        }
    }

    private final class g extends a
    {

        final bc a;

        Collection a()
        {
            return bc.a(a).values();
        }

        public void clear()
        {
            bc.b(a).lock();
            Map map = a.a();
            map.values().clear();
            a.b(map);
            bc.b(a).unlock();
            return;
            Exception exception;
            exception;
            bc.b(a).unlock();
            throw exception;
        }

        public boolean remove(Object obj)
        {
            bc.b(a).lock();
            boolean flag = contains(obj);
            if (!flag)
            {
                bc.b(a).unlock();
                return false;
            }
            Map map = a.a();
            boolean flag1 = map.values().remove(obj);
            a.b(map);
            bc.b(a).unlock();
            return flag1;
            Exception exception1;
            exception1;
            a.b(map);
            throw exception1;
            Exception exception;
            exception;
            bc.b(a).unlock();
            throw exception;
        }

        public boolean removeAll(Collection collection)
        {
            bc.b(a).lock();
            Map map = a.a();
            boolean flag = map.values().removeAll(collection);
            a.b(map);
            bc.b(a).unlock();
            return flag;
            Exception exception1;
            exception1;
            a.b(map);
            throw exception1;
            Exception exception;
            exception;
            bc.b(a).unlock();
            throw exception;
        }

        public boolean retainAll(Collection collection)
        {
            bc.b(a).lock();
            Map map = a.a();
            boolean flag = map.values().retainAll(collection);
            a.b(map);
            bc.b(a).unlock();
            return flag;
            Exception exception1;
            exception1;
            a.b(map);
            throw exception1;
            Exception exception;
            exception;
            bc.b(a).unlock();
            throw exception;
        }

        private g()
        {
            a = bc.this;
            super();
        }

        g(g g1)
        {
            this();
        }
    }

    public static abstract class h
    {

        abstract Set a();

        abstract Set b();

        abstract Collection c();

        h()
        {
        }
    }

    public static abstract class h.a extends Enum
    {

        public static final h.a a;
        public static final h.a b;
        private static final h.a c[];

        public static h.a valueOf(String s)
        {
            return (h.a)Enum.valueOf(com/chartboost/sdk/impl/bc$h$a, s);
        }

        public static h.a[] values()
        {
            h.a aa[] = c;
            int i = aa.length;
            h.a aa1[] = new h.a[i];
            System.arraycopy(aa, 0, aa1, 0, i);
            return aa1;
        }

        abstract h a(bc bc1);

        static 
        {
            a = new h.a("STABLE", 0) {

                h a(bc bc1)
                {
                    bc1.getClass();
                    return bc1. new c();
                }

            };
            b = new h.a("LIVE", 1) {

                h a(bc bc1)
                {
                    bc1.getClass();
                    return bc1. new e();
                }

            };
            h.a aa[] = new h.a[2];
            aa[0] = a;
            aa[1] = b;
            c = aa;
        }

        private h.a(String s, int i)
        {
            super(s, i);
        }

        h.a(String s, int i, h.a a1)
        {
            this(s, i);
        }
    }


    private volatile Map a;
    private final transient Lock b = new ReentrantLock();
    private final h c;

    protected bc(Map map, h.a a1)
    {
        a = (Map)bd.a("delegate", a((Map)bd.a("map", map)));
        c = ((h.a)bd.a("viewType", a1)).a(this);
    }

    static Map a(bc bc1)
    {
        return bc1.a;
    }

    private boolean a(Object obj, Object obj1)
    {
        if (obj == null)
        {
            return obj1 == null;
        } else
        {
            return obj.equals(obj1);
        }
    }

    static Lock b(bc bc1)
    {
        return bc1.b;
    }

    protected Map a()
    {
        b.lock();
        Map map = a(a);
        b.unlock();
        return map;
        Exception exception;
        exception;
        b.unlock();
        throw exception;
    }

    abstract Map a(Map map);

    protected void b(Map map)
    {
        a = map;
    }

    public final void clear()
    {
        b.lock();
        b(a(Collections.emptyMap()));
        b.unlock();
        return;
        Exception exception;
        exception;
        b.unlock();
        throw exception;
    }

    public final boolean containsKey(Object obj)
    {
        return a.containsKey(obj);
    }

    public final boolean containsValue(Object obj)
    {
        return a.containsValue(obj);
    }

    public final Set entrySet()
    {
        return c.b();
    }

    public final boolean equals(Object obj)
    {
        return a.equals(obj);
    }

    public final Object get(Object obj)
    {
        return a.get(obj);
    }

    public final int hashCode()
    {
        return a.hashCode();
    }

    public final boolean isEmpty()
    {
        return a.isEmpty();
    }

    public final Set keySet()
    {
        return c.a();
    }

    public final Object put(Object obj, Object obj1)
    {
        b.lock();
        Map map = a();
        Object obj2 = map.put(obj, obj1);
        b(map);
        b.unlock();
        return obj2;
        Exception exception1;
        exception1;
        b(map);
        throw exception1;
        Exception exception;
        exception;
        b.unlock();
        throw exception;
    }

    public final void putAll(Map map)
    {
        b.lock();
        Map map1 = a();
        map1.putAll(map);
        b(map1);
        b.unlock();
        return;
        Exception exception;
        exception;
        b.unlock();
        throw exception;
    }

    public Object putIfAbsent(Object obj, Object obj1)
    {
        b.lock();
        Map map;
        if (a.containsKey(obj))
        {
            break MISSING_BLOCK_LABEL_80;
        }
        map = a();
        Object obj3 = map.put(obj, obj1);
        b(map);
        b.unlock();
        return obj3;
        Exception exception1;
        exception1;
        b(map);
        throw exception1;
        Exception exception;
        exception;
        b.unlock();
        throw exception;
        Object obj2 = a.get(obj);
        b.unlock();
        return obj2;
    }

    public final Object remove(Object obj)
    {
        b.lock();
        boolean flag = a.containsKey(obj);
        if (!flag)
        {
            b.unlock();
            return null;
        }
        Map map = a();
        Object obj1 = map.remove(obj);
        b(map);
        b.unlock();
        return obj1;
        Exception exception1;
        exception1;
        b(map);
        throw exception1;
        Exception exception;
        exception;
        b.unlock();
        throw exception;
    }

    public boolean remove(Object obj, Object obj1)
    {
        b.lock();
        if (!a.containsKey(obj) || !a(obj1, a.get(obj)))
        {
            break MISSING_BLOCK_LABEL_72;
        }
        Map map = a();
        map.remove(obj);
        b(map);
        b.unlock();
        return true;
        b.unlock();
        return false;
        Exception exception;
        exception;
        b.unlock();
        throw exception;
    }

    public Object replace(Object obj, Object obj1)
    {
        b.lock();
        boolean flag = a.containsKey(obj);
        if (!flag)
        {
            b.unlock();
            return null;
        }
        Map map = a();
        Object obj2 = map.put(obj, obj1);
        b(map);
        b.unlock();
        return obj2;
        Exception exception1;
        exception1;
        b(map);
        throw exception1;
        Exception exception;
        exception;
        b.unlock();
        throw exception;
    }

    public boolean replace(Object obj, Object obj1, Object obj2)
    {
        b.lock();
        boolean flag;
        if (!a.containsKey(obj))
        {
            break MISSING_BLOCK_LABEL_44;
        }
        flag = a(obj1, a.get(obj));
        if (flag)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        b.unlock();
        return false;
        Map map = a();
        map.put(obj, obj2);
        b(map);
        b.unlock();
        return true;
        Exception exception;
        exception;
        b.unlock();
        throw exception;
    }

    public final int size()
    {
        return a.size();
    }

    public String toString()
    {
        return a.toString();
    }

    public final Collection values()
    {
        return c.c();
    }
}
