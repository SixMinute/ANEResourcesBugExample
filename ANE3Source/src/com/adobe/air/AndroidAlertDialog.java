// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.AlertDialog;
import android.content.Context;

public class AndroidAlertDialog
{

    private AlertDialog mAlertDialog;
    private android.app.AlertDialog.Builder mDialogBuilder;

    public AndroidAlertDialog(Context context)
    {
        mDialogBuilder = null;
        mAlertDialog = null;
        mDialogBuilder = new android.app.AlertDialog.Builder(context);
    }

    public android.app.AlertDialog.Builder GetAlertDialogBuilder()
    {
        return mDialogBuilder;
    }

    public void dismiss()
    {
        if (mAlertDialog != null)
        {
            mAlertDialog.dismiss();
        }
    }

    public void show()
    {
        mAlertDialog = mDialogBuilder.create();
        mAlertDialog.show();
    }
}
