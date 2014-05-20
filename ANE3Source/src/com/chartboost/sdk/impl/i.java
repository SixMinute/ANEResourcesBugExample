// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.chartboost.sdk.Libraries.d;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.impl:
//            c

public class i extends c
    implements h.b
{

    private WebView b;

    public i(Context context)
    {
        super(context);
        b = new WebView(context);
        addView(b, new android.widget.LinearLayout.LayoutParams(-1, -1));
        b.setBackgroundColor(0);
        b.setWebViewClient(new WebViewClient() {

            final i a;

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                if (s == null)
                {
                    return false;
                }
                if (s.contains("chartboost") && s.contains("click") && a.a != null)
                {
                    a.a.onClick(a);
                }
                return true;
            }

            
            {
                a = i.this;
                super();
            }
        });
    }

    public int a()
    {
        return d.a(100, getContext());
    }

    public void a(JSONObject jsonobject, int j)
    {
        String s;
        s = jsonobject.optString("html");
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_26;
        }
        b.loadDataWithBaseURL("file:///android_res/", s, "text/html", "UTF-8", null);
        return;
        Exception exception;
        exception;
    }
}
