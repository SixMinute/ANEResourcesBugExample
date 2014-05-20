// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message;


// Referenced classes of package com.adobe.air.wand.message:
//            Message

public static final class mType extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES NOTIFICATION;
    public static final .VALUES REQUEST;
    public static final .VALUES RESPONSE;
    private final String mType;

    public static mType valueOf(String s)
    {
        return (mType)Enum.valueOf(com/adobe/air/wand/message/Message$Type, s);
    }

    public static mType[] values()
    {
        return (mType[])$VALUES.clone();
    }

    public String toString()
    {
        return mType;
    }

    static 
    {
        REQUEST = new <init>("REQUEST", 0, "REQUEST");
        RESPONSE = new <init>("RESPONSE", 1, "RESPONSE");
        NOTIFICATION = new <init>("NOTIFICATION", 2, "NOTIFICATION");
        mType amtype[] = new <init>[3];
        amtype[0] = REQUEST;
        amtype[1] = RESPONSE;
        amtype[2] = NOTIFICATION;
        $VALUES = amtype;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        mType = s1;
    }
}
