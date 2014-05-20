// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import com.chartboost.sdk.impl.k;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk:
//            d

class 
    implements com.chartboost.sdk.impl.
{

    final d a;
    private final tboost.CBAPIResponseCallback b;

    public void a(k k, String s)
    {
        if (b != null)
        {
            b.onFailure(s);
        }
    }

    public void a(JSONObject jsonobject, k k)
    {
        if (b != null)
        {
            b.onSuccess(jsonobject);
        }
    }

    lback(d d1, tboost.CBAPIResponseCallback cbapiresponsecallback)
    {
        a = d1;
        b = cbapiresponsecallback;
        super();
    }
}
