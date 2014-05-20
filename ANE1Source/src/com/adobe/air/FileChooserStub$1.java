// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            FileChooserStub, AIRExpandableFileChooser, AndroidAlertDialog

class val.f_fsObject
    implements Runnable
{

    final FileChooserStub this$0;
    final String val$f_defaultPath;
    final FileChooserStub val$f_fsObject;
    final boolean val$f_multipleSelection;
    final boolean val$f_save;

    public void run()
    {
        FileChooserStub.access$002(FileChooserStub.this, new AIRExpandableFileChooser(FileChooserStub.access$100(FileChooserStub.this), val$f_save, val$f_multipleSelection, val$f_defaultPath, val$f_fsObject));
        FileChooserStub.access$000(FileChooserStub.this).GetDialog().show();
    }

    ()
    {
        this$0 = final_filechooserstub;
        val$f_save = flag;
        val$f_multipleSelection = flag1;
        val$f_defaultPath = s;
        val$f_fsObject = FileChooserStub.this;
        super();
    }
}
