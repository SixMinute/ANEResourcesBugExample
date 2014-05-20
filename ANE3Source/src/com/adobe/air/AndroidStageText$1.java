// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.adobe.air:
//            AndroidStageText, AIRWindowSurfaceView

class this._cls0
    implements android.widget.tionListener
{

    final AndroidStageText this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        i;
        JVM INSTR tableswitch 2 6: default 36
    //                   2 78
    //                   3 78
    //                   4 36
    //                   5 38
    //                   6 127;
           goto _L1 _L2 _L2 _L1 _L3 _L4
_L1:
        return false;
_L3:
        boolean flag1 = AndroidStageText.access$1500(AndroidStageText.this, AndroidStageText.access$100(AndroidStageText.this), 0, 87);
        AndroidStageText.access$1500(AndroidStageText.this, AndroidStageText.access$100(AndroidStageText.this), 1, 87);
        return flag1;
_L2:
        AndroidStageText.access$1402(AndroidStageText.this, true);
        boolean flag = AndroidStageText.access$1500(AndroidStageText.this, AndroidStageText.access$100(AndroidStageText.this), 0, 66);
        AndroidStageText.access$1500(AndroidStageText.this, AndroidStageText.access$100(AndroidStageText.this), 1, 66);
        return flag;
_L4:
        AndroidStageText.access$600(AndroidStageText.this).DispatchSoftKeyboardEventOnBackKey();
        if (true) goto _L1; else goto _L5
_L5:
    }

    w()
    {
        this$0 = AndroidStageText.this;
        super();
    }
}
