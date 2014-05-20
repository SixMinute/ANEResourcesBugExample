// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sixminute.ane1;

import com.facebook.Session;
import com.facebook.SessionState;

// Referenced classes of package com.sixminute.ane1:
//            ANE1Extension, ANE1ExtensionContext

public static final class 
    implements com.facebook.lback
{

    public void call(Session session, SessionState sessionstate, Exception exception)
    {
        ANE1Extension.DLog("---------- ENTERING CheckSession ----------");
        boolean flag = session.isOpened();
        boolean flag1 = session.isClosed();
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("\tsession: ").append(session).append("\n\tstate: ").append(sessionstate).append("\n\tisOpened: ").append(flag).append("\n\tisClosed: ").append(flag1);
        ANE1Extension.DLog(stringbuilder.toString());
        if (flag)
        {
            ANE1Extension.DLog(session.getAccessToken());
        }
    }

    public ()
    {
    }
}
