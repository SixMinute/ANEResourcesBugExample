// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view.accessibility;

import android.os.Bundle;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;

class AccessibilityNodeInfoCompatJellyBean
{

    AccessibilityNodeInfoCompatJellyBean()
    {
    }

    public static void addChild(Object obj, View view, int i)
    {
        ((AccessibilityNodeInfo)obj).addChild(view, i);
    }

    public static Object findFocus(Object obj, int i)
    {
        return ((AccessibilityNodeInfo)obj).findFocus(i);
    }

    public static Object focusSearch(Object obj, int i)
    {
        return ((AccessibilityNodeInfo)obj).focusSearch(i);
    }

    public static int getMovementGranularities(Object obj)
    {
        return ((AccessibilityNodeInfo)obj).getMovementGranularities();
    }

    public static boolean isAccessibilityFocused(Object obj)
    {
        return ((AccessibilityNodeInfo)obj).isAccessibilityFocused();
    }

    public static boolean isVisibleToUser(Object obj)
    {
        return ((AccessibilityNodeInfo)obj).isVisibleToUser();
    }

    public static Object obtain(View view, int i)
    {
        return AccessibilityNodeInfo.obtain(view, i);
    }

    public static boolean performAction(Object obj, int i, Bundle bundle)
    {
        return ((AccessibilityNodeInfo)obj).performAction(i, bundle);
    }

    public static void setAccesibilityFocused(Object obj, boolean flag)
    {
        ((AccessibilityNodeInfo)obj).setAccessibilityFocused(flag);
    }

    public static void setMovementGranularities(Object obj, int i)
    {
        ((AccessibilityNodeInfo)obj).setMovementGranularities(i);
    }

    public static void setParent(Object obj, View view, int i)
    {
        ((AccessibilityNodeInfo)obj).setParent(view, i);
    }

    public static void setSource(Object obj, View view, int i)
    {
        ((AccessibilityNodeInfo)obj).setSource(view, i);
    }

    public static void setVisibleToUser(Object obj, boolean flag)
    {
        ((AccessibilityNodeInfo)obj).setVisibleToUser(flag);
    }
}
