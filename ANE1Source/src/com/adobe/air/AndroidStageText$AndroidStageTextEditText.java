// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.adobe.air:
//            AndroidStageText, AIRWindowSurfaceView

public class mLastFocusDirection extends EditText
{
    private class DelayedTransparentRegionUpdate
        implements Runnable
    {

        private AIRWindowSurfaceView m_AIRSurface;
        private int m_freqMsecs;
        private int m_nUpdates;
        private AndroidStageText.AndroidStageTextImpl m_stageText;
        final AndroidStageText.AndroidStageTextEditText this$1;

        public void run()
        {
            if (m_stageText != null && m_AIRSurface != null)
            {
                m_stageText.requestTransparentRegion(m_AIRSurface);
            }
            int i = m_nUpdates - 1;
            m_nUpdates = i;
            if (i > 0)
            {
                m_stageText.postDelayed(this, m_freqMsecs);
            }
        }

        public DelayedTransparentRegionUpdate(int i, int j, AndroidStageText.AndroidStageTextImpl androidstagetextimpl, AIRWindowSurfaceView airwindowsurfaceview)
        {
            this$1 = AndroidStageText.AndroidStageTextEditText.this;
            super();
            m_nUpdates = i;
            m_freqMsecs = j;
            m_stageText = androidstagetextimpl;
            m_AIRSurface = airwindowsurfaceview;
        }
    }


    private int mLastFocusDirection;
    private View m_focusedChildView;
    private boolean m_hasFocus;
    private boolean m_inRequestChildFocus;
    final AndroidStageText this$0;

    private void dispatchFocusEvent(boolean flag, int i)
    {
        if (m_hasFocus != flag)
        {
            m_hasFocus = flag;
            AndroidStageText androidstagetext = AndroidStageText.this;
            if (AndroidStageText.access$100(androidstagetext) != 0L)
            {
                if (AndroidStageText.access$600(androidstagetext) != null)
                {
                    AndroidStageText.access$600(androidstagetext).updateFocusedStageText(androidstagetext, m_hasFocus);
                }
                if (flag)
                {
                    AndroidStageText.access$700(androidstagetext, AndroidStageText.access$100(androidstagetext), i);
                    return;
                }
            }
        }
    }

    public boolean dispatchTouchEvent(MotionEvent motionevent)
    {
        if (!m_hasFocus)
        {
            requestFocus();
        }
        return super.dispatchTouchEvent(motionevent);
    }

    public void onCreateContextMenu(ContextMenu contextmenu)
    {
        AndroidStageText.access$902(AndroidStageText.this, true);
        AndroidStageText.access$1102(AndroidStageText.this, false);
        super.onCreateContextMenu(contextmenu);
    }

    protected void onDraw(Canvas canvas)
    {
        if (AndroidStageText.access$300(AndroidStageText.this) != null)
        {
            canvas.save();
            int i = -AndroidStageText.access$400(AndroidStageText.this).left;
            int j = -AndroidStageText.access$400(AndroidStageText.this).top;
            canvas.clipRect(new Rect(i + AndroidStageText.access$300(AndroidStageText.this).left, j + AndroidStageText.access$300(AndroidStageText.this).top, i + AndroidStageText.access$300(AndroidStageText.this).right, j + AndroidStageText.access$300(AndroidStageText.this).bottom));
            super.onDraw(canvas);
            canvas.restore();
            return;
        } else
        {
            super.onDraw(canvas);
            return;
        }
    }

