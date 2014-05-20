// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES DESTROYED;
    public static final .VALUES PAUSED;
    public static final .VALUES RESTARTED;
    public static final .VALUES RESUMED;
    public static final .VALUES STARTED;
    public static final .VALUES STOPPED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/adobe/air/AndroidActivityWrapper$ActivityState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        STARTED = new <init>("STARTED", 0);
        RESTARTED = new <init>("RESTARTED", 1);
        RESUMED = new <init>("RESUMED", 2);
        PAUSED = new <init>("PAUSED", 3);
        STOPPED = new <init>("STOPPED", 4);
        DESTROYED = new <init>("DESTROYED", 5);
        e_3B_.clone aclone[] = new <init>[6];
        aclone[0] = STARTED;
        aclone[1] = RESTARTED;
        aclone[2] = RESUMED;
        aclone[3] = PAUSED;
        aclone[4] = STOPPED;
        aclone[5] = DESTROYED;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
