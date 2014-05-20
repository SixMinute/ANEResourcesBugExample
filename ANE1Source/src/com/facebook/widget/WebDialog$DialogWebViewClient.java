// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.ProgressDialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.facebook.FacebookDialogException;
import com.facebook.FacebookRequestError;
import com.facebook.FacebookServiceException;
import com.facebook.android.Util;
import com.facebook.internal.Utility;

// Referenced classes of package com.facebook.widget:
//            WebDialog

private class <init> extends WebViewClient
{

    final WebDialog this$0;

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        if (!WebDialog.access$3(WebDialog.this))
        {
            WebDialog.access$4(WebDialog.this).dismiss();
        }
        WebDialog.access$5(WebDialog.this).setBackgroundColor(0);
        WebDialog.access$6(WebDialog.this).setVisibility(0);
        WebDialog.access$7(WebDialog.this).setVisibility(0);
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        Utility.logd("FacebookSDK.WebDialog", (new StringBuilder("Webview loading URL: ")).append(s).toString());
        super.onPageStarted(webview, s, bitmap);
        if (!WebDialog.access$3(WebDialog.this))
        {
            WebDialog.access$4(WebDialog.this).show();
        }
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        super.onReceivedError(webview, i, s, s1);
        WebDialog.access$2(WebDialog.this, new FacebookDialogException(s, i, s1));
        dismiss();
    }

    public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, SslError sslerror)
    {
        super.onReceivedSslError(webview, sslerrorhandler, sslerror);
        WebDialog.access$2(WebDialog.this, new FacebookDialogException(null, -11, null));
        sslerrorhandler.cancel();
        dismiss();
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        Utility.logd("FacebookSDK.WebDialog", (new StringBuilder("Redirect URL: ")).append(s).toString());
        if (!s.startsWith("fbconnect://success")) goto _L2; else goto _L1
_L1:
        String s1;
        String s2;
        int i;
        Bundle bundle = Util.parseUrl(s);
        s1 = bundle.getString("error");
        if (s1 == null)
        {
            s1 = bundle.getString("error_type");
        }
        s2 = bundle.getString("error_msg");
        if (s2 == null)
        {
            s2 = bundle.getString("error_description");
        }
        String s3 = bundle.getString("error_code");
        i = -1;
        if (!Utility.isNullOrEmpty(s3))
        {
            int j;
            try
            {
                j = Integer.parseInt(s3);
            }
            catch (NumberFormatException numberformatexception)
            {
                i = -1;
                continue; /* Loop/switch isn't completed */
            }
            i = j;
        }
_L4:
        if (Utility.isNullOrEmpty(s1) && Utility.isNullOrEmpty(s2) && i == -1)
        {
            WebDialog.access$0(WebDialog.this, bundle);
        } else
        if (s1 != null && (s1.equals("access_denied") || s1.equals("OAuthAccessDeniedException")))
        {
            WebDialog.access$1(WebDialog.this);
        } else
        {
            FacebookRequestError facebookrequesterror = new FacebookRequestError(i, s1, s2);
            WebDialog.access$2(WebDialog.this, new FacebookServiceException(facebookrequesterror, s2));
        }
        dismiss();
        return true;
_L2:
        if (s.startsWith("fbconnect://cancel"))
        {
            WebDialog.access$1(WebDialog.this);
            dismiss();
            return true;
        }
        if (s.contains("touch"))
        {
            return false;
        }
        getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(s)));
        return true;
        if (true) goto _L4; else goto _L3
_L3:
    }

    private ()
    {
        this$0 = WebDialog.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
