// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Collection;
import java.util.Set;

// Referenced classes of package com.chartboost.sdk.impl:
//            bc

public static abstract class a
{
    public static abstract class a extends Enum
    {

        public static final a a;
        public static final a b;
        private static final a c[];

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/chartboost/sdk/impl/bc$h$a, s);
        }

        public static a[] values()
        {
            a aa[] = c;
            int i = aa.length;
            a aa1[] = new a[i];
            System.arraycopy(aa, 0, aa1, 0, i);
            return aa1;
        }

        abstract bc.h a(bc bc1);

        static 
        {
            a = new a("STABLE", 0) {

                bc.h a(bc bc1)
                {
                    bc1.getClass();
                    return new bc.c(bc1);
                }

            };
            b = new a("LIVE", 1) {

                bc.h a(bc bc1)
                {
                    bc1.getClass();
                    return new bc.e(bc1);
                }

            };
            a aa[] = new a[2];
            aa[0] = a;
            aa[1] = b;
            c = aa;
        }

        private a(String s, int i)
        {
            super(s, i);
        }

        a(String s, int i, a a1)
        {
            this(s, i);
        }
    }


    abstract Set a();

    abstract Set b();

    abstract Collection c();

    a()
    {
    }
}
