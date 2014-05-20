// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import com.facebook.model.GraphUser;
import java.util.ArrayList;

// Referenced classes of package com.facebook:
//            AuthorizationClient, Response

class val.fbids
    implements val.fbids
{

    final AuthorizationClient this$0;
    private final ArrayList val$fbids;

    public void onCompleted(Response response)
    {
        GraphUser graphuser;
        try
        {
            graphuser = (GraphUser)response.getGraphObjectAs(com/facebook/model/GraphUser);
        }
        catch (Exception exception)
        {
            return;
        }
        if (graphuser == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        val$fbids.add(graphuser.getId());
    }

    ()
    {
        this$0 = final_authorizationclient;
        val$fbids = ArrayList.this;
        super();
    }
}
