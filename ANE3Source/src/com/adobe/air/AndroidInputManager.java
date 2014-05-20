// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.content.res.Configuration;
import android.hardware.input.InputManager;
import android.util.SparseArray;
import android.view.InputDevice;
import android.view.KeyEvent;
import android.view.MotionEvent;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper, AndroidInputDevice

public class AndroidInputManager
    implements android.hardware.input.InputManager.InputDeviceListener, AndroidActivityWrapper.StateChangeCallback, AndroidActivityWrapper.InputEventCallback
{

    private static AndroidInputManager sAndroidInputManager = null;
    private Context mContext;
    private SparseArray mInputDevices;
    private InputManager mInputManager;
    private long mInternalReference;
    private boolean mListening;

    private AndroidInputManager(Context context)
    {
        mContext = null;
        mInputManager = null;
        mInputDevices = null;
        mInternalReference = 0L;
        mListening = false;
        mContext = context;
        if (mContext != null)
        {
            mInputManager = (InputManager)mContext.getSystemService("input");
        }
        AndroidActivityWrapper androidactivitywrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
        if (androidactivitywrapper != null)
        {
            androidactivitywrapper.addActivityStateChangeListner(this);
            androidactivitywrapper.addInputEventListner(this);
        }
        mInputDevices = new SparseArray();
    }

    public static AndroidInputManager GetAndroidInputManager(Context context)
    {
        if (isSupported() && sAndroidInputManager == null)
        {
            sAndroidInputManager = new AndroidInputManager(context);
        }
        return sAndroidInputManager;
    }

    private native void OnDeviceAdded(long l, AndroidInputDevice androidinputdevice, String s);

    private native void OnDeviceRemoved(long l, String s);

    private void addRemoveExistingInputDevices()
    {
        int i = mInputDevices.size();
        int j = 0;
label0:
        do
        {
            if (j < i)
            {
                int ai1[] = mInputManager.getInputDeviceIds();
                int l = 0;
                do
                {
                    if (l >= ai1.length || mInputDevices.keyAt(j) == ai1[l])
                    {
                        if (l == ai1.length)
                        {
                            AndroidInputDevice androidinputdevice = (AndroidInputDevice)mInputDevices.valueAt(j);
                            OnDeviceRemoved(mInternalReference, androidinputdevice.getUniqueId());
                            mInputDevices.delete(mInputDevices.keyAt(j));
                        }
                        j++;
                        continue label0;
                    }
                    l++;
                } while (true);
            }
            int ai[] = mInputManager.getInputDeviceIds();
            for (int k = 0; k < ai.length; k++)
            {
                onInputDeviceAdded(ai[k]);
            }

            return;
        } while (true);
    }

    public static boolean isSupported()
    {
        Class class1;
        try
        {
            class1 = Class.forName("android.hardware.input.InputManager");
        }
        catch (Exception exception)
        {
            return false;
        }
        return class1 != null;
    }

    public AndroidInputDevice getInputDevice(int i)
    {
        return (AndroidInputDevice)mInputDevices.get(i);
    }

    public void listenForInputDevice(boolean flag)
    {
        if (mInputManager != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        if (flag)
        {
            try
            {
                if (!mListening)
                {
                    mInputManager.registerInputDeviceListener(this, null);
                    addRemoveExistingInputDevices();
                    mListening = true;
                    return;
                }
            }
            catch (Exception exception)
            {
                return;
            }
        }
        if (flag) goto _L1; else goto _L3
_L3:
        if (!mListening) goto _L1; else goto _L4
_L4:
        mInputManager.unregisterInputDeviceListener(this);
        mListening = false;
        return;
    }

    public void onActivityStateChanged(AndroidActivityWrapper.ActivityState activitystate)
    {
        if (activitystate == AndroidActivityWrapper.ActivityState.RESUMED)
        {
            listenForInputDevice(true);
        } else
        if (activitystate == AndroidActivityWrapper.ActivityState.PAUSED)
        {
            listenForInputDevice(false);
            return;
        }
    }

    public void onConfigurationChanged(Configuration configuration)
    {
    }

    public boolean onGenericMotionEvent(MotionEvent motionevent)
    {
        if ((0x10 & motionevent.getSource()) != 0 && motionevent.getAction() == 2)
        {
            AndroidInputDevice androidinputdevice = (AndroidInputDevice)mInputDevices.get(motionevent.getDeviceId());
            if (androidinputdevice != null)
            {
                return androidinputdevice.onGenericMotionEvent(motionevent);
            }
        }
        return false;
    }

    public void onInputDeviceAdded(int i)
    {
        if ((AndroidInputDevice)mInputDevices.get(i) == null)
        {
            InputDevice inputdevice = mInputManager.getInputDevice(i);
            if (!inputdevice.isVirtual() && (0x10 & inputdevice.getSources()) != 0 && (1 & inputdevice.getSources()) != 0)
            {
                AndroidInputDevice androidinputdevice = new AndroidInputDevice(inputdevice);
                mInputDevices.put(i, androidinputdevice);
                OnDeviceAdded(mInternalReference, androidinputdevice, androidinputdevice.getUniqueId());
            }
        }
    }

    public void onInputDeviceChanged(int i)
    {
        onInputDeviceRemoved(i);
        onInputDeviceAdded(i);
    }

    public void onInputDeviceRemoved(int i)
    {
        AndroidInputDevice androidinputdevice = (AndroidInputDevice)mInputDevices.get(i);
        if (androidinputdevice != null)
        {
            OnDeviceRemoved(mInternalReference, androidinputdevice.getUniqueId());
            mInputDevices.delete(i);
        }
    }

    public boolean onKeyEvent(KeyEvent keyevent)
    {
        AndroidInputDevice androidinputdevice = (AndroidInputDevice)mInputDevices.get(keyevent.getDeviceId());
        if (androidinputdevice != null)
        {
            return androidinputdevice.onKeyEvent(keyevent);
        } else
        {
            return false;
        }
    }

    public void setInternalReference(long l)
    {
        mInternalReference = l;
    }

}
