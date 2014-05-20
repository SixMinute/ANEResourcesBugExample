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
//            AndroidWebView, SSLSecurityDialog

class mNoCompleteForUrl extends WebViewClient
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
            val$webView.onLocationChange(s);
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
            val$webView.onLoadComplete(s);
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
            val$webView.onLoadError(s1, (new StringBuilder()).append("[").append(i).append("] ").append(s).append(": ").append(s1).toString(), 3229);
            return;
        } else
        {
            val$webView.onLoadError(s1, (new StringBuilder()).append("[").append(i).append("] ").append(s).append(": ").append(s1).toString(), 0);
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
            (new Thread() {

                final AndroidWebView._cls2 this$1;
                final SslError val$error;
                final SslErrorHandler val$handler;
                final String val$url;

                public void run()
                {
                    android.net.http.SslCertificate sslcertificate = error.getCertificate();
                    boolean flag = false;
                    if (sslcertificate != null)
                    {
                        SSLSecurityDialog sslsecuritydialog = new SSLSecurityDialog();
                        sslsecuritydialog.show(url, error.getCertificate());
                        boolean flag1 = sslsecuritydialog.getUserAction().equals("session");
                        flag = false;
                        if (flag1)
                        {
                            flag = true;
                        }
                    }
                    if (flag)
                    {
                        handler.proceed();
                        return;
                    } else
                    {
                        handler.cancel();
                        return;
                    }
                }

            
            {
                this$1 = AndroidWebView._cls2.this;
                error = sslerror;
                url = s;
                handler = sslerrorhandler;
                super();
            }
            }).start();
            return;
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        boolean flag = val$webView.onLocationChanging(s);
        if (flag)
        {
            mNoCompleteForUrl = s;
        }
        return flag;
    }

    _cls1.val.handler()
    {
        this$0 = final_androidwebview;
        val$webView = AndroidWebView.this;
        super();
        mUrl = null;
        mLastPageStartedUrl = null;
        mNoCompleteForUrl = null;
    }
}
