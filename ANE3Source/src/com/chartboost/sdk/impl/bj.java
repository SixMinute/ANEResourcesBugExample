// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;

public abstract class bj
{

    final int a;
    private Queue b;

    public bj(int i)
    {
        b = new ConcurrentLinkedQueue();
        a = i;
    }

    protected boolean a(Object obj)
    {
        return true;
    }

    protected abstract Object b();

    public void b(Object obj)
    {
        while (!a(obj) || b.size() > a) 
        {
            return;
        }
        b.add(obj);
    }

    public Object c()
    {
        Object obj = b.poll();
        if (obj != null)
        {
            return obj;
        } else
        {
            return b();
        }
    }
}
