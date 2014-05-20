// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.Context;
import android.view.OrientationEventListener;

// Referenced classes of package com.adobe.air:
//            OrientationManager, AndroidActivityWrapper

class er extends OrientationEventListener
{

    final OrientationManager this$0;

    public void onOrientationChanged(int i)
    {
        int j = rientation.UNKNOWN.ordinal();
        if (i == -1)
        {
            OrientationManager.access$002(OrientationManager.this, rientation.UNKNOWN.ordinal());
            j = rientation.UNKNOWN.ordinal();
        } else
        if (i >= 45 && i < 135)
        {
            OrientationManager.access$002(OrientationManager.this, rientation.ROTATED_RIGHT.ordinal());
            j = rientation.ROTATED_LEFT.ordinal();
        } else
        if (i >= 135 && i < 225)
        {
            OrientationManager.access$002(OrientationManager.this, rientation.UPSIDE_DOWN.ordinal());
            j = rientation.UPSIDE_DOWN.ordinal();
        } else
        if (i >= 225 && i < 315)
        {
            OrientationManager.access$002(OrientationManager.this, rientation.ROTATED_LEFT.ordinal());
            j = rientation.ROTATED_RIGHT.ordinal();
        } else
        if (i >= 0 && i < 45 || i >= 315 && i < 360)
        {
            OrientationManager.access$002(OrientationManager.this, rientation.DEFAULT.ordinal());
            j = rientation.DEFAULT.ordinal();
        }
        if (AndroidActivityWrapper.GetAndroidActivityWrapper().isApplicationLaunched() && OrientationManager.access$100(OrientationManager.this) && OrientationManager.access$200(OrientationManager.this) != OrientationManager.access$000(OrientationManager.this) && j != rientation.UNKNOWN.ordinal() && OrientationManager.access$300(OrientationManager.this) != j)
        {
            int k = android.provider.t(OrientationManager.access$400(OrientationManager.this).getContentResolver(), "accelerometer_rotation", 0);
            if (OrientationManager.access$400(OrientationManager.this) != null && k != 0 && OrientationManager.access$500(OrientationManager.this))
            {
                if (nativeOrientationChanging(OrientationManager.access$300(OrientationManager.this), j))
                {
                    setNearestOrientation(OrientationManager.access$300(OrientationManager.this));
                } else
                if (OrientationManager.access$600(OrientationManager.this))
                {
                    nativeOrientationChanged(OrientationManager.access$300(OrientationManager.this), j);
                    OrientationManager.access$302(OrientationManager.this, j);
                }
                OrientationManager.access$702(OrientationManager.this, OrientationManager.access$300(OrientationManager.this));
            }
        } else
        if (OrientationManager.access$100(OrientationManager.this) && OrientationManager.access$800(OrientationManager.this) && OrientationManager.access$200(OrientationManager.this) != OrientationManager.access$000(OrientationManager.this) && OrientationManager.access$200(OrientationManager.this) != rientation.UNKNOWN.ordinal() && OrientationManager.access$000(OrientationManager.this) != rientation.UNKNOWN.ordinal() && OrientationManager.access$900(OrientationManager.this) < 3.3F)
        {
            if (OrientationManager.access$400(OrientationManager.this) != null)
            {
                OrientationManager.access$400(OrientationManager.this).setRequestedOrientation(2);
            }
            OrientationManager.access$802(OrientationManager.this, false);
        }
        OrientationManager.access$202(OrientationManager.this, OrientationManager.access$000(OrientationManager.this));
    }

    r(Context context, int i)
    {
        this$0 = OrientationManager.this;
        super(context, i);
    }
}
