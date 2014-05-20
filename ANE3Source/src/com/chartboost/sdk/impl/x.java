// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.KeyEvent;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.chartboost.sdk.c;
import java.net.URI;
import java.net.URLDecoder;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.chartboost.sdk.impl:
//            a

public class x extends com.chartboost.sdk.c
{
    public class a extends com.chartboost.sdk.c.b
    {

        public WebView c;
        final x d;

        protected void a(int i, int j)
        {
        }

        public a(Context context, String s)
        {
            d = x.this;
            super(x.this, context);
            setFocusable(false);
            c = new b(context);
            c.setWebViewClient(new c(x.this));
            addView(c);
            c.loadDataWithBaseURL("file:///android_asset/", s, "text/html", "utf-8", null);
        }
    }

    private class b extends WebView
    {

        final x a;

        public boolean onKeyDown(int i, KeyEvent keyevent)
        {
            if ((i == 4 || i == 3) && a.a != null)
            {
                a.a.a();
            }
            return super.onKeyDown(i, keyevent);
        }

        public b(Context context)
        {
            a = x.this;
            super(context);
            setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
            setBackgroundColor(0);
            getSettings().setJavaScriptEnabled(true);
        }
    }

    private class c extends WebViewClient
    {

        final x a;
        private x b;

        public void onPageFinished(WebView webview, String s)
        {
            super.onPageFinished(webview, s);
            if (b != null && b.c != null)
            {
                b.c.a();
            }
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            if (b.d != null)
            {
                b.d.a();
            }
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            String s1;
            String as[];
            Integer integer;
            try
            {
                s1 = (new URI(s)).getScheme();
            }
            catch (Exception exception)
            {
                if (b.a != null)
                {
                    b.a.a();
                }
                return false;
            }
            if (!s1.equals("chartboost")) goto _L2; else goto _L1
_L1:
            String s2;
            as = s.split("/");
            integer = Integer.valueOf(as.length);
            if (integer.intValue() < 3)
            {
                if (b.a != null)
                {
                    b.a.a();
                }
                return false;
            }
            s2 = as[2];
            if (!s2.equals("close")) goto _L4; else goto _L3
_L3:
            if (b.a != null)
            {
                b.a.a();
            }
_L2:
            return true;
_L4:
            if (!s2.equals("link"))
            {
                continue; /* Loop/switch isn't completed */
            }
            if (integer.intValue() < 4)
            {
                if (b.a != null)
                {
                    b.a.a();
                }
                return false;
            }
            String s5 = URLDecoder.decode(as[3], "UTF-8");
            JSONObject jsonobject1;
            if (integer.intValue() <= 4)
            {
                break; /* Loop/switch isn't completed */
            }
            jsonobject1 = new JSONObject(new JSONTokener(URLDecoder.decode(as[4], "UTF-8")));
            String s4;
            JSONObject jsonobject;
            jsonobject = jsonobject1;
            s4 = s5;
_L6:
            if (b.b != null)
            {
                b.b.a(s4, jsonobject);
            }
            if (true) goto _L2; else goto _L5
            Exception exception1;
            exception1;
            String s3 = null;
_L7:
            exception1.printStackTrace();
            s4 = s3;
            jsonobject = null;
              goto _L6
            exception1;
            s3 = s5;
              goto _L7
_L5:
            s4 = s5;
            jsonobject = null;
              goto _L6
        }

        public c(x x2)
        {
            a = x.this;
            super();
            b = x2;
        }
    }


    private String h;

    public x(com.chartboost.sdk.impl.a a1)
    {
        super(a1);
        h = null;
    }

    protected com.chartboost.sdk.c.b a(Context context)
    {
        return new a(context, h);
    }

    public void a(JSONObject jsonobject)
    {
        String s = jsonobject.optString("html");
        if (s == null)
        {
            return;
        } else
        {
            h = s;
            a();
            return;
        }
    }
}
