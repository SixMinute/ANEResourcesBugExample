// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            SSLSecurityDialog, AndroidAlertDialog

class val.dialog
    implements Runnable
{

    final SSLSecurityDialog this$0;
    final AndroidAlertDialog val$dialog;

    public void run()
    {
        val$dialog.show();
    }

    ()
    {
        this$0 = final_sslsecuritydialog;
        val$dialog = AndroidAlertDialog.this;
        super();
    }
}
