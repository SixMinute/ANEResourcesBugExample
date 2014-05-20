// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.chartboost.sdk.impl:
//            o

static class nit> extends FilterInputStream
{

    public long skip(long l)
        throws IOException
    {
        long l1 = 0L;
_L5:
        if (l1 < l) goto _L2; else goto _L1
_L1:
        return l1;
_L2:
        long l2;
        l2 = in.skip(l - l1);
        if (l2 != 0L)
        {
            break; /* Loop/switch isn't completed */
        }
        if (read() < 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        l2 = 1L;
        break; /* Loop/switch isn't completed */
        if (true) goto _L1; else goto _L3
_L3:
        l1 += l2;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public (InputStream inputstream)
    {
        super(inputstream);
    }
}
