// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


// Referenced classes of package com.facebook:
//            AuthorizationClient

static final class loggingValue extends Enum
{

    public static final ENUM.VALUES CANCEL;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES ERROR;
    public static final ENUM.VALUES SUCCESS;
    private final String loggingValue;

    public static loggingValue valueOf(String s)
    {
        return (loggingValue)Enum.valueOf(com/facebook/AuthorizationClient$Result$Code, s);
    }

    public static loggingValue[] values()
    {
        loggingValue aloggingvalue[] = ENUM$VALUES;
        int i = aloggingvalue.length;
        loggingValue aloggingvalue1[] = new ENUM.VALUES[i];
        System.arraycopy(aloggingvalue, 0, aloggingvalue1, 0, i);
        return aloggingvalue1;
    }

    String getLoggingValue()
    {
        return loggingValue;
    }

    static 
    {
        SUCCESS = new <init>("SUCCESS", 0, "success");
        CANCEL = new <init>("CANCEL", 1, "cancel");
        ERROR = new <init>("ERROR", 2, "error");
        loggingValue aloggingvalue[] = new <init>[3];
        aloggingvalue[0] = SUCCESS;
        aloggingvalue[1] = CANCEL;
        aloggingvalue[2] = ERROR;
        ENUM$VALUES = aloggingvalue;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        loggingValue = s1;
    }
}
