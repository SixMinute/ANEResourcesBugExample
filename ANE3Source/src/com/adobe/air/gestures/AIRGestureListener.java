// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.gestures;

import android.content.Context;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import com.adobe.air.AIRWindowSurfaceView;
import com.adobe.air.SystemCapabilities;

public class AIRGestureListener
    implements android.view.GestureDetector.OnGestureListener, android.view.GestureDetector.OnDoubleTapListener, android.view.ScaleGestureDetector.OnScaleGestureListener
{
    private class TouchPoint
    {

        private int pid;
        final AIRGestureListener this$0;
        private float x;
        private float y;

        private void assign(float f, float f1, int i)
        {
            x = f;
            y = f1;
            pid = i;
        }





        TouchPoint()
        {
            this$0 = AIRGestureListener.this;
            super();
            x = 0.0F;
            y = 0.0F;
            pid = 0;
        }

        TouchPoint(float f, float f1, int i)
        {
            this$0 = AIRGestureListener.this;
            super();
            x = f;
            y = f1;
            pid = i;
        }
    }


    private static final String LOG_TAG = "AIRGestureListener";
    private static final int MAX_TOUCH_POINTS = 2;
    private static final float MM_PER_INCH = 25.4F;
    private static final float _FP_GESTURE_PAN_THRESHOLD_MM = 3F;
    private static final float _FP_GESTURE_ROTATION_THRESHOLD_DEGREES = 15F;
    private static final float _FP_GESTURE_SWIPE_PRIMARY_AXIS_MIN_MM = 10F;
    private static final float _FP_GESTURE_SWIPE_SECONDARY_AXIS_MAX_MM = 5F;
    private static final float _FP_GESTURE_ZOOM_PER_AXIS_THRESHOLD_MM = 3F;
    private static final float _FP_GESTURE_ZOOM_THRESHOLD_MM = 8F;
    private static final int kGestureAll = 8;
    private static final int kGestureBegin = 2;
    private static final int kGestureEnd = 4;
    private static final int kGesturePan = 1;
    private static final int kGestureRotate = 2;
    private static final int kGestureSwipe = 5;
    private static final int kGestureTwoFingerTap = 3;
    private static final int kGestureUpdate = 1;
    private static final int kGestureZoom;
    private static int screenPPI = 0;
    private boolean mCheckForSwipe;
    private int mCouldBeTwoFingerTap;
    private TouchPoint mDownTouchPoints[];
    private boolean mInPanTransformGesture;
    private boolean mInRotateTransformGesture;
    private boolean mInZoomTransformGesture;
    private boolean mInZoomTransformGestureX;
    private boolean mInZoomTransformGestureY;
    private float mPreviousAbsoluteRotation;
    private float mPreviousPanLocX;
    private float mPreviousPanLocY;
    private float mPreviousRotateLocX;
    private float mPreviousRotateLocY;
    private float mPreviousZoomLocX;
    private float mPreviousZoomLocY;
    private TouchPoint mSecondaryPointOfTwoFingerTap;
    private AIRWindowSurfaceView mSurfaceView;

    public AIRGestureListener(Context context, AIRWindowSurfaceView airwindowsurfaceview)
    {
        mPreviousAbsoluteRotation = 0.0F;
        mInRotateTransformGesture = false;
        mInZoomTransformGesture = false;
        mInZoomTransformGestureX = false;
        mInZoomTransformGestureY = false;
        mInPanTransformGesture = false;
        mPreviousRotateLocX = 0.0F;
        mPreviousRotateLocY = 0.0F;
        mPreviousZoomLocX = 0.0F;
        mPreviousZoomLocY = 0.0F;
        mPreviousPanLocX = 0.0F;
        mPreviousPanLocY = 0.0F;
        mCouldBeTwoFingerTap = 0;
        mCheckForSwipe = true;
        mSurfaceView = airwindowsurfaceview;
        mDownTouchPoints = new TouchPoint[2];
        for (int i = 0; i < 2; i++)
        {
            mDownTouchPoints[i] = new TouchPoint();
        }

        mSecondaryPointOfTwoFingerTap = new TouchPoint();
        screenPPI = SystemCapabilities.GetScreenDPI(context);
    }

    private double distanceBetweenPoints(TouchPoint touchpoint, TouchPoint touchpoint1)
    {
        return Math.sqrt(Math.pow(touchpoint1.x - touchpoint.x, 2D) + Math.pow(touchpoint1.y - touchpoint.y, 2D));
    }

    private void endPanGesture()
    {
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        while (i != 2 || !mInPanTransformGesture) 
        {
            return;
        }
        nativeOnGestureListener(4, 1, true, mPreviousPanLocX, mPreviousPanLocY, 1.0F, 1.0F, 0.0F, 0.0F, 0.0F);
        mInPanTransformGesture = false;
    }

    private void endRotateGesture()
    {
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        while (i != 2 || !mInRotateTransformGesture) 
        {
            return;
        }
        nativeOnGestureListener(4, 2, true, mPreviousRotateLocX, mPreviousRotateLocY, 1.0F, 1.0F, 0.0F, 0.0F, 0.0F);
        mInRotateTransformGesture = false;
    }

    private void endZoomGesture()
    {
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        while (i != 2 || !mInZoomTransformGesture) 
        {
            return;
        }
        nativeOnGestureListener(4, 0, true, mPreviousZoomLocX, mPreviousZoomLocY, 1.0F, 1.0F, 0.0F, 0.0F, 0.0F);
        mInZoomTransformGesture = false;
        mInZoomTransformGestureX = false;
        mInZoomTransformGestureY = false;
    }

    private float getRotation(TouchPoint touchpoint, TouchPoint touchpoint1, TouchPoint touchpoint2, TouchPoint touchpoint3)
    {
        int i = touchpoint.pid;
        int j = touchpoint2.pid;
        float f = 0.0F;
        if (i == j)
        {
            int k = touchpoint1.pid;
            int l = touchpoint3.pid;
            f = 0.0F;
            if (k == l)
            {
                double d = (180D * Math.atan2(touchpoint1.y - touchpoint.y, touchpoint1.x - touchpoint.x)) / 3.1415926535897931D;
                f = (float)((180D * Math.atan2(touchpoint3.y - touchpoint2.y, touchpoint3.x - touchpoint2.x)) / 3.1415926535897931D - d);
            }
        }
        return f;
    }

    private boolean isPanGesture(TouchPoint touchpoint, TouchPoint touchpoint1, TouchPoint touchpoint2, TouchPoint touchpoint3)
    {
        float f = touchpoint2.x - touchpoint.x;
        float f1 = touchpoint2.y - touchpoint.y;
        float f2 = touchpoint3.x - touchpoint1.x;
        float f3 = touchpoint3.y - touchpoint1.y;
        float f4 = Math.min(Math.abs(f), Math.abs(f2));
        float f5 = Math.min(Math.abs(f1), Math.abs(f3));
        double d = Math.sqrt(f4 * f4 + f5 * f5);
        return (f >= 0.0F && f2 >= 0.0F || f <= 0.0F && f2 <= 0.0F) && (f1 >= 0.0F && f3 >= 0.0F || f1 <= 0.0F && f3 <= 0.0F) && (mInPanTransformGesture || d > (double)((3F * (float)screenPPI) / 25.4F));
    }

    private native boolean nativeOnGestureListener(int i, int j, boolean flag, float f, float f1, float f2, float f3, 
            float f4, float f5, float f6);

    public boolean endTwoFingerGesture()
    {
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        if (i != 2)
        {
            return true;
        } else
        {
            endRotateGesture();
            endPanGesture();
            return true;
        }
    }

    public boolean getCheckForSwipe()
    {
        return mCheckForSwipe;
    }

    public int getCouldBeTwoFingerTap()
    {
        return mCouldBeTwoFingerTap;
    }

    public TouchPoint getDownTouchPoint(int i)
    {
        if (i >= 0 && i < 2)
        {
            return mDownTouchPoints[i];
        } else
        {
            return null;
        }
    }

    public void mayStartNewTransformGesture()
    {
        mInRotateTransformGesture = false;
        mInZoomTransformGesture = false;
        mInZoomTransformGestureX = false;
        mInZoomTransformGestureY = false;
        mInPanTransformGesture = false;
    }

    public boolean onDoubleTap(MotionEvent motionevent)
    {
        if (motionevent.getPointerCount() == 1)
        {
            return true && mSurfaceView.nativeOnDoubleClickListener(motionevent.getX(0), motionevent.getY(0));
        } else
        {
            return true;
        }
    }

    public boolean onDoubleTapEvent(MotionEvent motionevent)
    {
        return true;
    }

    public boolean onDown(MotionEvent motionevent)
    {
        return true;
    }

    public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        return true;
    }

    public void onLongPress(MotionEvent motionevent)
    {
    }

    public boolean onScale(ScaleGestureDetector scalegesturedetector)
    {
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        if (i != 2)
        {
            return true;
        }
        float f = scalegesturedetector.getFocusX();
        float f1 = scalegesturedetector.getFocusY();
        double d = scalegesturedetector.getPreviousSpan();
        double d1 = Math.abs((double)scalegesturedetector.getCurrentSpan() - d);
        double d2;
        double d3;
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            double d4 = Math.abs(scalegesturedetector.getCurrentSpanX() - scalegesturedetector.getPreviousSpanX());
            double d5 = Math.abs(scalegesturedetector.getCurrentSpanY() - scalegesturedetector.getPreviousSpanY());
            d2 = d4;
            d3 = d5;
        } else
        {
            d2 = 0.0D;
            d3 = 0.0D;
        }
        if (d != 0.0D)
        {
            if (mInZoomTransformGesture || (25.399999618530273D * d1) / (double)screenPPI > 8D)
            {
                byte byte0;
                if (!mInZoomTransformGesture)
                {
                    mInZoomTransformGesture = true;
                    byte0 = 2;
                } else
                {
                    byte0 = 1;
                }
                if (android.os.Build.VERSION.SDK_INT >= 11)
                {
                    float f2;
                    float f3;
                    float f4;
                    float f5;
                    if (scalegesturedetector.getPreviousSpanX() != 0.0F && scalegesturedetector.getCurrentSpanX() != 0.0F && (mInZoomTransformGestureX || (25.399999618530273D * d2) / (double)screenPPI > 3D))
                    {
                        f5 = Math.abs(scalegesturedetector.getCurrentSpanX() / scalegesturedetector.getPreviousSpanX());
                        mInZoomTransformGestureX = true;
                    } else
                    {
                        f5 = 1.0F;
                    }
                    if (scalegesturedetector.getPreviousSpanY() != 0.0F && scalegesturedetector.getCurrentSpanY() != 0.0F && (mInZoomTransformGestureY || (25.399999618530273D * d3) / (double)screenPPI > 3D))
                    {
                        float f6 = Math.abs(scalegesturedetector.getCurrentSpanY() / scalegesturedetector.getPreviousSpanY());
                        mInZoomTransformGestureY = true;
                        f3 = f6;
                        f4 = f5;
                    } else
                    {
                        f3 = 1.0F;
                        f4 = f5;
                    }
                } else
                {
                    f2 = scalegesturedetector.getScaleFactor();
                    f3 = f2;
                    f4 = f2;
                }
                mPreviousZoomLocX = f;
                mPreviousZoomLocY = f1;
                nativeOnGestureListener(byte0, 0, true, f, f1, f4, f3, 0.0F, 0.0F, 0.0F);
                return true;
            } else
            {
                return false;
            }
        } else
        {
            return false;
        }
    }

    public boolean onScaleBegin(ScaleGestureDetector scalegesturedetector)
    {
        if (mInZoomTransformGesture)
        {
            endZoomGesture();
        }
        return true;
    }

    public void onScaleEnd(ScaleGestureDetector scalegesturedetector)
    {
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        while (i != 2 || !mInZoomTransformGesture) 
        {
            return;
        }
        float f = scalegesturedetector.getScaleFactor();
        nativeOnGestureListener(4, 0, true, mPreviousZoomLocX, mPreviousZoomLocY, f, f, 0.0F, 0.0F, 0.0F);
    }

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
    {
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        if (i != 2)
        {
            return true;
        }
        if (motionevent1.getPointerCount() != 2) goto _L2; else goto _L1
_L1:
        byte byte0;
        float f8;
        float f9;
        TouchPoint atouchpoint[];
        int l;
        int i1;
        byte0 = 1;
        f8 = (motionevent1.getX(0) + motionevent1.getX(1)) / 2.0F;
        f9 = (motionevent1.getY(0) + motionevent1.getY(1)) / 2.0F;
        atouchpoint = new TouchPoint[2];
        for (int k = 0; k < 2; k++)
        {
            TouchPoint touchpoint = new TouchPoint(motionevent1.getX(k), motionevent1.getY(k), motionevent1.getPointerId(k));
            atouchpoint[k] = touchpoint;
        }

        l = atouchpoint[0].pid;
        i1 = atouchpoint[1].pid;
        if (l < 0 || l >= 2 || i1 < 0 || i1 >= 2) goto _L4; else goto _L3
_L3:
        if (!mInPanTransformGesture)
        {
            float f12 = getRotation(mDownTouchPoints[l], mDownTouchPoints[i1], atouchpoint[0], atouchpoint[1]);
            float f13;
            if (Math.abs(f12) > 180F)
            {
                byte byte1;
                float f10;
                float f11;
                byte byte2;
                float f17;
                if (f12 > 0.0F)
                {
                    f17 = -1F * (360F - f12);
                } else
                {
                    f17 = f12 + 360F;
                }
                f13 = f17;
            } else
            {
                f13 = f12;
            }
            if (mInRotateTransformGesture || Math.abs(f13) > 15F)
            {
                if (!mInRotateTransformGesture)
                {
                    byte0 = 2;
                    mInRotateTransformGesture = true;
                    mPreviousAbsoluteRotation = 0.0F;
                }
                byte2 = byte0;
                float f14 = f13 - mPreviousAbsoluteRotation;
                int j;
                float f2;
                float f3;
                boolean flag;
                float f4;
                float f5;
                float f6;
                float f7;
                float f15;
                if (Math.abs(f14) > 180F)
                {
                    float f16;
                    if (f14 > 0.0F)
                    {
                        f16 = -1F * (360F - f14);
                    } else
                    {
                        f16 = f14 + 360F;
                    }
                    f15 = f16;
                } else
                {
                    f15 = f14;
                }
                mPreviousAbsoluteRotation = f13;
                mPreviousRotateLocX = f8;
                mPreviousRotateLocY = f9;
                nativeOnGestureListener(byte2, 2, true, f8, f9, 1.0F, 1.0F, f15, 0.0F, 0.0F);
                byte0 = byte2;
            }
        }
        if (mInZoomTransformGesture || mInRotateTransformGesture) goto _L4; else goto _L5
_L5:
        if (!isPanGesture(mDownTouchPoints[l], mDownTouchPoints[i1], atouchpoint[0], atouchpoint[1])) goto _L7; else goto _L6
_L6:
        if (!mInPanTransformGesture)
        {
            byte0 = 2;
            mInPanTransformGesture = true;
        }
        byte1 = byte0;
        f10 = -1F * f;
        f11 = -1F * f1;
        mPreviousPanLocX = f8;
        mPreviousPanLocY = f9;
        nativeOnGestureListener(byte1, 1, true, f8, f9, 1.0F, 1.0F, 0.0F, f10, f11);
_L4:
        return true;
_L7:
        if (mInPanTransformGesture)
        {
            endPanGesture();
            setDownTouchPoint(atouchpoint[0].x, atouchpoint[0].y, atouchpoint[0].pid);
            setDownTouchPoint(atouchpoint[1].x, atouchpoint[1].y, atouchpoint[1].pid);
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (motionevent1.getPointerCount() == 1)
        {
            j = motionevent1.getPointerId(0);
            if (j >= 0 && j < 2 && mCheckForSwipe && motionevent.getPointerCount() == 1)
            {
                f2 = motionevent1.getX(0) - mDownTouchPoints[j].x;
                f3 = motionevent1.getY(0) - mDownTouchPoints[j].y;
                if ((25.4F * Math.abs(f2)) / (float)screenPPI >= 10F && (25.4F * Math.abs(f3)) / (float)screenPPI <= 5F)
                {
                    flag = true;
                    if (f2 > 0.0F)
                    {
                        f7 = 1.0F;
                    } else
                    {
                        f7 = -1F;
                    }
                    f5 = 0.0F;
                    f4 = f7;
                } else
                if ((25.4F * Math.abs(f3)) / (float)screenPPI >= 10F && (25.4F * Math.abs(f2)) / (float)screenPPI <= 5F)
                {
                    if (f3 > 0.0F)
                    {
                        f6 = 1.0F;
                    } else
                    {
                        f6 = -1F;
                    }
                    f5 = f6;
                    flag = true;
                    f4 = 0.0F;
                } else
                {
                    flag = false;
                    f4 = 0.0F;
                    f5 = 0.0F;
                }
                if (flag)
                {
                    nativeOnGestureListener(8, 5, true, motionevent.getX(0), motionevent1.getY(0), 1.0F, 1.0F, 0.0F, f4, f5);
                    mCheckForSwipe = false;
                }
            }
        }
        if (true) goto _L4; else goto _L8
_L8:
    }

    public void onShowPress(MotionEvent motionevent)
    {
    }

    public boolean onSingleTapConfirmed(MotionEvent motionevent)
    {
        int i = mSurfaceView.getMultitouchMode();
        mSurfaceView.getClass();
        if (i != 2)
        {
            return true;
        }
        if (mCouldBeTwoFingerTap == 3 && motionevent.getPointerCount() == 1 && (0xff & motionevent.getAction()) == 0)
        {
            float f = (mSecondaryPointOfTwoFingerTap.x + motionevent.getX(0)) / 2.0F;
            float f1 = (mSecondaryPointOfTwoFingerTap.y + motionevent.getY(0)) / 2.0F;
            boolean flag;
            if (true && nativeOnGestureListener(8, 3, false, f, f1, 1.0F, 1.0F, 0.0F, 0.0F, 0.0F))
            {
                flag = true;
            } else
            {
                flag = false;
            }
            mCouldBeTwoFingerTap = 0;
            return flag;
        } else
        {
            return true;
        }
    }

    public boolean onSingleTapUp(MotionEvent motionevent)
    {
        return true;
    }

    public void setCheckForSwipe(boolean flag)
    {
        mCheckForSwipe = flag;
    }

    public void setCouldBeTwoFingerTap(int i)
    {
        mCouldBeTwoFingerTap = i;
    }

    public void setDownTouchPoint(float f, float f1, int i)
    {
        if (i >= 0 && i < 2)
        {
            mDownTouchPoints[i].assign(f, f1, i);
        }
    }

    public void setSecondaryPointOfTwoFingerTap(TouchPoint touchpoint)
    {
        mSecondaryPointOfTwoFingerTap = touchpoint;
    }

}
