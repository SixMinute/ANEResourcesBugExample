// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


// Referenced classes of package com.facebook:
//            Response

public static final class  extends Enum
{

    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES NEXT;
    public static final ENUM.VALUES PREVIOUS;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/facebook/Response$PagingDirection, s);
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
        NEXT = new <init>("NEXT", 0);
        PREVIOUS = new <init>("PREVIOUS", 1);
        ENUM.VALUES avalues[] = new <init>[2];
        avalues[0] = NEXT;
        avalues[1] = PREVIOUS;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
