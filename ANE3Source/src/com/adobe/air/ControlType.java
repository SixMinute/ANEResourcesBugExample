// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


final class ControlType extends Enum
{

    private static final ControlType $VALUES[];
    public static final ControlType AXIS;
    public static final ControlType BUTTON;

    private ControlType(String s, int i)
    {
        super(s, i);
    }

    public static ControlType valueOf(String s)
    {
        return (ControlType)Enum.valueOf(com/adobe/air/ControlType, s);
    }

    public static ControlType[] values()
    {
        return (ControlType[])$VALUES.clone();
    }

    static 
    {
        BUTTON = new ControlType("BUTTON", 0);
        AXIS = new ControlType("AXIS", 1);
        ControlType acontroltype[] = new ControlType[2];
        acontroltype[0] = BUTTON;
        acontroltype[1] = AXIS;
        $VALUES = acontroltype;
    }
}
