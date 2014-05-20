// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import com.facebook.FacebookException;
import com.facebook.NativeAppCallAttachmentStore;
import com.facebook.NativeAppCallContentProvider;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

// Referenced classes of package com.facebook.widget:
//            FacebookDialog

static abstract class plicationId
{

    protected final Activity activity;
    protected final all appCall = new all(64207);
    protected final String applicationId;
    protected String applicationName;
    protected Fragment fragment;
    protected HashMap imageAttachmentFiles;
    protected HashMap imageAttachments;

    protected plicationId addImageAttachment(String s, Bitmap bitmap)
    {
        imageAttachments.put(s, bitmap);
        return this;
    }

    protected imageAttachments addImageAttachment(String s, File file)
    {
        imageAttachmentFiles.put(s, file);
        return this;
    }

    protected List addImageAttachmentFiles(Collection collection)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return arraylist;
            }
            File file = (File)iterator.next();
            String s = UUID.randomUUID().toString();
            addImageAttachment(s, file);
            arraylist.add(NativeAppCallContentProvider.getAttachmentUrl(applicationId, appCall.getCallId(), s));
        } while (true);
    }

    protected List addImageAttachments(Collection collection)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return arraylist;
            }
            Bitmap bitmap = (Bitmap)iterator.next();
            String s = UUID.randomUUID().toString();
            addImageAttachment(s, bitmap);
            arraylist.add(NativeAppCallContentProvider.getAttachmentUrl(applicationId, appCall.getCallId(), s));
        } while (true);
    }

    public FacebookDialog build()
    {
        validate();
        Bundle bundle = new Bundle();
        putExtra(bundle, "com.facebook.platform.extra.APPLICATION_ID", applicationId);
        putExtra(bundle, "com.facebook.platform.extra.APPLICATION_NAME", applicationName);
        Bundle bundle1 = setBundleExtras(bundle);
        String s = FacebookDialog.access$0(getDialogFeatures());
        int i = FacebookDialog.access$2(activity, s, FacebookDialog.access$1(getDialogFeatures()));
        android.content.Intent intent = NativeProtocol.createPlatformActivityIntent(activity, s, i, bundle1);
        if (intent == null)
        {
            FacebookDialog.access$4(activity, fragment, FacebookDialog.access$3(s, bundle1.containsKey("com.facebook.platform.extra.PHOTOS")), "Failed");
            throw new FacebookException("Unable to create Intent; this likely means the Facebook app is not installed.");
        } else
        {
            all.access._mth1(appCall, intent);
            return new FacebookDialog(activity, fragment, appCall, getOnPresentCallback(), null);
        }
    }

    public boolean canPresent()
    {
        return FacebookDialog.access$6(activity, getDialogFeatures());
    }

    abstract EnumSet getDialogFeatures();

    List getImageAttachmentNames()
    {
        return new ArrayList(imageAttachments.keySet());
    }

    tCallback getOnPresentCallback()
    {
        return new FacebookDialog.OnPresentCallback() {

            final FacebookDialog.Builder this$1;

            public void onPresent(Context context)
                throws Exception
            {
                if (imageAttachments != null && imageAttachments.size() > 0)
                {
                    FacebookDialog.access$7().addAttachmentsForCall(context, appCall.getCallId(), imageAttachments);
                }
                if (imageAttachmentFiles != null && imageAttachmentFiles.size() > 0)
                {
                    FacebookDialog.access$7().addAttachmentFilesForCall(context, appCall.getCallId(), imageAttachmentFiles);
                }
            }

            
            {
                this$1 = FacebookDialog.Builder.this;
                super();
            }
        };
    }

    void putExtra(Bundle bundle, String s, String s1)
    {
        if (s1 != null)
        {
            bundle.putString(s, s1);
        }
    }

    public  setApplicationName(String s)
    {
        applicationName = s;
        return this;
    }

    abstract Bundle setBundleExtras(Bundle bundle);

    public applicationName setFragment(Fragment fragment1)
    {
        fragment = fragment1;
        return this;
    }

    public fragment setRequestCode(int i)
    {
        all.access._mth0(appCall, i);
        return this;
    }

    void validate()
    {
    }

    _cls1.this._cls1(Activity activity1)
    {
        imageAttachments = new HashMap();
        imageAttachmentFiles = new HashMap();
        Validate.notNull(activity1, "activity");
        activity = activity1;
        applicationId = Utility.getMetadataApplicationId(activity1);
    }
}
