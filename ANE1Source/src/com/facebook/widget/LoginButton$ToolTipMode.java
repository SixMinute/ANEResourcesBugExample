// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;


// Referenced classes of package com.facebook.widget:
//            LoginButton

public static final class  extends Enum
{

    public static final ENUM.VALUES DEFAULT;
    public static final ENUM.VALUES DISPLAY_ALWAYS;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES NEVER_DISPLAY;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/facebook/widget/LoginButton$ToolTipMode, s);
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
        DEFAULT = new <init>("DEFAULT", 0);
        DISPLAY_ALWAYS = new <init>("DISPLAY_ALWAYS", 1);
        NEVER_DISPLAY = new <init>("NEVER_DISPLAY", 2);
        ENUM.VALUES avalues[] = new <init>[3];
        avalues[0] = DEFAULT;
        avalues[1] = DISPLAY_ALWAYS;
        avalues[2] = NEVER_DISPLAY;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
