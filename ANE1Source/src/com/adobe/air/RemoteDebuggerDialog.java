// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.DialogInterface;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.adobe.air:
//            AndroidLocale, AndroidActivityWrapper

public final class RemoteDebuggerDialog
{

    private final Activity mActivity;

    RemoteDebuggerDialog(Activity activity)
    {
        mActivity = activity;
    }

    public void createAndShowDialog(String s)
    {
        LinearLayout linearlayout = new LinearLayout(mActivity);
        linearlayout.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        linearlayout.setOrientation(1);
        TextView textview = new TextView(mActivity);
        String s1 = "";
        if (s.length() > 0)
        {
            s1 = (new StringBuilder()).append(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_DEBUGGER_ERROR_MESSAGE).replaceFirst("%1", s)).append("\n").toString();
        }
        textview.setText((new StringBuilder()).append(s1).append(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_DEBUGGER_ENTERIP_MESSAGE)).toString());
        textview.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        textview.setPadding(20, 20, 20, 20);
        final EditText pTextinput = new EditText(mActivity);
        pTextinput.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, -1));
        pTextinput.setHeight(30);
        pTextinput.setWidth(25);
        linearlayout.addView(textview);
        linearlayout.addView(pTextinput);
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(mActivity);
        builder.setView(linearlayout);
        builder.setTitle("Adobe AIR");
        builder.setPositiveButton(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_OK), new android.content.DialogInterface.OnClickListener() {

            final RemoteDebuggerDialog this$0;
            final EditText val$pTextinput;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                String s2 = pTextinput.getText().toString();
                gotResultFromDialog(true, s2);
            }

            
            {
                this$0 = RemoteDebuggerDialog.this;
                pTextinput = edittext;
                super();
            }
        });
        builder.setNegativeButton(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CANCEL), new android.content.DialogInterface.OnClickListener() {

            final RemoteDebuggerDialog this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                gotResultFromDialog(false, null);
            }

            
            {
                this$0 = RemoteDebuggerDialog.this;
                super();
            }
        });
        builder.setOnCancelListener(new android.content.DialogInterface.OnCancelListener() {

            final RemoteDebuggerDialog this$0;

            public void onCancel(DialogInterface dialoginterface)
            {
                gotResultFromDialog(false, null);
            }

            
            {
                this$0 = RemoteDebuggerDialog.this;
                super();
            }
        });
        builder.show();
    }

    public void gotResultFromDialog(boolean flag, String s)
    {
        AndroidActivityWrapper.GetAndroidActivityWrapper().gotResultFromDialog(flag, s);
    }
}
