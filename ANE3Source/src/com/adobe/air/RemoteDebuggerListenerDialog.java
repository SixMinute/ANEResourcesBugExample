// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import java.net.InetAddress;
import java.net.Socket;

public class RemoteDebuggerListenerDialog extends Activity
{
    private static final class DialogState extends Enum
    {

        private static final DialogState $VALUES[];
        public static final DialogState StateRuntimeNotReady;
        public static final DialogState StateRuntimeTimedOut;
        public static final DialogState StateRuntimeWaitingForDebugger;

        public static DialogState valueOf(String s)
        {
            return (DialogState)Enum.valueOf(com/adobe/air/RemoteDebuggerListenerDialog$DialogState, s);
        }

        public static DialogState[] values()
        {
            return (DialogState[])$VALUES.clone();
        }

        static 
        {
            StateRuntimeNotReady = new DialogState("StateRuntimeNotReady", 0);
            StateRuntimeWaitingForDebugger = new DialogState("StateRuntimeWaitingForDebugger", 1);
            StateRuntimeTimedOut = new DialogState("StateRuntimeTimedOut", 2);
            DialogState adialogstate[] = new DialogState[3];
            adialogstate[0] = StateRuntimeNotReady;
            adialogstate[1] = StateRuntimeWaitingForDebugger;
            adialogstate[2] = StateRuntimeTimedOut;
            $VALUES = adialogstate;
        }

        private DialogState(String s, int i)
        {
            super(s, i);
        }
    }


    private final String LOG_TAG = getClass().getName();
    private int count;
    private int debuggerPort;
    private Activity mActivity;
    private Runnable mCheckAgain;
    private Handler mHandler;
    private BroadcastReceiver mReceiver;
    private AlertDialog mWaitDialog;

    public RemoteDebuggerListenerDialog()
    {
        debuggerPort = -1;
        count = 0;
        mHandler = new Handler();
        mWaitDialog = null;
        mCheckAgain = null;
        mActivity = null;
    }

    private void closeListeningDebuggerSocket()
    {
        AsyncTask asynctask = new AsyncTask() {

            final RemoteDebuggerListenerDialog this$0;

            protected transient Integer doInBackground(Integer ainteger1[])
            {
                try
                {
                    (new Socket(InetAddress.getLocalHost(), ainteger1[0].intValue())).close();
                }
                catch (Exception exception) { }
                return Integer.valueOf(0);
            }

            protected volatile Object doInBackground(Object aobj[])
            {
                return doInBackground((Integer[])aobj);
            }

            
            {
                this$0 = RemoteDebuggerListenerDialog.this;
                super();
            }
        };
        Integer ainteger[] = new Integer[1];
        ainteger[0] = Integer.valueOf(debuggerPort);
        asynctask.execute(ainteger);
    }

    private AlertDialog createDialog(CharSequence charsequence, CharSequence charsequence1, CharSequence charsequence2, android.content.DialogInterface.OnClickListener onclicklistener, android.content.DialogInterface.OnKeyListener onkeylistener)
    {
        AlertDialog alertdialog = (new android.app.AlertDialog.Builder(mActivity)).create();
        alertdialog.setTitle(charsequence);
        alertdialog.setMessage(charsequence1);
        alertdialog.setButton(-1, charsequence2, onclicklistener);
        alertdialog.setOnKeyListener(onkeylistener);
        alertdialog.setCancelable(true);
        return alertdialog;
    }

    private void dismissDialog()
    {
        if (mWaitDialog != null)
        {
            mWaitDialog.cancel();
        }
        if (mReceiver != null)
        {
            unregisterReceiver(mReceiver);
        }
        mReceiver = null;
        mHandler.removeCallbacks(mCheckAgain);
        mActivity.finish();
    }

