// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.res.Configuration;

// Referenced classes of package com.adobe.air:
//            AndroidCamera

class this._cls0
    implements rapper.StateChangeCallback
{

    final AndroidCamera this$0;

    public void onActivityStateChanged(rapper.ActivityState activitystate)
    {
        if (AndroidCamera.access$000(AndroidCamera.this) != 0L && AndroidCamera.access$100(AndroidCamera.this))
        {
            if (activitystate == rapper.ActivityState.RESUMED && AndroidCamera.access$700(AndroidCamera.this))
            {
                AndroidCamera.access$800(AndroidCamera.this, AndroidCamera.access$000(AndroidCamera.this));
            } else
            if (activitystate == rapper.ActivityState.PAUSED)
            {
                AndroidCamera.access$900(AndroidCamera.this, AndroidCamera.access$000(AndroidCamera.this));
                return;
            }
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
    }

    ion()
    {
        this$0 = AndroidCamera.this;
        super();
    }
}
