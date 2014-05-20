// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.chartboost.sdk.Chartboost;
import java.util.List;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.impl:
//            a

class b
    implements com.chartboost.sdk..a._cls3
{

    final a a;
    private final a b;

    public void a(String s, JSONObject jsonobject)
    {
        String s1;
        String s2;
        Intent intent;
        int i;
        if (s != null)
        {
            s1 = s;
        } else
        {
            s1 = b.a.optString("link");
        }
        s2 = b.a.optString("deep-link");
        if (s2 == null || s2.equals(""))
        {
            break MISSING_BLOCK_LABEL_82;
        }
        intent = new Intent("android.intent.action.VIEW", Uri.parse(s2));
        i = Chartboost.sharedChartboost().getContext().getPackageManager().queryIntentActivities(intent, 0x10000).size();
        if (i > 0)
        {
            s1 = s2;
        }
_L2:
        b.g.a(b, s1, jsonobject);
        return;
        Exception exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    nager(a a1, a a2)
    {
        a = a1;
        b = a2;
        super();
    }
}
