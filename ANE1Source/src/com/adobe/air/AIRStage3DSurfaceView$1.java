// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            AIRStage3DSurfaceView

class this._cls0
    implements android.view.lLayoutListener
{

    final AIRStage3DSurfaceView this$0;

    public void onGlobalLayout()
    {
        if (AIRStage3DSurfaceView.access$000(AIRStage3DSurfaceView.this) != 0L)
        {
            AIRStage3DSurfaceView.access$100(AIRStage3DSurfaceView.this, AIRStage3DSurfaceView.access$000(AIRStage3DSurfaceView.this));
        }
    }

    LayoutListener()
    {
        this$0 = AIRStage3DSurfaceView.this;
        super();
    }
}
