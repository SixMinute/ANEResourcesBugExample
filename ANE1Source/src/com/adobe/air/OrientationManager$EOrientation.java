// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            OrientationManager

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES DEFAULT;
    public static final .VALUES ROTATED_LEFT;
    public static final .VALUES ROTATED_RIGHT;
    public static final .VALUES UNKNOWN;
    public static final .VALUES UPSIDE_DOWN;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/adobe/air/OrientationManager$EOrientation, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNKNOWN = new <init>("UNKNOWN", 0);
        DEFAULT = new <init>("DEFAULT", 1);
        ROTATED_LEFT = new <init>("ROTATED_LEFT", 2);
        ROTATED_RIGHT = new <init>("ROTATED_RIGHT", 3);
        UPSIDE_DOWN = new <init>("UPSIDE_DOWN", 4);
        n_3B_.clone aclone[] = new <init>[5];
        aclone[0] = UNKNOWN;
        aclone[1] = DEFAULT;
        aclone[2] = ROTATED_LEFT;
        aclone[3] = ROTATED_RIGHT;
        aclone[4] = UPSIDE_DOWN;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
