// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.motionsensor;

import android.app.Activity;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.view.Display;
import android.view.WindowManager;

public abstract class MotionSensor
{
    public static interface Listener
    {

        public abstract void onSensorChanged(float af[], long l);
    }


    protected static final String LOG_TAG = "MotionSensor";
    protected Activity mActivity;
    protected boolean mRegistered;
    protected Sensor mSensor;
    protected int mSensorDelay;
    protected SensorEventListener mSensorEventListener;
    protected SensorManager mSensorManager;

    public MotionSensor(Activity activity, int i)
    {
        mSensorManager = null;
        mSensor = null;
        mSensorEventListener = null;
        mRegistered = false;
        mSensorDelay = 1;
        mActivity = null;
        mActivity = activity;
        mSensorManager = (SensorManager)mActivity.getSystemService("sensor");
        mSensor = mSensorManager.getDefaultSensor(i);
        if (mSensor == null);
    }

    private float[] getScreenOrientedValues(float af[])
    {
        float af1[] = (float[])af.clone();
        int i = mActivity.getWindowManager().getDefaultDisplay().getRotation();
        if (i != 0)
        {
            if (i == 2)
            {
                af1[0] = -af1[0];
                af1[1] = -af1[1];
                return af1;
            }
            if (i == 1)
            {
                float f1 = af1[0];
                af1[0] = -af1[1];
                af1[1] = f1;
                return af1;
            }
            if (i == 3)
            {
                float f = -af1[0];
                af1[0] = af1[1];
                af1[1] = f;
                return af1;
            }
        }
        return af1;
    }

    public boolean active()
    {
        return mRegistered;
    }

    public boolean available()
    {
        return mSensor != null;
    }

    public void dispose()
    {
        stop();
        setListener(null);
        mSensor = null;
        mSensorManager = null;
        mActivity = null;
    }

    public void setListener(final Listener listener)
    {
        boolean flag = mRegistered;
        stop();
        SensorEventListener sensoreventlistener;
        if (listener == null)
        {
            sensoreventlistener = null;
        } else
        {
            sensoreventlistener = new SensorEventListener() {

                final MotionSensor this$0;
                final Listener val$listener;

                public void onAccuracyChanged(Sensor sensor, int i)
                {
                }

                public void onSensorChanged(SensorEvent sensorevent)
                {
                    listener.onSensorChanged(getScreenOrientedValues(sensorevent.values), sensorevent.timestamp);
                }

            
            {
                this$0 = MotionSensor.this;
                listener = listener1;
                super();
            }
            };
        }
        mSensorEventListener = sensoreventlistener;
        if (flag)
        {
            start();
        }
    }

    public void start()
    {
        if (!mRegistered && mSensor != null)
        {
            mRegistered = mSensorManager.registerListener(mSensorEventListener, mSensor, mSensorDelay);
            if (!mRegistered);
        }
    }

    public void start(int i)
    {
        if (!mRegistered && mSensor != null)
        {
            mSensorDelay = i;
            start();
        }
    }

    public void stop()
    {
        if (mRegistered)
        {
            mSensorManager.unregisterListener(mSensorEventListener, mSensor);
            mRegistered = false;
        }
    }

}
