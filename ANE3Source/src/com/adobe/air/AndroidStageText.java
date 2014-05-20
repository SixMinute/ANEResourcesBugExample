// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.graphics.drawable.shapes.Shape;
import android.text.InputFilter;
import android.text.Spanned;
import android.text.method.KeyListener;
import android.text.method.PasswordTransformationMethod;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.ScrollView;
import android.widget.TextView;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper, AIRWindowSurfaceView

public class AndroidStageText
    implements AndroidActivityWrapper.StateChangeCallback
{
    public class AndroidStageTextEditText extends EditText
    {

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
                if (androidstagetext.mInternalReference != 0L)
                {
                    if (androidstagetext.mAIRSurface != null)
                    {
                        androidstagetext.mAIRSurface.updateFocusedStageText(androidstagetext, m_hasFocus);
                    }
                    if (flag)
                    {
                        androidstagetext.dispatchFocusIn(androidstagetext.mInternalReference, i);
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
            mMenuInvoked = true;
            mSelectionChanged = false;
            super.onCreateContextMenu(contextmenu);
        }

        protected void onDraw(Canvas canvas)
        {
            if (mClipBounds != null)
            {
                canvas.save();
                int i = -mViewBounds.left;
                int j = -mViewBounds.top;
                canvas.clipRect(new Rect(i + mClipBounds.left, j + mClipBounds.top, i + mClipBounds.right, j + mClipBounds.bottom));
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
        //                       4: 49
        //                       66: 49
        //                       82: 49;
               goto _L1 _L2 _L2 _L2
_L1:
            if (!flag)
            {
                flag = super.onKeyDown(i, keyevent);
            }
            return flag;
_L2:
            boolean flag1 = enterKeyDispatched;
            flag = false;
            if (!flag1)
            {
                flag = handleKeyEvent(mInternalReference, keyevent.getAction(), i);
            }
            if (true) goto _L1; else goto _L3
_L3:
        }

        public boolean onKeyPreIme(int i, KeyEvent keyevent)
        {
            if (mAIRSurface != null && i == 4 && keyevent.getAction() == 0)
            {
                mAIRSurface.DispatchSoftKeyboardEventOnBackKey();
            }
            return super.onKeyPreIme(i, keyevent);
        }

        public boolean onKeyUp(int i, KeyEvent keyevent)
        {
            i;
            JVM INSTR lookupswitch 3: default 36
        //                       4: 56
        //                       66: 56
        //                       82: 56;
               goto _L1 _L2 _L2 _L2
_L1:
            boolean flag = super.onKeyUp(i, keyevent);
            enterKeyDispatched = false;
            return flag;
_L2:
            if (!enterKeyDispatched)
            {
                handleKeyEvent(mInternalReference, keyevent.getAction(), i);
            }
            if (true) goto _L1; else goto _L3
_L3:
        }

        protected void onLayout(boolean flag, int i, int j, int k, int l)
        {
            AndroidStageText androidstagetext = AndroidStageText.this;
            super.onLayout(flag, i, j, k, l);
            if (androidstagetext.mNotifyLayoutComplete)
            {
                androidstagetext.mNotifyLayoutComplete = false;
                androidstagetext.dispatchCompleteEvent(androidstagetext.mInternalReference);
            }
            mView.postDelayed(new DelayedTransparentRegionUpdate(10, 75, mView, mAIRSurface), 75L);
        }

        public void onSelectionChanged(int i, int j)
        {
            super.onSelectionChanged(i, j);
            mSelectionChanged = true;
            if (mAIRSurface != null && mInContentMenu)
            {
                mAIRSurface.showSoftKeyboard(true, mTextView);
                invokeSoftKeyboard(mInternalReference);
            }
        }

        protected void onTextChanged(CharSequence charsequence, int i, int j, int k)
        {
            super.onTextChanged(charsequence, i, j, k);
            AndroidStageText androidstagetext = AndroidStageText.this;
            if (androidstagetext.mInternalReference == 0L)
            {
                return;
            } else
            {
                androidstagetext.dispatchChangeEvent(androidstagetext.mInternalReference);
                return;
            }
        }

        public boolean onTextContextMenuItem(int i)
        {
            mInContentMenu = true;
            boolean flag = super.onTextContextMenuItem(i);
            mInContentMenu = false;
            mMenuInvoked = false;
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
                if (android.os.Build.VERSION.SDK_INT >= 11 || !mMenuInvoked)
                {
                    invokeSoftKeyboard(mInternalReference);
                }
                mMenuInvoked = false;
            }
            return super.onTouchEvent(motionevent);
            i++;
              goto _L3
_L2:
            flag = true;
              goto _L4
        }

        public ActionMode startActionMode(android.view.ActionMode.Callback callback)
        {
            if (mAIRSurface != null && mSelectionChanged)
            {
                mAIRSurface.showSoftKeyboard(true, mTextView);
                invokeSoftKeyboard(mInternalReference);
                mSelectionChanged = false;
            }
            return super.startActionMode(callback);
        }

        public AndroidStageTextEditText(Context context)
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

        public AndroidStageTextEditText(Context context, AttributeSet attributeset)
        {
            this$0 = AndroidStageText.this;
            super(context, attributeset);
            m_inRequestChildFocus = false;
            m_focusedChildView = null;
            m_hasFocus = false;
            mLastFocusDirection = 0;
        }

        public AndroidStageTextEditText(Context context, AttributeSet attributeset, int i)
        {
            this$0 = AndroidStageText.this;
            super(context, attributeset, i);
            m_inRequestChildFocus = false;
            m_focusedChildView = null;
            m_hasFocus = false;
            mLastFocusDirection = 0;
        }
    }

    private class AndroidStageTextEditText.DelayedTransparentRegionUpdate
        implements Runnable
    {

        private AIRWindowSurfaceView m_AIRSurface;
        private int m_freqMsecs;
        private int m_nUpdates;
        private AndroidStageTextImpl m_stageText;
        final AndroidStageTextEditText this$1;

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

        public AndroidStageTextEditText.DelayedTransparentRegionUpdate(int i, int j, AndroidStageTextImpl androidstagetextimpl, AIRWindowSurfaceView airwindowsurfaceview)
        {
            this$1 = AndroidStageTextEditText.this;
            super();
            m_nUpdates = i;
            m_freqMsecs = j;
            m_stageText = androidstagetextimpl;
            m_AIRSurface = airwindowsurfaceview;
        }
    }

    public class AndroidStageTextImpl extends ScrollView
    {

        final AndroidStageText this$0;

        protected void onDraw(Canvas canvas)
        {
            if (mClipBounds != null)
            {
                canvas.save();
                int i = -mViewBounds.left;
                int j = -mViewBounds.top;
                canvas.clipRect(new Rect(i + mClipBounds.left, j + mClipBounds.top, i + mClipBounds.right, j + mClipBounds.bottom));
                super.onDraw(canvas);
                canvas.restore();
                return;
            } else
            {
                super.onDraw(canvas);
                return;
            }
        }

        protected void onLayout(boolean flag, int i, int j, int k, int l)
        {
            AndroidStageText androidstagetext = AndroidStageText.this;
            super.onLayout(flag, i, j, k, l);
            if (androidstagetext.mNotifyLayoutComplete)
            {
                androidstagetext.mNotifyLayoutComplete = false;
                androidstagetext.dispatchCompleteEvent(androidstagetext.mInternalReference);
            }
        }

        protected void onSizeChanged(int i, int j, int k, int l)
        {
            super.onSizeChanged(i, j, k, l);
        }

        public AndroidStageTextImpl(Context context)
        {
            this$0 = AndroidStageText.this;
            super(context);
        }

        public AndroidStageTextImpl(Context context, AttributeSet attributeset)
        {
            this$0 = AndroidStageText.this;
            super(context, attributeset);
        }

        public AndroidStageTextImpl(Context context, AttributeSet attributeset, int i)
        {
            this$0 = AndroidStageText.this;
            super(context, attributeset, i);
        }
    }

    public class BackgroundBorderDrawable extends ShapeDrawable
    {

        public int mBkgColor;
        public Paint mBkgPaint;
        public int mBorderColor;
        public boolean mHaveBkg;
        public boolean mHaveBorder;
        final AndroidStageText this$0;

        private void init()
        {
            mBkgPaint = new Paint(getPaint());
            mBkgPaint.setStyle(android.graphics.Paint.Style.FILL);
            mBkgPaint.setColor(mBkgColor);
            getPaint().setStyle(android.graphics.Paint.Style.STROKE);
            getPaint().setStrokeWidth(3F);
            getPaint().setColor(mBorderColor);
        }

        protected void onDraw(Shape shape, Canvas canvas, Paint paint)
        {
            if (mHaveBkg)
            {
                canvas.drawRect(getBounds(), mBkgPaint);
            }
            if (mHaveBorder)
            {
                super.onDraw(shape, canvas, paint);
            }
        }

        public void setBkgColor(int i)
        {
            mBkgColor = i;
            mBkgPaint.setColor(i);
        }

        public void setBorderColor(int i)
        {
            mBorderColor = i;
            getPaint().setColor(i);
        }

        public BackgroundBorderDrawable()
        {
            this$0 = AndroidStageText.this;
            super();
            mHaveBorder = false;
            mHaveBkg = false;
            mBkgColor = -1;
            mBorderColor = 0xff000000;
            init();
        }

        public BackgroundBorderDrawable(Shape shape)
        {
            this$0 = AndroidStageText.this;
            super(shape);
            mHaveBorder = false;
            mHaveBkg = false;
            mBkgColor = -1;
            mBorderColor = 0xff000000;
            init();
        }
    }

    private class RestrictFilter
        implements InputFilter
    {

        private static final int kMapSize = 8192;
        private String mPattern;
        private byte m_map[];
        final AndroidStageText this$0;

        boolean IsCharAvailable(char c)
        {
            if (mPattern != null);
            if (m_map == null)
            {
                return false;
            }
            return (m_map[c >> 3] & 1 << (c & 7)) != 0;
        }

        boolean IsEmpty()
        {
            return mPattern != null;
        }

        void SetAll(boolean flag)
        {
            int i = 0;
            char c;
            byte byte0;
            if (flag)
            {
                c = '\377';
            } else
            {
                c = '\0';
            }
            byte0 = (byte)c;
            for (; i < 8192; i++)
            {
                m_map[i] = byte0;
            }

        }

        void SetCode(char c, boolean flag)
        {
            if (flag)
            {
                byte abyte1[] = m_map;
                int j = c >> 3;
                abyte1[j] = (byte)(abyte1[j] | 1 << (c & 7));
                return;
            } else
            {
                byte abyte0[] = m_map;
                int i = c >> 3;
                abyte0[i] = (byte)(abyte0[i] & (-1 ^ 1 << (c & 7)));
                return;
            }
        }

        public CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int k, int l)
        {
            if (mPattern == null)
            {
                return null;
            }
            if (m_map == null)
            {
                return "";
            }
            StringBuffer stringbuffer = new StringBuffer(j - i);
            int i1 = i;
            while (i1 < j) 
            {
                char c = charsequence.charAt(i1);
                boolean flag;
                char c1;
                if (!IsCharAvailable(c))
                {
                    if (c >= 'A' && c <= 'Z')
                    {
                        c1 = (char)(c + 32);
                        flag = IsCharAvailable(c1);
                    } else
                    if (c >= 'a' && c <= 'z')
                    {
                        c1 = (char)(c - 32);
                        flag = IsCharAvailable(c1);
                    } else
                    {
                        c1 = c;
                        flag = false;
                    }
                } else
                {
                    flag = true;
                    c1 = c;
                }
                if (flag)
                {
                    stringbuffer.append(c1);
                }
                i1++;
            }
            return stringbuffer.toString();
        }

        public RestrictFilter(String s)
        {
            int i;
            char c;
            boolean flag;
            boolean flag1;
            boolean flag2;
            this$0 = AndroidStageText.this;
            super();
            mPattern = null;
            m_map = null;
            mPattern = s;
            if (s == null || "".equals(s))
            {
                break MISSING_BLOCK_LABEL_316;
            }
            m_map = new byte[8192];
            SetAll(false);
            if (s.charAt(0) == '^')
            {
                SetAll(true);
            }
            i = 0;
            c = '\0';
            flag = true;
            flag1 = false;
            flag2 = false;
_L6:
            char c1;
            if (i >= s.length())
            {
                break MISSING_BLOCK_LABEL_316;
            }
            c1 = s.charAt(i);
            if (flag2)
            {
                break MISSING_BLOCK_LABEL_252;
            }
            c1;
            JVM INSTR lookupswitch 3: default 136
        //                       45: 186
        //                       92: 235
        //                       94: 203;
               goto _L1 _L2 _L3 _L4
_L1:
            boolean flag3;
            boolean flag4;
            boolean flag5;
            boolean flag6;
            flag6 = flag2;
            flag3 = flag1;
            flag4 = flag;
            flag5 = true;
            break MISSING_BLOCK_LABEL_151;
_L2:
            flag4 = flag;
            flag6 = flag2;
            flag3 = true;
            flag5 = false;
              goto _L5
_L4:
            boolean flag9;
            if (!flag)
            {
                flag9 = true;
            } else
            {
                flag9 = false;
            }
            flag6 = flag2;
            flag3 = flag1;
            flag4 = flag9;
            flag5 = false;
              goto _L5
_L3:
            flag3 = flag1;
            flag6 = true;
            flag4 = flag;
            flag5 = false;
              goto _L5
            flag3 = flag1;
            flag4 = flag;
            flag5 = true;
            flag6 = false;
_L5:
            boolean flag7;
            boolean flag8;
            if (flag5)
            {
                if (flag3)
                {
                    for (; c <= c1; c++)
                    {
                        SetCode(c, flag4);
                    }

                    c = '\0';
                    flag7 = false;
                } else
                {
                    SetCode(c1, flag4);
                    c = c1;
                    flag7 = flag3;
                }
            } else
            {
                flag7 = flag3;
            }
            i++;
            flag2 = flag6;
            flag8 = flag7;
            flag = flag4;
            flag1 = flag8;
            if (true) goto _L6; else goto _L2
        }
    }


    private static final int ALIGN_Center = 2;
    private static final int ALIGN_End = 5;
    private static final int ALIGN_Justify = 3;
    private static final int ALIGN_Left = 0;
    private static final int ALIGN_Right = 1;
    private static final int ALIGN_Start = 4;
    private static final int AUTO_CAP_All = 3;
    private static final int AUTO_CAP_None = 0;
    private static final int AUTO_CAP_Sentence = 2;
    private static final int AUTO_CAP_Word = 1;
    private static final int FOCUS_DOWN = 3;
    private static final int FOCUS_NONE = 1;
    private static final int FOCUS_UP = 2;
    private static final int KEYBOARDTYPE_Contact = 4;
    private static final int KEYBOARDTYPE_Default = 0;
    private static final int KEYBOARDTYPE_Email = 5;
    private static final int KEYBOARDTYPE_Number = 3;
    private static final int KEYBOARDTYPE_Punctuation = 1;
    private static final int KEYBOARDTYPE_Url = 2;
    private static final String LOG_TAG = "AndroidStageText";
    private static final int RETURN_KEY_Default = 0;
    private static final int RETURN_KEY_Done = 1;
    private static final int RETURN_KEY_Go = 2;
    private static final int RETURN_KEY_Next = 3;
    private static final int RETURN_KEY_Search = 4;
    private boolean enterKeyDispatched;
    private AIRWindowSurfaceView mAIRSurface;
    private int mAlign;
    private int mAutoCapitalize;
    private boolean mAutoCorrect;
    private BackgroundBorderDrawable mBBDrawable;
    private int mBackgroundColor;
    private boolean mBold;
    private int mBorderColor;
    private Rect mBounds;
    private ViewGroup mClip;
    private Rect mClipBounds;
    private Context mContext;
    private boolean mDisableInteraction;
    private boolean mDisplayAsPassword;
    private boolean mEditable;
    private String mFont;
    private int mFontSize;
    private Rect mGlobalBounds;
    private boolean mInContentMenu;
    private long mInternalReference;
    private boolean mItalic;
    private int mKeyboardType;
    private RelativeLayout mLayout;
    private String mLocale;
    private int mMaxChars;
    private boolean mMenuInvoked;
    private boolean mMultiline;
    private boolean mNotifyLayoutComplete;
    private String mRestrict;
    private int mReturnKeyLabel;
    private KeyListener mSavedKeyListener;
    private double mScaleFactor;
    private boolean mSelectionChanged;
    private int mTextColor;
    private AndroidStageTextEditText mTextView;
    private AndroidStageTextImpl mView;
    private Rect mViewBounds;

    public AndroidStageText(boolean flag)
    {
        enterKeyDispatched = false;
        mClip = null;
        mKeyboardType = 0;
        mDisplayAsPassword = false;
        mMultiline = false;
        mAutoCapitalize = 0;
        mReturnKeyLabel = 0;
        mAutoCorrect = false;
        mBold = false;
        mItalic = false;
        mEditable = true;
        mDisableInteraction = false;
        mAlign = 4;
        mTextColor = 0xff000000;
        mBackgroundColor = -1;
        mBorderColor = 0xff000000;
        mMaxChars = 0;
        mRestrict = null;
        mLocale = null;
        mBounds = new Rect();
        mViewBounds = null;
        mClipBounds = null;
        mGlobalBounds = new Rect();
        mSavedKeyListener = null;
        mMenuInvoked = false;
        mSelectionChanged = false;
        mInContentMenu = false;
        mNotifyLayoutComplete = false;
        mScaleFactor = 1.0D;
        mMultiline = flag;
        mDisplayAsPassword = false;
        mInternalReference = 0L;
        mContext = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity();
        mView = new AndroidStageTextImpl(mContext);
        mView.setFillViewport(true);
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            mView.setLayerType(1, null);
        }
        mTextView = new AndroidStageTextEditText(mContext);
        mSavedKeyListener = mTextView.getKeyListener();
        setFontSize(12);
        mView.addView(mTextView, new android.view.ViewGroup.LayoutParams(-1, -2));
        if (!flag)
        {
            mTextView.setSingleLine(true);
        } else
        {
            mTextView.setTransformationMethod(null);
            mTextView.setHorizontallyScrolling(false);
        }
        mTextView.setGravity(3);
    }

    private void applyFilters()
    {
        int i;
        InputFilter ainputfilter[];
        int j;
        if (mMaxChars != 0)
        {
            i = 0 + 1;
        } else
        {
            i = 0;
        }
        if (mRestrict != null)
        {
            i++;
        }
        ainputfilter = new InputFilter[i];
        if (mMaxChars != 0)
        {
            ainputfilter[0] = new android.text.InputFilter.LengthFilter(mMaxChars);
            j = 0 + 1;
        } else
        {
            j = 0;
        }
        if (mRestrict != null)
        {
            ainputfilter[j] = new RestrictFilter(mRestrict);
            int _tmp = j + 1;
        }
        mTextView.setFilters(ainputfilter);
    }

    private native void dispatchChangeEvent(long l);

    private native void dispatchCompleteEvent(long l);

    private native void dispatchFocusIn(long l, int i);

    private native void dispatchFocusOut(long l, int i);

    private RectShape getShapeForBounds(Rect rect)
    {
        RectShape rectshape = new RectShape();
        rectshape.resize(rect.width(), rect.height());
        return rectshape;
    }

    private native boolean handleKeyEvent(long l, int i, int j);

    private native void invokeSoftKeyboard(long l);

    private void refreshGlobalBounds(final boolean doCompleteDispatch)
    {
        if (mView == null)
        {
            return;
        } else
        {
            mView.post(new Runnable() {

                final AndroidStageText this$0;
                final boolean val$doCompleteDispatch;

                public void run()
                {
                    if (mView != null)
                    {
                        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(mGlobalBounds.width(), mGlobalBounds.height());
                        layoutparams.leftMargin = mGlobalBounds.left;
                        layoutparams.topMargin = mGlobalBounds.top;
                        mView.setLayoutParams(layoutparams);
                        mView.requestLayout();
                        if (doCompleteDispatch)
                        {
                            mNotifyLayoutComplete = true;
                            return;
                        }
                    }
                }

            
            {
                this$0 = AndroidStageText.this;
                doCompleteDispatch = flag;
                super();
            }
            });
            return;
        }
    }

    private void setInputType()
    {
        if (!mDisplayAsPassword) goto _L2; else goto _L1
_L1:
        int i;
        if (mKeyboardType == 3)
        {
            i = 18;
        } else
        {
            i = 145;
        }
_L12:
        if ((i & 0xf) != 1) goto _L4; else goto _L3
_L3:
        if (mAutoCorrect)
        {
            i |= 0x8000;
        }
        if (mAutoCapitalize == 0) goto _L4; else goto _L5
_L5:
        mAutoCapitalize;
        JVM INSTR tableswitch 1 3: default 76
    //                   1 179
    //                   2 188
    //                   3 197;
           goto _L4 _L6 _L7 _L8
_L4:
        if (mMultiline)
        {
            i |= 0x20000;
        }
        mTextView.setRawInputType(i);
        mTextView.invalidate();
        return;
_L2:
        switch (mKeyboardType)
        {
        default:
            i = 1;
            break;

        case 1: // '\001'
        case 4: // '\004'
            i = 1;
            break;

        case 3: // '\003'
            i = 2;
            break;

        case 5: // '\005'
            i = 33;
            break;

        case 2: // '\002'
            i = 17;
            break;
        }
          goto _L9
_L6:
        i |= 0x2000;
          goto _L10
_L7:
        i |= 0x4000;
          goto _L10
_L8:
        i |= 0x1000;
_L10:
        if (true) goto _L4; else goto _L9
_L9:
        if (true) goto _L12; else goto _L11
_L11:
    }

    public void addToStage(AIRWindowSurfaceView airwindowsurfaceview)
    {
        if (mLayout != null)
        {
            removeFromStage();
        }
        mAIRSurface = airwindowsurfaceview;
        AndroidActivityWrapper androidactivitywrapper = airwindowsurfaceview.getActivityWrapper();
        androidactivitywrapper.addActivityStateChangeListner(this);
        mLayout = androidactivitywrapper.getOverlaysLayout(true);
        mLayout.addView(mView, new android.widget.RelativeLayout.LayoutParams(mGlobalBounds.width(), mGlobalBounds.height()));
        mTextView.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final AndroidStageText this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                i;
                JVM INSTR tableswitch 2 6: default 36
            //                           2 78
            //                           3 78
            //                           4 36
            //                           5 38
            //                           6 127;
                   goto _L1 _L2 _L2 _L1 _L3 _L4
_L1:
                return false;
_L3:
                boolean flag1 = handleKeyEvent(mInternalReference, 0, 87);
                handleKeyEvent(mInternalReference, 1, 87);
                return flag1;
_L2:
                enterKeyDispatched = true;
                boolean flag = handleKeyEvent(mInternalReference, 0, 66);
                handleKeyEvent(mInternalReference, 1, 66);
                return flag;
_L4:
                mAIRSurface.DispatchSoftKeyboardEventOnBackKey();
                if (true) goto _L1; else goto _L5
_L5:
            }

            
            {
                this$0 = AndroidStageText.this;
                super();
            }
        });
    }

    public void adjustViewBounds(double d, double d1, double d2, double d3, double d4)
    {
        mViewBounds = new Rect((int)d, (int)d1, (int)(d + d2), (int)(d1 + d3));
        if (d4 != mScaleFactor)
        {
            mScaleFactor = d4;
            setFontSize(mFontSize);
        }
        mBounds = mViewBounds;
        if (mClip != null)
        {
            mBounds.intersect(mClipBounds);
        }
        mGlobalBounds = mBounds;
        refreshGlobalBounds(true);
    }

    public void assignFocus()
    {
        mTextView.requestFocus();
        mAIRSurface.showSoftKeyboard(true, mTextView);
        invokeSoftKeyboard(mInternalReference);
    }

    public Bitmap captureSnapshot(int i, int j)
    {
        if (i < 0 || j < 0)
        {
            return null;
        }
        if (i == 0 && j == 0)
        {
            return null;
        }
        Bitmap bitmap = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        canvas.translate(-mView.getScrollX(), -mView.getScrollY());
        if (mScaleFactor != 0.0D)
        {
            canvas.scale((float)(1.0D / mScaleFactor), (float)(1.0D / mScaleFactor));
        }
        boolean flag = mView.isHorizontalScrollBarEnabled();
        boolean flag1 = mView.isVerticalScrollBarEnabled();
        mView.setHorizontalScrollBarEnabled(false);
        mView.setVerticalScrollBarEnabled(false);
        try
        {
            mView.draw(canvas);
        }
        catch (Exception exception)
        {
            bitmap = null;
        }
        mView.setHorizontalScrollBarEnabled(flag);
        mView.setVerticalScrollBarEnabled(flag1);
        return bitmap;
    }

    public void clearFocus()
    {
        if (mTextView.hasFocus())
        {
            mTextView.clearFocus();
            mAIRSurface.requestFocus();
        }
        if (mMenuInvoked && mDisableInteraction)
        {
            mAIRSurface.showSoftKeyboard(false, mTextView);
        }
    }

    public void clearRestrict()
    {
        mRestrict = null;
        applyFilters();
    }

    public void destroyInternals()
    {
        removeFromStage();
        mInternalReference = 0L;
        mView = null;
        mClipBounds = null;
        mTextView = null;
    }

    public int getAlign()
    {
        return mAlign;
    }

    public int getAutoCapitalize()
    {
        return mAutoCapitalize;
    }

    public int getBackgroundColor()
    {
        return mBBDrawable.mBkgColor;
    }

    public int getBorderColor()
    {
        return mBBDrawable.mBorderColor;
    }

    public int getFontSize()
    {
        return mFontSize;
    }

    public int getKeyboardType()
    {
        return mKeyboardType;
    }

    public String getLocale()
    {
        return mLocale;
    }

    public int getMaxChars()
    {
        return mMaxChars;
    }

    public String getRestrict()
    {
        return mRestrict;
    }

    public int getReturnKeyLabel()
    {
        return mReturnKeyLabel;
    }

    public int getSelectionActiveIndex()
    {
        return mTextView.getSelectionEnd();
    }

    public int getSelectionAnchorIndex()
    {
        return mTextView.getSelectionStart();
    }

    public String getText()
    {
        return mTextView.getText().toString();
    }

    public int getTextColor()
    {
        return mTextColor;
    }

    public void onActivityStateChanged(AndroidActivityWrapper.ActivityState activitystate)
    {
    }

    public void onConfigurationChanged(Configuration configuration)
    {
    }

    public void removeClip()
    {
        AIRWindowSurfaceView _tmp = mAIRSurface;
        mBounds = mViewBounds;
        mClipBounds = null;
        mTextView.invalidate();
        refreshGlobalBounds(true);
    }

    public void removeFromStage()
    {
        if (mLayout != null)
        {
            mLayout.removeView(mView);
            mLayout = null;
        }
        if (mAIRSurface != null)
        {
            AndroidActivityWrapper androidactivitywrapper = mAIRSurface.getActivityWrapper();
            androidactivitywrapper.didRemoveOverlay();
            androidactivitywrapper.removeActivityStateChangeListner(this);
            mAIRSurface.updateFocusedStageText(this, false);
        }
        mAIRSurface = null;
    }

    public void resetGlobalBounds()
    {
        mGlobalBounds = mBounds;
        refreshGlobalBounds(false);
    }

    public void selectRange(int i, int j)
    {
        int k = mTextView.length();
        int l;
        if (i < 0)
        {
            l = 0;
        } else
        if (i > k)
        {
            l = k;
        } else
        {
            l = i;
        }
        if (j >= 0) goto _L2; else goto _L1
_L1:
        k = 0;
_L4:
        mTextView.setSelection(l, k);
        mTextView.invalidate();
        return;
_L2:
        if (j <= k)
        {
            k = j;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setAlign(int i)
    {
        mAlign = i;
        i;
        JVM INSTR tableswitch 0 5: default 44
    //                   0 52
    //                   1 63
    //                   2 74
    //                   3 44
    //                   4 52
    //                   5 63;
           goto _L1 _L2 _L3 _L4 _L1 _L2 _L3
_L1:
        mTextView.invalidate();
        return;
_L2:
        mTextView.setGravity(3);
        continue; /* Loop/switch isn't completed */
_L3:
        mTextView.setGravity(5);
        continue; /* Loop/switch isn't completed */
_L4:
        mTextView.setGravity(1);
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void setAutoCapitalize(int i)
    {
        if (mAutoCapitalize != i)
        {
            mAutoCapitalize = i;
            setInputType();
        }
    }

    public void setAutoCorrect(boolean flag)
    {
        if (mAutoCorrect != flag)
        {
            mAutoCorrect = flag;
            setInputType();
        }
    }

    public void setBackground(boolean flag)
    {
        if (mBBDrawable.mHaveBkg != flag)
        {
            mBBDrawable.mHaveBkg = flag;
            mTextView.invalidate();
        }
    }

    public void setBackgroundColor(int i, int j, int k, int l)
    {
        mBBDrawable.setBkgColor(Color.argb(l, i, j, k));
        mTextView.invalidate();
    }

    public void setBold(boolean flag)
    {
        mBold = flag;
        updateTypeface();
    }

    public void setBorder(boolean flag)
    {
        if (mBBDrawable.mHaveBorder != flag)
        {
            mBBDrawable.mHaveBorder = flag;
            mTextView.invalidate();
        }
    }

    public void setBorderColor(int i, int j, int k, int l)
    {
        mBBDrawable.setBorderColor(Color.argb(l, i, j, k));
        mTextView.invalidate();
    }

    public void setClipBounds(double d, double d1, double d2, double d3)
    {
        mClipBounds = new Rect((int)d, (int)d1, (int)(d + d2), (int)(d1 + d3));
        mBounds = mViewBounds;
        mTextView.invalidate();
        refreshGlobalBounds(true);
    }

    public void setDisableInteraction(boolean flag)
    {
        mDisableInteraction = flag;
        if (flag)
        {
            mTextView.setText(mTextView.getText(), android.widget.TextView.BufferType.NORMAL);
            mTextView.setKeyListener(null);
            return;
        }
        AndroidStageTextEditText androidstagetextedittext = mTextView;
        android.text.Editable editable = mTextView.getText();
        android.widget.TextView.BufferType buffertype;
        AndroidStageTextEditText androidstagetextedittext1;
        KeyListener keylistener;
        if (mEditable)
        {
            buffertype = android.widget.TextView.BufferType.EDITABLE;
        } else
        {
            buffertype = android.widget.TextView.BufferType.NORMAL;
        }
        androidstagetextedittext.setText(editable, buffertype);
        androidstagetextedittext1 = mTextView;
        if (mEditable)
        {
            keylistener = mSavedKeyListener;
        } else
        {
            keylistener = null;
        }
        androidstagetextedittext1.setKeyListener(keylistener);
    }

    public void setDisplayAsPassword(boolean flag)
    {
        mDisplayAsPassword = flag;
        if (flag)
        {
            mTextView.setTransformationMethod(PasswordTransformationMethod.getInstance());
        } else
        if (!mMultiline)
        {
            mTextView.setTransformationMethod(SingleLineTransformationMethod.getInstance());
        } else
        {
            mTextView.setTransformationMethod(null);
        }
        setInputType();
    }

    public void setEditable(boolean flag)
    {
        if (flag != mEditable)
        {
            mEditable = flag;
            if (!mDisableInteraction)
            {
                AndroidStageTextEditText androidstagetextedittext = mTextView;
                android.text.Editable editable = mTextView.getText();
                android.widget.TextView.BufferType buffertype;
                AndroidStageTextEditText androidstagetextedittext1;
                KeyListener keylistener;
                if (mEditable)
                {
                    buffertype = android.widget.TextView.BufferType.EDITABLE;
                } else
                {
                    buffertype = android.widget.TextView.BufferType.NORMAL;
                }
                androidstagetextedittext.setText(editable, buffertype);
                androidstagetextedittext1 = mTextView;
                if (mEditable)
                {
                    keylistener = mSavedKeyListener;
                } else
                {
                    keylistener = null;
                }
                androidstagetextedittext1.setKeyListener(keylistener);
            }
        }
    }

    public void setFontFamily(String s)
    {
        mFont = s;
        updateTypeface();
    }

    public void setFontSize(int i)
    {
        mFontSize = i;
        int j = (int)(0.5D + (double)i * mScaleFactor);
        mTextView.setTextSize(0, j);
        mTextView.invalidate();
    }

    public void setInternalReference(long l)
    {
        mInternalReference = l;
    }

    public void setItalic(boolean flag)
    {
        mItalic = flag;
        updateTypeface();
    }

    public void setKeyboardType(int i)
    {
        mKeyboardType = i;
        setInputType();
    }

    public void setLocale(String s)
    {
        mLocale = s;
    }

    public void setMaxChars(int i)
    {
        if (i != mMaxChars)
        {
            mMaxChars = i;
            applyFilters();
        }
    }

    public void setRestrict(String s)
    {
        mRestrict = s;
        applyFilters();
    }

    public void setReturnKeyLabel(int i)
    {
        int j;
        mReturnKeyLabel = i;
        j = 0;
        i;
        JVM INSTR tableswitch 0 4: default 44
    //                   0 44
    //                   1 53
    //                   2 59
    //                   3 64
    //                   4 69;
           goto _L1 _L1 _L2 _L3 _L4 _L5
_L1:
        mTextView.setImeOptions(j);
        return;
_L2:
        j = 6;
        continue; /* Loop/switch isn't completed */
_L3:
        j = 2;
        continue; /* Loop/switch isn't completed */
_L4:
        j = 5;
        continue; /* Loop/switch isn't completed */
_L5:
        j = 3;
        if (true) goto _L1; else goto _L6
_L6:
    }

    public void setText(String s)
    {
        InputFilter ainputfilter[] = mTextView.getFilters();
        mTextView.setFilters(new InputFilter[0]);
        AndroidStageTextEditText androidstagetextedittext = mTextView;
        android.widget.TextView.BufferType buffertype;
        if (mEditable && !mDisableInteraction)
        {
            buffertype = android.widget.TextView.BufferType.EDITABLE;
        } else
        {
            buffertype = android.widget.TextView.BufferType.NORMAL;
        }
        androidstagetextedittext.setText(s, buffertype);
        mTextView.setFilters(ainputfilter);
    }

    public void setTextColor(int i, int j, int k, int l)
    {
        mTextColor = Color.argb(l, i, j, k);
        mTextView.setTextColor(mTextColor);
        mTextView.invalidate();
    }

    public void setVisibility(boolean flag)
    {
        int i;
        if (flag)
        {
            i = 0;
        } else
        {
            i = 4;
        }
        if (mView.getVisibility() != i)
        {
            mView.setVisibility(i);
            if (flag)
            {
                mTextView.invalidate();
            }
        }
    }

    public void updateTypeface()
    {
        int i;
        Typeface typeface;
        boolean flag = mBold;
        i = 0;
        if (flag)
        {
            i = false | true;
        }
        if (mItalic)
        {
            i |= 2;
        }
        typeface = Typeface.create(mFont, i);
        if (typeface == null) goto _L2; else goto _L1
_L1:
        mTextView.setTypeface(typeface, i);
_L4:
        mTextView.invalidate();
        return;
_L2:
        switch (i)
        {
        case 0: // '\0'
            mTextView.setTypeface(Typeface.DEFAULT);
            break;

        case 1: // '\001'
            mTextView.setTypeface(Typeface.DEFAULT_BOLD);
            break;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public long updateViewBoundsWithKeyboard(int i)
    {
        mGlobalBounds = mBounds;
        if (mAIRSurface == null) goto _L2; else goto _L1
_L1:
        Rect rect = new Rect(0, 0, mAIRSurface.getVisibleBoundWidth(), mAIRSurface.getVisibleBoundHeight());
        if (rect.contains(mBounds)) goto _L2; else goto _L3
_L3:
        int j;
        int k = Math.min(Math.max(0, mBounds.top), i);
        int l = Math.min(Math.max(0, mBounds.bottom), i);
        if (k == l)
        {
            return 0L;
        }
        int i1 = l - rect.bottom;
        if (i1 <= 0)
        {
            return 0L;
        }
        if (i1 <= k)
        {
            j = i1;
        } else
        {
            mGlobalBounds = new Rect(mBounds);
            mGlobalBounds.bottom = k + rect.bottom;
            j = k;
        }
_L5:
        refreshGlobalBounds(false);
        return (long)j;
_L2:
        j = 0;
        if (true) goto _L5; else goto _L4
_L4:
    }



/*
    static boolean access$002(AndroidStageText androidstagetext, boolean flag)
    {
        androidstagetext.mNotifyLayoutComplete = flag;
        return flag;
    }

*/





/*
    static boolean access$1102(AndroidStageText androidstagetext, boolean flag)
    {
        androidstagetext.mSelectionChanged = flag;
        return flag;
    }

*/



/*
    static boolean access$1202(AndroidStageText androidstagetext, boolean flag)
    {
        androidstagetext.mInContentMenu = flag;
        return flag;
    }

*/




/*
    static boolean access$1402(AndroidStageText androidstagetext, boolean flag)
    {
        androidstagetext.enterKeyDispatched = flag;
        return flag;
    }

*/












/*
    static boolean access$902(AndroidStageText androidstagetext, boolean flag)
    {
        androidstagetext.mMenuInvoked = flag;
        return flag;
    }

*/
}
