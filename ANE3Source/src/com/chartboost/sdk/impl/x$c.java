// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.net.URI;
import java.net.URLDecoder;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.chartboost.sdk.impl:
//            x

private class b extends WebViewClient
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

    public (x x1, x x2)
    {
        a = x1;
        super();
        b = x2;
    }
}
