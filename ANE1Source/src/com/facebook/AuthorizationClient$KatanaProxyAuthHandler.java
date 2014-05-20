// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Intent;
import android.os.Bundle;
import com.facebook.internal.NativeProtocol;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import java.util.Collection;

// Referenced classes of package com.facebook:
//            AuthorizationClient, AccessTokenSource, AccessToken

class > extends >
{

    private static final long serialVersionUID = 1L;
    private String applicationId;
    final AuthorizationClient this$0;

    private > handleResultOk(Intent intent)
    {
        Bundle bundle = intent.getExtras();
        String s = bundle.getString("error");
        if (s == null)
        {
            s = bundle.getString("error_type");
        }
        String s1 = bundle.getString("error_code");
        String s2 = bundle.getString("error_message");
        if (s2 == null)
        {
            s2 = bundle.getString("error_description");
        }
        String s3 = bundle.getString("e2e");
        if (!Utility.isNullOrEmpty(s3))
        {
            AuthorizationClient.access$1(AuthorizationClient.this, applicationId, s3);
        }
        if (s == null && s1 == null && s2 == null)
        {
            AccessToken accesstoken = AccessToken.createFromWebBundle(pendingRequest.tPermissions(), bundle, AccessTokenSource.FACEBOOK_APPLICATION_WEB);
            return t(pendingRequest, accesstoken);
        }
        if (ServerProtocol.errorsProxyAuthDisabled.contains(s))
        {
            return null;
        }
        if (ServerProtocol.errorsUserCanceled.contains(s))
        {
            return lt(pendingRequest, null);
        } else
        {
            return t(pendingRequest, s, s2, s1);
        }
    }

    String getNameForLogging()
    {
        return "katana_proxy_auth";
    }

    boolean onActivityResult(int i, int j, Intent intent)
    {
        t t;
        if (intent == null)
        {
            t = lt(pendingRequest, "Operation canceled");
        } else
        if (j == 0)
        {
            t = lt(pendingRequest, intent.getStringExtra("error"));
        } else
        if (j != -1)
        {
            t = t(pendingRequest, "Unexpected resultCode from authorization.", null);
        } else
        {
            t = handleResultOk(intent);
        }
        if (t != null)
        {
            completeAndValidate(t);
        } else
        {
            tryNextHandler();
        }
        return true;
    }

    boolean tryAuthorize(handleResultOk handleresultok)
    {
        applicationId = handleresultok.tApplicationId();
        String s = AuthorizationClient.access$0();
        Intent intent = NativeProtocol.createProxyAuthIntent(context, handleresultok.tApplicationId(), handleresultok.tPermissions(), s, handleresultok.Rerequest());
        addLoggingExtra("e2e", s);
        return tryIntent(intent, handleresultok.tRequestCode());
    }

    ()
    {
        this$0 = AuthorizationClient.this;
        super(AuthorizationClient.this);
    }
}
