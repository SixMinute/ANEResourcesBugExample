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
    public static final ENUM.VALUES PHOTOS;
    public static final ENUM.VALUES SHARE_DIALOG;
    private int minVersion;

    public static minVersion valueOf(String s)
    {
        return (minVersion)Enum.valueOf(com/facebook/widget/FacebookDialog$ShareDialogFeature, s);
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
        return "com.facebook.platform.action.request.FEED_DIALOG";
    }

    public int getMinVersion()
    {
        return minVersion;
    }

    static 
    {
        SHARE_DIALOG = new <init>("SHARE_DIALOG", 0, 0x1332b3a);
        PHOTOS = new <init>("PHOTOS", 1, 0x13350ac);
        minVersion aminversion[] = new <init>[2];
        aminversion[0] = SHARE_DIALOG;
        aminversion[1] = PHOTOS;
        ENUM$VALUES = aminversion;
    }

    private (String s, int i, int j)
    {
        super(s, i);
        minVersion = j;
    }
}
