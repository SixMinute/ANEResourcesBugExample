// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Iterator;

// Referenced classes of package com.chartboost.sdk.impl:
//            bc

private static class a
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

    public nException(Iterator iterator)
    {
        a = iterator;
    }
}
