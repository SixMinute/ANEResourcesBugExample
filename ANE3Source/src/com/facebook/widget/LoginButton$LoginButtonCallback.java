// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import com.facebook.Session;
import com.facebook.SessionState;

// Referenced classes of package com.facebook.widget:
//            LoginButton

private class <init>
    implements com.facebook.llback
{

    final LoginButton this$0;

    public void call(Session session, SessionState sessionstate, Exception exception)
    {
        LoginButton.access$9(LoginButton.this);
        LoginButton.access$10(LoginButton.this);
        if (s.access._mth4(LoginButton.access$6(LoginButton.this)) != null)
        {
            s.access._mth4(LoginButton.access$6(LoginButton.this))._mth0(session, sessionstate, exception);
        } else
        if (exception != null)
        {
            handleError(exception);
            return;
        }
    }

    private s()
    {
        this$0 = LoginButton.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
