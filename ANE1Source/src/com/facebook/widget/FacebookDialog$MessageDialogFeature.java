// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;


// Referenced classes of package com.facebook.widget:
//            FacebookDialog

public static final class minVersion extends Enum
    implements minVersion
{

    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES MESSAGE_DIALOG;
    public static final ENUM.VALUES PHOTOS;
    private int minVersion;

    public static minVersion valueOf(String s)
    {
        return (minVersion)Enum.valueOf(com/facebook/widget/FacebookDialog$MessageDialogFeature, s);
    }

    public static minVersion[] values()
    {
        minVersion aminversion[] = ENUM$VALUES;
        int i = aminversion.length;
        minVersion aminversion1[] = new ENUM.VALUES[i];
        System.arraycopy(aminversion, 0, aminversion1, 0, i);
        return aminversion1;
    }

    public String getAction()
    {
        return "com.facebook.platform.action.request.MESSAGE_DIALOG";
    }

    public int getMinVersion()
    {
        return minVersion;
    }

    static 
    {
        MESSAGE_DIALOG = new <init>("MESSAGE_DIALOG", 0, 0x13350ac);
        PHOTOS = new <init>("PHOTOS", 1, 0x1335124);
        minVersion aminversion[] = new <init>[2];
        aminversion[0] = MESSAGE_DIALOG;
        aminversion[1] = PHOTOS;
        ENUM$VALUES = aminversion;
    }

    private (String s, int i, int j)
    {
        super(s, i);
        minVersion = j;
    }
}
