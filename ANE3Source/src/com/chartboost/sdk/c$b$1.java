// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.view.MotionEvent;
import android.view.View;

// Referenced classes of package com.chartboost.sdk:
//            c

class a
    implements android.view.nTouchListener
{

    final er a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        return true;
    }

    Listener(Listener listener)
    {
        a = listener;
        super();
    }
}
