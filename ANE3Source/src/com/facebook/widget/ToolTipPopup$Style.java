// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;


// Referenced classes of package com.facebook.widget:
//            ToolTipPopup

public static final class  extends Enum
{

    public static final ENUM.VALUES BLACK;
    public static final ENUM.VALUES BLUE;
    private static final ENUM.VALUES ENUM$VALUES[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/facebook/widget/ToolTipPopup$Style, s);
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
        BLUE = new <init>("BLUE", 0);
        BLACK = new <init>("BLACK", 1);
        ENUM.VALUES avalues[] = new <init>[2];
        avalues[0] = BLUE;
        avalues[1] = BLACK;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
