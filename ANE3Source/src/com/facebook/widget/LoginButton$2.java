// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import com.facebook.FacebookRequestError;
import com.facebook.Response;
import com.facebook.Session;
import com.facebook.internal.SessionTracker;
import com.facebook.model.GraphUser;

// Referenced classes of package com.facebook.widget:
//            LoginButton

class val.currentSession
    implements com.facebook.serCallback
{

    final LoginButton this$0;
    private final Session val$currentSession;

    public void onCompleted(GraphUser graphuser, Response response)
    {
        if (val$currentSession == LoginButton.access$1(LoginButton.this).getOpenSession())
        {
            LoginButton.access$12(LoginButton.this, graphuser);
            if (LoginButton.access$13(LoginButton.this) != null)
            {
                LoginButton.access$13(LoginButton.this).onUserInfoFetched(LoginButton.access$3(LoginButton.this));
            }
        }
        if (response.getError() != null)
        {
            handleError(response.getError().getException());
        }
    }

    erInfoChangedCallback()
    {
        this$0 = final_loginbutton;
        val$currentSession = Session.this;
        super();
    }
}
