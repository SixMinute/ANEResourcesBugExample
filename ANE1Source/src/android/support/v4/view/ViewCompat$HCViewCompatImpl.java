// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.graphics.Paint;
import android.view.View;

// Referenced classes of package android.support.v4.view:
//            ViewCompatHC, ViewCompat

static class _cls9 extends _cls9
{

    public float getAlpha(View view)
    {
        return ViewCompatHC.getAlpha(view);
    }

    long getFrameTime()
    {
        return ViewCompatHC.getFrameTime();
    }

    public int getLayerType(View view)
    {
        return ViewCompatHC.getLayerType(view);
    }

    public int getMeasuredHeightAndState(View view)
    {
        return ViewCompatHC.getMeasuredHeightAndState(view);
    }

    public int getMeasuredState(View view)
    {
        return ViewCompatHC.getMeasuredState(view);
    }

    public int getMeasuredWidthAndState(View view)
    {
        return ViewCompatHC.getMeasuredWidthAndState(view);
    }

    public int resolveSizeAndState(int i, int j, int k)
    {
        return ViewCompatHC.resolveSizeAndState(i, j, k);
    }

    public void setLayerPaint(View view, Paint paint)
    {
        setLayerType(view, getLayerType(view), paint);
        view.invalidate();
    }

    public void setLayerType(View view, int i, Paint paint)
    {
        ViewCompatHC.setLayerType(view, i, paint);
    }

    _cls9()
    {
    }
}
