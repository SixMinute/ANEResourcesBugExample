// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.view.View;

// Referenced classes of package android.support.v4.view:
//            ViewCompatGingerbread, ViewCompat

static class atImpl extends atImpl
{

    public int getOverScrollMode(View view)
    {
        return ViewCompatGingerbread.getOverScrollMode(view);
    }

    public void setOverScrollMode(View view, int i)
    {
        ViewCompatGingerbread.setOverScrollMode(view, i);
    }

    atImpl()
    {
    }
}
