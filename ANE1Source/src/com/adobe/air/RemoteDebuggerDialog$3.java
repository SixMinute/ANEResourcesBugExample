// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.DialogInterface;

// Referenced classes of package com.adobe.air:
//            RemoteDebuggerDialog

class this._cls0
    implements android.content.lListener
{

    final RemoteDebuggerDialog this$0;

    public void onCancel(DialogInterface dialoginterface)
    {
        gotResultFromDialog(false, null);
    }

    celListener()
    {
        this$0 = RemoteDebuggerDialog.this;
        super();
    }
}
