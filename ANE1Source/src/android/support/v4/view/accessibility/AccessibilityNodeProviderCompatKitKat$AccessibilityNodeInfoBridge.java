// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.view.accessibility;

import android.os.Bundle;
import java.util.List;

// Referenced classes of package android.support.v4.view.accessibility:
//            AccessibilityNodeProviderCompatKitKat

static interface 
{

    public abstract Object createAccessibilityNodeInfo(int i);

    public abstract List findAccessibilityNodeInfosByText(String s, int i);

    public abstract Object findFocus(int i);

    public abstract boolean performAction(int i, int j, Bundle bundle);
}
