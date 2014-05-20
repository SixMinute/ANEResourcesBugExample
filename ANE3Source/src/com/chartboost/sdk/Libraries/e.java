// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import java.math.BigInteger;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class com.chartboost.sdk.Libraries.e
{
    public static abstract class a
    {

        private String a;

        public abstract String a();

        public abstract boolean a(Object obj);

        public boolean a(Object obj, StringBuilder stringbuilder)
        {
            boolean flag = a(obj);
            if (!flag)
            {
                String s;
                if (a != null)
                {
                    s = a;
                } else
                {
                    s = a();
                }
                stringbuilder.append(s);
            }
            return flag;
        }

        public a()
        {
            a = null;
        }
    }

    private static class b extends a
    {

        public String a()
        {
            return "object must be a boolean.";
        }

        public boolean a(Object obj)
        {
            return java/lang/Boolean.isInstance(obj) || Boolean.TYPE.isInstance(obj);
        }

        private b()
        {
        }

        b(b b1)
        {
            this();
        }
    }

    public static abstract class c extends a
    {

        public c()
        {
        }
    }

    private static class d extends a
    {

        protected g a[];
        protected String b;

        public String a()
        {
            if (b != null)
            {
                return b;
            }
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("object must contain the following key-value schema: {\n");
            int l = 0;
            do
            {
                if (l >= a.length)
                {
                    stringbuilder.append("}");
                    return stringbuilder.toString();
                }
                stringbuilder.append("<");
                stringbuilder.append(g.a(a[l]));
                stringbuilder.append(": [");
                stringbuilder.append(g.b(a[l]).a());
                stringbuilder.append("]>");
                if (l < a.length - 1)
                {
                    stringbuilder.append(",\n");
                }
                l++;
            } while (true);
        }

        public boolean a(Object obj)
        {
            if (!(obj instanceof Map)) goto _L2; else goto _L1
_L1:
            Map map;
            Iterator iterator;
            map = (Map)obj;
            iterator = map.entrySet().iterator();
_L16:
            if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
            if (a == null || a.length < 1) goto _L6; else goto _L5
_L5:
            int i1 = 0;
_L8:
            if (i1 < a.length) goto _L7; else goto _L6
_L6:
            return true;
_L4:
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            if (!(entry.getKey() instanceof String))
            {
                b = (new StringBuilder("key '")).append(entry.getKey().toString()).append("' is not a string").toString();
                return false;
            }
            continue; /* Loop/switch isn't completed */
_L7:
            String s1 = g.a(a[i1]);
            a a2 = g.b(a[i1]);
            if (!map.containsKey(s1))
            {
                if (!a2.a(null))
                {
                    b = (new StringBuilder("no key for required mapping '")).append(s1).append("' : <").append(a2.a()).append(">").toString();
                    return false;
                }
            } else
            if (!a2.a(map.get(s1)))
            {
                b = (new StringBuilder("key '")).append(s1).append("' fails to match: <").append(a2.a()).append(">").toString();
                return false;
            }
            i1++;
            if (true) goto _L8; else goto _L2
_L2:
            if (!(obj instanceof JSONObject)) goto _L10; else goto _L9
_L9:
            JSONObject jsonobject = (JSONObject)obj;
            if (a == null || a.length < 1) goto _L12; else goto _L11
_L11:
            int l = 0;
_L14:
            if (l < a.length) goto _L13; else goto _L12
_L12:
            return true;
_L13:
            String s;
            a a1;
            s = g.a(a[l]);
            a1 = g.b(a[l]);
            if (a1.a(jsonobject.get(s)))
            {
                break MISSING_BLOCK_LABEL_449;
            }
            b = (new StringBuilder("key '")).append(s).append("' fails to match: <").append(a1.a()).append(">").toString();
            return false;
            JSONException jsonexception;
            jsonexception;
            if (!a1.a(null))
            {
                b = (new StringBuilder("no key for required mapping '")).append(s).append("' : <").append(a1.a()).append(">").toString();
                return false;
            }
            l++;
            if (true) goto _L14; else goto _L10
_L10:
            return false;
            if (true) goto _L16; else goto _L15
_L15:
        }

        public d(g ag[])
        {
            b = null;
            a = ag;
        }
    }

    private static class e extends a
    {

        private Class a;

        public String a()
        {
            return (new StringBuilder("object must be an instance of ")).append(a.getName()).append(".").toString();
        }

        public boolean a(Object obj)
        {
            return a.isInstance(obj);
        }

        public e(Class class1)
        {
            a = class1;
        }
    }

    private static class f extends a
    {

        public String a()
        {
            return "object must be a number w/o decimals (int, long, short, or byte).";
        }

        public boolean a(Object obj)
        {
            return java/lang/Integer.isInstance(obj) || java/lang/Long.isInstance(obj) || java/lang/Short.isInstance(obj) || java/lang/Byte.isInstance(obj) || java/math/BigInteger.isInstance(obj) || Integer.TYPE.isInstance(obj) || Long.TYPE.isInstance(obj) || Short.TYPE.isInstance(obj) || Byte.TYPE.isInstance(obj);
        }

        private f()
        {
        }

        f(f f1)
        {
            this();
        }
    }

    public static class g
    {

        private String a;
        private a b;

        static String a(g g1)
        {
            return g1.a;
        }

        static a b(g g1)
        {
            return g1.b;
        }

        public g(String s, a a1)
        {
            a = s;
            b = a1;
        }
    }

    private static class h extends a
    {

        public String a()
        {
            return "object must be null.";
        }

        public boolean a(Object obj)
        {
            return obj == null || obj == JSONObject.NULL;
        }

        private h()
        {
        }

        h(h h1)
        {
            this();
        }
    }

    private static class i extends a
    {

        public String a()
        {
            return "object must be a number (primitive type or derived from Number).";
        }

        public boolean a(Object obj)
        {
            return (obj instanceof Number) || Integer.TYPE.isInstance(obj) || Long.TYPE.isInstance(obj) || Short.TYPE.isInstance(obj) || Float.TYPE.isInstance(obj) || Double.TYPE.isInstance(obj) || Byte.TYPE.isInstance(obj);
        }

        private i()
        {
        }

        i(i l)
        {
            this();
        }
    }

    private static class j extends e
    {

        public j()
        {
            super(java/lang/String);
        }
    }

    private static class k extends a
    {

        protected String a;
        private a b[];

        public String a()
        {
            if (a != null)
            {
                return a;
            }
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("object must match ALL of the following: ");
            int l = 0;
            do
            {
                if (l >= b.length)
                {
                    return stringbuilder.toString();
                }
                stringbuilder.append("<");
                stringbuilder.append(b[l].a());
                stringbuilder.append(">");
                if (l < b.length - 1)
                {
                    stringbuilder.append(", ");
                }
                l++;
            } while (true);
        }

        public boolean a(Object obj)
        {
            int l = 0;
            do
            {
                if (l >= b.length)
                {
                    return true;
                }
                if (!b[l].a(obj))
                {
                    a = (new StringBuilder("object failed to match: <")).append(b[l].a()).append(">").toString();
                    return false;
                }
                l++;
            } while (true);
        }

        public k(a aa[])
        {
            a = null;
            b = aa;
        }
    }


    private static j a = new j();
    private static i b = new i(null);
    private static f c = new f(null);
    private static b d = new b(null);
    private static h e = new h(null);

    public static a a()
    {
        return b;
    }

    public static transient a a(a aa[])
    {
        return new k(aa);
    }

    public static transient a a(g ag[])
    {
        return new d(ag);
    }

    public static g a(String s, a a1)
    {
        return new g(s, a1);
    }

}
