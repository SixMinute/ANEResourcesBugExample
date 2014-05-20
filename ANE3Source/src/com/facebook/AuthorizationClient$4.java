// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import java.util.ArrayList;

// Referenced classes of package com.facebook:
//            AuthorizationClient, Session, Response

class val.tokenPermissions
    implements val.tokenPermissions
{

    final AuthorizationClient this$0;
    private final ArrayList val$tokenPermissions;

    public void onCompleted(Response response)
    {
        java.util.List list;
        try
        {
            list = Session.handlePermissionResponse(null, response);
        }
        catch (Exception exception)
        {
            return;
        }
        if (list == null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        val$tokenPermissions.addAll(list);
    }

    ()
    {
        this$0 = final_authorizationclient;
        val$tokenPermissions = ArrayList.this;
        super();
    }
}
