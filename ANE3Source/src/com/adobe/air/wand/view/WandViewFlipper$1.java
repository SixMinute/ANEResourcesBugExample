// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.view;

import android.graphics.Bitmap;
import android.widget.ImageView;

// Referenced classes of package com.adobe.air.wand.view:
//            WandViewFlipper

class val.scaledImage
    implements Runnable
{

    final WandViewFlipper this$0;
    final Bitmap val$scaledImage;
    final ImageView val$skinView;

    public void run()
    {
        val$skinView.setImageBitmap(val$scaledImage);
    }

    ()
    {
        this$0 = final_wandviewflipper;
        val$skinView = imageview;
        val$scaledImage = Bitmap.this;
        super();
    }
}
