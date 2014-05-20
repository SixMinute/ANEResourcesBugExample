// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Intent;
import com.adobe.air.wand.WandActivity;

// Referenced classes of package com.adobe.air:
//            AdobeAIR

class this._cls0
    implements er.Listener
{

    final AdobeAIR this$0;

    public void onShake()
    {
        Intent intent = new Intent(AdobeAIR.this, com/adobe/air/wand/WandActivity);
        startActivity(intent);
    }

    tivity()
    {
        this$0 = AdobeAIR.this;
        super();
    }
}
