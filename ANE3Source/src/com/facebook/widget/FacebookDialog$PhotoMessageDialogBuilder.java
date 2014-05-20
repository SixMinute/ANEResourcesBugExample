// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.support.v4.app.Fragment;
import java.util.Collection;
import java.util.EnumSet;
import java.util.List;

// Referenced classes of package com.facebook.widget:
//            FacebookDialog

public static class it> extends it>
{

    public volatile it> addPhotoFiles(Collection collection)
    {
        return super.PhotoFiles(collection);
    }

    public volatile PhotoFiles addPhotos(Collection collection)
    {
        return super.Photos(collection);
    }

    public volatile FacebookDialog build()
    {
        return super.ld();
    }

    public volatile boolean canPresent()
    {
        return super.Present();
    }

    EnumSet getDialogFeatures()
    {
        return EnumSet.of(GE_DIALOG, S);
    }

    int getMaximumNumberOfPhotos()
    {
        return MAXIMUM_PHOTO_COUNT;
    }

    public volatile MAXIMUM_PHOTO_COUNT setApplicationName(String s)
    {
        return super.ApplicationName(s);
    }

    public volatile ApplicationName setFragment(Fragment fragment)
    {
        return super.Fragment(fragment);
    }

    public volatile Fragment setFriends(List list)
    {
        return super.Friends(list);
    }

    public volatile Friends setPlace(String s)
    {
        return super.Place(s);
    }

    public volatile Place setRequestCode(int i)
    {
        return super.RequestCode(i);
    }

    public (Activity activity)
    {
        super(activity);
    }
}
