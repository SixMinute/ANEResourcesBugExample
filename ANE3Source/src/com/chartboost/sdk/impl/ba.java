// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.Serializable;
import java.net.NetworkInterface;
import java.nio.ByteBuffer;
import java.util.Enumeration;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ba
    implements Serializable, Comparable
{

    static final Logger a;
    private static AtomicInteger f;
    private static final int g;
    final int b;
    final int c;
    final int d;
    boolean e;

    public ba()
    {
        b = (int)(System.currentTimeMillis() / 1000L);
        c = g;
        d = f.getAndIncrement();
        e = true;
    }

    public ba(int i, int j, int k)
    {
        b = i;
        c = j;
        d = k;
        e = false;
    }

    public ba(String s)
    {
        this(s, false);
    }

    public ba(String s, boolean flag)
    {
        if (!a(s))
        {
            throw new IllegalArgumentException((new StringBuilder("invalid ObjectId [")).append(s).append("]").toString());
        }
        String s1;
        byte abyte0[];
        int i;
        if (flag)
        {
            s1 = b(s);
        } else
        {
            s1 = s;
        }
        abyte0 = new byte[12];
        i = 0;
        do
        {
            if (i >= abyte0.length)
            {
                ByteBuffer bytebuffer = ByteBuffer.wrap(abyte0);
                b = bytebuffer.getInt();
                c = bytebuffer.getInt();
                d = bytebuffer.getInt();
                e = false;
                return;
            }
            abyte0[i] = (byte)Integer.parseInt(s1.substring(i * 2, 2 + i * 2), 16);
            i++;
        } while (true);
    }

    public static ba a(Object obj)
    {
        if (obj == null)
        {
            return null;
        }
        if (obj instanceof ba)
        {
            return (ba)obj;
        }
        if (obj instanceof String)
        {
            String s = obj.toString();
            if (a(s))
            {
                return new ba(s);
            }
        }
        return null;
    }

    static String a(String s, int i)
    {
        return s.substring(i * 2, 2 + i * 2);
    }

    public static boolean a(String s)
    {
        int i;
        int j;
        if (s == null)
        {
            return false;
        }
        i = s.length();
        if (i != 24)
        {
            return false;
        }
        j = 0;
_L2:
        char c1;
        if (j >= i)
        {
            return true;
        }
        c1 = s.charAt(j);
          goto _L1
_L4:
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        if (c1 >= '0' && c1 <= '9' || c1 >= 'a' && c1 <= 'f' || c1 >= 'A' && c1 <= 'F') goto _L4; else goto _L3
_L3:
        return false;
    }

    public static String b(String s)
    {
        StringBuilder stringbuilder;
        int i;
        if (!a(s))
        {
            throw new IllegalArgumentException((new StringBuilder("invalid object id: ")).append(s).toString());
        }
        stringbuilder = new StringBuilder(24);
        i = 7;
_L3:
        if (i >= 0) goto _L2; else goto _L1
_L1:
        int j = 11;
_L4:
        if (j < 8)
        {
            return stringbuilder.toString();
        }
        break MISSING_BLOCK_LABEL_80;
_L2:
        stringbuilder.append(a(s, i));
        i--;
          goto _L3
        stringbuilder.append(a(s, j));
        j--;
          goto _L4
    }

    int a(int i, int j)
    {
        long l = (0xffffffffL & (long)i) - (0xffffffffL & (long)j);
        if (l < 0xffffffff80000000L)
        {
            return 0x80000000;
        }
        if (l > 0x7fffffffL)
        {
            return 0x7fffffff;
        } else
        {
            return (int)l;
        }
    }

    public int a(ba ba1)
    {
        int i;
        if (ba1 == null)
        {
            i = -1;
        } else
        {
            i = a(b, ba1.b);
            if (i == 0)
            {
                i = a(c, ba1.c);
                if (i == 0)
                {
                    return a(d, ba1.d);
                }
            }
        }
        return i;
    }

    public String a()
    {
        byte abyte0[] = b();
        StringBuilder stringbuilder = new StringBuilder(24);
        int i = 0;
        do
        {
            if (i >= abyte0.length)
            {
                return stringbuilder.toString();
            }
            String s = Integer.toHexString(0xff & abyte0[i]);
            if (s.length() == 1)
            {
                stringbuilder.append("0");
            }
            stringbuilder.append(s);
            i++;
        } while (true);
    }

    public byte[] b()
    {
        byte abyte0[] = new byte[12];
        ByteBuffer bytebuffer = ByteBuffer.wrap(abyte0);
        bytebuffer.putInt(b);
        bytebuffer.putInt(c);
        bytebuffer.putInt(d);
        return abyte0;
    }

    public int c()
    {
        return b;
    }

    public int compareTo(Object obj)
    {
        return a((ba)obj);
    }

    public int d()
    {
        return c;
    }

    public int e()
    {
        return d;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        ba ba1 = a(obj);
        if (ba1 == null)
        {
            return false;
        }
        return b == ba1.b && c == ba1.c && d == ba1.d;
    }

    public int hashCode()
    {
        return b + 111 * c + 17 * d;
    }

    public String toString()
    {
        return a();
    }

    static 
    {
        a = Logger.getLogger("org.bson.ObjectId");
        f = new AtomicInteger((new Random()).nextInt());
        StringBuilder stringbuilder;
        Enumeration enumeration;
        stringbuilder = new StringBuilder();
        enumeration = NetworkInterface.getNetworkInterfaces();
_L3:
        if (enumeration.hasMoreElements()) goto _L2; else goto _L1
_L1:
        int j1 = stringbuilder.toString().hashCode();
        int j = j1 << 16;
_L4:
        Throwable throwable;
        int i;
        int k;
        ClassLoader classloader;
        int l;
        StringBuilder stringbuilder1;
        int i1;
        try
        {
            a.fine((new StringBuilder("machine piece post: ")).append(Integer.toHexString(j)).toString());
            k = (new Random()).nextInt();
            classloader = com/chartboost/sdk/impl/ba.getClassLoader();
        }
        catch (Exception exception)
        {
            throw new RuntimeException(exception);
        }
        if (classloader == null)
        {
            break MISSING_BLOCK_LABEL_286;
        }
        l = System.identityHashCode(classloader);
_L5:
        stringbuilder1 = new StringBuilder();
        stringbuilder1.append(Integer.toHexString(k));
        stringbuilder1.append(Integer.toHexString(l));
        i1 = 0xffff & stringbuilder1.toString().hashCode();
        a.fine((new StringBuilder("process piece: ")).append(Integer.toHexString(i1)).toString());
        g = j | i1;
        a.fine((new StringBuilder("machine : ")).append(Integer.toHexString(g)).toString());
        return;
_L2:
        stringbuilder.append(((NetworkInterface)enumeration.nextElement()).toString());
          goto _L3
        throwable;
        a.log(Level.WARNING, throwable.getMessage(), throwable);
        i = (new Random()).nextInt();
        j = i << 16;
          goto _L4
        l = 0;
          goto _L5
    }
}
