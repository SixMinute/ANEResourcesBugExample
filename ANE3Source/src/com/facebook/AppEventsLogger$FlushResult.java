// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


// Referenced classes of package com.facebook:
//            AppEventsLogger

private static final class  extends Enum
{

    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES NO_CONNECTIVITY;
    public static final ENUM.VALUES SERVER_ERROR;
    public static final ENUM.VALUES SUCCESS;
    public static final ENUM.VALUES UNKNOWN_ERROR;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/facebook/AppEventsLogger$FlushResult, s);
    }

    public static [] values()
    {
         a[] = ENUM$VALUES;
        int i = a.length;
         a1[] = new ENUM.VALUES[i];
        System.arraycopy(a, 0, a1, 0, i);
        return a1;
    }

    static 
    {
        SUCCESS = new <init>("SUCCESS", 0);
        SERVER_ERROR = new <init>("SERVER_ERROR", 1);
        NO_CONNECTIVITY = new <init>("NO_CONNECTIVITY", 2);
        UNKNOWN_ERROR = new <init>("UNKNOWN_ERROR", 3);
        ENUM.VALUES avalues[] = new <init>[4];
        avalues[0] = SUCCESS;
        avalues[1] = SERVER_ERROR;
        avalues[2] = NO_CONNECTIVITY;
        avalues[3] = UNKNOWN_ERROR;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
