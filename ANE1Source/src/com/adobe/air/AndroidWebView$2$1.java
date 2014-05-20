// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.graphics.Bitmap;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;

// Referenced classes of package com.adobe.air:
//            SSLSecurityDialog, AndroidWebView

class val.handler extends Thread
{

    final ncel this$1;
    final SslError val$error;
    final SslErrorHandler val$handler;
    final String val$url;

    public void run()
    {
        android.net.http.SslCertificate sslcertificate = val$error.getCertificate();
        boolean flag = false;
        if (sslcertificate != null)
        {
            SSLSecurityDialog sslsecuritydialog = new SSLSecurityDialog();
            sslsecuritydialog.show(val$url, val$error.getCertificate());
            boolean flag1 = sslsecuritydialog.getUserAction().equals("session");
            flag = false;
            if (flag1)
            {
                flag = true;
            }
        }
        if (flag)
        {
            val$handler.proceed();
            return;
        } else
        {
            val$handler.cancel();
            return;
        }
    }

    oCompleteForUrl()
    {
        this$1 = final_ocompleteforurl;
        val$error = sslerror;
        val$url = s;
        val$handler = SslErrorHandler.this;
        super();
    }

    // Unreferenced inner class com/adobe/air/AndroidWebView$2

/* anonymous class */
    class AndroidWebView._cls2 extends WebViewClient
    {

        private String mLastPageStartedUrl;
        private String mNoCompleteForUrl;
        private String mUrl;
        final AndroidWebView this$0;
        final AndroidWebView val$webView;

        public void doUpdateVisitedHistory(WebView webview, String s, boolean flag)
        {
            if (mLastPageStartedUrl != null && mLastPageStartedUrl.equals(s))
            {
                webView.onLocationChange(s);
            }
        }

        public void onPageFinished(WebView webview, String s)
        {
            if (s != null && mNoCompleteForUrl != null && s.equals(mNoCompleteForUrl))
            {
                mNoCompleteForUrl = null;
                return;
            } else
            {
                mUrl = s;
                webView.onLoadComplete(s);
                return;
            }
        }

        public void onPageStarted(WebView webview, String s, Bitmap bitmap)
        {
            super.onPageStarted(webview, s, bitmap);
            mUrl = s;
            mLastPageStartedUrl = s;
        }

        public void onReceivedError(WebView webview, int i, String s, String s1)
        {
            mNoCompleteForUrl = s1;
            if (i == -10)
            {
                webView.onLoadError(s1, (new StringBuilder()).append("[").append(i).append("] ").append(s).append(": ").append(s1).toString(), 3229);
                return;
            } else
            {
                webView.onLoadError(s1, (new StringBuilder()).append("[").append(i).append("] ").append(s).append(": ").append(s1).toString(), 0);
                return;
            }
        }

        public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, final SslError error)
        {
            if (mUrl == null || error.getCertificate() == null)
            {
                return;
            } else
            {
                (sslerrorhandler. new AndroidWebView._cls2._cls1()).start();
                return;
            }
        }

        public boolean shouldOverrideUrlLoading(WebView webview, String s)
        {
            boolean flag = webView.onLocationChanging(s);
            if (flag)
            {
                mNoCompleteForUrl = s;
            }
            return flag;
        }

            
            {
                this$0 = final_androidwebview;
                webView = AndroidWebView.this;
                super();
                mUrl = null;
                mLastPageStartedUrl = null;
                mNoCompleteForUrl = null;
            }
    }

}
