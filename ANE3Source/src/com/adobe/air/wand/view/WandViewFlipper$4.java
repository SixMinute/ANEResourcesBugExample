// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.view;

import android.view.View;
import android.widget.TextView;

// Referenced classes of package com.adobe.air.wand.view:
//            WandViewFlipper

class val.connectionToken
    implements Runnable
{

    final WandViewFlipper this$0;
    final String val$connectionToken;

    public void run()
    {
        String s;
        TextView textview;
        boolean flag;
        if (!val$connectionToken.equals(""))
        {
            s = WandViewFlipper.access$300(val$connectionToken);
        } else
        {
            s = "";
        }
        ((TextView)WandViewFlipper.access$400(WandViewFlipper.this).findViewById(0x7f0700df)).setText(s);
        textview = (TextView)WandViewFlipper.access$400(WandViewFlipper.this).findViewById(0x7f0700e0);
        if (!val$connectionToken.equals(""))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        textview.setText(WandViewFlipper.access$500(flag));
    }

    ()
    {
        this$0 = final_wandviewflipper;
        val$connectionToken = String.this;
        super();
    }
}
