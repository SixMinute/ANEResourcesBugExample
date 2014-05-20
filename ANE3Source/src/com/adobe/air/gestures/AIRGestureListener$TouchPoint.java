// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.gestures;


// Referenced classes of package com.adobe.air.gestures:
//            AIRGestureListener

private class pid
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





    ()
    {
        this$0 = AIRGestureListener.this;
        super();
        x = 0.0F;
        y = 0.0F;
        pid = 0;
    }

    pid(float f, float f1, int i)
    {
        this$0 = AIRGestureListener.this;
        super();
        x = f;
        y = f1;
        pid = i;
    }
}
