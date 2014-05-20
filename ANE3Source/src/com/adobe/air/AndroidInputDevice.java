// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.view.InputDevice;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.adobe.air:
//            AndroidInputControl, ControlType

class AndroidInputDevice
{

    private InputDevice mDevice;
    private List mInputControls;
    private int mNumControls;

    public AndroidInputDevice(InputDevice inputdevice)
    {
        mDevice = null;
        mInputControls = null;
        mNumControls = 0;
        mDevice = inputdevice;
        mInputControls = new ArrayList();
        Iterator iterator = inputdevice.getMotionRanges().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            android.view.InputDevice.MotionRange motionrange = (android.view.InputDevice.MotionRange)iterator.next();
            if ((0x10 & motionrange.getSource()) != 0)
            {
                AndroidInputControl androidinputcontrol1 = new AndroidInputControl(ControlType.AXIS, motionrange.getAxis(), motionrange.getMin(), motionrange.getMax());
                mInputControls.add(androidinputcontrol1);
                mNumControls = 1 + mNumControls;
            }
        } while (true);
        for (int i = 0; i < KeyEvent.getMaxKeyCode(); i++)
        {
            if (KeyCharacterMap.deviceHasKey(i) && isGameKey(i))
            {
                AndroidInputControl androidinputcontrol = new AndroidInputControl(ControlType.BUTTON, i, 0.0F, 1.0F);
                mInputControls.add(androidinputcontrol);
                mNumControls = 1 + mNumControls;
            }
        }

    }

    private static boolean isGameKey(int i)
    {
        switch (i)
        {
        default:
            return KeyEvent.isGamepadButton(i);

        case 19: // '\023'
        case 20: // '\024'
        case 21: // '\025'
        case 22: // '\026'
        case 23: // '\027'
            return true;
        }
    }

    public AndroidInputControl getInputControl(int i)
    {
        return (AndroidInputControl)mInputControls.get(i);
    }

    public String getName()
    {
        return mDevice.getName();
    }

    public int getNumControls()
    {
        return mNumControls;
    }

    public String getUniqueId()
    {
        return mDevice.getDescriptor();
    }

    public boolean onGenericMotionEvent(MotionEvent motionevent)
    {
        for (int i = 0; i < mInputControls.size(); i++)
        {
            AndroidInputControl androidinputcontrol = (AndroidInputControl)mInputControls.get(i);
            if (androidinputcontrol.getType() == ControlType.AXIS.ordinal())
            {
                androidinputcontrol.setData(motionevent.getAxisValue(androidinputcontrol.getCode()));
            }
        }

        return true;
    }

    public boolean onKeyEvent(KeyEvent keyevent)
    {
        int i = 0;
_L6:
        AndroidInputControl androidinputcontrol;
        if (i >= mInputControls.size())
        {
            break; /* Loop/switch isn't completed */
        }
        androidinputcontrol = (AndroidInputControl)mInputControls.get(i);
        if (androidinputcontrol.getType() != ControlType.BUTTON.ordinal() || androidinputcontrol.getCode() != keyevent.getKeyCode()) goto _L2; else goto _L1
_L1:
        keyevent.getAction();
        JVM INSTR tableswitch 0 1: default 80
    //                   0 86
    //                   1 93;
           goto _L2 _L3 _L4
_L2:
        i++;
        continue; /* Loop/switch isn't completed */
_L3:
        androidinputcontrol.setData(1.0F);
        return true;
        if (true) goto _L6; else goto _L5
_L4:
        androidinputcontrol.setData(0.0F);
        return true;
_L5:
        return false;
    }
}
