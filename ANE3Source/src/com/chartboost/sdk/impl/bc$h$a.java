// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            bc

public static abstract class <init> extends Enum
{

    public static final c a;
    public static final c b;
    private static final c c[];

    public static <init> valueOf(String s)
    {
        return (<init>)Enum.valueOf(com/chartboost/sdk/impl/bc$h$a, s);
    }

    public static <init>[] values()
    {
        <init> a_3C_init>[] = c;
        int i = a_3C_init>.length;
        <init> a_3C_init>1[] = new c[i];
        System.arraycopy(a_3C_init>, 0, a_3C_init>1, 0, i);
        return a_3C_init>1;
    }

    abstract c a(bc bc1);

    static 
    {
        a = new bc.h.a("STABLE", 0) {

            bc.h a(bc bc1)
            {
                bc1.getClass();
                return new bc.c(bc1);
            }

        };
        b = new bc.h.a("LIVE", 1) {

            bc.h a(bc bc1)
            {
                bc1.getClass();
                return new bc.e(bc1);
            }

        };
        c ac[] = new nit>[2];
        ac[0] = a;
        ac[1] = b;
        c = ac;
    }

    private _cls2(String s, int i)
    {
        super(s, i);
    }

    _cls2(String s, int i, _cls2 _pcls2)
    {
        this(s, i);
    }
}
