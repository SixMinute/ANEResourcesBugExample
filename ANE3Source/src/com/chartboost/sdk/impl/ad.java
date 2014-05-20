// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.chartboost.sdk.impl:
//            ac, bf, z, ah

class ad extends ac
{

    private bf a;

    ad()
    {
        a = new bf();
    }

    void a(Class class1, ah ah1)
    {
        a.a(class1, ah1);
    }

    public void a(Object obj, StringBuilder stringbuilder)
    {
        Object obj1;
        ah ah1;
        Iterator iterator;
        obj1 = z.a(obj);
        if (obj1 == null)
        {
            stringbuilder.append(" null ");
            return;
        }
        ah1 = null;
        iterator = bf.a(obj1.getClass()).iterator();
_L3:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if (ah1 == null && obj1.getClass().isArray())
        {
            ah1 = (ah)a.a([Ljava/lang/Object;);
        }
        Class class1;
        if (ah1 == null)
        {
            throw new RuntimeException((new StringBuilder("json can't serialize type : ")).append(obj1.getClass()).toString());
        } else
        {
            ah1.a(obj1, stringbuilder);
            return;
        }
_L2:
        class1 = (Class)iterator.next();
        ah1 = (ah)a.a(class1);
        if (ah1 == null) goto _L3; else goto _L1
    }
}
