// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Intent;

// Referenced classes of package com.adobe.air:
//            AndroidMediaManager, AndroidActivityWrapper

class this._cls0
    implements .ActivityResultCallback
{

    final AndroidMediaManager this$0;

    public void onActivityResult(int i, int j, Intent intent)
    {
        while (i != 2 || AndroidMediaManager.access$000() == 0L || !AndroidMediaManager.access$100(AndroidMediaManager.this)) 
        {
            return;
        }
        onBrowseImageResult(j, intent, AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity());
        unregisterCallbacks();
    }

    ()
    {
        this$0 = AndroidMediaManager.this;
        super();
    }
}
