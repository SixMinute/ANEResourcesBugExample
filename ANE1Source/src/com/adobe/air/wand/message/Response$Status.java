// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message;


// Referenced classes of package com.adobe.air.wand.message:
//            Response

public static final class mStatus extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ERROR;
    public static final .VALUES SUCCESS;
    private final String mStatus;

    public static mStatus valueOf(String s)
    {
        return (mStatus)Enum.valueOf(com/adobe/air/wand/message/Response$Status, s);
    }

    public static mStatus[] values()
    {
        return (mStatus[])$VALUES.clone();
    }

    public String toString()
    {
        return mStatus;
    }

    static 
    {
        SUCCESS = new <init>("SUCCESS", 0, "SUCCESS");
        ERROR = new <init>("ERROR", 1, "ERROR");
        mStatus amstatus[] = new <init>[2];
        amstatus[0] = SUCCESS;
        amstatus[1] = ERROR;
        $VALUES = amstatus;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        mStatus = s1;
    }
}
