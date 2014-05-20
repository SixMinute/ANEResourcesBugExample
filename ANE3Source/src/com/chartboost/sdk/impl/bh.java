// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.chartboost.sdk.impl:
//            bc

abstract class bh extends bc
{
    public static class a
    {

        private bc.h.a a;
        private final Map b = new HashMap();

        public bh a()
        {
            return new b(b, a);
        }

        a()
        {
            a = bc.h.a.a;
        }
    }

    static class b extends bh
    {

        public Map a(Map map)
        {
            return new HashMap(map);
        }

        b(Map map, bc.h.a a1)
        {
            super(map, a1);
        }
    }


    protected bh(Map map, bc.h.a a1)
    {
        super(map, a1);
    }

    public static a b()
    {
        return new a();
    }

    public static bh c()
    {
        return b().a();
    }
}
