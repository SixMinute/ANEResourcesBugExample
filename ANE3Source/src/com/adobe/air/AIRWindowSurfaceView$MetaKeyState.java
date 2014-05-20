// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            AIRWindowSurfaceView

private static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ACTIVE;
    public static final .VALUES INACTIVE;
    public static final .VALUES LOCKED;
    public static final .VALUES PRESSED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/adobe/air/AIRWindowSurfaceView$MetaKeyState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        INACTIVE = new <init>("INACTIVE", 0);
        ACTIVE = new <init>("ACTIVE", 1);
        PRESSED = new <init>("PRESSED", 2);
        LOCKED = new <init>("LOCKED", 3);
        e_3B_.clone aclone[] = new <init>[4];
        aclone[0] = INACTIVE;
        aclone[1] = ACTIVE;
        aclone[2] = PRESSED;
        aclone[3] = LOCKED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
