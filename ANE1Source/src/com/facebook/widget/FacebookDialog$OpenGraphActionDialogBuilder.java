// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.support.v4.app.Fragment;
import com.facebook.model.OpenGraphAction;
import java.util.EnumSet;
import java.util.List;

// Referenced classes of package com.facebook.widget:
//            FacebookDialog

public static class nit> extends nit>
{

    public volatile FacebookDialog build()
    {
        return super.ild();
    }

    public volatile boolean canPresent()
    {
        return super.nPresent();
    }

    EnumSet getDialogFeatures()
    {
        return EnumSet.of(OG_ACTION_DIALOG);
    }

    public volatile OG_ACTION_DIALOG setApplicationName(String s)
    {
        return super.tApplicationName(s);
    }

    public volatile tApplicationName setDataErrorsFatal(boolean flag)
    {
        return super.tDataErrorsFatal(flag);
    }

    public volatile tDataErrorsFatal setFragment(Fragment fragment)
    {
        return super.tFragment(fragment);
    }

    public volatile tFragment setImageAttachmentFilesForAction(List list)
    {
        return super.tImageAttachmentFilesForAction(list);
    }

    public volatile tImageAttachmentFilesForAction setImageAttachmentFilesForAction(List list, boolean flag)
    {
        return super.tImageAttachmentFilesForAction(list, flag);
    }

    public volatile tImageAttachmentFilesForAction setImageAttachmentFilesForObject(String s, List list)
    {
        return super.tImageAttachmentFilesForObject(s, list);
    }

    public volatile tImageAttachmentFilesForObject setImageAttachmentFilesForObject(String s, List list, boolean flag)
    {
        return super.tImageAttachmentFilesForObject(s, list, flag);
    }

    public volatile tImageAttachmentFilesForObject setImageAttachmentsForAction(List list)
    {
        return super.tImageAttachmentsForAction(list);
    }

    public volatile tImageAttachmentsForAction setImageAttachmentsForAction(List list, boolean flag)
    {
        return super.tImageAttachmentsForAction(list, flag);
    }

    public volatile tImageAttachmentsForAction setImageAttachmentsForObject(String s, List list)
    {
        return super.tImageAttachmentsForObject(s, list);
    }

    public volatile tImageAttachmentsForObject setImageAttachmentsForObject(String s, List list, boolean flag)
    {
        return super.tImageAttachmentsForObject(s, list, flag);
    }

    public volatile tImageAttachmentsForObject setRequestCode(int i)
    {
        return super.tRequestCode(i);
    }

    public (Activity activity, OpenGraphAction opengraphaction, String s)
    {
        super(activity, opengraphaction, s);
    }

    public nit>(Activity activity, OpenGraphAction opengraphaction, String s, String s1)
    {
        super(activity, opengraphaction, s, s1);
    }
}
