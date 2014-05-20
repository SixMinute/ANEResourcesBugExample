// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand;


// Referenced classes of package com.adobe.air.wand:
//            TaskManager

public static final class mTitle extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES ACCELEROMETER_EVENT;
    public static final .VALUES DRAW_IMAGE;
    public static final .VALUES GESTURE_EVENT;
    public static final .VALUES HARDWARE_SPECIFICATIONS;
    public static final .VALUES TOUCH_EVENT;
    public static final .VALUES VIBRATE;
    private final String mTitle;

    public static mTitle valueOf(String s)
    {
        return (mTitle)Enum.valueOf(com/adobe/air/wand/TaskManager$MessageTitle, s);
    }

    public static mTitle[] values()
    {
        return (mTitle[])$VALUES.clone();
    }

    public String toString()
    {
        return mTitle;
    }

    static 
    {
        ACCELEROMETER_EVENT = new <init>("ACCELEROMETER_EVENT", 0, "ACCELEROMETER_EVENT");
        TOUCH_EVENT = new <init>("TOUCH_EVENT", 1, "TOUCH_EVENT");
        GESTURE_EVENT = new <init>("GESTURE_EVENT", 2, "GESTURE_EVENT");
        VIBRATE = new <init>("VIBRATE", 3, "VIBRATE");
        DRAW_IMAGE = new <init>("DRAW_IMAGE", 4, "DRAW_IMAGE");
        HARDWARE_SPECIFICATIONS = new <init>("HARDWARE_SPECIFICATIONS", 5, "HARDWARE_SPECIFICATIONS");
        mTitle amtitle[] = new <init>[6];
        amtitle[0] = ACCELEROMETER_EVENT;
        amtitle[1] = TOUCH_EVENT;
        amtitle[2] = GESTURE_EVENT;
        amtitle[3] = VIBRATE;
        amtitle[4] = DRAW_IMAGE;
        amtitle[5] = HARDWARE_SPECIFICATIONS;
        $VALUES = amtitle;
    }

    private (String s, int i, String s1)
    {
        super(s, i);
        mTitle = s1;
    }
}
