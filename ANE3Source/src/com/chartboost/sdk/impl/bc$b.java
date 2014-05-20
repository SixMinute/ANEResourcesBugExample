// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.locks.Lock;

// Referenced classes of package com.chartboost.sdk.impl:
//            bc

private class <init> extends <init>
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

    private ck(bc bc1)
    {
        a = bc1;
        super();
    }

    <init>(bc bc1, <init> <init>1)
    {
        this(bc1);
    }
}
