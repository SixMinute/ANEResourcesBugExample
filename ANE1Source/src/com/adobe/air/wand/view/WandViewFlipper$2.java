// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.view;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

// Referenced classes of package com.adobe.air.wand.view:
//            WandViewFlipper

class this._cls0
    implements Runnable
{

    final WandViewFlipper this$0;

    public void run()
    {
        ((ImageView)WandViewFlipper.access$000(WandViewFlipper.this).findViewById(0x7f0700db)).setImageResource(0x7f080041);
        WandViewFlipper.access$102(WandViewFlipper.this, 0);
        String s;
        String s1;
        TextView textview;
        boolean flag;
        if (WandViewFlipper.access$200(WandViewFlipper.this) != null)
        {
            s = WandViewFlipper.access$200(WandViewFlipper.this).getConnectionToken();
        } else
        {
            s = "";
        }
        if (!s.equals(""))
        {
            s1 = WandViewFlipper.access$300(s);
        } else
        {
            s1 = s;
        }
        ((TextView)WandViewFlipper.access$400(WandViewFlipper.this).findViewById(0x7f0700df)).setText(s1);
        textview = (TextView)WandViewFlipper.access$400(WandViewFlipper.this).findViewById(0x7f0700e0);
        if (!WandViewFlipper.access$200(WandViewFlipper.this).getConnectionToken().equals(""))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        textview.setText(WandViewFlipper.access$500(flag));
        setDisplayedChild(WandViewFlipper.access$100(WandViewFlipper.this));
    }

    ()
    {
        this$0 = WandViewFlipper.this;
        super();
    }
}
