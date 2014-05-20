// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            OrientationManager

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES LANDSCAPE;
    public static final .VALUES PORTRAIT;
    public static final .VALUES UNKNOWN;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/adobe/air/OrientationManager$EAspectRatio, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        UNKNOWN = new <init>("UNKNOWN", 0);
        PORTRAIT = new <init>("PORTRAIT", 1);
        LANDSCAPE = new <init>("LANDSCAPE", 2);
        o_3B_.clone aclone[] = new <init>[3];
        aclone[0] = UNKNOWN;
        aclone[1] = PORTRAIT;
        aclone[2] = LANDSCAPE;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
