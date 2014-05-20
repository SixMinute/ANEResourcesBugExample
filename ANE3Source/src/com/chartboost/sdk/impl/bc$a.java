// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Collection;
import java.util.Iterator;

// Referenced classes of package com.chartboost.sdk.impl:
//            bc

protected static abstract class nException
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
        return new <init>(a().iterator());
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

    protected nException()
    {
    }
}
