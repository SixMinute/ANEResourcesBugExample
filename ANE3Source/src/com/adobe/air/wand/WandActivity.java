// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand;

import android.app.Activity;
import android.os.Bundle;
import android.view.Window;
import com.adobe.air.wand.connection.WandWebSocket;
import com.adobe.air.wand.view.WandView;

// Referenced classes of package com.adobe.air.wand:
//            WandManager

public class WandActivity extends Activity
{

    private static final String LOG_TAG = "WandActivity";
    private WandManager mWandManager;
    private WandWebSocket mWandWebSocket;

    public WandActivity()
    {
        mWandWebSocket = null;
        mWandManager = null;
    }

    private void initialize()
    {
        try
        {
            mWandWebSocket = new WandWebSocket(this);
            mWandManager = new WandManager(this, (WandView)findViewById(0x7f0700e1), mWandWebSocket);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void terminate()
        throws Exception
    {
        mWandManager.dispose();
        mWandManager = null;
        mWandWebSocket.dispose();
        mWandWebSocket = null;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        getWindow().setFormat(1);
        setContentView(0x7f03003d);
        initialize();
    }

    public void onDestroy()
    {
        super.onDestroy();
        try
        {
            terminate();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void onPause()
    {
        super.onPause();
        try
        {
            mWandManager.focus(false);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void onResume()
    {
        super.onResume();
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        if (!flag || mWandManager.hasFocus())
        {
            break MISSING_BLOCK_LABEL_27;
        }
        mWandManager.focus(true);
        return;
        Exception exception;
        exception;
    }
}
