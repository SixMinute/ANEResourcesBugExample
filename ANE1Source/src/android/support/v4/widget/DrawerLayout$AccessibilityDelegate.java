// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.graphics.Rect;
import android.support.v4.view.AccessibilityDelegateCompat;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import java.util.List;

// Referenced classes of package android.support.v4.widget:
//            DrawerLayout

class this._cls0 extends AccessibilityDelegateCompat
{

    private final Rect mTmpRect = new Rect();
    final DrawerLayout this$0;

    private void addChildrenForAccessibility(AccessibilityNodeInfoCompat accessibilitynodeinfocompat, ViewGroup viewgroup)
    {
        int i;
        int j;
        i = viewgroup.getChildCount();
        j = 0;
_L5:
        if (j >= i) goto _L2; else goto _L1
_L1:
        View view = viewgroup.getChildAt(j);
        if (!filter(view)) goto _L4; else goto _L3
_L3:
        j++;
          goto _L5
_L4:
        switch (ViewCompat.getImportantForAccessibility(view))
        {
        case 0: // '\0'
            ViewCompat.setImportantForAccessibility(view, 1);
            // fall through

        case 1: // '\001'
            accessibilitynodeinfocompat.addChild(view);
            break;

        case 2: // '\002'
            if (view instanceof ViewGroup)
            {
                addChildrenForAccessibility(accessibilitynodeinfocompat, (ViewGroup)view);
            }
            break;
        }
        if (true) goto _L3; else goto _L2
_L2:
    }

    private void copyNodeInfoNoChildren(AccessibilityNodeInfoCompat accessibilitynodeinfocompat, AccessibilityNodeInfoCompat accessibilitynodeinfocompat1)
    {
        Rect rect = mTmpRect;
        accessibilitynodeinfocompat1.getBoundsInParent(rect);
        accessibilitynodeinfocompat.setBoundsInParent(rect);
        accessibilitynodeinfocompat1.getBoundsInScreen(rect);
        accessibilitynodeinfocompat.setBoundsInScreen(rect);
        accessibilitynodeinfocompat.setVisibleToUser(accessibilitynodeinfocompat1.isVisibleToUser());
        accessibilitynodeinfocompat.setPackageName(accessibilitynodeinfocompat1.getPackageName());
        accessibilitynodeinfocompat.setClassName(accessibilitynodeinfocompat1.getClassName());
        accessibilitynodeinfocompat.setContentDescription(accessibilitynodeinfocompat1.getContentDescription());
        accessibilitynodeinfocompat.setEnabled(accessibilitynodeinfocompat1.isEnabled());
        accessibilitynodeinfocompat.setClickable(accessibilitynodeinfocompat1.isClickable());
        accessibilitynodeinfocompat.setFocusable(accessibilitynodeinfocompat1.isFocusable());
        accessibilitynodeinfocompat.setFocused(accessibilitynodeinfocompat1.isFocused());
        accessibilitynodeinfocompat.setAccessibilityFocused(accessibilitynodeinfocompat1.isAccessibilityFocused());
        accessibilitynodeinfocompat.setSelected(accessibilitynodeinfocompat1.isSelected());
        accessibilitynodeinfocompat.setLongClickable(accessibilitynodeinfocompat1.isLongClickable());
        accessibilitynodeinfocompat.addAction(accessibilitynodeinfocompat1.getActions());
    }

    public boolean dispatchPopulateAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
    {
        if (accessibilityevent.getEventType() == 32)
        {
            List list = accessibilityevent.getText();
            View view1 = DrawerLayout.access$200(DrawerLayout.this);
            if (view1 != null)
            {
                int i = getDrawerViewAbsoluteGravity(view1);
                CharSequence charsequence = getDrawerTitle(i);
                if (charsequence != null)
                {
                    list.add(charsequence);
                }
            }
            return true;
        } else
        {
            return super.dispatchPopulateAccessibilityEvent(view, accessibilityevent);
        }
    }

    public boolean filter(View view)
    {
        View view1 = findOpenDrawer();
        return view1 != null && view1 != view;
    }

    public void onInitializeAccessibilityEvent(View view, AccessibilityEvent accessibilityevent)
    {
        super.onInitializeAccessibilityEvent(view, accessibilityevent);
        accessibilityevent.setClassName(android/support/v4/widget/DrawerLayout.getName());
    }

    public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilitynodeinfocompat)
    {
        AccessibilityNodeInfoCompat accessibilitynodeinfocompat1 = AccessibilityNodeInfoCompat.obtain(accessibilitynodeinfocompat);
        super.onInitializeAccessibilityNodeInfo(view, accessibilitynodeinfocompat1);
        accessibilitynodeinfocompat.setClassName(android/support/v4/widget/DrawerLayout.getName());
        accessibilitynodeinfocompat.setSource(view);
        android.view.ViewParent viewparent = ViewCompat.getParentForAccessibility(view);
        if (viewparent instanceof View)
        {
            accessibilitynodeinfocompat.setParent((View)viewparent);
        }
        copyNodeInfoNoChildren(accessibilitynodeinfocompat, accessibilitynodeinfocompat1);
        accessibilitynodeinfocompat1.recycle();
        addChildrenForAccessibility(accessibilitynodeinfocompat, (ViewGroup)view);
    }

    public boolean onRequestSendAccessibilityEvent(ViewGroup viewgroup, View view, AccessibilityEvent accessibilityevent)
    {
        if (!filter(view))
        {
            return super.onRequestSendAccessibilityEvent(viewgroup, view, accessibilityevent);
        } else
        {
            return false;
        }
    }

    mpat()
    {
        this$0 = DrawerLayout.this;
        super();
    }
}
