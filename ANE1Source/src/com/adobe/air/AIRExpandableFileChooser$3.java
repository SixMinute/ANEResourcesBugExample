// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.view.View;
import android.widget.EditText;
import java.util.ArrayList;

// Referenced classes of package com.adobe.air:
//            AIRExpandableFileChooser, FileChooserStub, AndroidAlertDialog

class this._cls0
    implements android.view.
{

    final AIRExpandableFileChooser this$0;

    public void onClick(View view)
    {
        String s = AIRExpandableFileChooser.access$700(AIRExpandableFileChooser.this).getText().toString();
        if (s.length() != 0)
        {
            AIRExpandableFileChooser.access$800(AIRExpandableFileChooser.this).clear();
            AIRExpandableFileChooser.access$800(AIRExpandableFileChooser.this).add(s);
            AIRExpandableFileChooser.access$600(AIRExpandableFileChooser.this).SetUserAction("done");
            AIRExpandableFileChooser.access$900(AIRExpandableFileChooser.this, AIRExpandableFileChooser.access$700(AIRExpandableFileChooser.this));
            AIRExpandableFileChooser.access$1000(AIRExpandableFileChooser.this).dismiss();
        }
    }

    ()
    {
        this$0 = AIRExpandableFileChooser.this;
        super();
    }
}
