// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.util.Collection;
import java.util.Set;

// Referenced classes of package com.chartboost.sdk.impl:
//            bc

final class <init> extends <init>
    implements Serializable
{

    final bc a;
    private final transient d b;
    private final transient d c;
    private final transient d d;

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

    (bc bc1)
    {
        a = bc1;
        super();
        b = new <init>(bc1, null);
        c = new <init>(bc1, null);
        d = new <init>(bc1, null);
    }
}
