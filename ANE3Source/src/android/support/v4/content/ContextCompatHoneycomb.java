// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.content;

import android.content.Context;
import android.content.Intent;
import java.io.File;

class ContextCompatHoneycomb
{

    ContextCompatHoneycomb()
    {
    }

    public static File getObbDir(Context context)
    {
        return context.getObbDir();
    }

    static void startActivities(Context context, Intent aintent[])
    {
        context.startActivities(aintent);
    }
}
