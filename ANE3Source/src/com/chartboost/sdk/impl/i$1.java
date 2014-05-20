// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.chartboost.sdk.impl:
//            i

class  extends WebViewClient
{

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

    tener(i j)
    {
        a = j;
        super();
    }
}
