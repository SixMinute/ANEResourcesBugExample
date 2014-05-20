// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.nio.charset.Charset;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.logging.Logger;

// Referenced classes of package com.chartboost.sdk.impl:
//            bf, ap, an, ak, 
//            am, aj

public class ai
{
    private static final class a extends Enum
    {

        public static final a a;
        public static final a b;
        public static final a c;
        public static final a d;
        public static final a e;
        public static final a f;
        public static final a g;
        public static final a h;
        public static final a i;
        private static final Map m;
        private static final a n[];
        public final int j;
        public final char k;
        public final String l;

        public static a valueOf(String s)
        {
            return (a)Enum.valueOf(com/chartboost/sdk/impl/ai$a, s);
        }

        public static a[] values()
        {
            a aa[] = n;
            int i1 = aa.length;
            a aa1[] = new a[i1];
            System.arraycopy(aa, 0, aa1, 0, i1);
            return aa1;
        }

        static 
        {
            int i1 = 0;
            a = new a("CANON_EQ", 0, 128, 'c', "Pattern.CANON_EQ");
            b = new a("UNIX_LINES", 1, 1, 'd', "Pattern.UNIX_LINES");
            c = new a("GLOBAL", 2, 256, 'g', null);
            d = new a("CASE_INSENSITIVE", 3, 2, 'i', null);
            e = new a("MULTILINE", 4, 8, 'm', null);
            f = new a("DOTALL", 5, 32, 's', "Pattern.DOTALL");
            g = new a("LITERAL", 6, 16, 't', "Pattern.LITERAL");
            h = new a("UNICODE_CASE", 7, 64, 'u', "Pattern.UNICODE_CASE");
            i = new a("COMMENTS", 8, 4, 'x', null);
            a aa[] = new a[9];
            aa[0] = a;
            aa[1] = b;
            aa[2] = c;
            aa[3] = d;
            aa[4] = e;
            aa[5] = f;
            aa[6] = g;
            aa[7] = h;
            aa[8] = i;
            n = aa;
            m = new HashMap();
            a aa1[] = values();
            int j1 = aa1.length;
            do
            {
                if (i1 >= j1)
                {
                    return;
                }
                a a1 = aa1[i1];
                m.put(Character.valueOf(a1.k), a1);
                i1++;
            } while (true);
        }

        private a(String s, int i1, int j1, char c1, String s1)
        {
            super(s, i1);
            j = j1;
            k = c1;
            l = s1;
        }
    }


    private static boolean a = false;
    private static boolean b = false;
    static final Logger f = Logger.getLogger("org.bson.BSON");
    static bf g = new bf();
    static bf h = new bf();
    protected static Charset i = Charset.forName("UTF-8");
    static ThreadLocal j = new ThreadLocal() {

        protected ak a()
        {
            return new an();
        }

        protected Object initialValue()
        {
            return a();
        }

    };
    static ThreadLocal k = new ThreadLocal() {

        protected aj a()
        {
            return new am();
        }

        protected Object initialValue()
        {
            return a();
        }

    };

    public static Object a(Object obj)
    {
        if (!a())
        {
            return obj;
        }
        if (g.a() == 0 || obj == null)
        {
            return obj;
        }
        List list = (List)g.a(obj.getClass());
        if (list != null)
        {
            Iterator iterator = list.iterator();
            Object obj1 = obj;
            do
            {
                if (!iterator.hasNext())
                {
                    return obj1;
                }
                obj1 = ((ap)iterator.next()).a(obj1);
            } while (true);
        } else
        {
            return obj;
        }
    }

    public static String a(int l)
    {
        StringBuilder stringbuilder = new StringBuilder();
        a aa[] = a.values();
        int i1 = aa.length;
        int j1 = 0;
        int k1 = l;
        do
        {
            a a1;
            if (j1 >= i1)
            {
                if (k1 > 0)
                {
                    throw new IllegalArgumentException("some flags could not be recognized.");
                } else
                {
                    return stringbuilder.toString();
                }
            }
            a1 = aa[j1];
            if ((k1 & a1.j) > 0)
            {
                stringbuilder.append(a1.k);
                k1 -= a1.j;
            }
            j1++;
        } while (true);
    }

    private static boolean a()
    {
        return a || b;
    }

}
