// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.motionsensor;

import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;

// Referenced classes of package com.adobe.air.wand.motionsensor:
//            MotionSensor

class stener
    implements SensorEventListener
{

    final MotionSensor this$0;
    final stener val$listener;

    public void onAccuracyChanged(Sensor sensor, int i)
    {
    }

    public void onSensorChanged(SensorEvent sensorevent)
    {
        val$listener.onSensorChanged(MotionSensor.access$000(MotionSensor.this, sensorevent.values), sensorevent.timestamp);
    }

    stener()
    {
        this$0 = final_motionsensor;
        val$listener = stener.this;
        super();
    }
}
