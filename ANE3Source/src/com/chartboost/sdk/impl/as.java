// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.chartboost.sdk.impl:
//            ar, at, bj

public class as extends ar
{
    static class a
    {

        int a;
        int b;

        void a()
        {
            a = -1;
            b = 0;
        }

        void a(int i)
        {
            a = i / 16384 - 1;
            b = i % 16384;
        }

        void a(a a1)
        {
            a = a1.a;
            b = a1.b;
        }

        int b()
        {
            return 16384 * (1 + a) + b;
        }

        void b(int i)
        {
            b = i + b;
            if (b > 16384)
            {
                throw new IllegalArgumentException("something is wrong");
            } else
            {
                return;
            }
        }

        int c()
        {
            int i = b;
            b = i + 1;
            return i;
        }

        int c(int i)
        {
            if (i < a)
            {
                return 16384;
            } else
            {
                return b;
            }
        }

        void d()
        {
            if (b != 16384)
            {
                throw new IllegalArgumentException("broken");
            } else
            {
                a = 1 + a;
                b = 0;
                return;
            }
        }

        public String toString()
        {
            return (new StringBuilder(String.valueOf(a))).append(",").append(b).toString();
        }

        a()
        {
            a();
        }
    }


    private static bj g = new bj(640) {

        protected byte[] a()
        {
            return new byte[16384];
        }

        protected Object b()
        {
            return a();
        }

    };
    final byte a[] = new byte[16384];
    final char b[] = new char[16384];
    final List c = new ArrayList();
    final at d = new at();
    private final a e = new a();
    private final a f = new a();

    public as()
    {
        d();
    }

    public int a()
    {
        return e.b();
    }

    public int a(OutputStream outputstream)
        throws IOException
    {
        if (outputstream == null)
        {
            throw new NullPointerException("out is null");
        }
        int i = -1;
        int j = 0;
        do
        {
            if (i >= c.size())
            {
                return j;
            }
            byte abyte0[] = b(i);
            int k = f.c(i);
            outputstream.write(abyte0, 0, k);
            j += k;
            i++;
        } while (true);
    }

    public void a(int i)
    {
        e.a(i);
    }

    public int b()
    {
        return f.b();
    }

    byte[] b(int i)
    {
        if (i < 0)
        {
            return a;
        } else
        {
            return (byte[])c.get(i);
        }
    }

    public void d()
    {
        e.a();
        f.a();
        int i = 0;
        do
        {
            if (i >= c.size())
            {
                c.clear();
                return;
            }
            g.b((byte[])c.get(i));
            i++;
        } while (true);
    }

    void e()
    {
        if (e.b() < f.b())
        {
            if (e.b == 16384)
            {
                e.d();
            }
        } else
        {
            f.a(e);
            if (f.b >= 16384)
            {
                c.add((byte[])g.c());
                f.d();
                e.a(f);
                return;
            }
        }
    }

    byte[] f()
    {
        return b(e.a);
    }

    public void write(int i)
    {
        f()[e.c()] = (byte)(i & 0xff);
        e();
    }

    public void write(byte abyte0[])
    {
        write(abyte0, 0, abyte0.length);
    }

    public void write(byte abyte0[], int i, int j)
    {
        do
        {
            if (j <= 0)
            {
                return;
            }
            byte abyte1[] = f();
            int k = Math.min(abyte1.length - e.b, j);
            System.arraycopy(abyte0, i, abyte1, e.b, k);
            e.b(k);
            j -= k;
            i += k;
            e();
        } while (true);
    }

}
