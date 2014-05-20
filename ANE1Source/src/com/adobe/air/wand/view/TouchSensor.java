// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.view;

import com.adobe.air.TouchEventData;

// Referenced classes of package com.adobe.air.wand.view:
//            GestureEventData

public class TouchSensor
{
    public static interface Listener
    {

        public abstract void onGestureEvent(GestureEventData gestureeventdata);

        public abstract void onTouchEvent(TouchEventData toucheventdata);
    }


    private static final String LOG_TAG = "TouchSensor";
    private boolean mGestureEventListening;
    private Listener mListener;
    private boolean mTouchEventListening;

    public TouchSensor()
    {
        mListener = null;
        mTouchEventListening = false;
        mGestureEventListening = false;
    }

    public void TouchListener()
    {
    }

    public boolean activeGestureListening()
    {
        return mGestureEventListening;
    }

    public boolean activeTouchListening()
    {
        return mTouchEventListening;
    }

    void dispatchEvent(TouchEventData toucheventdata)
    {
        if (mTouchEventListening && mListener != null)
        {
            mListener.onTouchEvent(toucheventdata);
        }
    }

    void dispatchEvent(GestureEventData gestureeventdata)
    {
        if (mGestureEventListening && mListener != null)
        {
            mListener.onGestureEvent(gestureeventdata);
        }
    }

    public void setListener(Listener listener)
        throws Exception
    {
        if (listener == null)
        {
            throw new Exception("Invalid Listener");
        } else
        {
            mListener = listener;
            return;
        }
    }

    public void startGestureEventListening()
    {
        mGestureEventListening = true;
    }

    public void startTouchEventListening()
    {
        mTouchEventListening = true;
    }

    public void stopGestureEventListening()
    {
        mGestureEventListening = false;
    }

    public void stopTouchEventListening()
    {
        mTouchEventListening = false;
    }
}
