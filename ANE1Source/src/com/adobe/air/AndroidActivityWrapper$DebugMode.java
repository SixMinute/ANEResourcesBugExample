// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

private static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ConflictMode;
    public static final .VALUES ConnectMode;
    public static final .VALUES ListenMode;
    public static final .VALUES None;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/adobe/air/AndroidActivityWrapper$DebugMode, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        None = new <init>("None", 0);
        ConnectMode = new <init>("ConnectMode", 1);
        ListenMode = new <init>("ListenMode", 2);
        ConflictMode = new <init>("ConflictMode", 3);
        e_3B_.clone aclone[] = new <init>[4];
        aclone[0] = None;
        aclone[1] = ConnectMode;
        aclone[2] = ListenMode;
        aclone[3] = ConflictMode;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
