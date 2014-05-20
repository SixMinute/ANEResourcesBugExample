// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;


// Referenced classes of package com.facebook.widget:
//            GraphObjectAdapter

public static final class  extends Enum
{

    public static final ENUM.VALUES ACTIVITY_CIRCLE;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES GRAPH_OBJECT;
    public static final ENUM.VALUES SECTION_HEADER;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/facebook/widget/GraphObjectAdapter$SectionAndItem$Type, s);
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
        GRAPH_OBJECT = new <init>("GRAPH_OBJECT", 0);
        SECTION_HEADER = new <init>("SECTION_HEADER", 1);
        ACTIVITY_CIRCLE = new <init>("ACTIVITY_CIRCLE", 2);
        ENUM.VALUES avalues[] = new <init>[3];
        avalues[0] = GRAPH_OBJECT;
        avalues[1] = SECTION_HEADER;
        avalues[2] = ACTIVITY_CIRCLE;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
