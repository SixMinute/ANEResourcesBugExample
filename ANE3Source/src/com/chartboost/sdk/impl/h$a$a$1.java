// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.view.View;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.impl:
//            h

class b
    implements android.view.lickListener
{

    final b a;
    private final JSONObject b;

    public void onClick(View view)
    {
        String s = b.optString("deep-link");
        if (s == null || s.equals(""))
        {
            s = b.optString("link");
        }
        if (b(b(a)).b != null)
        {
            a(a(a)).b.(s, b);
        }
    }

    r(r r, JSONObject jsonobject)
    {
        a = r;
        b = jsonobject;
        super();
    }
}
