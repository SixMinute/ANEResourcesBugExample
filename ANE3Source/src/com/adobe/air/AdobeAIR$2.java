// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Intent;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.adobe.air:
//            AdobeAIR

class ent extends WebViewClient
{

    final AdobeAIR this$0;

    public void onPageFinished(WebView webview, String s)
    {
        if (AdobeAIR.access$100(AdobeAIR.this) && !s.equals(DYNAMIC_URL))
        {
            AdobeAIR.access$102(AdobeAIR.this, false);
            setRequestedOrientation(2);
            setContentView(AdobeAIR.access$200(AdobeAIR.this));
        }
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        AdobeAIR.access$302(AdobeAIR.this, true);
        AdobeAIR.access$200(AdobeAIR.this).loadUrl("file:///android_res/raw/startga.html");
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (s == null) goto _L2; else goto _L1
_L1:
        Uri uri = Uri.parse(s);
        if (uri == null || uri.getScheme() == null) goto _L2; else goto _L3
_L3:
        if (uri.getHost() == null || !uri.getScheme().equalsIgnoreCase("http") && !uri.getScheme().equalsIgnoreCase("https")) goto _L5; else goto _L4
_L4:
        if (!s.equals(DYNAMIC_URL) && !uri.getHost().equalsIgnoreCase("gamespace.adobe.com") && !uri.getHost().equalsIgnoreCase("dh8vjmvwgc27o.cloudfront.net")) goto _L7; else goto _L6
_L7:
        boolean flag;
        if (!uri.getHost().equalsIgnoreCase("www.adobe.com") && !uri.getHost().equalsIgnoreCase("play.google.com") && !uri.getHost().equalsIgnoreCase("gaming.adobe.com"))
        {
            flag = false;
        } else
        {
            flag = true;
        }
_L11:
        if (!flag) goto _L9; else goto _L8
_L8:
        try
        {
            Intent intent = new Intent("android.intent.action.VIEW", uri);
            startActivity(intent);
        }
        catch (Exception exception) { }
          goto _L2
_L9:
        AdobeAIR.access$000(AdobeAIR.this).loadUrl(s);
          goto _L2
_L6:
        return false;
_L2:
        return true;
_L5:
        flag = true;
        if (true) goto _L11; else goto _L10
_L10:
    }

    ent()
    {
        this$0 = AdobeAIR.this;
        super();
    }
}
