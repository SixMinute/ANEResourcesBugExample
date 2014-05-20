// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.graphics.Rect;

// Referenced classes of package com.adobe.air:
//            AndroidWebView

class this._cls0
    implements Runnable
{

    final AndroidWebView this$0;

    public void run()
    {
        if (AndroidWebView.access$100(AndroidWebView.this) == null)
        {
            return;
        } else
        {
            android.widget.youtParams youtparams = new android.widget.youtParams(AndroidWebView.access$800(AndroidWebView.this).width(), AndroidWebView.access$800(AndroidWebView.this).height());
            youtparams.leftMargin = AndroidWebView.access$800(AndroidWebView.this).left;
            youtparams.topMargin = AndroidWebView.access$800(AndroidWebView.this).top;
            AndroidWebView.access$100(AndroidWebView.this).setLayoutParams(youtparams);
            AndroidWebView.access$100(AndroidWebView.this).requestLayout();
            return;
        }
    }

    droidWebViewImpl()
    {
        this$0 = AndroidWebView.this;
        super();
    }
}
