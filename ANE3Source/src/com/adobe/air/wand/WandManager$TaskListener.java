// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand;

import android.graphics.Bitmap;
import com.adobe.air.wand.connection.Connection;
import com.adobe.air.wand.view.WandView;

// Referenced classes of package com.adobe.air.wand:
//            WandManager

private class <init>
    implements <init>
{

    final WandManager this$0;

    public void drawImage(Bitmap bitmap)
        throws Exception
    {
        WandManager.access$000(WandManager.this).drawImage(bitmap);
    }

    public void sendConnectionMessage(String s)
        throws Exception
    {
        WandManager.access$300(WandManager.this).send(s);
    }

    public void setScreenOrientation(com.adobe.air.wand.view.n n)
        throws Exception
    {
        WandManager.access$000(WandManager.this).setScreenOrientation(n);
    }

    private tation()
    {
        this$0 = WandManager.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
