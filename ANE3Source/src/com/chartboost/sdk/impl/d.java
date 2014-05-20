// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.os.Bundle;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.CBOrientation;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.impl:
//            c, g, o

public class d extends c
    implements h.b
{

    private static int b = 100;
    private static int c = 5;
    private g d;

    public d(Context context)
    {
        super(context);
        d = new g(context);
        addView(d, new android.widget.LinearLayout.LayoutParams(-1, -1));
    }

    public int a()
    {
        return com.chartboost.sdk.Libraries.d.a(b + 2 * c, getContext());
    }

    public void a(JSONObject jsonobject, int i)
    {
        boolean flag = Chartboost.sharedChartboost().getOrientation().isPortrait();
        JSONObject jsonobject1 = jsonobject.optJSONObject("assets");
        if (jsonobject1 != null)
        {
            String s;
            JSONObject jsonobject2;
            if (flag)
            {
                s = "portrait";
            } else
            {
                s = "landscape";
            }
            jsonobject2 = jsonobject1.optJSONObject(s);
            if (jsonobject2 != null)
            {
                Bundle bundle = new Bundle();
                bundle.putInt("index", i);
                o.a().a(jsonobject2.optString("url"), jsonobject2.optString("checksum"), null, d, bundle);
            }
        }
    }

}
