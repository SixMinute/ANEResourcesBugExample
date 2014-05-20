// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.view.KeyEvent;
import android.widget.FrameLayout;

// Referenced classes of package com.adobe.air:
//            AndroidWebView

class this._cls1 extends FrameLayout
{

    final HideCustomView this$1;

    public boolean dispatchKeyEvent(KeyEvent keyevent)
    {
        if (super.dispatchKeyEvent(keyevent))
        {
            return true;
        }
        if (keyevent.getAction() == 0 && keyevent.getKeyCode() == 4)
        {
            HideCustomView();
            return true;
        } else
        {
            return false;
        }
    }

    (Context context)
    {
        this$1 = this._cls1.this;
        super(context);
    }
}
