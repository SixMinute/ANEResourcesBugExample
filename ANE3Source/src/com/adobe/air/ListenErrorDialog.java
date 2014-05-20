// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.DialogInterface;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.adobe.air:
//            AndroidLocale, AndroidActivityWrapper

public final class ListenErrorDialog
{

    private final int ICON_ERROR = 0x7f020001;
    private final int PADDING_LENGTH = 20;
    private final Activity mActivity;
    private final String mDebuggerPort;

    ListenErrorDialog(Activity activity, int i)
    {
        mActivity = activity;
        mDebuggerPort = Integer.toString(i);
    }

    private void exitGracefully()
    {
        System.exit(0);
    }

    public void createAndShowDialog()
    {
        LinearLayout linearlayout = new LinearLayout(mActivity);
        linearlayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        TextView textview = new TextView(mActivity);
        textview.setText(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_DEBUGGER_LISTEN_ERROR_MESSAGE).replaceFirst("%1", mDebuggerPort));
        textview.setLayoutParams(new android.view.ViewGroup.LayoutParams(-2, -1));
        textview.setPadding(20, 20, 20, 20);
        linearlayout.addView(textview);
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(mActivity);
        builder.setIcon(0x7f020001);
        builder.setView(linearlayout);
        builder.setTitle(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_DEBUGGER_LISTEN_ERROR_TITLE));
        builder.setPositiveButton(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CANCEL), new android.content.DialogInterface.OnClickListener() {

            final ListenErrorDialog this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                gotResultFromDialog(false);
            }

            
            {
                this$0 = ListenErrorDialog.this;
                super();
            }
        });
        builder.setNegativeButton(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CONTINUE), new android.content.DialogInterface.OnClickListener() {

            final ListenErrorDialog this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                gotResultFromDialog(true);
            }

            
            {
                this$0 = ListenErrorDialog.this;
                super();
            }
        });
        builder.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

            final ListenErrorDialog this$0;

            public void onCancel(DialogInterface dialoginterface)
            {
                gotResultFromDialog(false);
            }

            
            {
                this$0 = ListenErrorDialog.this;
                super();
            }
        });
        builder.show();
    }

    public void gotResultFromDialog(boolean flag)
    {
        AndroidActivityWrapper androidactivitywrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
        if (flag)
        {
            androidactivitywrapper.gotResultFromDialog(false, "");
            return;
        } else
        {
            exitGracefully();
            return;
        }
    }
}
