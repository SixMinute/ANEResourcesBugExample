// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.adobe.air:
//            AdobeAIR

class ent extends WebViewClient
{

    final AdobeAIR this$0;

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        return false;
    }

    ent()
    {
        this$0 = AdobeAIR.this;
        super();
    }
}
