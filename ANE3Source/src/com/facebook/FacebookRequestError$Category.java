// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


// Referenced classes of package com.facebook:
//            FacebookRequestError

public static final class  extends Enum
{

    public static final ENUM.VALUES AUTHENTICATION_REOPEN_SESSION;
    public static final ENUM.VALUES AUTHENTICATION_RETRY;
    public static final ENUM.VALUES BAD_REQUEST;
    public static final ENUM.VALUES CLIENT;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES OTHER;
    public static final ENUM.VALUES PERMISSION;
    public static final ENUM.VALUES SERVER;
    public static final ENUM.VALUES THROTTLING;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/facebook/FacebookRequestError$Category, s);
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
        AUTHENTICATION_RETRY = new <init>("AUTHENTICATION_RETRY", 0);
        AUTHENTICATION_REOPEN_SESSION = new <init>("AUTHENTICATION_REOPEN_SESSION", 1);
        PERMISSION = new <init>("PERMISSION", 2);
        SERVER = new <init>("SERVER", 3);
        THROTTLING = new <init>("THROTTLING", 4);
        OTHER = new <init>("OTHER", 5);
        BAD_REQUEST = new <init>("BAD_REQUEST", 6);
        CLIENT = new <init>("CLIENT", 7);
        ENUM.VALUES avalues[] = new <init>[8];
        avalues[0] = AUTHENTICATION_RETRY;
        avalues[1] = AUTHENTICATION_REOPEN_SESSION;
        avalues[2] = PERMISSION;
        avalues[3] = SERVER;
        avalues[4] = THROTTLING;
        avalues[5] = OTHER;
        avalues[6] = BAD_REQUEST;
        avalues[7] = CLIENT;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
