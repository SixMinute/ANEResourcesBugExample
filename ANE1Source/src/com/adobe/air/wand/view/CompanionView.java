// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.view;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import com.adobe.air.TouchEventData;

// Referenced classes of package com.adobe.air.wand.view:
//            TouchSensor, GestureListener, GestureEventData

public class CompanionView extends View
{

    private static final String LOG_TAG = "CompanionView";
    static final int POST_TOUCH_MESSAGE_AFTER_DELAY = 0;
    public static final int kTouchActionBegin = 2;
    public static final int kTouchActionEnd = 4;
    public static final int kTouchActionMove = 1;
    public static final int kTouchMetaStateIsEraser = 0x4000000;
    public static final int kTouchMetaStateIsPen = 0x2000000;
    public static final int kTouchMetaStateMask = 0xe000000;
    public static final int kTouchMetaStateSideButton1 = 0x8000000;
    public final int kMultitouchGesture;
    public final int kMultitouchNone;
    public final int kMultitouchRaw;
    private int mBoundHeight;
    private int mBoundWidth;
    private int mCurrentOrientation;
    private GestureDetector mGestureDetector;
    private GestureListener mGestureListener;
    private boolean mIsFullScreen;
    private int mMultitouchMode;
    private ScaleGestureDetector mScaleGestureDetector;
    private int mSkipHeightFromTop;
    private TouchSensor mTouchSensor;
    private int mVisibleBoundHeight;
    private int mVisibleBoundWidth;

    public CompanionView(Context context)
    {
        super(context);
        kMultitouchNone = 0;
        kMultitouchRaw = 1;
        kMultitouchGesture = 2;
        mSkipHeightFromTop = 0;
        mBoundHeight = 0;
        mBoundWidth = 0;
        mVisibleBoundWidth = 0;
        mVisibleBoundHeight = 0;
        mMultitouchMode = 2;
        mCurrentOrientation = 0;
        mIsFullScreen = false;
        mTouchSensor = null;
        initView(context);
    }