    protected void onFocusChanged(boolean flag, int i, Rect rect)
    {
        super.onFocusChanged(flag, i, rect);
        int j;
        if (i == 0)
        {
            j = mLastFocusDirection;
        } else
        {
            j = i;
        }
        mLastFocusDirection = 0;
        dispatchFocusEvent(flag, j);
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag = false;
        i;
        JVM INSTR lookupswitch 3: default 36
    //                   4: 49
    //                   66: 49
    //                   82: 49;
           goto _L1 _L2 _L2 _L2
_L1:
        if (!flag)
        {
            flag = super.onKeyDown(i, keyevent);
        }
        return flag;
_L2:
        boolean flag1 = AndroidStageText.access$1400(AndroidStageText.this);
        flag = false;
        if (!flag1)
        {
            flag = AndroidStageText.access$1500(AndroidStageText.this, AndroidStageText.access$100(AndroidStageText.this), keyevent.getAction(), i);
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    public boolean onKeyPreIme(int i, KeyEvent keyevent)
    {
        if (AndroidStageText.access$600(AndroidStageText.this) != null && i == 4 && keyevent.getAction() == 0)
        {
            AndroidStageText.access$600(AndroidStageText.this).DispatchSoftKeyboardEventOnBackKey();
        }
        return super.onKeyPreIme(i, keyevent);
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        i;
        JVM INSTR lookupswitch 3: default 36
    //                   4: 56
    //                   66: 56
    //                   82: 56;
           goto _L1 _L2 _L2 _L2
_L1:
        boolean flag = super.onKeyUp(i, keyevent);
        AndroidStageText.access$1402(AndroidStageText.this, false);
        return flag;
_L2:
        if (!AndroidStageText.access$1400(AndroidStageText.this))
        {
            AndroidStageText.access$1500(AndroidStageText.this, AndroidStageText.access$100(AndroidStageText.this), keyevent.getAction(), i);
        }
        if (true) goto _L1; else goto _L3
_L3:
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        AndroidStageText androidstagetext = AndroidStageText.this;
        super.onLayout(flag, i, j, k, l);
        if (AndroidStageText.access$000(androidstagetext))
        {
            AndroidStageText.access$002(androidstagetext, false);
            AndroidStageText.access$200(androidstagetext, AndroidStageText.access$100(androidstagetext));
        }
        AndroidStageText.access$500(AndroidStageText.this).Delayed(new DelayedTransparentRegionUpdate(10, 75, AndroidStageText.access$500(AndroidStageText.this), AndroidStageText.access$600(AndroidStageText.this)), 75L);
    }

    public void onSelectionChanged(int i, int j)
    {
        super.onSelectionChanged(i, j);
        AndroidStageText.access$1102(AndroidStageText.this, true);
        if (AndroidStageText.access$600(AndroidStageText.this) != null && AndroidStageText.access$1200(AndroidStageText.this))
        {
            AndroidStageText.access$600(AndroidStageText.this).showSoftKeyboard(true, AndroidStageText.access$1300(AndroidStageText.this));
            AndroidStageText.access$1000(AndroidStageText.this, AndroidStageText.access$100(AndroidStageText.this));
        }
    }

    protected void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        super.onTextChanged(charsequence, i, j, k);
        AndroidStageText androidstagetext = AndroidStageText.this;
        if (AndroidStageText.access$100(androidstagetext) == 0L)
        {
            return;
        } else
        {
            AndroidStageText.access$800(androidstagetext, AndroidStageText.access$100(androidstagetext));
            return;
        }
    }

    public boolean onTextContextMenuItem(int i)
    {
        AndroidStageText.access$1202(AndroidStageText.this, true);
        boolean flag = super.onTextContextMenuItem(i);
        AndroidStageText.access$1202(AndroidStageText.this, false);
        AndroidStageText.access$902(AndroidStageText.this, false);
        return flag;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int i = 0;
_L3:
        if (i >= motionevent.getPointerCount()) goto _L2; else goto _L1
_L1:
        boolean flag;
        int j = motionevent.getAction();
        motionevent.getPointerId(i);
        if (motionevent.getPointerCount() != 1 && motionevent.getPointerId(i) != motionevent.getPointerId((0xff00 & j) >> 8))
        {
            continue; /* Loop/switch isn't completed */
        }
        int k = j & 0xff;
        if (k == 6 || k == 1)
        {
            continue; /* Loop/switch isn't completed */
        }
        flag = false;
_L4:
        if (flag)
        {
            if (android.os.xt >= 11 || !AndroidStageText.access$900(AndroidStageText.this))
            {
                AndroidStageText.access$1000(AndroidStageText.this, AndroidStageText.access$100(AndroidStageText.this));
            }
            AndroidStageText.access$902(AndroidStageText.this, false);
        }
        return super.onTouchEvent(motionevent);
        i++;
          goto _L3
_L2:
        flag = true;
          goto _L4
    }

    public ActionMode startActionMode(android.view. )
    {
        if (AndroidStageText.access$600(AndroidStageText.this) != null && AndroidStageText.access$1100(AndroidStageText.this))
        {
            AndroidStageText.access$600(AndroidStageText.this).showSoftKeyboard(true, AndroidStageText.access$1300(AndroidStageText.this));
            AndroidStageText.access$1000(AndroidStageText.this, AndroidStageText.access$100(AndroidStageText.this));
            AndroidStageText.access$1102(AndroidStageText.this, false);
        }
        return super.startActionMode();
    }

    public DelayedTransparentRegionUpdate.m_AIRSurface(Context context)
    {
        this$0 = AndroidStageText.this;
        super(context);
        m_inRequestChildFocus = false;
        m_focusedChildView = null;
        m_hasFocus = false;
        mLastFocusDirection = 0;
        setBackgroundDrawable(null);
        setCompoundDrawablePadding(0);
        setPadding(0, 0, 0, 0);
    }

    public setPadding(Context context, AttributeSet attributeset)
    {
        this$0 = AndroidStageText.this;
        super(context, attributeset);
        m_inRequestChildFocus = false;
        m_focusedChildView = null;
        m_hasFocus = false;
        mLastFocusDirection = 0;
    }

    public mLastFocusDirection(Context context, AttributeSet attributeset, int i)
    {
        this$0 = AndroidStageText.this;
        super(context, attributeset, i);
        m_inRequestChildFocus = false;
        m_focusedChildView = null;
        m_hasFocus = false;
        mLastFocusDirection = 0;
    }
}
