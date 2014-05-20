// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;

public class ShakeListener
    implements SensorEventListener
{
    public static interface Listener
    {

        public abstract void onShake();
    }


    private static final int FORCE_THRESHOLD = 1200;
    private static final int SHAKE_COUNT = 2;
    private static final int SHAKE_DURATION = 1000;
    private static final int SHAKE_TIMEOUT = 500;
    private static final int TIME_THRESHOLD = 100;
    private Sensor mAccelerometer;
    private Context mContext;
    private long mLastForce;
    private long mLastShake;
    private long mLastTime;
    private float mLastX;
    private float mLastY;
    private float mLastZ;
    private Listener mListener;
    private SensorManager mSensorMgr;
    private int mShakeCount;

    public ShakeListener(Context context)
    {
        mAccelerometer = null;
        mSensorMgr = null;
        mLastX = -1F;
        mLastY = -1F;
        mLastZ = -1F;
        mLastTime = 0L;
        mListener = null;
        mContext = null;
        mShakeCount = 0;
        mLastShake = 0L;
        mLastForce = 0L;
        mContext = context;
        resume();
    }

    public void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        long l = System.currentTimeMillis();
        if (l - mLastForce > 500L)
        {
            mShakeCount = 0;
        }
        if (l - mLastTime > 100L)
        {
            long l1 = l - mLastTime;
            if ((float)(10000D * (Math.sqrt((sensorevent.values[0] - mLastX) * (sensorevent.values[0] - mLastX) + (sensorevent.values[1] - mLastY) * (sensorevent.values[1] - mLastY) + (sensorevent.values[2] - mLastZ) * (sensorevent.values[2] - mLastZ)) / (double)l1)) > 1200F)
            {
                int i = 1 + mShakeCount;
                mShakeCount = i;
                if (i >= 2 && l - mLastShake > 1000L)
                {
                    mLastShake = l;
                    mShakeCount = 0;
                    if (mListener != null)
                    {
                        mListener.onShake();
                    }
                }
                mLastForce = l;
            }
            mLastTime = l;
            mLastX = sensorevent.values[0];
            mLastY = sensorevent.values[1];
            mLastZ = sensorevent.values[2];
        }
    }

    public void pause()
    {
        if (mSensorMgr != null && mAccelerometer != null)
        {
            mSensorMgr.unregisterListener(this, mAccelerometer);
            mSensorMgr = null;
            mAccelerometer = null;
        }
    }

    public void registerListener(Listener listener)
    {
        mListener = listener;
    }

    public void resume()
    {
        if (mSensorMgr == null)
        {
            mAccelerometer = null;
            mSensorMgr = (SensorManager)mContext.getSystemService("sensor");
            if (mSensorMgr == null)
            {
                throw new UnsupportedOperationException("Sensors not supported");
            }
            mAccelerometer = mSensorMgr.getDefaultSensor(1);
            if (mAccelerometer == null)
            {
                mSensorMgr = null;
                throw new UnsupportedOperationException("Accelerometer is not supported");
            }
            if (!mSensorMgr.registerListener(this, mAccelerometer, 2))
            {
                throw new UnsupportedOperationException("Accelerometer is not supported");
            }
        }
    }

    public void unregisterListener()
    {
        mListener = null;
    }
}
