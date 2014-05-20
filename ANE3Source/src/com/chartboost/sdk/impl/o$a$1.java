// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.os.Bundle;
import android.widget.ImageView;
import com.chartboost.sdk.Libraries.a;
import java.lang.ref.WeakReference;

// Referenced classes of package com.chartboost.sdk.impl:
//            o

class b
    implements Runnable
{

    final a a;
    private final com.chartboost.sdk.Libraries.tmap b;

    public void run()
    {
        boolean flag;
        if (com.chartboost.sdk.impl..a(a) != null)
        {
            flag = com.chartboost.sdk.impl.a(a).getBoolean("paramNoMemoryCache");
        } else
        {
            flag = false;
        }
        if (b != null && !flag)
        {
            try
            {
                com.chartboost.sdk.impl.o.a(b(a)).a(.a(a), b);
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }
        if (Trace(a) != null)
        {
            ImageView imageview = (ImageView)a(a).get();
            .a a1 = com.chartboost.sdk.impl.o.a(imageview);
            if (a == a1)
            {
                imageview.setImageBitmap(b.tmap());
            }
        }
        if (map(a) != null)
        {
            a(a).a(b, com.chartboost.sdk.impl.b(a));
        }
        return;
    }

    .a(.a a1, com.chartboost.sdk.Libraries. )
    {
        a = a1;
        b = ;
        super();
    }
}
