// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

// Referenced classes of package com.facebook:
//            Session, UiLifecycleHelper

private class <init> extends BroadcastReceiver
{

    final UiLifecycleHelper this$0;

    public void onReceive(Context context, Intent intent)
    {
        if ("com.facebook.sdk.ACTIVE_SESSION_SET".equals(intent.getAction()))
        {
            Session session1 = Session.getActiveSession();
            if (session1 != null && UiLifecycleHelper.access$0(UiLifecycleHelper.this) != null)
            {
                session1.addCallback(UiLifecycleHelper.access$0(UiLifecycleHelper.this));
            }
        } else
        if ("com.facebook.sdk.ACTIVE_SESSION_UNSET".equals(intent.getAction()))
        {
            Session session = Session.getActiveSession();
            if (session != null && UiLifecycleHelper.access$0(UiLifecycleHelper.this) != null)
            {
                session.removeCallback(UiLifecycleHelper.access$0(UiLifecycleHelper.this));
                return;
            }
        }
    }

    private ()
    {
        this$0 = UiLifecycleHelper.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