    public void onCreate(Bundle bundle)
    {
        final String dialogMessage = getString(0x7f0a008f);
        final String timeOutMessage = getString(0x7f0a0090);
        mActivity = this;
        super.onCreate(bundle);
        Bundle bundle1 = getIntent().getExtras();
        int i;
        Object aobj[];
        String s;
        IntentFilter intentfilter;
        if (bundle1 != null)
        {
            i = bundle1.getInt("debuggerPort");
        } else
        {
            i = 7936;
        }
        debuggerPort = i;
        mWaitDialog = (new android.app.AlertDialog.Builder(this)).create();
        aobj = new Object[1];
        aobj[0] = Integer.valueOf(60);
        s = String.format(dialogMessage, aobj);
        mReceiver = new BroadcastReceiver() {

            final RemoteDebuggerListenerDialog this$0;

            public void onReceive(Context context, Intent intent)
            {
                if (!isInitialStickyBroadcast())
                {
                    Bundle bundle2 = getIntent().getExtras();
                    int j;
                    if (bundle2 != null)
                    {
                        j = bundle2.getInt("debuggerPort");
                    } else
                    {
                        j = 7936;
                    }
                    if (j == debuggerPort)
                    {
                        dismissDialog();
                    }
                }
            }

            
            {
                this$0 = RemoteDebuggerListenerDialog.this;
                super();
            }
        };
        intentfilter = new IntentFilter("android.intent.action.MAIN");
        intentfilter.addCategory("RemoteDebuggerListenerDialogClose");
        registerReceiver(mReceiver, intentfilter);
        mWaitDialog = createDialog(getString(0x7f0a008d), s, getString(0x7f0a0078), new android.content.DialogInterface.OnClickListener() {

            final RemoteDebuggerListenerDialog this$0;

            public void onClick(DialogInterface dialoginterface, int j)
            {
                mHandler.removeCallbacks(mCheckAgain);
                closeListeningDebuggerSocket();
                unregisterReceiver(mReceiver);
                mReceiver = null;
                dialoginterface.cancel();
                finish();
            }

            
            {
                this$0 = RemoteDebuggerListenerDialog.this;
                super();
            }
        }, new android.content.DialogInterface.OnKeyListener() {

            final RemoteDebuggerListenerDialog this$0;

            public boolean onKey(DialogInterface dialoginterface, int j, KeyEvent keyevent)
            {
                if (j == 4)
                {
                    mHandler.removeCallbacks(mCheckAgain);
                    closeListeningDebuggerSocket();
                    unregisterReceiver(mReceiver);
                    mReceiver = null;
                    dialoginterface.cancel();
                    finish();
                }
                return false;
            }

            
            {
                this$0 = RemoteDebuggerListenerDialog.this;
                super();
            }
        });
        count = 0;
        mCheckAgain = new Runnable() {

            final RemoteDebuggerListenerDialog this$0;
            final String val$dialogMessage;
            final String val$timeOutMessage;

            public void run()
            {
                if (count < 60)
                {
                    String s1 = dialogMessage;
                    Object aobj1[] = new Object[1];
                    aobj1[0] = Integer.valueOf(60 - count);
                    String s2 = String.format(s1, aobj1);
                    int i = ((Object) (this)).Object;
                    mWaitDialog.setMessage(s2);
                    mHandler.postDelayed(this, 1000L);
                    return;
                }
                mHandler.removeCallbacks(this);
                mWaitDialog.cancel();
                if (mReceiver != null)
                {
                    unregisterReceiver(mReceiver);
                    mReceiver = null;
                }
                android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

                    final _cls4 this$1;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        closeListeningDebuggerSocket();
                        dialoginterface.cancel();
                        finish();
                    }

            
            {
                this$1 = _cls4.this;
                super();
            }
                };
                mWaitDialog = createDialog("Adobe AIR", timeOutMessage, getString(0x7f0a0079), onclicklistener, onclicklistener. new android.content.DialogInterface.OnKeyListener() {

                    final _cls4 this$1;
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
                this$1 = final__pcls4;
                dialogButtonHandler = android.content.DialogInterface.OnClickListener.this;
                super();
            }
                });
                mWaitDialog.show();
            }

            
            {
                this$0 = RemoteDebuggerListenerDialog.this;
                dialogMessage = s;
                timeOutMessage = s1;
                super();
            }
        };
        mHandler.postDelayed(mCheckAgain, 1000L);
        mWaitDialog.show();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            closeListeningDebuggerSocket();
            dismissDialog();
        }
        return super.onKeyDown(i, keyevent);
    }

    public void onStop()
    {
        closeListeningDebuggerSocket();
        dismissDialog();
        super.onStop();
    }








/*
    static BroadcastReceiver access$502(RemoteDebuggerListenerDialog remotedebuggerlistenerdialog, BroadcastReceiver broadcastreceiver)
    {
        remotedebuggerlistenerdialog.mReceiver = broadcastreceiver;
        return broadcastreceiver;
    }

*/



/*
    static int access$608(RemoteDebuggerListenerDialog remotedebuggerlistenerdialog)
    {
        int i = remotedebuggerlistenerdialog.count;
        remotedebuggerlistenerdialog.count = i + 1;
        return i;
    }

*/



/*
    static AlertDialog access$702(RemoteDebuggerListenerDialog remotedebuggerlistenerdialog, AlertDialog alertdialog)
    {
        remotedebuggerlistenerdialog.mWaitDialog = alertdialog;
        return alertdialog;
    }

*/

}
