// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import com.facebook.internal.Utility;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.TimerTask;

// Referenced classes of package com.facebook:
//            AppEventsLogger

class cessTokenAppIdPair extends TimerTask
{

    public void run()
    {
        HashSet hashset = new HashSet();
        Object obj = AppEventsLogger.access$2();
        obj;
        JVM INSTR monitorenter ;
        Iterator iterator = AppEventsLogger.access$3().keySet().iterator();
_L3:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Iterator iterator1 = hashset.iterator();
_L4:
        if (!iterator1.hasNext())
        {
            return;
        }
        break MISSING_BLOCK_LABEL_88;
_L2:
        hashset.add(((cessTokenAppIdPair)iterator.next()).getApplicationId());
          goto _L3
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        Utility.queryAppSettings((String)iterator1.next(), true);
          goto _L4
    }

    cessTokenAppIdPair()
    {
    }
}
