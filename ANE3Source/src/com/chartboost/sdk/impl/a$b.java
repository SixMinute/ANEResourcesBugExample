// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            a

public static final class  extends Enum
{

    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    public static final g e;
    public static final g f;
    private static final g g[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/chartboost/sdk/impl/a$b, s);
    }

    public static [] values()
    {
         a1[] = g;
        int i = a1.length;
         a2[] = new g[i];
        System.arraycopy(a1, 0, a2, 0, i);
        return a2;
    }

    static 
    {
        a = new <init>("CBImpressionStateOther", 0);
        b = new <init>("CBImpressionStateWaitingForDisplay", 1);
        c = new <init>("CBImpressionStateDisplayedByDefaultController", 2);
        d = new <init>("CBImpressionStateWaitingForDismissal", 3);
        e = new <init>("CBImpressionStateWaitingForCaching", 4);
        f = new <init>("CBImpressionStateCached", 5);
        g ag[] = new <init>[6];
        ag[0] = a;
        ag[1] = b;
        ag[2] = c;
        ag[3] = d;
        ag[4] = e;
        ag[5] = f;
        g = ag;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
