// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view;

import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v4.view.accessibility.AccessibilityNodeProviderCompat;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;

// Referenced classes of package android.support.v4.view:
//            ViewCompat, AccessibilityDelegateCompat

static class eInfoCompat
    implements eInfoCompat
{

    public boolean canScrollHorizontally(View view, int i)
    {
        return false;
    }

    public boolean canScrollVertically(View view, int i)
    {
        return false;
    }

    public int getAccessibilityLiveRegion(View view)
    {
        return 0;
    }

    public AccessibilityNodeProviderCompat getAccessibilityNodeProvider(View view)
    {
        return null;
    }

    public float getAlpha(View view)
    {
        return 1.0F;
    }

    long getFrameTime()
    {
        return 10L;
    }

    public int getImportantForAccessibility(View view)
    {
        return 0;
    }

    public int getLabelFor(View view)
    {
        return 0;
    }

    public int getLayerType(View view)
    {
        return 0;
    }

    public int getLayoutDirection(View view)
    {
        return 0;
    }

    public int getMeasuredHeightAndState(View view)
    {
        return view.getMeasuredHeight();
    }

    public int getMeasuredState(View view)
    {
        return 0;
    }

    public int getMeasuredWidthAndState(View view)
    {
        return view.getMeasuredWidth();
    }

    public int getOverScrollMode(View view)
    {
        return 2;
    }

    public ViewParent getParentForAccessibility(View view)
    {
        return view.getParent();
    }

    public boolean hasTransientState(View view)
    {
        return false;
    }

    public boolean isOpaque(View view)
    {
        Drawable drawable = view.getBackground();
        if (drawable != null)
        {
            return drawable.getOpacity() == -1;
        } else
        {
            return false;
        }
    }

    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
    {
    }

    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
    {
    }

    public void onPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
    {
    }

    public boolean performAccessibilityAction(View view, int i, Bundle bundle)
    {
        return false;
    }

    public void postInvalidateOnAnimation(View view)
    {
        view.postInvalidateDelayed(getFrameTime());
    }

    public void postInvalidateOnAnimation(View view, int i, int j, int k, int l)
    {
        view.postInvalidateDelayed(getFrameTime(), i, j, k, l);
    }

    public void postOnAnimation(View view, Runnable runnable)
    {
        view.postDelayed(runnable, getFrameTime());
    }

    public void postOnAnimationDelayed(View view, Runnable runnable, long l)
    {
        view.postDelayed(runnable, l + getFrameTime());
    }

    public int resolveSizeAndState(int i, int j, int k)
    {
        return View.resolveSize(i, j);
    }

    public void setAccessibilityDelegate(View view, AccessibilityDelegateCompat accessibilitydelegatecompat)
    {
    }

    public void setAccessibilityLiveRegion(View view, int i)
    {
    }

    public void setHasTransientState(View view, boolean flag)
    {
    }

    public void setImportantForAccessibility(View view, int i)
    {
    }

    public void setLabelFor(View view, int i)
    {
    }

    public void setLayerPaint(View view, Paint paint)
    {
    }

    public void setLayerType(View view, int i, Paint paint)
    {
    }

    public void setLayoutDirection(View view, int i)
    {
    }

    public void setOverScrollMode(View view, int i)
    {
    }

    eInfoCompat()
    {
    }
}
