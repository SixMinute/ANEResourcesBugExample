// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand;

import com.adobe.air.wand.view.WandView;

// Referenced classes of package com.adobe.air.wand:
//            WandManager, TaskManager

private class <init>
    implements com.adobe.air.wand.connection._01_
{

    final WandManager this$0;

    public void onConnectError()
    {
    }

    public void onConnectSuccess()
    {
    }

    public void onConnectionClose()
    {
        try
        {
            WandManager.access$100(WandManager.this);
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void onConnectionOpen(String s)
    {
        try
        {
            WandManager.access$000(WandManager.this).setScreenOrientation(com.adobe.air.wand.view.SCAPE);
            WandManager.access$000(WandManager.this).loadCompanionView();
            return;
        }
        catch (Throwable throwable)
        {
            return;
        }
    }

    public void onDisconnectError()
    {
    }

    public void onDisconnectSuccess()
    {
    }

    public void onReceive(String s)
    {
        WandManager.access$200(WandManager.this).handleRemoteMessage(s);
    }

    public void updateConnectionToken(String s)
    {
        WandManager.access$000(WandManager.this).updateConnectionToken(s);
    }

    private ()
    {
        this$0 = WandManager.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
