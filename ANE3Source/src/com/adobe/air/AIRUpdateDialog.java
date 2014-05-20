// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper, AndroidLocale

public class AIRUpdateDialog extends Activity
{

    private final String LOG_TAG = "AIRUpdateDialog";
    private final String RUNTIME_PACKAGE_ID = "com.adobe.air";
    private AndroidActivityWrapper actWrapper;
    private AlertDialog alertDialog;

    public AIRUpdateDialog()
    {
        alertDialog = null;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        actWrapper = AndroidActivityWrapper.CreateAndroidActivityWrapper(this, Boolean.valueOf(false));
        alertDialog = (new android.app.AlertDialog.Builder(this)).setTitle("Adobe\256 AIR\256").setMessage(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_RUNTIME_UPDATE_MESSAGE)).create();
        alertDialog.setButton(-1, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_UPDATE), new android.content.DialogInterface.OnClickListener() {

            final AIRUpdateDialog this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                String s = getIntent().getStringExtra("airDownloadURL");
                actWrapper.LaunchMarketPlaceForAIR(s);
                finish();
            }

            
            {
                this$0 = AIRUpdateDialog.this;
                super();
            }
        });
        alertDialog.setButton(-2, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CANCEL), new android.content.DialogInterface.OnClickListener() {

            final AIRUpdateDialog this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                finish();
            }

            
            {
                this$0 = AIRUpdateDialog.this;
                super();
            }
        });
        alertDialog.setOnKeyListener(new android.content.DialogInterface.OnKeyListener() {

            final AIRUpdateDialog this$0;

            public boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
            {
                if (i == 4 || i == 84)
                {
                    dialoginterface.cancel();
                    finish();
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                this$0 = AIRUpdateDialog.this;
                super();
            }
        });
        alertDialog.setCancelable(true);
        alertDialog.show();
    }

    public void onPause()
    {
        if (alertDialog != null)
        {
            alertDialog.cancel();
            alertDialog = null;
            finish();
        }
        super.onPause();
    }

    public void onStop()
    {
        if (alertDialog != null)
        {
            alertDialog.cancel();
            alertDialog = null;
            finish();
        }
        super.onStop();
    }

}
