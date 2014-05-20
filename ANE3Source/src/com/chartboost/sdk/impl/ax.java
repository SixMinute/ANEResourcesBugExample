// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            aw, al

public class ax extends aw
{

    final al b;

    public al b()
    {
        return b;
    }

    public boolean equals(Object obj)
    {
        if (!(obj instanceof ax))
        {
            return false;
        }
        ax ax1 = (ax)obj;
        return a.equals(ax1.a) && b.equals(ax1.b);
    }

    public int hashCode()
    {
        return a.hashCode() ^ b.hashCode();
    }
}
