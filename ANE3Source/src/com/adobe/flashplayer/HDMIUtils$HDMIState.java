// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.flashplayer;


// Referenced classes of package com.adobe.flashplayer:
//            HDMIUtils

private static final class value extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES HDCPON;
    public static final .VALUES OFF;
    public static final .VALUES ON;
    public static final .VALUES UNKNOWN;
    public final int value;

    public static value valueOf(String s)
    {
        return (value)Enum.valueOf(com/adobe/flashplayer/HDMIUtils$HDMIState, s);
    }

    public static value[] values()
    {
        return (value[])$VALUES.clone();
    }

    static 
    {
        UNKNOWN = new <init>("UNKNOWN", 0, 0);
        OFF = new <init>("OFF", 1, 1);
        ON = new <init>("ON", 2, 2);
        HDCPON = new <init>("HDCPON", 3, 3);
        e_3B_.clone aclone[] = new <init>[4];
        aclone[0] = UNKNOWN;
        aclone[1] = OFF;
        aclone[2] = ON;
        aclone[3] = HDCPON;
        $VALUES = aclone;
    }

    private (String s, int i, int j)
    {
        super(s, i);
        value = j;
    }
}
