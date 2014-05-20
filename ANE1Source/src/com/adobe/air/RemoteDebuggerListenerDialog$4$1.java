// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Handler;
import android.view.KeyEvent;

// Referenced classes of package com.adobe.air:
//            RemoteDebuggerListenerDialog

class this._cls1
    implements android.content.is._cls1
{

    final sh this$1;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        RemoteDebuggerListenerDialog.access$400(_fld0);
        dialoginterface.cancel();
        finish();
    }

    l.timeOutMessage()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/adobe/air/RemoteDebuggerListenerDialog$4

/* anonymous class */
    class RemoteDebuggerListenerDialog._cls4
        implements Runnable
    {

        final RemoteDebuggerListenerDialog this$0;
        final String val$dialogMessage;
        final String val$timeOutMessage;

        public void run()
        {
            if (RemoteDebuggerListenerDialog.access$600(RemoteDebuggerListenerDialog.this) < 60)
            {
                String s = dialogMessage;
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(60 - RemoteDebuggerListenerDialog.access$600(RemoteDebuggerListenerDialog.this));
                String s1 = String.format(s, aobj);
                int _tmp = RemoteDebuggerListenerDialog.access$608(RemoteDebuggerListenerDialog.this);
                RemoteDebuggerListenerDialog.access$700(RemoteDebuggerListenerDialog.this).setMessage(s1);
                RemoteDebuggerListenerDialog.access$300(RemoteDebuggerListenerDialog.this).postDelayed(this, 1000L);
                return;
            }
            RemoteDebuggerListenerDialog.access$300(RemoteDebuggerListenerDialog.this).removeCallbacks(this);
            RemoteDebuggerListenerDialog.access$700(RemoteDebuggerListenerDialog.this).cancel();
            if (RemoteDebuggerListenerDialog.access$500(RemoteDebuggerListenerDialog.this) != null)
            {
                unregisterReceiver(RemoteDebuggerListenerDialog.access$500(RemoteDebuggerListenerDialog.this));
                RemoteDebuggerListenerDialog.access$502(RemoteDebuggerListenerDialog.this, null);
            }
            final RemoteDebuggerListenerDialog._cls4._cls1 dialogButtonHandler = new RemoteDebuggerListenerDialog._cls4._cls1();
            RemoteDebuggerListenerDialog.access$702(RemoteDebuggerListenerDialog.this, RemoteDebuggerListenerDialog.access$800(RemoteDebuggerListenerDialog.this, "Adobe AIR", timeOutMessage, getString(0x7f0a0079), dialogButtonHandler, new RemoteDebuggerListenerDialog._cls4._cls2()));
            RemoteDebuggerListenerDialog.access$700(RemoteDebuggerListenerDialog.this).show();
        }

            
            {
                this$0 = final_remotedebuggerlistenerdialog;
                dialogMessage = s;
                timeOutMessage = String.this;
                super();
            }

        // Unreferenced inner class com/adobe/air/RemoteDebuggerListenerDialog$4$2

/* anonymous class */
        class RemoteDebuggerListenerDialog._cls4._cls2
            implements android.content.DialogInterface.OnKeyListener
        {

            final RemoteDebuggerListenerDialog._cls4 this$1;
            final android.content.DialogInterface.OnClickListener val$dialogButtonHandler;

            public boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
            {
                if (i == 4)
                {
                    dialogButtonHandler.onClick(dialoginterface, -1);
                }
                return false;
            }

                    
                    {
                        this$1 = RemoteDebuggerListenerDialog._cls4.this;
                        dialogButtonHandler = onclicklistener;
                        super();
                    }
        }

    }

}
