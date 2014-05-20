// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import java.net.URI;

// Referenced classes of package com.facebook.internal:
//            ImageDownloader

private static class tag
{

    private static final int HASH_MULTIPLIER = 37;
    private static final int HASH_SEED = 29;
    Object tag;
    URI uri;

    public boolean equals(Object obj)
    {
label0:
        {
            boolean flag = false;
            if (obj != null)
            {
                boolean flag1 = obj instanceof tag;
                flag = false;
                if (flag1)
                {
                    tag tag1 = (tag)obj;
                    if (tag1.uri != uri || tag1.tag != tag)
                    {
                        break label0;
                    }
                    flag = true;
                }
            }
            return flag;
        }
        return false;
    }

    public int hashCode()
    {
        int _tmp = 29 * 37;
        return 37 * (1073 + uri.hashCode()) + tag.hashCode();
    }

    (URI uri1, Object obj)
    {
        uri = uri1;
        tag = obj;
    }
}
