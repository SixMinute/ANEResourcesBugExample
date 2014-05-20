// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.DialogInterface;
import android.view.KeyEvent;

// Referenced classes of package com.adobe.air:
//            SSLSecurityDialog

class this._cls0
    implements android.content.yListener
{

    final SSLSecurityDialog this$0;

    public boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
    {
        if (keyevent.getKeyCode() == 4)
        {
            SSLSecurityDialog.access$000(SSLSecurityDialog.this, "none");
        }
        return false;
    }

    KeyListener()
    {
        this$0 = SSLSecurityDialog.this;
        super();
    }
}
