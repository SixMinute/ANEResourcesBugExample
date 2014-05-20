// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.util.Log;
import com.chartboost.sdk.Libraries.d;
import com.chartboost.sdk.impl.k;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost

class t> extends com.chartboost.sdk.impl.
{

    final Chartboost a;

    public void a(JSONObject jsonobject, k k)
    {
        if (d.a(a.getContext()))
        {
            String s = jsonobject.optString("latest-sdk-version");
            if (s != null && !s.equals("") && !s.equals("3.4.0"))
            {
                Log.w("Chartboost", String.format("WARNING: you have an outdated version of the SDK (Current: %s, Latest: %s). Get the latest version at chartboost.com/support/sdk#android", new Object[] {
                    s, "3.4.0"
                }));
            }
        }
    }

    (Chartboost chartboost)
    {
        a = chartboost;
        super();
    }
}
