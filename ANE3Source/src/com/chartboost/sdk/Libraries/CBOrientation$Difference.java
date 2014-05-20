// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;


// Referenced classes of package com.chartboost.sdk.Libraries:
//            CBOrientation

public static final class  extends Enum
{

    public static final b ANGLE_0;
    public static final b ANGLE_180;
    public static final b ANGLE_270;
    public static final b ANGLE_90;
    private static int a[];
    private static final b b[];

    static int[] a()
    {
        int ai[] = a;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[values().length];
        try
        {
            ai1[ANGLE_0.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[ANGLE_180.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[ANGLE_270.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[ANGLE_90.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        a = ai1;
        return ai1;
    }

    public static a valueOf(String s)
    {
        return (a)Enum.valueOf(com/chartboost/sdk/Libraries/CBOrientation$Difference, s);
    }

    public static a[] values()
    {
        a aa[] = b;
        int i = aa.length;
        a aa1[] = new b[i];
        System.arraycopy(aa, 0, aa1, 0, i);
        return aa1;
    }

    public int getAsInt()
    {
        switch (a()[ordinal()])
        {
        default:
            return 0;

        case 2: // '\002'
            return 90;

        case 3: // '\003'
            return 180;

        case 4: // '\004'
            return 270;
        }
    }

    public boolean isOdd()
    {
        return this == ANGLE_90 || this == ANGLE_270;
    }

    public boolean isReverse()
    {
        return this == ANGLE_180 || this == ANGLE_270;
    }

    static 
    {
        ANGLE_0 = new <init>("ANGLE_0", 0);
        ANGLE_90 = new <init>("ANGLE_90", 1);
        ANGLE_180 = new <init>("ANGLE_180", 2);
        ANGLE_270 = new <init>("ANGLE_270", 3);
        ANGLE_270 aangle_270[] = new <init>[4];
        aangle_270[0] = ANGLE_0;
        aangle_270[1] = ANGLE_90;
        aangle_270[2] = ANGLE_180;
        aangle_270[3] = ANGLE_270;
        b = aangle_270;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
