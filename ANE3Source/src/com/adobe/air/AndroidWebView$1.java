// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;

// Referenced classes of package com.adobe.air:
//            AndroidWebView, AndroidActivityWrapper

class <init> extends WebChromeClient
{

    private ValueCallback mUploadMessage;
    final AndroidWebView this$0;

    public void onHideCustomView()
    {
        if (AndroidWebView.access$600(AndroidWebView.this) != null)
        {
            AndroidWebView.access$600(AndroidWebView.this).onHideCustomView();
        }
    }

    public void onShowCustomView(View view, android.webkit.ustomViewCallback ustomviewcallback)
    {
        if (AndroidWebView.access$600(AndroidWebView.this) == null)
        {
            AndroidWebView.access$602(AndroidWebView.this, new bViewCustomView(AndroidWebView.this));
        }
        AndroidWebView.access$600(AndroidWebView.this).onShowCustomView(view, ustomviewcallback);
    }

    public void openFileChooser(ValueCallback valuecallback)
    {
        if (mUploadMessage != null)
        {
            return;
        } else
        {
            mUploadMessage = valuecallback;
            final AndroidActivityWrapper wrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
            wrapper.addActivityResultListener(new AndroidActivityWrapper.ActivityResultCallback() {

                final AndroidWebView._cls1 this$1;
                final AndroidActivityWrapper val$wrapper;

                public void onActivityResult(int i, int j, Intent intent1)
                {
                    if (i != 5)
                    {
                        return;
                    }
                    if (mUploadMessage != null)
                    {
                        android.net.Uri uri;
                        if (intent1 == null || j != -1)
                        {
                            uri = null;
                        } else
                        {
                            uri = intent1.getData();
                        }
                        mUploadMessage.onReceiveValue(uri);
                        mUploadMessage = null;
                    }
                    wrapper.removeActivityResultListener(this);
                }

            
            {
                this$1 = AndroidWebView._cls1.this;
                wrapper = androidactivitywrapper;
                super();
            }
            });
            Intent intent = new Intent("android.intent.action.GET_CONTENT");
            intent.addCategory("android.intent.category.OPENABLE");
            intent.setType("*/*");
            wrapper.getActivity().startActivityForResult(Intent.createChooser(intent, ""), 5);
            return;
        }
    }



/*
    static ValueCallback access$702(CustomViewCallback customviewcallback, ValueCallback valuecallback)
    {
        customviewcallback.mUploadMessage = valuecallback;
        return valuecallback;
    }

*/

    _cls1.val.wrapper()
    {
        this$0 = AndroidWebView.this;
        super();
    }
}
