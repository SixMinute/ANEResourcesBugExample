// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.os.Bundle;
import android.widget.TextView;
import com.chartboost.sdk.Libraries.d;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.impl:
//            c, g, f, o

public class e extends c
    implements h.b
{

    private static int c = 50;
    private static int d = 10;
    public f b;
    private g e;
    private TextView f;

    public e(Context context)
    {
        super(context);
        e = new g(context);
        b = new f(context);
        f = new TextView(context);
        f.setTypeface(null, 1);
        f.setTextSize(2, 16F);
        f.setShadowLayer(1.0F, 1.0F, 1.0F, -1);
        f.setBackgroundColor(0);
        f.setTextColor(0xff000000);
        f.setEllipsize(android.text.TextUtils.TruncateAt.END);
        setBackgroundColor(0xffcccccc);
        setFocusable(false);
        addView(e);
        addView(f);
        addView(b);
    }

    public int a()
    {
        return com.chartboost.sdk.Libraries.d.a(c + 2 * d, getContext());
    }

    public void a(JSONObject jsonobject, int i)
    {
        f.setText(jsonobject.optString("name", "Unknown App"));
        String s = jsonobject.optString("deep-text");
        JSONObject jsonobject1;
        if (s != null && !s.equals(""))
        {
            b.setText(s);
        } else
        {
            String s1 = jsonobject.optString("text", "VIEW");
            b.setText(s1);
        }
        jsonobject1 = jsonobject.optJSONObject("assets");
        if (jsonobject1 != null)
        {
            JSONObject jsonobject2 = jsonobject1.optJSONObject("icon");
            if (jsonobject2 != null)
            {
                Bundle bundle = new Bundle();
                bundle.putInt("index", i);
                o.a().a(jsonobject2.optString("url"), jsonobject2.optString("checksum"), null, e, bundle);
            }
        }
        b();
    }

    protected void b()
    {
        int i = com.chartboost.sdk.Libraries.d.a(c, getContext());
        android.widget.LinearLayout.LayoutParams layoutparams = new android.widget.LinearLayout.LayoutParams(i, i);
        android.widget.LinearLayout.LayoutParams layoutparams1 = new android.widget.LinearLayout.LayoutParams(-2, -1);
        android.widget.LinearLayout.LayoutParams layoutparams2 = new android.widget.LinearLayout.LayoutParams(-2, -2);
        int j = com.chartboost.sdk.Libraries.d.a(d, getContext());
        layoutparams.setMargins(j, j, j, j);
        layoutparams1.setMargins(j, j, j, j);
        layoutparams2.setMargins(j, j, j, j);
        layoutparams1.weight = 1.0F;
        f.setGravity(16);
        layoutparams2.gravity = 16;
        e.setLayoutParams(layoutparams);
        e.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
        f.setLayoutParams(layoutparams1);
        b.setLayoutParams(layoutparams2);
    }

}
