// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.android;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.facebook.LegacyHelper;
import java.lang.ref.WeakReference;

// Referenced classes of package com.facebook.android:
//            Facebook, FacebookError

private static class connectionWeakReference extends Handler
{

    WeakReference connectionWeakReference;
    WeakReference facebookWeakReference;

    public void handleMessage(Message message)
    {
        Facebook facebook;
        connectionWeakReference connectionweakreference;
        String s;
        long l;
        facebook = (Facebook)facebookWeakReference.get();
        connectionweakreference = (facebookWeakReference)connectionWeakReference.get();
        if (facebook == null || connectionweakreference == null)
        {
            return;
        }
        s = message.getData().getString("access_token");
        l = 1000L * message.getData().getLong("expires_in");
        if (s == null) goto _L2; else goto _L1
_L1:
        facebook.setAccessToken(s);
        facebook.setAccessExpires(l);
        com.facebook.Session session = Facebook.access$1(facebook);
        if (session != null)
        {
            LegacyHelper.extendTokenCompleted(session, message.getData());
        }
        if (connectionweakreference.serviceListener != null)
        {
            Bundle bundle = (Bundle)message.getData().clone();
            bundle.putLong("expires_in", l);
            connectionweakreference.serviceListener.serviceListener(bundle);
        }
_L4:
        connectionweakreference.applicationsContext.unbindService(connectionweakreference);
        return;
_L2:
        if (connectionweakreference.serviceListener != null)
        {
            String s1 = message.getData().getString("error");
            if (message.getData().containsKey("error_code"))
            {
                int i = message.getData().getInt("error_code");
                connectionweakreference.serviceListener.r(new FacebookError(s1, null, i));
            } else
            {
                connectionWeakReference connectionweakreference1 = connectionweakreference.serviceListener;
                String s2;
                if (s1 != null)
                {
                    s2 = s1;
                } else
                {
                    s2 = "Unknown service error";
                }
                connectionweakreference1.serviceListener(new Error(s2));
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    A(Facebook facebook, A a)
    {
        facebookWeakReference = new WeakReference(facebook);
        connectionWeakReference = new WeakReference(a);
    }
}
