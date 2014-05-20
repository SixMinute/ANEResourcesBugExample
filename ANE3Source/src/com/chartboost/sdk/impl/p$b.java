// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            p

public static final class  extends Enum
{

    public static final g a;
    public static final g b;
    public static final g c;
    public static final g d;
    public static final g e;
    public static final g f;
    private static final g g[];

    public static  a(int i)
    {
        if (i == 0)
        {
            return null;
        }
        if (i > 0 && i <= values().length)
        {
            return values()[i - 1];
        } else
        {
            return null;
        }
    }

    public static values valueOf(String s)
    {
        return (values)Enum.valueOf(com/chartboost/sdk/impl/p$b, s);
    }

    public static values[] values()
    {
        values avalues[] = g;
        int i = avalues.length;
        values avalues1[] = new g[i];
        System.arraycopy(avalues, 0, avalues1, 0, i);
        return avalues1;
    }

    static 
    {
        a = new <init>("CBAnimationTypePerspectiveRotate", 0);
        b = new <init>("CBAnimationTypeBounce", 1);
        c = new <init>("CBAnimationTypePerspectiveZoom", 2);
        d = new <init>("CBAnimationTypeSlideFromBottom", 3);
        e = new <init>("CBAnimationTypeSlideFromTop", 4);
        f = new <init>("CBAnimationTypeNone", 5);
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
