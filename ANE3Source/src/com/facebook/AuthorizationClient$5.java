// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import java.util.ArrayList;

// Referenced classes of package com.facebook:
//            AuthorizationClient, AccessToken, RequestBatch

class val.tokenPermissions
    implements val.tokenPermissions
{

    final AuthorizationClient this$0;
    private final ArrayList val$fbids;
    private final sult val$pendingResult;
    private final ArrayList val$tokenPermissions;

    public void onBatchCompleted(RequestBatch requestbatch)
    {
        if (val$fbids.size() != 2 || val$fbids.get(0) == null || val$fbids.get(1) == null || !((String)val$fbids.get(0)).equals(val$fbids.get(1))) goto _L2; else goto _L1
_L1:
        sult sult1;
        AccessToken accesstoken = AccessToken.createFromTokenWithRefreshedPermissions(val$pendingResult.token, val$tokenPermissions);
        sult1 = com.facebook.sult.createTokenResult(pendingRequest, accesstoken);
_L3:
        complete(sult1);
        AuthorizationClient.access$3(AuthorizationClient.this);
        return;
_L2:
        sult sult = com.facebook.sult.createErrorResult(pendingRequest, "User logged in as different Facebook user.", null);
        sult1 = sult;
          goto _L3
        Exception exception1;
        exception1;
        complete(com.facebook.sult.createErrorResult(pendingRequest, "Caught exception", exception1.getMessage()));
        AuthorizationClient.access$3(AuthorizationClient.this);
        return;
        Exception exception;
        exception;
        AuthorizationClient.access$3(AuthorizationClient.this);
        throw exception;
    }

    sult()
    {
        this$0 = final_authorizationclient;
        val$fbids = arraylist;
        val$pendingResult = sult;
        val$tokenPermissions = ArrayList.this;
        super();
    }
}
