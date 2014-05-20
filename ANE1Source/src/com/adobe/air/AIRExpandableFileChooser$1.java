// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.DialogInterface;
import android.view.KeyEvent;

// Referenced classes of package com.adobe.air:
//            AIRExpandableFileChooser, FileChooserStub

class this._cls0
    implements android.content.er
{

    final AIRExpandableFileChooser this$0;

    public boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
    {
        if (keyevent.getKeyCode() == 4)
        {
            AIRExpandableFileChooser.access$600(AIRExpandableFileChooser.this).SetUserAction("cancel");
        }
        return false;
    }

    ener()
    {
        this$0 = AIRExpandableFileChooser.this;
        super();
    }
}
