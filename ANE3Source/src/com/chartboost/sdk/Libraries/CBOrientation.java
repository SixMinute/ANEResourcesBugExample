// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;


public final class CBOrientation extends Enum
{
    public static final class Difference extends Enum
    {

        public static final Difference ANGLE_0;
        public static final Difference ANGLE_180;
        public static final Difference ANGLE_270;
        public static final Difference ANGLE_90;
        private static int a[];
        private static final Difference b[];

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

        public static Difference valueOf(String s)
        {
            return (Difference)Enum.valueOf(com/chartboost/sdk/Libraries/CBOrientation$Difference, s);
        }

        public static Difference[] values()
        {
            Difference adifference[] = b;
            int i = adifference.length;
            Difference adifference1[] = new Difference[i];
            System.arraycopy(adifference, 0, adifference1, 0, i);
            return adifference1;
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
            ANGLE_0 = new Difference("ANGLE_0", 0);
            ANGLE_90 = new Difference("ANGLE_90", 1);
            ANGLE_180 = new Difference("ANGLE_180", 2);
            ANGLE_270 = new Difference("ANGLE_270", 3);
            Difference adifference[] = new Difference[4];
            adifference[0] = ANGLE_0;
            adifference[1] = ANGLE_90;
            adifference[2] = ANGLE_180;
            adifference[3] = ANGLE_270;
            b = adifference;
        }

        private Difference(String s, int i)
        {
            super(s, i);
        }
    }


    public static final CBOrientation LANDSCAPE;
    public static final CBOrientation LANDSCAPE_LEFT;
    public static final CBOrientation LANDSCAPE_REVERSE;
    public static final CBOrientation LANDSCAPE_RIGHT;
    public static final CBOrientation PORTRAIT;
    public static final CBOrientation PORTRAIT_LEFT;
    public static final CBOrientation PORTRAIT_REVERSE;
    public static final CBOrientation PORTRAIT_RIGHT;
    public static final CBOrientation UNSPECIFIED;
    private static int a[];
    private static final CBOrientation b[];

    private CBOrientation(String s, int i)
    {
        super(s, i);
    }

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
            ai1[LANDSCAPE.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[LANDSCAPE_REVERSE.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[PORTRAIT.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[PORTRAIT_REVERSE.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[UNSPECIFIED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        a = ai1;
        return ai1;
    }

    public static CBOrientation valueOf(String s)
    {
        return (CBOrientation)Enum.valueOf(com/chartboost/sdk/Libraries/CBOrientation, s);
    }

    public static CBOrientation[] values()
    {
        CBOrientation acborientation[] = b;
        int i = acborientation.length;
        CBOrientation acborientation1[] = new CBOrientation[i];
        System.arraycopy(acborientation, 0, acborientation1, 0, i);
        return acborientation1;
    }

    public boolean isLandscape()
    {
        return this == LANDSCAPE || this == LANDSCAPE_REVERSE;
    }

    public boolean isPortrait()
    {
        return this == PORTRAIT || this == PORTRAIT_REVERSE;
    }

    public CBOrientation rotate180()
    {
        return rotate90().rotate90();
    }

    public CBOrientation rotate270()
    {
        return rotate90().rotate90().rotate90();
    }

    public CBOrientation rotate90()
    {
        switch (a()[ordinal()])
        {
        default:
            return UNSPECIFIED;

        case 3: // '\003'
            return PORTRAIT_LEFT;

        case 4: // '\004'
            return LANDSCAPE_RIGHT;

        case 5: // '\005'
            return PORTRAIT_RIGHT;

        case 2: // '\002'
            return LANDSCAPE_LEFT;
        }
    }

    static 
    {
        UNSPECIFIED = new CBOrientation("UNSPECIFIED", 0);
        PORTRAIT = new CBOrientation("PORTRAIT", 1);
        LANDSCAPE = new CBOrientation("LANDSCAPE", 2);
        PORTRAIT_REVERSE = new CBOrientation("PORTRAIT_REVERSE", 3);
        LANDSCAPE_REVERSE = new CBOrientation("LANDSCAPE_REVERSE", 4);
        CBOrientation acborientation[] = new CBOrientation[5];
        acborientation[0] = UNSPECIFIED;
        acborientation[1] = PORTRAIT;
        acborientation[2] = LANDSCAPE;
        acborientation[3] = PORTRAIT_REVERSE;
        acborientation[4] = LANDSCAPE_REVERSE;
        b = acborientation;
        PORTRAIT_LEFT = PORTRAIT_REVERSE;
        PORTRAIT_RIGHT = PORTRAIT;
        LANDSCAPE_LEFT = LANDSCAPE;
        LANDSCAPE_RIGHT = LANDSCAPE_REVERSE;
    }
}
