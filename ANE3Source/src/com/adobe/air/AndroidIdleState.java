// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.PowerManager;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

public class AndroidIdleState
{

    public static final int IDLE_STATE_NORMAL = 0;
    private static final String IDLE_STATE_TAG = "AndroidIdleState";
    public static final int IDLE_STATE_WAKEUP = 1;
    private static AndroidIdleState mIdleStateManager = null;
    private int mCurrentIdleState;
    private boolean mIsWakeUpLockHeld;
    private android.app.KeyguardManager.KeyguardLock mKeyGuardLock;
    private android.os.PowerManager.WakeLock mScreenBrightLock;
    private BroadcastReceiver sReceiver;
    private boolean sScreenOn;

    private AndroidIdleState(Context context)
    {
        mScreenBrightLock = null;
        mKeyGuardLock = null;
        mIsWakeUpLockHeld = false;
        mCurrentIdleState = 0;
        sReceiver = null;
        sScreenOn = true;
        if (sReceiver != null)
        {
            break MISSING_BLOCK_LABEL_79;
        }
        sReceiver = new BroadcastReceiver() {

            final AndroidIdleState this$0;

            public void onReceive(Context context1, Intent intent)
            {
                boolean flag;
                if (intent.getAction().equals("android.intent.action.SCREEN_OFF"))
                {
                    flag = false;
                } else
                if (intent.getAction().equals("android.intent.action.SCREEN_ON"))
                {
                    flag = true;
                } else
                {
                    flag = true;
                }
                if (sScreenOn != flag)
                {
                    sScreenOn = flag;
                    AndroidActivityWrapper.GetAndroidActivityWrapper().onScreenStateChanged(sScreenOn);
                }
            }

            
            {
                this$0 = AndroidIdleState.this;
                super();
            }
        };
        IntentFilter intentfilter = new IntentFilter("android.intent.action.SCREEN_ON");
        intentfilter.addAction("android.intent.action.SCREEN_OFF");
        context.registerReceiver(sReceiver, intentfilter);
        return;
        Exception exception;
        exception;
    }

    public static AndroidIdleState GetIdleStateManager(Context context)
    {
        if (mIdleStateManager == null)
        {
            mIdleStateManager = new AndroidIdleState(context);
        }
        return mIdleStateManager;
    }

    public void ChangeIdleState(Context context, int i)
    {
        android.os.PowerManager.WakeLock wakelock;
        Exception exception1;
        if (i == 0)
        {
            try
            {
                releaseLock();
                mCurrentIdleState = 0;
                return;
            }
            catch (Exception exception)
            {
                return;
            }
        }
        wakelock = mScreenBrightLock;
        if (wakelock != null)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        mScreenBrightLock = ((PowerManager)(PowerManager)context.getSystemService("power")).newWakeLock(0x1000000a, "DoNotDimScreen");
        mKeyGuardLock = ((KeyguardManager)(KeyguardManager)context.getSystemService("keyguard")).newKeyguardLock("DoNotLockKeys");
        mCurrentIdleState = 1;
        acquireLock();
        return;
        exception1;
        mScreenBrightLock = null;
        mKeyGuardLock = null;
        return;
    }

    public void acquireLock()
    {
        try
        {
            if (mCurrentIdleState == 1 && !mIsWakeUpLockHeld)
            {
                mScreenBrightLock.acquire();
                mKeyGuardLock.disableKeyguard();
                mIsWakeUpLockHeld = true;
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void releaseLock()
    {
        try
        {
            if (mCurrentIdleState == 1 && mIsWakeUpLockHeld)
            {
                mScreenBrightLock.release();
                mKeyGuardLock.reenableKeyguard();
                mIsWakeUpLockHeld = false;
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }




/*
    static boolean access$002(AndroidIdleState androididlestate, boolean flag)
    {
        androididlestate.sScreenOn = flag;
        return flag;
    }

*/
}
