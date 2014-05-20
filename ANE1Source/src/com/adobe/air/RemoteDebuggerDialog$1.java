// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.DialogInterface;
import android.widget.EditText;

// Referenced classes of package com.adobe.air:
//            RemoteDebuggerDialog

class val.pTextinput
    implements android.content.Listener
{

    final RemoteDebuggerDialog this$0;
    final EditText val$pTextinput;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        String s = val$pTextinput.getText().toString();
        gotResultFromDialog(true, s);
    }

    ckListener()
    {
        this$0 = final_remotedebuggerdialog;
        val$pTextinput = EditText.this;
        super();
    }
}
