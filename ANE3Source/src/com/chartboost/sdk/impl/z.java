// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;

// Referenced classes of package com.chartboost.sdk.impl:
//            ai, ba

public class z extends ai
{

    static final Logger a;
    static final boolean b;
    public static final ByteOrder c;
    static final int d = Integer.parseInt(System.getProperty("MONGO.POOLSIZE", "10"));
    static final ba e = new ba(-1, -1, -1);

    static 
    {
        a = Logger.getLogger("com.mongodb");
        b = Boolean.getBoolean("DEBUG.MONGO");
        if (a.getLevel() == null)
        {
            if (b)
            {
                a.setLevel(Level.ALL);
            } else
            {
                a.setLevel(Level.WARNING);
            }
        }
        c = ByteOrder.LITTLE_ENDIAN;
    }
}
