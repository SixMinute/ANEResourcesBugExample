// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.support.v4.app.Fragment;
import java.util.EnumSet;
import java.util.List;

// Referenced classes of package com.facebook.widget:
//            FacebookDialog

public static class e extends e
{

    public volatile FacebookDialog build()
    {
        return super.build();
    }

    public volatile boolean canPresent()
    {
        return super.canPresent();
    }

    EnumSet getDialogFeatures()
    {
        return EnumSet.of(MESSAGE_DIALOG);
    }

    public volatile MESSAGE_DIALOG setApplicationName(String s)
    {
        return super.setApplicationName(s);
    }

    public volatile e setCaption(String s)
    {
        return super.setCaption(s);
    }

    public volatile e setDataErrorsFatal(boolean flag)
    {
        return super.setDataErrorsFatal(flag);
    }

    public volatile e setDescription(String s)
    {
        return super.setDescription(s);
    }

    public volatile e.setDescription setFragment(Fragment fragment)
    {
        return super.setFragment(fragment);
    }

    public volatile e setFriends(List list)
    {
        return super.setFriends(list);
    }

    public volatile e setLink(String s)
    {
        return super.setLink(s);
    }

    public volatile e setName(String s)
    {
        return super.setName(s);
    }

    public volatile e setPicture(String s)
    {
        return super.setPicture(s);
    }

    public volatile e setPlace(String s)
    {
        return super.setPlace(s);
    }

    public volatile e setRef(String s)
    {
        return super.setRef(s);
    }

    public volatile e.setRef setRequestCode(int i)
    {
        return super.setRequestCode(i);
    }

    public e(Activity activity)
    {
        super(activity);
    }
}
