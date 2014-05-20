// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.lang.reflect.Array;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SimpleTimeZone;
import java.util.UUID;
import java.util.regex.Pattern;

// Referenced classes of package com.chartboost.sdk.impl:
//            ad, au, av, aw, 
//            ax, aa, ab, ay, 
//            az, ba, ah, y, 
//            ac, ae, z

public class af
{
    private static class a extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            aw aw1 = (aw)obj;
            y y1 = new y();
            y1.a("$code", aw1.a());
            a.a(y1, stringbuilder);
        }

        a(ah ah1)
        {
            super(ah1);
        }
    }

    private static class b extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            ax ax1 = (ax)obj;
            y y1 = new y();
            y1.a("$code", ax1.a());
            y1.a("$scope", ax1.b());
            a.a(y1, stringbuilder);
        }

        b(ah ah1)
        {
            super(ah1);
        }
    }

    private static abstract class c extends ac
    {

        protected final ah a;

        c(ah ah)
        {
            a = ah;
        }
    }

    private static class d extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            stringbuilder.append("{ ");
            aa aa1 = (aa)obj;
            Iterator iterator = aa1.keySet().iterator();
            boolean flag = true;
            do
            {
                if (!iterator.hasNext())
                {
                    stringbuilder.append("}");
                    return;
                }
                String s = (String)iterator.next();
                if (flag)
                {
                    flag = false;
                } else
                {
                    stringbuilder.append(" , ");
                }
                ae.a(stringbuilder, s);
                stringbuilder.append(" : ");
                a.a(aa1.a(s), stringbuilder);
            } while (true);
        }

        d(ah ah1)
        {
            super(ah1);
        }
    }

    private static class e extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            ab ab1 = (ab)obj;
            y y1 = new y();
            y1.a("$ref", ab1.b());
            y1.a("$id", ab1.a());
            a.a(y1, stringbuilder);
        }

        e(ah ah1)
        {
            super(ah1);
        }
    }

    private static class f extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            boolean flag = true;
            stringbuilder.append("[ ");
            Iterator iterator = ((Iterable)obj).iterator();
            do
            {
                if (!iterator.hasNext())
                {
                    stringbuilder.append("]");
                    return;
                }
                Object obj1 = iterator.next();
                if (flag)
                {
                    flag = false;
                } else
                {
                    stringbuilder.append(" , ");
                }
                a.a(obj1, stringbuilder);
            } while (true);
        }

        f(ah ah1)
        {
            super(ah1);
        }
    }

    private static class g extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            au au1 = (au)obj;
            y y1 = new y();
            y1.a("$ts", Integer.valueOf(au1.a()));
            y1.a("$inc", Integer.valueOf(au1.b()));
            a.a(y1, stringbuilder);
        }

        g(ah ah1)
        {
            super(ah1);
        }
    }

    private static class h extends ac
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            stringbuilder.append("<Binary Data>");
        }

        private h()
        {
        }

        h(h h1)
        {
            this();
        }
    }

    private static class i extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            Date date = (Date)obj;
            SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
            simpledateformat.setCalendar(new GregorianCalendar(new SimpleTimeZone(0, "GMT")));
            a.a(new y("$date", simpledateformat.format(date)), stringbuilder);
        }

        i(ah ah1)
        {
            super(ah1);
        }
    }

    private static class j extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            stringbuilder.append("{ ");
            Iterator iterator = ((Map)obj).entrySet().iterator();
            boolean flag = true;
            do
            {
                if (!iterator.hasNext())
                {
                    stringbuilder.append("}");
                    return;
                }
                java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
                if (flag)
                {
                    flag = false;
                } else
                {
                    stringbuilder.append(" , ");
                }
                ae.a(stringbuilder, entry.getKey().toString());
                stringbuilder.append(" : ");
                a.a(entry.getValue(), stringbuilder);
            } while (true);
        }

        j(ah ah1)
        {
            super(ah1);
        }
    }

    private static class k extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            a.a(new y("$maxKey", Integer.valueOf(1)), stringbuilder);
        }

        k(ah ah1)
        {
            super(ah1);
        }
    }

    private static class l extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            a.a(new y("$minKey", Integer.valueOf(1)), stringbuilder);
        }

        l(ah ah1)
        {
            super(ah1);
        }
    }

    private static class m extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            stringbuilder.append("[ ");
            int i1 = 0;
            do
            {
                if (i1 >= Array.getLength(obj))
                {
                    stringbuilder.append("]");
                    return;
                }
                if (i1 > 0)
                {
                    stringbuilder.append(" , ");
                }
                a.a(Array.get(obj, i1), stringbuilder);
                i1++;
            } while (true);
        }

        m(ah ah1)
        {
            super(ah1);
        }
    }

    private static class n extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            a.a(new y("$oid", obj.toString()), stringbuilder);
        }

        n(ah ah1)
        {
            super(ah1);
        }
    }

    private static class o extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            y y1 = new y();
            y1.a("$regex", obj.toString());
            if (((Pattern)obj).flags() != 0)
            {
                y1.a("$options", z.a(((Pattern)obj).flags()));
            }
            a.a(y1, stringbuilder);
        }

        o(ah ah1)
        {
            super(ah1);
        }
    }

    private static class p extends ac
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            ae.a(stringbuilder, (String)obj);
        }

        private p()
        {
        }

        p(p p1)
        {
            this();
        }
    }

    private static class q extends ac
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            stringbuilder.append(obj.toString());
        }

        private q()
        {
        }

        q(q q1)
        {
            this();
        }
    }

    private static class r extends c
    {

        public void a(Object obj, StringBuilder stringbuilder)
        {
            UUID uuid = (UUID)obj;
            y y1 = new y();
            y1.a("$uuid", uuid.toString());
            a.a(y1, stringbuilder);
        }

        r(ah ah1)
        {
            super(ah1);
        }
    }


    public static ah a()
    {
        ad ad1 = b();
        ad1.a(java/util/Date, new i(ad1));
        ad1.a(com/chartboost/sdk/impl/au, new g(ad1));
        ad1.a(com/chartboost/sdk/impl/av, new h(null));
        ad1.a([B, new h(null));
        return ad1;
    }

    static ad b()
    {
        ad ad1 = new ad();
        ad1.a([Ljava/lang/Object;, new m(ad1));
        ad1.a(java/lang/Boolean, new q(null));
        ad1.a(com/chartboost/sdk/impl/aw, new a(ad1));
        ad1.a(com/chartboost/sdk/impl/ax, new b(ad1));
        ad1.a(com/chartboost/sdk/impl/aa, new d(ad1));
        ad1.a(com/chartboost/sdk/impl/ab, new e(ad1));
        ad1.a(java/lang/Iterable, new f(ad1));
        ad1.a(java/util/Map, new j(ad1));
        ad1.a(com/chartboost/sdk/impl/ay, new k(ad1));
        ad1.a(com/chartboost/sdk/impl/az, new l(ad1));
        ad1.a(java/lang/Number, new q(null));
        ad1.a(com/chartboost/sdk/impl/ba, new n(ad1));
        ad1.a(java/util/regex/Pattern, new o(ad1));
        ad1.a(java/lang/String, new p(null));
        ad1.a(java/util/UUID, new r(ad1));
        return ad1;
    }
}
