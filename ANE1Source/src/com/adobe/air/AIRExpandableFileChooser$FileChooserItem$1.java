// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.util.SparseBooleanArray;
import android.widget.CompoundButton;

// Referenced classes of package com.adobe.air:
//            AIRExpandableFileChooser

class val.this._cls0
    implements android.widget.al.this._cls0
{

    final this._cls1 this$1;
    final AIRExpandableFileChooser val$this$0;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        if (cess._mth200(this._cls1.this) < 0)
        {
            return;
        }
        if (flag)
        {
            AIRExpandableFileChooser.access$300(_fld0).put(cess._mth200(this._cls1.this), flag);
            return;
        } else
        {
            AIRExpandableFileChooser.access$300(_fld0).delete(cess._mth200(this._cls1.this));
            return;
        }
    }

    ()
    {
        this$1 = final_;
        val$this$0 = AIRExpandableFileChooser.this;
        super();
    }
}
