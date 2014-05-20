// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand;


// Referenced classes of package com.adobe.air.wand:
//            TaskManager

class this._cls0
    implements com.adobe.air.wand.motionsensor.istener
{

    final TaskManager this$0;

    public void onSensorChanged(float af[], long l)
    {
        TaskManager.access$200(TaskManager.this, af, l);
    }

    otionSensor.Listener()
    {
        this$0 = TaskManager.this;
        super();
    }
}
