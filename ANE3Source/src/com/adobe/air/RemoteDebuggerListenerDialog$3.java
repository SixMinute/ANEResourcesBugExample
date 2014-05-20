// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.DialogInterface;
import android.os.Handler;
import android.view.KeyEvent;

// Referenced classes of package com.adobe.air:
//            RemoteDebuggerListenerDialog

class this._cls0
    implements android.content.is._cls0
{

    final RemoteDebuggerListenerDialog this$0;

    public boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            RemoteDebuggerListenerDialog.access$300(RemoteDebuggerListenerDialog.this).removeCallbacks(RemoteDebuggerListenerDialog.access$200(RemoteDebuggerListenerDialog.this));
            RemoteDebuggerListenerDialog.access$400(RemoteDebuggerListenerDialog.this);
            unregisterReceiver(RemoteDebuggerListenerDialog.access$500(RemoteDebuggerListenerDialog.this));
            RemoteDebuggerListenerDialog.access$502(RemoteDebuggerListenerDialog.this, null);
            dialoginterface.cancel();
            finish();
        }
        return false;
    }

    ()
    {
        this$0 = RemoteDebuggerListenerDialog.this;
        super();
    }
}
