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
        ANE1Extension.DLog("test resource");
        ArrayList arraylist;
        Session session;
        try
        {
            ANE1Extension.DLog((new StringBuilder()).append("id: '").append(com.facebook.android._activity_layout).append("'").toString());
        }
        catch (Exception exception)
        {
            ANE1Extension.DLog((new StringBuilder()).append(exception).append(" - ").append(exception.getLocalizedMessage()).toString());
        }
        ANE1Extension.DLog("test resource over");
        if (ANE1ExtensionContext.access$000() == null)
        {
            nStatusCallback _tmp = ANE1ExtensionContext.access$002(new nStatusCallback());
        }
        arraylist = new ArrayList();
        Session.setActiveSession(null);
        session = (new com.facebook.SessionStatusCallback(frecontext.getActivity())).ionId("245225925648849").ionId();
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
