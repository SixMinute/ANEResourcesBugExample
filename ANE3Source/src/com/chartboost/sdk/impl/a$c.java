// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            a

public static final class  extends Enum
{

    public static final d a;
    public static final d b;
    public static final d c;
    private static final d d[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/chartboost/sdk/impl/a$c, s);
    }

    public static [] values()
    {
         a1[] = d;
        int i = a1.length;
         a2[] = new d[i];
        System.arraycopy(a1, 0, a2, 0, i);
        return a2;
    }

    static 
    {
        a = new <init>("CBImpressionTypeOther", 0);
        b = new <init>("CBImpressionTypeInterstitial", 1);
        c = new <init>("CBImpressionTypeMoreApps", 2);
        d ad[] = new <init>[3];
        ad[0] = a;
        ad[1] = b;
        ad[2] = c;
        d = ad;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
