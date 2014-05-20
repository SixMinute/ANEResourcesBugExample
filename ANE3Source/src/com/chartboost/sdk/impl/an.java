// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.lang.reflect.Array;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import java.util.regex.Pattern;

// Referenced classes of package com.chartboost.sdk.impl:
//            ak, ar, ag, ai, 
//            au, av, aw, ax, 
//            ba, bb, aq, al, 
//            ab, ao, az, ay

public class an
    implements ak
{

    protected ar a;

    public an()
    {
    }

    private void a(String s, int i, byte abyte0[])
    {
        a((byte)5, s);
        int j = abyte0.length;
        if (i == 2)
        {
            j += 4;
        }
        a.c(j);
        a.write(i);
        if (i == 2)
        {
            a.c(j - 4);
        }
        int k = a.a();
        a.write(abyte0);
        ag.a(a.a() - k, abyte0.length);
    }

    private void a(String s, Iterable iterable)
    {
        a((byte)4, s);
        int i = a.a();
        a.c(0);
        Iterator iterator = iterable.iterator();
        int j = 0;
        do
        {
            if (!iterator.hasNext())
            {
                a.write(0);
                a.a(i, a.a() - i);
                return;
            }
            Object obj = iterator.next();
            b(String.valueOf(j), obj);
            j++;
        } while (true);
    }

    private void a(String s, String s1, byte byte0)
    {
        a(byte0, s);
        b(s1);
    }

    private void a(String s, Map map)
    {
        a((byte)3, s);
        int i = a.a();
        a.c(0);
        Iterator iterator = map.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                a.write(0);
                a.a(i, a.a() - i);
                return;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            b(entry.getKey().toString(), entry.getValue());
        } while (true);
    }

    private void a(String s, Pattern pattern)
    {
        a((byte)11, s);
        c(pattern.pattern());
        c(ai.a(pattern.flags()));
    }

    private void c(String s, Object obj)
    {
        a((byte)4, s);
        int i = a.a();
        a.c(0);
        int j = Array.getLength(obj);
        int k = 0;
        do
        {
            if (k >= j)
            {
                a.write(0);
                a.a(i, a.a() - i);
                return;
            }
            b(String.valueOf(k), Array.get(obj, k));
            k++;
        } while (true);
    }

    private void d(String s)
    {
        a((byte)-1, s);
    }

    private void e(String s)
    {
        a((byte)127, s);
    }

    public void a()
    {
        a = null;
    }

    protected void a(byte byte0, String s)
    {
        a.write(byte0);
        c(s);
    }

    public void a(ar ar1)
    {
        if (a != null)
        {
            throw new IllegalStateException("in the middle of something");
        } else
        {
            a = ar1;
            return;
        }
    }

    protected void a(String s)
    {
        a((byte)10, s);
    }

    protected void a(String s, au au1)
    {
        a((byte)17, s);
        a.c(au1.b());
        a.c(au1.a());
    }

    protected void a(String s, av av1)
    {
        a(s, av1.a(), av1.b());
    }

    protected void a(String s, aw aw1)
    {
        a((byte)13, s);
        a.a();
        b(aw1.a());
    }

    protected void a(String s, ax ax1)
    {
        a((byte)15, s);
        int i = a.a();
        a.c(0);
        b(ax1.a());
        b(ax1.b());
        a.a(i, a.a() - i);
    }

    protected void a(String s, ba ba1)
    {
        a((byte)7, s);
        a.d(ba1.c());
        a.d(ba1.d());
        a.d(ba1.e());
    }

    protected void a(String s, bb bb1)
    {
        a(s, bb1.a(), (byte)14);
    }

    protected void a(String s, Boolean boolean1)
    {
        a((byte)8, s);
        ar ar1 = a;
        int i;
        if (boolean1.booleanValue())
        {
            i = 1;
        } else
        {
            i = 0;
        }
        ar1.write(i);
    }

    protected void a(String s, Number number)
    {
        if ((number instanceof Integer) || (number instanceof Short) || (number instanceof Byte) || (number instanceof AtomicInteger))
        {
            a((byte)16, s);
            a.c(number.intValue());
            return;
        }
        if ((number instanceof Long) || (number instanceof AtomicLong))
        {
            a((byte)18, s);
            a.a(number.longValue());
            return;
        }
        if ((number instanceof Float) || (number instanceof Double))
        {
            a((byte)1, s);
            a.a(number.doubleValue());
            return;
        } else
        {
            throw new IllegalArgumentException((new StringBuilder("can't serialize ")).append(number.getClass()).toString());
        }
    }

    protected void a(String s, String s1)
    {
        a(s, s1, (byte)2);
    }

    protected void a(String s, Date date)
    {
        a((byte)9, s);
        a.a(date.getTime());
    }

    protected void a(String s, UUID uuid)
    {
        a((byte)5, s);
        a.c(16);
        a.write(3);
        a.a(uuid.getMostSignificantBits());
        a.a(uuid.getLeastSignificantBits());
    }

    protected void a(String s, byte abyte0[])
    {
        a(s, 0, abyte0);
    }

    protected boolean a(String s, al al1)
    {
        return false;
    }

    protected boolean a(String s, Object obj)
    {
        return false;
    }

    public byte[] a(al al1)
    {
        aq aq1 = new aq();
        a(((ar) (aq1)));
        b(al1);
        a();
        return aq1.c();
    }

    public int b(al al1)
    {
        return b(null, al1);
    }

    protected int b(String s, al al1)
    {
        if (al1 == null)
        {
            throw new NullPointerException("can't save a null object");
        }
        int i = a.a();
        byte byte0;
        int j;
        boolean flag;
        List list;
        Iterator iterator;
        String s1;
        Iterator iterator1;
        java.util.Map.Entry entry;
        Object obj;
        if (al1 instanceof List)
        {
            byte0 = 4;
        } else
        {
            byte0 = 3;
        }
        if (a(s, al1))
        {
            return a.a() - i;
        }
        if (s != null)
        {
            a(byte0, s);
        }
        j = a.a();
        a.c(0);
        if (byte0 == 3 && s == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (byte0 != 3) goto _L2; else goto _L1
_L1:
        if (flag && al1.b("_id"))
        {
            b("_id", al1.a("_id"));
        }
        obj = al1.a("_transientFields");
        if (!(obj instanceof List)) goto _L2; else goto _L3
_L3:
        list = (List)obj;
_L8:
        if (!(al1 instanceof Map))
        {
            break MISSING_BLOCK_LABEL_316;
        }
        iterator1 = ((Map)al1).entrySet().iterator();
_L6:
        if (iterator1.hasNext()) goto _L5; else goto _L4
_L4:
        a.write(0);
        a.a(j, a.a() - j);
        return a.a() - i;
_L5:
        entry = (java.util.Map.Entry)iterator1.next();
        if ((!flag || !((String)entry.getKey()).equals("_id")) && (list == null || !list.contains(entry.getKey())))
        {
            b((String)entry.getKey(), entry.getValue());
        }
          goto _L6
        iterator = al1.keySet().iterator();
        while (iterator.hasNext()) 
        {
            s1 = (String)iterator.next();
            if ((!flag || !s1.equals("_id")) && (list == null || !list.contains(s1)))
            {
                b(s1, al1.a(s1));
            }
        }
          goto _L4
_L2:
        list = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    protected void b(String s)
    {
        int i = a.a();
        a.c(0);
        int j = c(s);
        a.a(i, j);
    }

    protected void b(String s, Object obj)
    {
        if (!s.equals("_transientFields"))
        {
            if (s.equals("$where") && (obj instanceof String))
            {
                a((byte)13, s);
                b(obj.toString());
                return;
            }
            Object obj1 = ai.a(obj);
            if (obj1 == null)
            {
                a(s);
                return;
            }
            if (obj1 instanceof Date)
            {
                a(s, (Date)obj1);
                return;
            }
            if (obj1 instanceof Number)
            {
                a(s, (Number)obj1);
                return;
            }
            if (obj1 instanceof Character)
            {
                a(s, obj1.toString());
                return;
            }
            if (obj1 instanceof String)
            {
                a(s, obj1.toString());
                return;
            }
            if (obj1 instanceof ba)
            {
                a(s, (ba)obj1);
                return;
            }
            if (obj1 instanceof al)
            {
                b(s, (al)obj1);
                return;
            }
            if (obj1 instanceof Boolean)
            {
                a(s, (Boolean)obj1);
                return;
            }
            if (obj1 instanceof Pattern)
            {
                a(s, (Pattern)obj1);
                return;
            }
            if (obj1 instanceof Map)
            {
                a(s, (Map)obj1);
                return;
            }
            if (obj1 instanceof Iterable)
            {
                a(s, (Iterable)obj1);
                return;
            }
            if (obj1 instanceof byte[])
            {
                a(s, (byte[])obj1);
                return;
            }
            if (obj1 instanceof av)
            {
                a(s, (av)obj1);
                return;
            }
            if (obj1 instanceof UUID)
            {
                a(s, (UUID)obj1);
                return;
            }
            if (obj1.getClass().isArray())
            {
                c(s, obj1);
                return;
            }
            if (obj1 instanceof bb)
            {
                a(s, (bb)obj1);
                return;
            }
            if (obj1 instanceof au)
            {
                a(s, (au)obj1);
                return;
            }
            if (obj1 instanceof ax)
            {
                a(s, (ax)obj1);
                return;
            }
            if (obj1 instanceof aw)
            {
                a(s, (aw)obj1);
                return;
            }
            if (obj1 instanceof ab)
            {
                ao ao1 = new ao();
                ao1.a("$ref", ((ab)obj1).b());
                ao1.a("$id", ((ab)obj1).a());
                b(s, ((al) (ao1)));
                return;
            }
            if (obj1 instanceof az)
            {
                d(s);
                return;
            }
            if (obj1 instanceof ay)
            {
                e(s);
                return;
            }
            if (!a(s, obj1))
            {
                throw new IllegalArgumentException((new StringBuilder("can't serialize ")).append(obj1.getClass()).toString());
            }
        }
    }

    protected int c(String s)
    {
        int i;
        int j;
        int k;
        i = s.length();
        j = 0;
        k = 0;
_L2:
        int l;
        if (j >= i)
        {
            a.write(0);
            return k + 1;
        }
        l = Character.codePointAt(s, j);
        if (l >= 128)
        {
            break; /* Loop/switch isn't completed */
        }
        a.write((byte)l);
        k++;
_L3:
        j += Character.charCount(l);
        if (true) goto _L2; else goto _L1
_L1:
        if (l < 2048)
        {
            a.write((byte)(192 + (l >> 6)));
            a.write((byte)(128 + (l & 0x3f)));
            k += 2;
        } else
        if (l < 0x10000)
        {
            a.write((byte)(224 + (l >> 12)));
            a.write((byte)(128 + (0x3f & l >> 6)));
            a.write((byte)(128 + (l & 0x3f)));
            k += 3;
        } else
        {
            a.write((byte)(240 + (l >> 18)));
            a.write((byte)(128 + (0x3f & l >> 12)));
            a.write((byte)(128 + (0x3f & l >> 6)));
            a.write((byte)(128 + (l & 0x3f)));
            k += 4;
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }
}
