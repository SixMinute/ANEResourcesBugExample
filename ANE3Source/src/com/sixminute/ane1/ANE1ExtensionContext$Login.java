// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sixminute.ane1;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.facebook.Session;
import java.util.ArrayList;

// Referenced classes of package com.sixminute.ane1:
//            ANE1Extension, ANE1ExtensionContext

public static class nStatusCallback
    implements FREFunction
{

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        ANE1Extension.DLog("Login.call");
        if (ANE1ExtensionContext.access$000() == null)
        {
            nStatusCallback _tmp = ANE1ExtensionContext.access$002(new nStatusCallback());
        }
        ArrayList arraylist = new ArrayList();
        Session.setActiveSession(null);
        Session session = (new com.facebook.SessionStatusCallback(frecontext.getActivity())).ionId("245225925648849").ionId();
        Session.setActiveSession(session);
        ANE1Extension.DLog((new StringBuilder()).append("open: ").append(session.isOpened()).append(", closed: ").append(session.isClosed()).toString());
        if (!session.isOpened() && !session.isClosed())
        {
            session.openForRead((new com.facebook.ionId(frecontext.getActivity())).back(ANE1ExtensionContext.access$000()).issions(arraylist));
        } else
        if (!session.isClosed())
        {
            Session.openActiveSession(frecontext.getActivity(), true, ANE1ExtensionContext.access$000());
            return null;
        }
        return null;
    }

    public nStatusCallback()
    {
    }
}
