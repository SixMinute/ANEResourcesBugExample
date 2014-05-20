// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.util.Collection;
import java.util.Collections;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.chartboost.sdk.impl:
//            bc

final class <init> extends <init>
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

    (bc bc1)
    {
        a = bc1;
        super();
    }
}
