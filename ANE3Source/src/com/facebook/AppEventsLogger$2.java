// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import java.util.TimerTask;

// Referenced classes of package com.facebook:
//            AppEventsLogger

class ushReason extends TimerTask
{

    public void run()
    {
        if (AppEventsLogger.getFlushBehavior() != ushBehavior.EXPLICIT_ONLY)
        {
            AppEventsLogger.access$1(ushReason.TIMER);
        }
    }

    ushReason()
    {
    }
}