    public CompanionView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        kMultitouchNone = 0;
        kMultitouchRaw = 1;
        kMultitouchGesture = 2;
        mSkipHeightFromTop = 0;
        mBoundHeight = 0;
        mBoundWidth = 0;
        mVisibleBoundWidth = 0;
        mVisibleBoundHeight = 0;
        mMultitouchMode = 2;
        mCurrentOrientation = 0;
        mIsFullScreen = false;
        mTouchSensor = null;
        initView(context);
    }

    private boolean IsTouchEventHandlingAllowed(int i, float f, float f1)
    {
        return true;
    }

    private void initView(Context context)
    {
        mTouchSensor = new TouchSensor();
        mGestureListener = new GestureListener(context, this);
        mGestureDetector = new GestureDetector(context, mGestureListener, null, false);
        mScaleGestureDetector = new ScaleGestureDetector(context, mGestureListener);
        setWillNotDraw(false);
        setClickable(true);
        setEnabled(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
    }

    public boolean IsLandScape()
    {
        return mCurrentOrientation == 2;
    }

    public boolean IsTouchUpHandlingAllowed()
    {
        return true;
    }

    public int getBoundHeight()
    {
        return mBoundHeight;
    }

    public int getBoundWidth()
    {
        return mBoundWidth;
    }

    public boolean getIsFullScreen()
    {
        return mIsFullScreen;
    }

    public int getMultitouchMode()
    {
        return mMultitouchMode;
    }

    public TouchSensor getTouchSensor()
    {
        return mTouchSensor;
    }

    public int getVisibleBoundHeight()
    {
        return mVisibleBoundHeight;
    }

    public int getVisibleBoundWidth()
    {
        return mVisibleBoundWidth;
    }

    protected void onFocusChanged(boolean flag, int i, Rect rect)
    {
        super.onFocusChanged(flag, i, rect);
    }

    public void onGestureListener(int i, int j, boolean flag, float f, float f1, float f2, float f3, 
            float f4, float f5, float f6)
    {
        GestureEventData gestureeventdata = new GestureEventData(i, j, flag, f, f1, f2, f3, f4, f5, f6);
        mTouchSensor.dispatchEvent(gestureeventdata);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        return false;
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        return false;
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        boolean flag;
        int k;
        float f;
        float f1;
        byte byte0;
        int l;
        int i1;
        int j1;
        int k1;
        boolean flag3;
        int i2;
        int i = 0xff & motionevent.getAction();
        if (true && mGestureListener != null)
        {
            if (i == 5 || i == 0)
            {
                for (int l4 = 0; l4 < motionevent.getPointerCount(); l4++)
                {
                    int j5 = motionevent.getPointerId(l4);
                    mGestureListener.setDownTouchPoint(motionevent.getX(l4), motionevent.getY(l4), j5);
                }

            }
            if (i == 0)
            {
                mGestureListener.mayStartNewTransformGesture();
            }
            int j;
            int j2;
            int l2;
            int l3;
            int i4;
            int j4;
            if (i == 5)
            {
                mGestureListener.setCouldBeTwoFingerTap(1);
                int i5 = i >> 8;
                mGestureListener.setSecondaryPointOfTwoFingerTap(mGestureListener.getDownTouchPoint(i5));
            } else
            if (i == 6 && mGestureListener.getCouldBeTwoFingerTap() == 1)
            {
                mGestureListener.setCouldBeTwoFingerTap(2);
            } else
            if (i == 1 && mGestureListener.getCouldBeTwoFingerTap() == 2)
            {
                mGestureListener.setCouldBeTwoFingerTap(3);
            } else
            if (i != 2)
            {
                mGestureListener.setCouldBeTwoFingerTap(0);
            }
        }
        j = motionevent.getPointerCount();
        flag = false;
        k = 0;
_L14:
        if (k >= j) goto _L2; else goto _L1
_L1:
        f = motionevent.getX(k);
        f1 = motionevent.getY(k) + (float)mSkipHeightFromTop;
        byte0 = 1;
        l = motionevent.getAction();
        i1 = motionevent.getPointerId(k);
        j1 = motionevent.getMetaState();
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            break MISSING_BLOCK_LABEL_913;
        }
        j1 &= 0xf1ffffff;
        int k4 = motionevent.getToolType(k);
        if (k4 == 4)
        {
            j1 |= 0x4000000;
        } else
        if (k4 == 2)
        {
            j1 |= 0x2000000;
        }
        if ((2 & motionevent.getButtonState()) == 0)
        {
            break MISSING_BLOCK_LABEL_913;
        }
        k1 = j1 | 0x8000000;
_L26:
        if (!flag) goto _L4; else goto _L3
_L3:
        flag3 = flag;
        i2 = 3;
        byte0 = 4;
_L13:
        if (!IsTouchEventHandlingAllowed(byte0, f, f1)) goto _L6; else goto _L5
_L4:
        if (motionevent.getPointerCount() != 1 && i1 != motionevent.getPointerId((0xff00 & l) >> 8)) goto _L8; else goto _L7
_L7:
        int l1 = l & 0xff;
        boolean flag1;
        Exception exception;
        boolean flag2;
        float f3;
        int i3;
        int j3;
        int k3;
        TouchEventData toucheventdata;
        TouchEventData toucheventdata1;
        switch (l1)
        {
        case 2: // '\002'
        case 4: // '\004'
        default:
            flag3 = flag;
            i2 = l1;
            byte0 = 1;
            break;

        case 0: // '\0'
        case 5: // '\005'
            flag3 = flag;
            i2 = l1;
            byte0 = 2;
            break;

        case 3: // '\003'
            flag = true;
            // fall through

        case 1: // '\001'
        case 6: // '\006'
            if (mGestureListener != null)
            {
                mGestureListener.endTwoFingerGesture();
                mGestureListener.setCheckForSwipe(true);
                flag3 = flag;
                i2 = l1;
                byte0 = 4;
            } else
            {
                flag3 = flag;
                i2 = l1;
                byte0 = 4;
            }
            break;
        }
          goto _L9
_L5:
        float f2 = motionevent.getSize(k);
        boolean flag4;
        float af[];
        int k2;
        if (i1 == 0)
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        j2 = motionevent.getHistorySize();
        af = new float[3 * (j2 + 1)];
        k2 = 0;
        for (l2 = 0; l2 < j2;)
        {
            l3 = k2 + 1;
            af[k2] = motionevent.getHistoricalX(k, l2);
            i4 = l3 + 1;
            af[l3] = motionevent.getHistoricalY(k, l2);
            j4 = i4 + 1;
            af[i4] = motionevent.getHistoricalPressure(k, l2);
            l2++;
            k2 = j4;
        }

        f3 = motionevent.getPressure(k);
        af[k2] = f;
        af[k2 + 1] = f1;
        af[k2 + 2] = f3;
        i3 = k1 & -2;
        if (byte0 != 1)
        {
            if (i2 == 3)
            {
                j3 = i3 | 1;
            } else
            {
                j3 = i3;
            }
            toucheventdata1 = new TouchEventData(byte0, f, f1, f3, i1, f2, f2, flag4, null, j3);
            mTouchSensor.dispatchEvent(toucheventdata1);
        } else
        {
            j3 = i3;
        }
        byte0;
        JVM INSTR tableswitch 1 2: default 732
    //                   1 788
    //                   2 788;
           goto _L10 _L11 _L11
_L10:
        k3 = 0;
_L15:
        if (k3 != 0)
        {
            toucheventdata = new TouchEventData(k3, f, f1, f3, i1, f2, f2, flag4, af, j3);
            mTouchSensor.dispatchEvent(toucheventdata);
        }
          goto _L6
_L9:
        if (true) goto _L13; else goto _L12
_L12:
_L6:
        k++;
        flag = flag3;
          goto _L14
_L11:
        k3 = 1;
          goto _L15
_L2:
        if (mScaleGestureDetector == null) goto _L17; else goto _L16
_L16:
        if (false) goto _L19; else goto _L18
_L18:
        try
        {
            flag2 = mScaleGestureDetector.onTouchEvent(motionevent);
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception)
        {
            flag1 = true;
            continue; /* Loop/switch isn't completed */
        }
        if (!flag2) goto _L19; else goto _L20
_L20:
        flag1 = true;
_L25:
        if (mGestureDetector == null) goto _L22; else goto _L21
_L21:
        if (!flag1 || !mGestureDetector.onTouchEvent(motionevent)) goto _L24; else goto _L23
_L23:
        flag1 = true;
_L22:
        return flag1;
_L19:
        flag1 = false;
        continue; /* Loop/switch isn't completed */
_L24:
        return false;
_L17:
        flag1 = true;
        if (true) goto _L25; else goto _L8
_L8:
        flag3 = flag;
        i2 = l;
          goto _L13
        k1 = j1;
          goto _L26
    }

    public void onWindowFocusChanged(boolean flag)
    {
    }

    public View returnThis()
    {
        return this;
    }

    public void setMultitouchMode(int i)
    {
        mMultitouchMode = i;
    }
}
