// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.DialogInterface;
import android.os.Handler;

// Referenced classes of package com.adobe.air:
//            RemoteDebuggerListenerDialog

class this._cls0
    implements android.content.
{

    final RemoteDebuggerListenerDialog this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        RemoteDebuggerListenerDialog.access$300(RemoteDebuggerListenerDialog.this).removeCallbacks(RemoteDebuggerListenerDialog.access$200(RemoteDebuggerListenerDialog.this));
        RemoteDebuggerListenerDialog.access$400(RemoteDebuggerListenerDialog.this);
        unregisterReceiver(RemoteDebuggerListenerDialog.access$500(RemoteDebuggerListenerDialog.this));
        RemoteDebuggerListenerDialog.access$502(RemoteDebuggerListenerDialog.this, null);
        dialoginterface.cancel();
        finish();
    }

    er()
    {
        this$0 = RemoteDebuggerListenerDialog.this;
        super();
    }
}
