// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand;

import com.adobe.air.TouchEventData;
import com.adobe.air.wand.view.GestureEventData;

// Referenced classes of package com.adobe.air.wand:
//            TaskManager

class this._cls0
    implements com.adobe.air.wand.view.stener
{

    final TaskManager this$0;

    public void onGestureEvent(GestureEventData gestureeventdata)
    {
        TaskManager.access$100(TaskManager.this, gestureeventdata);
    }

    public void onTouchEvent(TouchEventData toucheventdata)
    {
        TaskManager.access$000(TaskManager.this, toucheventdata);
    }

    entData()
    {
        this$0 = TaskManager.this;
        super();
    }
}
