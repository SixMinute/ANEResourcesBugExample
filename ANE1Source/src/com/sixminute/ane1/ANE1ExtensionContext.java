// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sixminute.ane1;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.facebook.Session;
import com.facebook.SessionState;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.sixminute.ane1:
//            ANE1Extension

public class ANE1ExtensionContext extends FREContext
{
    public static class Login
        implements FREFunction
    {

        public FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            ANE1Extension.DLog("Login.call");
            if (ANE1ExtensionContext.sCallback == null)
            {
                ANE1ExtensionContext.sCallback = new SessionStatusCallback();
            }
            ArrayList arraylist = new ArrayList();
            Session.setActiveSession(null);
            Session session = (new com.facebook.Session.Builder(frecontext.getActivity())).setApplicationId("245225925648849").build();
            Session.setActiveSession(session);
            ANE1Extension.DLog((new StringBuilder()).append("open: ").append(session.isOpened()).append(", closed: ").append(session.isClosed()).toString());
            if (!session.isOpened() && !session.isClosed())
            {
                session.openForRead((new com.facebook.Session.OpenRequest(frecontext.getActivity())).setCallback(ANE1ExtensionContext.sCallback).setPermissions(arraylist));
            } else
            if (!session.isClosed())
            {
                Session.openActiveSession(frecontext.getActivity(), true, ANE1ExtensionContext.sCallback);
                return null;
            }
            return null;
        }

        public Login()
        {
        }
    }

    public static final class SessionStatusCallback
        implements com.facebook.Session.StatusCallback
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

        public SessionStatusCallback()
        {
        }
    }


    public static final String LOGIN = "login";
    private static SessionStatusCallback sCallback;

    public ANE1ExtensionContext()
    {
        ANE1Extension.DLog("FREContext<constructor>");
    }

    public void dispose()
    {
        ANE1Extension.DLog("FREContext.dispose");
    }

    public Map getFunctions()
    {
        ANE1Extension.DLog("FREContext.getFunctions");
        HashMap hashmap = new HashMap();
        hashmap.put("login", new Login());
        return hashmap;
    }



/*
    static SessionStatusCallback access$002(SessionStatusCallback sessionstatuscallback)
    {
        sCallback = sessionstatuscallback;
        return sessionstatuscallback;
    }

*/
}
