// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.DialogInterface;
import android.view.KeyEvent;

// Referenced classes of package com.adobe.air:
//            AIRUpdateDialog

class this._cls0
    implements android.content.KeyListener
{

    final AIRUpdateDialog this$0;

    public boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
    {
        if (i == 4 || i == 84)
        {
            dialoginterface.cancel();
            finish();
            return true;
        } else
        {
            return false;
        }
    }

    OnKeyListener()
    {
        this$0 = AIRUpdateDialog.this;
        super();
    }
}
