// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.Region;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.ResultReceiver;
import android.text.ClipboardManager;
import android.text.util.Linkify;
import android.view.ContextMenu;
import android.view.Display;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.Window;
import android.view.WindowManager;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.ExtractedText;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.adobe.air.gestures.AIRGestureListener;
import com.adobe.air.utils.AIRLogger;
import com.adobe.air.utils.Utils;
import com.adobe.flashruntime.air.VideoViewAIR;
import com.adobe.flashruntime.shared.VideoView;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper, AndroidInputConnection, AndroidWebView, AndroidLocale, 
//            TouchEventData, Entrypoints, AndroidStageText, OrientationManager, 
//            FlashEGL

public class AIRWindowSurfaceView extends SurfaceView
    implements android.view.SurfaceHolder.Callback
{
    class CheckLongPress
        implements Runnable
    {

        final AIRWindowSurfaceView this$0;

        public void run()
        {
            performLongClick();
        }

        CheckLongPress()
        {
            this$0 = AIRWindowSurfaceView.this;
            super();
        }
    }

    class HoverTimeoutHandler extends Handler
    {

        static final int INTERVAL = 500;
        private AIRWindowSurfaceView mAIRWindowSurfaceView;
        private long mLastMove;
        final AIRWindowSurfaceView this$0;

        public void handleMessage(Message message)
        {
            if (System.currentTimeMillis() - mLastMove >= 500L)
            {
                mHoverInProgress = false;
                Entrypoints.registerTouchCallback(0, new TouchEventData(32, mAIRWindowSurfaceView.mLastTouchedXCoord, mAIRWindowSurfaceView.mLastTouchedYCoord, 0.0F, 0, 0.0F, 0.0F, true, null, mAIRWindowSurfaceView.mHoverMetaState), null);
                return;
            } else
            {
                mHoverTimeoutHandler.sendEmptyMessageDelayed(0, 500L);
                return;
            }
        }

        public void setLastMove(long l)
        {
            mLastMove = l;
        }

        public HoverTimeoutHandler(AIRWindowSurfaceView airwindowsurfaceview1)
        {
            this$0 = AIRWindowSurfaceView.this;
            super();
            mAIRWindowSurfaceView = airwindowsurfaceview1;
        }
    }

    class InputMethodReceiver extends ResultReceiver
    {

        final AIRWindowSurfaceView this$0;

        protected void onReceiveResult(int i, Bundle bundle)
        {
            if (i == 1 || i == 3)
            {
                nativeShowOriginalRect();
                return;
            } else
            {
                nativeSetKeyboardVisible(true);
                return;
            }
        }

        public InputMethodReceiver()
        {
            this$0 = AIRWindowSurfaceView.this;
            super(getHandler());
        }
    }

    private class MenuHandler
        implements android.view.MenuItem.OnMenuItemClickListener
    {

        final AIRWindowSurfaceView this$0;

        public boolean onMenuItemClick(MenuItem menuitem)
        {
            return onTextBoxContextMenuItem(menuitem.getItemId());
        }

        private MenuHandler()
        {
            this$0 = AIRWindowSurfaceView.this;
            super();
        }

    }

    private static final class MetaKeyState extends Enum
    {

        private static final MetaKeyState $VALUES[];
        public static final MetaKeyState ACTIVE;
        public static final MetaKeyState INACTIVE;
        public static final MetaKeyState LOCKED;
        public static final MetaKeyState PRESSED;

        public static MetaKeyState valueOf(String s)
        {
            return (MetaKeyState)Enum.valueOf(com/adobe/air/AIRWindowSurfaceView$MetaKeyState, s);
        }

        public static MetaKeyState[] values()
        {
            return (MetaKeyState[])$VALUES.clone();
        }

        static 
        {
            INACTIVE = new MetaKeyState("INACTIVE", 0);
            ACTIVE = new MetaKeyState("ACTIVE", 1);
            PRESSED = new MetaKeyState("PRESSED", 2);
            LOCKED = new MetaKeyState("LOCKED", 3);
            MetaKeyState ametakeystate[] = new MetaKeyState[4];
            ametakeystate[0] = INACTIVE;
            ametakeystate[1] = ACTIVE;
            ametakeystate[2] = PRESSED;
            ametakeystate[3] = LOCKED;
            $VALUES = ametakeystate;
        }

        private MetaKeyState(String s, int i)
        {
            super(s, i);
        }
    }


    static final int CURSOR_POS_END_DOCUMENT = 3;
    static final int CURSOR_POS_END_LINE = 1;
    static final int CURSOR_POS_START_DOCUMENT = 2;
    static final int CURSOR_POS_START_LINE = 0;
    static final int ID_COPY = 3;
    static final int ID_COPY_ALL = 4;
    static final int ID_CUT = 1;
    static final int ID_CUT_ALL = 2;
    static final int ID_PASTE = 5;
    static final int ID_SELECT_ALL = 0;
    static final int ID_START_SELECTING = 7;
    static final int ID_STOP_SELECTING = 8;
    static final int ID_SWITCH_INPUT_METHOD = 6;
    private static final String LOG_TAG = "AIRWindowSurfaceView";
    static final int LONG_PRESS_DELAY = 500;
    static final int MAX_MOVE_ACTION_ALLOWED = 4;
    static final int POST_TOUCH_MESSAGE_AFTER_DELAY = 0;
    private static final int kDefaultBitsPerPixel = 32;
    private static final int kMotionEventButtonSecondary = 2;
    private static final int kMotionEventToolTypeEraser = 4;
    private static final int kMotionEventToolTypeStylus = 2;
    private static final int kTouchActionBegin = 2;
    private static final int kTouchActionEnd = 4;
    private static final int kTouchActionHoverBegin = 16;
    private static final int kTouchActionHoverEnd = 32;
    private static final int kTouchActionHoverMove = 8;
    private static final int kTouchActionMove = 1;
    private static final int kTouchMetaStateIsEraser = 0x4000000;
    private static final int kTouchMetaStateIsPen = 0x2000000;
    private static final int kTouchMetaStateMask = 0xe000000;
    private static final int kTouchMetaStateSideButton1 = 0x8000000;
    private boolean inTouch;
    public final int kMultitouchGesture = 2;
    public final int kMultitouchNone = 0;
    public final int kMultitouchRaw = 1;
    private final float kSampleSize = 4F;
    private AndroidActivityWrapper mActivityWrapper;
    private int mBoundHeight;
    private int mBoundWidth;
    private boolean mContextMenuVisible;
    private int mCurrentOrientation;
    private int mCurrentSurfaceFormat;
    private boolean mDispatchUserTriggeredSkDeactivate;
    private float mDownX;
    private float mDownY;
    private boolean mEatTouchRelease;
    protected FlashEGL mFlashEGL;
    private AndroidStageText mFocusedStageText;
    private AndroidWebView mFocusedWebView;
    private GestureDetector mGestureDetector;
    private AIRGestureListener mGestureListener;
    private boolean mHideSoftKeyboardOnWindowFocusChange;
    private boolean mHoverInProgress;
    private int mHoverMetaState;
    private HoverTimeoutHandler mHoverTimeoutHandler;
    private int mHt;
    private AndroidInputConnection mInputConnection;
    InputMethodReceiver mInputMethodReceiver;
    private boolean mIsFullScreen;
    private float mLastTouchedXCoord;
    private float mLastTouchedYCoord;
    private CheckLongPress mLongPressCheck;
    private boolean mMaliWorkaround;
    private MetaKeyState mMetaAltState;
    private MetaKeyState mMetaShiftState;
    private int mMultitouchMode;
    private boolean mNeedsCompositingSurface;
    private Paint mPaint;
    private Paint mPaintScaled;
    private AndroidStageText mResizedStageText;
    private AndroidWebView mResizedWebView;
    private ScaleGestureDetector mScaleGestureDetector;
    private int mScaledTouchSlop;
    private int mSkipHeightFromTop;
    private boolean mSurfaceChangedForSoftKeyboard;
    protected SurfaceHolder mSurfaceHolder;
    private boolean mSurfaceValid;
    private Rect mTextBoxBounds;
    private boolean mTrackBallPressed;
    private VideoView mVideoView;
    private int mVisibleBoundHeight;
    private int mVisibleBoundWidth;
    private int mWd;
    private boolean mWindowHasFocus;

    public AIRWindowSurfaceView(Context context, AndroidActivityWrapper androidactivitywrapper)
    {
        super(context);
        mWd = 0;
        mHt = 0;
        mSurfaceValid = false;
        mSkipHeightFromTop = 0;
        mSurfaceHolder = null;
        mFlashEGL = null;
        mBoundHeight = 0;
        mBoundWidth = 0;
        mVisibleBoundWidth = 0;
        mVisibleBoundHeight = 0;
        mMultitouchMode = 0;
        mPaint = null;
        mPaintScaled = null;
        mMaliWorkaround = false;
        mHoverInProgress = false;
        mHoverMetaState = 0;
        mCurrentOrientation = 0;
        mEatTouchRelease = false;
        mContextMenuVisible = false;
        mLongPressCheck = null;
        mIsFullScreen = false;
        mSurfaceChangedForSoftKeyboard = false;
        mDispatchUserTriggeredSkDeactivate = true;
        mHideSoftKeyboardOnWindowFocusChange = false;
        mTrackBallPressed = false;
        mWindowHasFocus = true;
        mNeedsCompositingSurface = false;
        mCurrentSurfaceFormat = -1;
        mFocusedWebView = null;
        mResizedWebView = null;
        mFocusedStageText = null;
        mResizedStageText = null;
        inTouch = false;
        mMetaShiftState = MetaKeyState.INACTIVE;
        mMetaAltState = MetaKeyState.INACTIVE;
        mHoverTimeoutHandler = new HoverTimeoutHandler(this);
        mInputMethodReceiver = new InputMethodReceiver();
        mSurfaceHolder = getHolder();
        mActivityWrapper = androidactivitywrapper;
        setSurfaceFormat(false);
        mGestureListener = new AIRGestureListener(context, this);
        mGestureDetector = new GestureDetector(context, mGestureListener, null, false);
        mScaleGestureDetector = new ScaleGestureDetector(context, mGestureListener);
        setWillNotDraw(false);
        setClickable(true);
        setEnabled(true);
        setFocusable(true);
        setFocusableInTouchMode(true);
        mScaledTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        mSurfaceHolder.addCallback(this);
        setZOrderMediaOverlay(true);
        mActivityWrapper.registerPlane(this, 3);
    }

    private boolean AllowOSToHandleKeys(int i)
    {
        switch (i)
        {
        default:
            return false;

        case 24: // '\030'
        case 25: // '\031'
        case 26: // '\032'
            return true;
        }
    }

    private void DoSetOnSystemUiVisibilityChangeListener()
    {
        setOnSystemUiVisibilityChangeListener(new android.view.View.OnSystemUiVisibilityChangeListener() {

            final AIRWindowSurfaceView this$0;
            final AIRWindowSurfaceView val$theThis;

            public void onSystemUiVisibilityChange(int i)
            {
                theThis.setOnSystemUiVisibilityChangeListener(null);
                if (theThis.getIsFullScreen())
                {
                    theThis.nativeDispatchFullScreenEvent(true);
                    return;
                } else
                {
                    theThis.nativeDispatchFullScreenEvent(false);
                    return;
                }
            }

            
            {
                this$0 = AIRWindowSurfaceView.this;
                theThis = airwindowsurfaceview1;
                super();
            }
        });
    }

    private MetaKeyState GetMetaKeyState(MetaKeyState metakeystate, boolean flag, boolean flag1)
    {
        static class _cls5
        {

            static final int $SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState[];

            static 
            {
                $SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState = new int[MetaKeyState.values().length];
                try
                {
                    $SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState[MetaKeyState.INACTIVE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState[MetaKeyState.PRESSED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState[MetaKeyState.ACTIVE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState[MetaKeyState.LOCKED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        if (flag1)
        {
            switch (_cls5..SwitchMap.com.adobe.air.AIRWindowSurfaceView.MetaKeyState[metakeystate.ordinal()])
            {
            default:
                return MetaKeyState.INACTIVE;

            case 1: // '\001'
            case 2: // '\002'
                if (flag)
                {
                    return MetaKeyState.PRESSED;
                } else
                {
                    return MetaKeyState.INACTIVE;
                }

            case 3: // '\003'
                if (flag)
                {
                    return MetaKeyState.PRESSED;
                } else
                {
                    return MetaKeyState.INACTIVE;
                }

            case 4: // '\004'
                return MetaKeyState.LOCKED;
            }
        }
        if (flag)
        {
            switch (_cls5..SwitchMap.com.adobe.air.AIRWindowSurfaceView.MetaKeyState[metakeystate.ordinal()])
            {
            default:
                return MetaKeyState.INACTIVE;

            case 1: // '\001'
            case 2: // '\002'
                return MetaKeyState.ACTIVE;

            case 3: // '\003'
                return MetaKeyState.LOCKED;
            }
        } else
        {
            return MetaKeyState.INACTIVE;
        }
    }

    private void HandleMetaKeyAction(KeyEvent keyevent)
    {
        keyevent.getKeyCode();
        JVM INSTR tableswitch 57 60: default 36
    //                   57 96
    //                   58 96
    //                   59 71
    //                   60 71;
           goto _L1 _L2 _L2 _L3 _L3
_L1:
        mMetaShiftState = GetMetaKeyState(mMetaShiftState, keyevent.isShiftPressed(), true);
        mMetaAltState = GetMetaKeyState(mMetaAltState, keyevent.isAltPressed(), true);
_L5:
        return;
_L3:
        if (keyevent.getRepeatCount() == 0)
        {
            mMetaShiftState = GetMetaKeyState(mMetaShiftState, keyevent.isShiftPressed(), false);
            return;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        if (keyevent.getRepeatCount() == 0)
        {
            mMetaAltState = GetMetaKeyState(mMetaAltState, keyevent.isAltPressed(), false);
            return;
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    private boolean HandleShortCuts(int i, KeyEvent keyevent)
    {
        if (i == 23)
        {
            if (!mTrackBallPressed && !mContextMenuVisible)
            {
                mTrackBallPressed = true;
                postCheckLongPress();
                return false;
            } else
            {
                return true;
            }
        }
        if (keyevent.isAltPressed())
        {
            switch (i)
            {
            default:
                return false;

            case 67: // 'C'
                nativeDeleteTextLine();
                return true;

            case 21: // '\025'
                nativeMoveCursor(0);
                return true;

            case 22: // '\026'
                nativeMoveCursor(1);
                return true;

            case 19: // '\023'
                nativeMoveCursor(2);
                return true;

            case 20: // '\024'
                nativeMoveCursor(3);
                return true;
            }
        } else
        {
            return false;
        }
    }

    private boolean IsIMEInFullScreen()
    {
        return getInputMethodManager().isFullscreenMode();
    }

    private boolean IsPointInTextBox(float f, float f1, int i)
    {
        if (i == 2)
        {
            mTextBoxBounds = nativeGetTextBoxBounds();
        }
        boolean flag;
        if (mTextBoxBounds != null && (int)f > mTextBoxBounds.left && (int)f < mTextBoxBounds.right && (int)f1 > mTextBoxBounds.top && (int)f1 < mTextBoxBounds.bottom)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i == 4)
        {
            mTextBoxBounds = null;
        }
        return flag;
    }

    private boolean IsTouchEventHandlingAllowed(int i, float f, float f1)
    {
        boolean flag = IsPointInTextBox(f, f1, i);
        if (i == 2)
        {
            mDownX = f;
            mDownY = f1;
            mEatTouchRelease = false;
            if (flag)
            {
                postCheckLongPress();
                return true;
            }
        } else
        if (i == 1)
        {
            if (flag)
            {
                if (IsTouchMove(f, f1))
                {
                    if (mLongPressCheck != null)
                    {
                        removeCallbacks(mLongPressCheck);
                        return true;
                    }
                } else
                {
                    return false;
                }
            }
        } else
        if (i == 4 && mLongPressCheck != null)
        {
            removeCallbacks(mLongPressCheck);
        }
        return true;
    }

    private boolean IsTouchMove(float f, float f1)
    {
        float f2 = mDownX - f;
        float f3 = mDownY - f1;
        return (float)Math.sqrt(f2 * f2 + f3 * f3) >= (float)mScaledTouchSlop;
    }

    private boolean hasStatusBar(Window window)
    {
        Rect rect = new Rect();
        window.getDecorView().getWindowVisibleDisplayFrame(rect);
        return rect.top > 0;
    }

    private native void nativeCutText(boolean flag);

    private native void nativeDeleteTextLine();

    private native void nativeDispatchFullScreenEvent(boolean flag);

    private native void nativeDispatchSelectionChangeEvent(boolean flag);

    private native void nativeForceReDraw();

    private native int nativeGetMultitouchMode();

    private native String nativeGetSelectedText();

    private native Rect nativeGetTextBoxBounds();

    private native void nativeInsertText(String s);

    private native boolean nativeIsEditable();

    private native boolean nativeIsFullScreenInteractive();

    private native boolean nativeIsMultiLineTextField();

    private native boolean nativeIsPasswordField();

    private native boolean nativeIsTextFieldInSelectionMode();

    private native boolean nativeIsTextFieldSelectable();

    private native void nativeMoveCursor(int i);

    private native void nativeOnFormatChangeListener(int i);

    private native void nativeOnSizeChangedListener(int i, int j, boolean flag);

    private native boolean nativePerformWindowPanning(int i, int j);

    private native void nativeSelectAllText();

    private native void nativeSetKeyboardVisible(boolean flag);

    private native void nativeSurfaceCreated();

    private void postCheckLongPress()
    {
        if (mLongPressCheck == null)
        {
            mLongPressCheck = new CheckLongPress();
        }
        postDelayed(mLongPressCheck, 500L);
    }

    private void setSurfaceFormatImpl(boolean flag, final int format)
    {
        if (flag)
        {
            post(new Runnable() {

                final AIRWindowSurfaceView this$0;
                final int val$format;

                public void run()
                {
                    mSurfaceHolder.setFormat(format);
                    mCurrentSurfaceFormat = format;
                }

            
            {
                this$0 = AIRWindowSurfaceView.this;
                format = i;
                super();
            }
            });
            return;
        } else
        {
            mSurfaceHolder.setFormat(format);
            mCurrentSurfaceFormat = format;
            return;
        }
    }

    private static boolean supportsSystemUiFlags()
    {
        return android.os.Build.VERSION.SDK_INT >= 14;
    }

    private static boolean supportsSystemUiVisibilityAPI()
    {
        return android.os.Build.VERSION.SDK_INT >= 11;
    }

    public void DispatchSoftKeyboardEventOnBackKey()
    {
        if (mIsFullScreen && !mSurfaceChangedForSoftKeyboard || mFlashEGL != null || IsIMEInFullScreen() || !mSurfaceChangedForSoftKeyboard && !nativeIsEditable())
        {
            nativeDispatchUserTriggeredSkDeactivateEvent();
            if (!mSurfaceChangedForSoftKeyboard && !nativeIsEditable())
            {
                nativeShowOriginalRect();
            }
        }
    }

    int GetMetaKeyCharacter(KeyEvent keyevent)
    {
        int i;
label0:
        {
            if (mMetaShiftState != MetaKeyState.LOCKED)
            {
                MetaKeyState metakeystate = mMetaShiftState;
                MetaKeyState metakeystate1 = MetaKeyState.ACTIVE;
                i = 0;
                if (metakeystate != metakeystate1)
                {
                    break label0;
                }
            }
            i = false | true;
        }
        if (mMetaAltState == MetaKeyState.LOCKED || mMetaAltState == MetaKeyState.ACTIVE)
        {
            i |= 2;
        }
        return keyevent.getUnicodeChar(i);
    }

    public void HideSoftKeyboardOnWindowFocusChange()
    {
        mHideSoftKeyboardOnWindowFocusChange = true;
    }

    public boolean IsLandScape()
    {
        return mCurrentOrientation == 2;
    }

    public boolean IsPasswordVisibleSettingEnabled()
    {
        int i;
        try
        {
            i = android.provider.Settings.System.getInt(getContext().getContentResolver(), "show_password");
        }
        catch (Exception exception)
        {
            return false;
        }
        return i == 1;
    }

    public boolean IsSurfaceChangedForSoftKeyboard()
    {
        return mSurfaceChangedForSoftKeyboard;
    }

    public boolean IsTouchUpHandlingAllowed()
    {
        return !mEatTouchRelease;
    }

    public void RestartInput()
    {
        mMetaShiftState = MetaKeyState.INACTIVE;
        mMetaAltState = MetaKeyState.INACTIVE;
        InputMethodManager inputmethodmanager = getInputMethodManager();
        if (inputmethodmanager != null)
        {
            inputmethodmanager.restartInput(this);
        }
        if (mInputConnection != null)
        {
            mInputConnection.Reset();
        }
    }

    public void SetSelectionMode(boolean flag)
    {
        nativeDispatchSelectionChangeEvent(flag);
    }

    public void SetSurfaceChangedForSoftKeyboard(boolean flag)
    {
        mSurfaceChangedForSoftKeyboard = flag;
    }

    public void clearFullScreen()
    {
        mIsFullScreen = false;
        mActivityWrapper.setIsFullScreen(mIsFullScreen);
        if (supportsSystemUiVisibilityAPI())
        {
            if (!supportsSystemUiFlags());
            DoSetOnSystemUiVisibilityChangeListener();
            setSystemUiVisibility(0);
        }
        Activity activity = mActivityWrapper.getActivity();
        if (activity != null)
        {
            activity.getWindow().clearFlags(1024);
        }
        mActivityWrapper.planeBreakCascade();
    }

    protected void draw(int i, int j, int k, int l, Bitmap bitmap)
    {
        if (mSurfaceValid) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Rect rect;
        int i1;
        rect = new Rect(i, j, i + k, j + l);
        i1 = mSkipHeightFromTop;
        if (i1 == 0) goto _L4; else goto _L3
_L3:
        Rect rect1 = new Rect(0, i1, mWd, mHt);
        if (!Rect.intersects(rect, rect1)) goto _L1; else goto _L5
_L5:
        Canvas canvas;
        Rect rect3;
        Rect rect2 = new Rect(rect);
        rect2.intersect(rect1);
        rect2.top = rect2.top - i1;
        rect2.bottom = rect2.bottom - i1;
        if (mIsFullScreen)
        {
            rect2.union(new Rect(0, rect2.bottom, mWd, mHt));
        }
        canvas = mSurfaceHolder.lockCanvas(rect2);
        if (!mIsFullScreen && rect2.bottom > mHt - i1)
        {
            rect2.bottom = mHt - i1;
        }
        rect3 = rect2;
_L8:
        SurfaceHolder surfaceholder = mSurfaceHolder;
        surfaceholder;
        JVM INSTR monitorenter ;
        canvas.clipRect(rect3);
        if (i1 == 0)
        {
            break MISSING_BLOCK_LABEL_233;
        }
        if (mIsFullScreen)
        {
            canvas.drawColor(0xff000000);
        }
        if (!mMaliWorkaround) goto _L7; else goto _L6
_L6:
        mPaint = null;
        canvas.drawColor(0, android.graphics.PorterDuff.Mode.CLEAR);
_L10:
        canvas.drawBitmap(bitmap, 0.0F, -i1, mPaint);
        surfaceholder;
        JVM INSTR monitorexit ;
        if (canvas != null)
        {
            mSurfaceHolder.unlockCanvasAndPost(canvas);
        }
_L12:
        if (mInputConnection != null)
        {
            mInputConnection.updateIMEText();
            return;
        }
          goto _L1
_L4:
        Canvas canvas1 = mSurfaceHolder.lockCanvas(rect);
        rect3 = rect;
        canvas = canvas1;
          goto _L8
_L7:
        if (mPaint != null || mCurrentSurfaceFormat == 4) goto _L10; else goto _L9
_L9:
        mPaint = new Paint();
        mPaint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC));
        mPaint.setFilterBitmap(false);
          goto _L10
        Exception exception2;
        exception2;
        surfaceholder;
        JVM INSTR monitorexit ;
        Exception exception;
        try
        {
            throw exception2;
        }
        catch (Exception exception1) { }
        finally
        {
            if (canvas == null) goto _L0; else goto _L0
        }
        if (canvas == null) goto _L12; else goto _L11
_L11:
        mSurfaceHolder.unlockCanvasAndPost(canvas);
        if (true) goto _L12; else goto _L13
_L13:
        mSurfaceHolder.unlockCanvasAndPost(canvas);
        throw exception;
          goto _L8
    }

    public void drawBitmap(int i, int j, int k, int l, Bitmap bitmap)
    {
        draw(i, j, k, l, bitmap);
    }

    public void drawBitmap(int i, int j, int k, int l, Bitmap bitmap, int i1, int j1, 
            int k1, int l1, boolean flag, int i2)
    {
        drawScaled(i, j, k, l, bitmap, i1, j1, k1, l1, flag, i2);
    }

    protected void drawScaled(int i, int j, int k, int l, Bitmap bitmap, int i1, int j1, 
            int k1, int l1, boolean flag, int i2)
    {
        if (mSurfaceValid) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Canvas canvas = null;
        Rect rect = new Rect(i1, j1, i1 + k1, j1 + l1);
        canvas = null;
        if (!flag) goto _L4; else goto _L3
_L3:
        Rect rect1 = new Rect(0, 0, mWd, mHt);
_L9:
        int j2 = mSkipHeightFromTop;
        canvas = null;
        if (j2 == 0) goto _L6; else goto _L5
_L5:
        int k2;
        Rect rect2;
        boolean flag1;
        k2 = mSkipHeightFromTop;
        rect2 = new Rect(0, k2, mWd, mHt);
        flag1 = Rect.intersects(rect, rect2);
        if (flag1) goto _L8; else goto _L7
_L7:
        if (false)
        {
            mSurfaceHolder.unlockCanvasAndPost(null);
            return;
        }
          goto _L1
_L4:
        int j3;
        int k3;
        j3 = i1 + k1;
        k3 = j1 + l1;
        Exception exception2;
        rect1 = new Rect(i1, j1, j3, k3);
          goto _L9
_L13:
        if (mInputConnection == null) goto _L1; else goto _L10
_L10:
        mInputConnection.updateIMEText();
        return;
_L8:
        Rect rect3;
        rect3 = new Rect(rect);
        rect3.intersect(rect2);
        rect3.top = rect3.top - k2;
        rect3.bottom = rect3.bottom - k2;
        Rect rect4;
        Rect rect5;
        Exception exception;
        Exception exception1;
        Canvas canvas1;
        int l2;
        int i3;
        Rect rect6;
        Canvas canvas2;
        Exception exception3;
        SurfaceHolder surfaceholder;
        Exception exception4;
        Paint paint;
        if (!flag)
        {
            rect4 = rect3;
        } else
        {
            rect4 = rect1;
        }
        canvas = null;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_549;
        }
        l2 = rect3.bottom;
        i3 = mHt - k2;
        canvas = null;
        if (l2 <= i3)
        {
            break MISSING_BLOCK_LABEL_549;
        }
        rect3.bottom = mHt - k2;
        break MISSING_BLOCK_LABEL_549;
_L18:
        rect6 = new Rect(i, j, i + k, j + l);
        canvas2 = mSurfaceHolder.lockCanvas(rect4);
        canvas = canvas2;
        surfaceholder = mSurfaceHolder;
        surfaceholder;
        JVM INSTR monitorenter ;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_369;
        }
        canvas.drawRGB(Color.red(i2), Color.green(i2), Color.blue(i2));
        if (!mMaliWorkaround) goto _L12; else goto _L11
_L11:
        mPaint = null;
        canvas.drawColor(0, android.graphics.PorterDuff.Mode.CLEAR);
_L15:
        paint = mPaintScaled;
        canvas.drawBitmap(bitmap, rect6, rect5, paint);
        surfaceholder;
        JVM INSTR monitorexit ;
        if (canvas != null)
        {
            mSurfaceHolder.unlockCanvasAndPost(canvas);
        }
          goto _L13
_L12:
        if (mPaintScaled != null || mCurrentSurfaceFormat == 4) goto _L15; else goto _L14
_L14:
        mPaintScaled = new Paint();
        mPaintScaled.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC));
          goto _L15
        exception4;
        surfaceholder;
        JVM INSTR monitorexit ;
        try
        {
            throw exception4;
        }
        // Misplaced declaration of an exception variable
        catch (Exception exception2)
        {
            if (canvas != null)
            {
                mSurfaceHolder.unlockCanvasAndPost(canvas);
            }
        }
        finally
        {
            canvas1 = canvas;
        }
        if (true) goto _L13; else goto _L16
_L16:
        exception1 = exception3;
_L17:
        if (canvas1 != null)
        {
            mSurfaceHolder.unlockCanvasAndPost(canvas1);
        }
        throw exception1;
        exception;
        exception1 = exception;
        canvas1 = null;
        if (true) goto _L17; else goto _L6
_L6:
        Rect rect7 = rect1;
        rect5 = rect;
        rect4 = rect7;
          goto _L18
        rect5 = rect3;
          goto _L18
    }

    public void forceSoftKeyboardDown()
    {
        nativeShowOriginalRect();
        setScrollTo(0);
        if (mDispatchUserTriggeredSkDeactivate && mSurfaceChangedForSoftKeyboard)
        {
            nativeDispatchUserTriggeredSkDeactivateEvent();
        }
        nativeSetKeyboardVisible(false);
        mDispatchUserTriggeredSkDeactivate = true;
        mSurfaceChangedForSoftKeyboard = false;
    }

    public boolean gatherTransparentRegion(Region region)
    {
        int ai[] = new int[2];
        getLocationInWindow(ai);
        region.op(ai[0], ai[1], mVisibleBoundWidth, mVisibleBoundHeight, android.graphics.Region.Op.REPLACE);
        return false;
    }

    public AndroidActivityWrapper getActivityWrapper()
    {
        return mActivityWrapper;
    }

    public int getAppSpecifiedPixelFormat()
    {
        return !mActivityWrapper.useRGB565() ? 32 : 16;
    }

    public int getBoundHeight()
    {
        return mBoundHeight;
    }

    public int getBoundWidth()
    {
        return mBoundWidth;
    }

    public int getColorDepth()
    {
        byte byte0;
        if (mCurrentSurfaceFormat == 4)
        {
            byte0 = 16;
        } else
        {
            byte0 = 32;
            Activity activity = mActivityWrapper.getActivity();
            if (activity != null)
            {
                Display display = ((WindowManager)activity.getSystemService("window")).getDefaultDisplay();
                PixelFormat pixelformat = new PixelFormat();
                PixelFormat.getPixelFormatInfo(display.getPixelFormat(), pixelformat);
                return pixelformat.bitsPerPixel;
            }
        }
        return byte0;
    }

    public InputMethodManager getInputMethodManager()
    {
        return (InputMethodManager)getContext().getSystemService("input_method");
    }

    public boolean getIsFullScreen()
    {
        return mIsFullScreen;
    }

    public int getKeyboardHeight()
    {
        return mHt - getVisibleBoundHeight();
    }

    public int getMultitouchMode()
    {
        return mMultitouchMode;
    }

    public VideoView getVideoView()
    {
        if (mVideoView == null)
        {
            mVideoView = new VideoViewAIR(getContext(), mActivityWrapper);
        }
        return mVideoView;
    }

    public int getVisibleBoundHeight()
    {
        return mVisibleBoundHeight;
    }

    public int getVisibleBoundWidth()
    {
        return mVisibleBoundWidth;
    }

    public boolean isStageTextInFocus()
    {
        return mFocusedStageText != null;
    }

    public boolean isStageWebViewInFocus()
    {
        if (mFocusedWebView != null)
        {
            return mFocusedWebView.isInTextEditingMode();
        } else
        {
            return false;
        }
    }

    public boolean isSurfaceValid()
    {
        return mSurfaceValid;
    }

    public native void nativeDispatchUserTriggeredSkDeactivateEvent();

    public native ExtractedText nativeGetTextContent();

    public native int nativeGetTextContentLength();

    public native boolean nativeIsTextSelected();

    public native boolean nativeOnDoubleClickListener(float f, float f1);

    public native boolean nativeOnKeyListener(int i, int j, int k, boolean flag, boolean flag1, boolean flag2);

    public native void nativeShowOriginalRect();

    public boolean onCheckIsTextEditor()
    {
        return true;
    }

    protected void onCreateContextMenu(ContextMenu contextmenu)
    {
        super.onCreateContextMenu(contextmenu);
        if (!mIsFullScreen || nativeIsFullScreenInteractive())
        {
            ClipboardManager clipboardmanager = (ClipboardManager)getContext().getSystemService("clipboard");
            MenuHandler menuhandler = new MenuHandler();
            boolean flag = nativeIsEditable();
            boolean flag1 = nativeIsTextFieldSelectable();
            if (flag1 || flag)
            {
                if (flag1)
                {
                    boolean flag2;
                    if (nativeGetTextContentLength() > 0)
                    {
                        flag2 = true;
                    } else
                    {
                        flag2 = false;
                    }
                    if (flag2)
                    {
                        contextmenu.add(0, 0, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_SELECT_ALL)).setOnMenuItemClickListener(menuhandler).setAlphabeticShortcut('a');
                        boolean flag3;
                        if (nativeIsTextFieldInSelectionMode())
                        {
                            contextmenu.add(0, 8, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_STOP_SELECTING_TEXT)).setOnMenuItemClickListener(menuhandler);
                        } else
                        {
                            contextmenu.add(0, 7, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_SELECT_TEXT)).setOnMenuItemClickListener(menuhandler);
                        }
                    }
                    if (!nativeIsPasswordField() && flag2)
                    {
                        flag3 = nativeIsTextSelected();
                        if (flag)
                        {
                            if (flag3)
                            {
                                contextmenu.add(0, 1, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CUT_STRING)).setOnMenuItemClickListener(menuhandler).setAlphabeticShortcut('x');
                            } else
                            {
                                contextmenu.add(0, 2, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CUT_ALL_STRING)).setOnMenuItemClickListener(menuhandler);
                            }
                        }
                        if (flag3)
                        {
                            contextmenu.add(0, 3, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_COPY_STRING)).setOnMenuItemClickListener(menuhandler).setAlphabeticShortcut('c');
                        } else
                        {
                            contextmenu.add(0, 4, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_COPY_ALL_STRING)).setOnMenuItemClickListener(menuhandler);
                        }
                    }
                }
                if (flag)
                {
                    if (clipboardmanager != null && clipboardmanager.hasText())
                    {
                        contextmenu.add(0, 5, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_PASTE_STRING)).setOnMenuItemClickListener(menuhandler).setAlphabeticShortcut('v');
                    }
                    contextmenu.add(0, 6, 0, AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_INPUT_METHOD_STRING)).setOnMenuItemClickListener(menuhandler);
                }
                mEatTouchRelease = true;
                mContextMenuVisible = true;
                contextmenu.setHeaderTitle(AndroidLocale.GetLocalizedString(AndroidLocale.STRING_ID.IDA_CONTEXT_MENU_TITLE_STRING));
                return;
            }
        }
    }

    public InputConnection onCreateInputConnection(EditorInfo editorinfo)
    {
        if (mActivityWrapper.isApplicationLaunched() && nativeIsEditable())
        {
            editorinfo.imeOptions = 0x40000000 | editorinfo.imeOptions;
            editorinfo.imeOptions = 6 | editorinfo.imeOptions;
            editorinfo.inputType = 1 | editorinfo.inputType;
            if (nativeIsPasswordField())
            {
                editorinfo.inputType = 0x80 | editorinfo.inputType;
            }
            if (nativeIsMultiLineTextField())
            {
                editorinfo.inputType = 0x20000 | editorinfo.inputType;
            }
            mInputConnection = new AndroidInputConnection(this);
            editorinfo.initialSelStart = -1;
            editorinfo.initialSelEnd = -1;
            editorinfo.initialCapsMode = 0;
        } else
        {
            mInputConnection = null;
        }
        return mInputConnection;
    }

    protected void onFocusChanged(boolean flag, int i, Rect rect)
    {
        AIRLogger.d("AIRWindowSurfaceView", "*** *** onFocusChanged: AIR");
        if (flag && mFocusedStageText != null && !inTouch)
        {
            mDispatchUserTriggeredSkDeactivate = true;
            forceSoftKeyboardDown();
        }
        super.onFocusChanged(flag, i, rect);
    }

    public boolean onGenericMotionEvent(MotionEvent motionevent)
    {
        if (motionevent.getAction() == 9 || motionevent.getAction() == 10 || motionevent.getAction() == 7)
        {
            return onTouchEvent(motionevent);
        } else
        {
            return false;
        }
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        boolean flag;
        if (AllowOSToHandleKeys(i))
        {
            flag = false;
        } else
        {
            int j = keyevent.getUnicodeChar();
            int k;
            if (mMetaShiftState == MetaKeyState.ACTIVE || mMetaShiftState == MetaKeyState.LOCKED || mMetaAltState == MetaKeyState.ACTIVE || mMetaAltState == MetaKeyState.LOCKED)
            {
                k = GetMetaKeyCharacter(keyevent);
            } else
            {
                k = j;
            }
            HandleMetaKeyAction(keyevent);
            if (!mTrackBallPressed && mLongPressCheck != null)
            {
                removeCallbacks(mLongPressCheck);
            }
            if (mActivityWrapper.isApplicationLaunched() && !HandleShortCuts(i, keyevent))
            {
                flag = nativeOnKeyListener(keyevent.getAction(), i, k, keyevent.isAltPressed(), keyevent.isShiftPressed(), keyevent.isSymPressed());
                if (mInputConnection != null)
                {
                    mInputConnection.updateIMEText();
                    return flag;
                }
            } else
            {
                return false;
            }
        }
        return flag;
    }

    public boolean onKeyPreIme(int i, KeyEvent keyevent)
    {
        if (i == 4 && keyevent.getAction() == 0)
        {
            DispatchSoftKeyboardEventOnBackKey();
        }
        return false;
    }

    public boolean onKeyUp(int i, KeyEvent keyevent)
    {
        boolean flag;
        if (AllowOSToHandleKeys(i))
        {
            flag = false;
        } else
        {
            int j = keyevent.getUnicodeChar();
            int k;
            if (mMetaShiftState == MetaKeyState.ACTIVE || mMetaShiftState == MetaKeyState.LOCKED || mMetaAltState == MetaKeyState.ACTIVE || mMetaAltState == MetaKeyState.LOCKED)
            {
                k = GetMetaKeyCharacter(keyevent);
            } else
            {
                k = j;
            }
            if (mLongPressCheck != null)
            {
                removeCallbacks(mLongPressCheck);
            }
            if (i == 23)
            {
                mTrackBallPressed = false;
            }
            if (mActivityWrapper.isApplicationLaunched())
            {
                flag = nativeOnKeyListener(keyevent.getAction(), i, k, keyevent.isAltPressed(), keyevent.isShiftPressed(), keyevent.isSymPressed());
                if (mInputConnection != null)
                {
                    mInputConnection.updateIMEText();
                }
                if (!flag && keyevent.getKeyCode() == 4 && keyevent.isTracking() && !keyevent.isCanceled())
                {
                    mActivityWrapper.getActivity().moveTaskToBack(false);
                    return true;
                }
            } else
            {
                return false;
            }
        }
        return flag;
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
    }

    public boolean onTextBoxContextMenuItem(int i)
    {
        ClipboardManager clipboardmanager = (ClipboardManager)getContext().getSystemService("clipboard");
        i;
        JVM INSTR tableswitch 0 8: default 64
    //                   0 66
    //                   1 209
    //                   2 253
    //                   3 86
    //                   4 125
    //                   5 165
    //                   6 298
    //                   7 193
    //                   8 201;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8 _L9 _L10
_L1:
        return false;
_L2:
        nativeSelectAllText();
_L12:
        if (mInputConnection != null)
        {
            mInputConnection.updateIMEText();
        }
        return true;
_L5:
        String s1 = nativeGetSelectedText();
        if (s1 != null)
        {
            if (nativeIsPasswordField())
            {
                s1 = Utils.ReplaceTextContentWithStars(s1);
            }
            clipboardmanager.setText(s1);
        }
        SetSelectionMode(false);
        continue; /* Loop/switch isn't completed */
_L6:
        Object obj1 = nativeGetTextContent().text;
        if (obj1 != null)
        {
            if (nativeIsPasswordField())
            {
                obj1 = Utils.ReplaceTextContentWithStars(obj1.toString());
            }
            clipboardmanager.setText(((CharSequence) (obj1)));
        }
        continue; /* Loop/switch isn't completed */
_L7:
        CharSequence charsequence = clipboardmanager.getText();
        if (charsequence != null)
        {
            nativeInsertText(charsequence.toString());
        }
        SetSelectionMode(false);
        continue; /* Loop/switch isn't completed */
_L9:
        SetSelectionMode(true);
        continue; /* Loop/switch isn't completed */
_L10:
        SetSelectionMode(false);
        continue; /* Loop/switch isn't completed */
_L3:
        String s = nativeGetSelectedText();
        if (s != null)
        {
            nativeCutText(false);
            if (nativeIsPasswordField())
            {
                s = Utils.ReplaceTextContentWithStars(s);
            }
            clipboardmanager.setText(s);
        }
        SetSelectionMode(false);
        continue; /* Loop/switch isn't completed */
_L4:
        Object obj = nativeGetTextContent().text;
        if (obj != null)
        {
            nativeCutText(true);
            if (nativeIsPasswordField())
            {
                obj = Utils.ReplaceTextContentWithStars(obj.toString());
            }
            clipboardmanager.setText(((CharSequence) (obj)));
        }
        continue; /* Loop/switch isn't completed */
_L8:
        InputMethodManager inputmethodmanager = getInputMethodManager();
        if (inputmethodmanager != null)
        {
            inputmethodmanager.showInputMethodPicker();
        }
        if (true) goto _L12; else goto _L11
_L11:
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        int l;
        boolean flag4;
        boolean flag5;
        float f;
        float f1;
        int i1;
        int j1;
        int k1;
        int i2;
        byte byte0;
        boolean flag6;
        boolean flag7;
        float f2;
        boolean flag9;
        float af[];
        inTouch = true;
        int i = 0xff & motionevent.getAction();
        boolean flag;
        if (i == 9 || i == 10 || i == 7)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!hasFocus() && !flag)
        {
            RelativeLayout relativelayout = mActivityWrapper.getOverlaysLayout(false);
            if (relativelayout != null)
            {
                requestFocus();
                relativelayout.clearFocus();
                int i5 = relativelayout.getChildCount();
                for (int j5 = 0; j5 < i5; j5++)
                {
                    View view = relativelayout.getChildAt(j5);
                    if (view != null)
                    {
                        view.clearFocus();
                    }
                }

            }
        }
        if (i == 5 || i == 0)
        {
            for (int j = 0; j < motionevent.getPointerCount(); j++)
            {
                int l4 = motionevent.getPointerId(j);
                mGestureListener.setDownTouchPoint(motionevent.getX(j), motionevent.getY(j), l4);
            }

        }
        if (i == 0)
        {
            mGestureListener.mayStartNewTransformGesture();
        }
        int k;
        int j2;
        int l2;
        int k3;
        int l3;
        int i4;
        if (i == 5)
        {
            mGestureListener.setCouldBeTwoFingerTap(1);
            int k4 = i >> 8;
            mGestureListener.setSecondaryPointOfTwoFingerTap(mGestureListener.getDownTouchPoint(k4));
        } else
        if (i == 6 && mGestureListener.getCouldBeTwoFingerTap() == 1)
        {
            mGestureListener.setCouldBeTwoFingerTap(2);
        } else
        if (i == 1 && mGestureListener.getCouldBeTwoFingerTap() == 2)
        {
            mGestureListener.setCouldBeTwoFingerTap(3);
        } else
        if (i != 2)
        {
            mGestureListener.setCouldBeTwoFingerTap(0);
        }
        if (!mActivityWrapper.isApplicationLaunched()) goto _L2; else goto _L1
_L1:
        k = motionevent.getPointerCount();
        l = 0;
        flag4 = true;
        flag5 = false;
_L26:
        if (l >= k) goto _L4; else goto _L3
_L3:
        f = motionevent.getX(l);
        f1 = motionevent.getY(l) + (float)mSkipHeightFromTop;
        mLastTouchedXCoord = f;
        mLastTouchedYCoord = f1;
        i1 = motionevent.getAction();
        j1 = motionevent.getPointerId(l);
        k1 = motionevent.getMetaState();
        if (android.os.Build.VERSION.SDK_INT >= 14)
        {
            k1 &= 0xf1ffffff;
            int j4 = motionevent.getToolType(l);
            if (j4 == 4)
            {
                k1 |= 0x4000000;
            } else
            if (j4 == 2)
            {
                k1 |= 0x2000000;
            }
            if ((2 & motionevent.getButtonState()) != 0)
            {
                k1 |= 0x8000000;
            }
        }
        if (!flag5) goto _L6; else goto _L5
_L5:
        i2 = 3;
        byte0 = 4;
        flag6 = flag5;
        flag7 = false;
_L18:
        if (!IsTouchEventHandlingAllowed(byte0, f, f1)) goto _L8; else goto _L7
_L6:
        if (motionevent.getPointerCount() != 1 && j1 != motionevent.getPointerId((0xff00 & i1) >> 8)) goto _L10; else goto _L9
_L9:
        int l1 = i1 & 0xff;
        l1;
        JVM INSTR tableswitch 0 10: default 684
    //                   0 813
    //                   1 833
    //                   2 684
    //                   3 830
    //                   4 684
    //                   5 813
    //                   6 833
    //                   7 747
    //                   8 684
    //                   9 711
    //                   10 729;
           goto _L11 _L12 _L13 _L11 _L14 _L11 _L12 _L13 _L15 _L11 _L16 _L17
_L11:
        mHoverTimeoutHandler.setLastMove(System.currentTimeMillis());
        i2 = l1;
        byte0 = 1;
        flag6 = flag5;
        flag7 = false;
          goto _L18
_L16:
        i2 = l1;
        byte0 = 16;
        flag6 = flag5;
        flag7 = false;
          goto _L18
_L17:
        i2 = l1;
        byte0 = 32;
        flag6 = flag5;
        flag7 = false;
          goto _L18
_L15:
        if (android.os.Build.VERSION.SDK_INT >= 14) goto _L20; else goto _L19
_L19:
        mHoverTimeoutHandler.setLastMove(System.currentTimeMillis());
        mHoverMetaState = k1;
        if (mHoverInProgress) goto _L20; else goto _L21
_L21:
        mHoverTimeoutHandler.sendEmptyMessageDelayed(0, 500L);
        mHoverInProgress = true;
        i2 = l1;
        byte0 = 8;
        flag6 = flag5;
        flag7 = true;
          goto _L18
_L12:
        i2 = l1;
        byte0 = 2;
        flag6 = flag5;
        flag7 = false;
          goto _L18
_L14:
        flag5 = true;
_L13:
        mGestureListener.endTwoFingerGesture();
        mGestureListener.setCheckForSwipe(true);
        i2 = l1;
        byte0 = 4;
        flag6 = flag5;
        flag7 = false;
          goto _L18
_L7:
        float f3;
        int i3;
        int j3;
        f2 = motionevent.getSize(l);
        int k2;
        if (j1 == 0)
        {
            flag9 = true;
        } else
        {
            flag9 = false;
        }
        j2 = motionevent.getHistorySize();
        af = new float[3 * (j2 + 1)];
        k2 = 0;
        for (l2 = 0; l2 < j2;)
        {
            k3 = k2 + 1;
            af[k2] = motionevent.getHistoricalX(l, l2);
            l3 = k3 + 1;
            af[k3] = motionevent.getHistoricalY(l, l2);
            i4 = l3 + 1;
            af[l3] = motionevent.getHistoricalPressure(l, l2);
            l2++;
            k2 = i4;
        }

        f3 = motionevent.getPressure(l);
        af[k2] = f;
        af[k2 + 1] = f1;
        af[k2 + 2] = f3;
        i3 = k1 & -2;
        j3 = 0;
        byte0;
        JVM INSTR lookupswitch 3: default 952
    //                   1: 1120
    //                   2: 1120
    //                   8: 1093;
           goto _L22 _L23 _L23 _L24
_L22:
        boolean flag8;
        if (j3 != 0)
        {
            TouchEventData toucheventdata = new TouchEventData(j3, f, f1, f3, j1, f2, f2, flag9, af, i3);
            boolean flag10;
            TouchEventData toucheventdata1;
            if (flag4 && Entrypoints.registerTouchCallback(0, toucheventdata, null))
            {
                flag10 = true;
            } else
            {
                flag10 = false;
            }
            flag4 = flag10;
        }
        if (byte0 == 8 || byte0 == 1) goto _L8; else goto _L25
_L25:
        if (i2 == 3)
        {
            i3 |= 1;
        }
        toucheventdata1 = new TouchEventData(byte0, f, f1, f3, j1, f2, f2, flag9, null, i3);
        if (flag4 && Entrypoints.registerTouchCallback(0, toucheventdata1, null))
        {
            flag8 = true;
        } else
        {
            flag8 = false;
        }
_L32:
        l++;
        flag4 = flag8;
        flag5 = flag6;
          goto _L26
_L24:
        j3 = 8;
        if (android.os.Build.VERSION.SDK_INT < 14 && flag7)
        {
            j3 |= 0x10;
        }
          goto _L22
_L23:
        j3 = 1;
          goto _L22
_L4:
        boolean flag1 = flag4;
_L30:
        if (!flag1) goto _L28; else goto _L27
_L27:
        boolean flag3 = mScaleGestureDetector.onTouchEvent(motionevent);
        if (!flag3) goto _L28; else goto _L29
_L29:
        flag1 = true;
_L31:
        boolean flag2;
        if (flag1 && mGestureDetector.onTouchEvent(motionevent))
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
        inTouch = false;
        return flag2;
_L2:
        flag1 = false;
          goto _L30
_L28:
        flag1 = false;
          goto _L31
        Exception exception;
        exception;
          goto _L31
_L8:
        flag8 = flag4;
          goto _L32
_L20:
        i2 = l1;
        byte0 = 8;
        flag6 = flag5;
        flag7 = false;
          goto _L18
_L10:
        i2 = i1;
        byte0 = 1;
        flag6 = flag5;
        flag7 = false;
          goto _L18
    }

    public void onWindowFocusChanged(boolean flag)
    {
        mWindowHasFocus = flag;
        if (mLongPressCheck != null)
        {
            removeCallbacks(mLongPressCheck);
        }
        if (mHideSoftKeyboardOnWindowFocusChange)
        {
            InputMethodManager inputmethodmanager = getInputMethodManager();
            if (inputmethodmanager != null)
            {
                inputmethodmanager.hideSoftInputFromWindow(getWindowToken(), 0);
            }
            mHideSoftKeyboardOnWindowFocusChange = false;
        }
        if (flag)
        {
            mContextMenuVisible = false;
        }
    }

    public long panStageTextInFocus()
    {
        if (mFocusedStageText == null)
        {
            return 0L;
        } else
        {
            mResizedStageText = mFocusedStageText;
            return mFocusedStageText.updateViewBoundsWithKeyboard(mHt);
        }
    }

    public long panStageWebViewInFocus()
    {
        if (mFocusedWebView == null)
        {
            return 0L;
        } else
        {
            mResizedWebView = mFocusedWebView;
            return mFocusedWebView.updateViewBoundsWithKeyboard(mHt);
        }
    }

    public boolean performLongClick()
    {
        if (mWindowHasFocus)
        {
            Rect rect = nativeGetTextBoxBounds();
            if (rect != null && (mLastTouchedXCoord > (float)rect.left && mLastTouchedXCoord < (float)rect.right && mLastTouchedYCoord > (float)rect.top && mLastTouchedYCoord < (float)rect.bottom || mTrackBallPressed))
            {
                mTrackBallPressed = false;
                if (super.performLongClick())
                {
                    return true;
                }
            }
        }
        return false;
    }

    public View returnThis()
    {
        return this;
    }

    public void setCompositingHint(boolean flag)
    {
        mNeedsCompositingSurface = flag;
        if (flag && mCurrentSurfaceFormat == 1 || !flag && mCurrentSurfaceFormat == 2)
        {
            return;
        } else
        {
            setSurfaceFormat(true);
            return;
        }
    }

    public void setFlashEGL(FlashEGL flashegl)
    {
        mFlashEGL = flashegl;
    }

    public void setFullScreen()
    {
        if (!mIsFullScreen)
        {
            mIsFullScreen = true;
            mActivityWrapper.setIsFullScreen(mIsFullScreen);
            if (supportsSystemUiVisibilityAPI())
            {
                Activity activity;
                Window window;
                int i;
                if (supportsSystemUiFlags())
                {
                    i = 1;
                } else
                {
                    i = 1;
                }
                DoSetOnSystemUiVisibilityChangeListener();
                setSystemUiVisibility(i);
            }
            mActivityWrapper.planeBreakCascade();
        }
        activity = mActivityWrapper.getActivity();
        if (activity != null)
        {
            window = activity.getWindow();
            if (!supportsSystemUiVisibilityAPI() || hasStatusBar(window))
            {
                window.setFlags(1024, 1024);
            }
        }
    }

    public void setInputConnection(AndroidInputConnection androidinputconnection)
    {
        mInputConnection = androidinputconnection;
    }

    public void setMultitouchMode(int i)
    {
        mMultitouchMode = i;
    }

    public boolean setScrollTo(final int height)
    {
        mSkipHeightFromTop = height;
        final RelativeLayout overlays = mActivityWrapper.getOverlaysLayout(false);
        if (overlays != null)
        {
            post(new Runnable() {

                final AIRWindowSurfaceView this$0;
                final int val$height;
                final RelativeLayout val$overlays;

                public void run()
                {
                    if (height == 0 && mResizedWebView != null)
                    {
                        mResizedWebView.resetGlobalBounds();
                        mResizedWebView = null;
                    }
                    if (height == 0 && mResizedStageText != null)
                    {
                        mResizedStageText.resetGlobalBounds();
                        mResizedStageText = null;
                    }
                    overlays.setPadding(0, -height, 0, 0);
                    overlays.requestLayout();
                }

            
            {
                this$0 = AIRWindowSurfaceView.this;
                height = i;
                overlays = relativelayout;
                super();
            }
            });
        }
        return true;
    }

    public void setSurfaceFormat(boolean flag)
    {
label0:
        {
label1:
            {
                if (mActivityWrapper.useRGB565())
                {
                    break label0;
                }
                if (!mNeedsCompositingSurface && !mActivityWrapper.needsCompositingSurface())
                {
                    AndroidActivityWrapper _tmp = mActivityWrapper;
                    if (AndroidActivityWrapper.isGingerbread())
                    {
                        break label1;
                    }
                }
                setSurfaceFormatImpl(flag, 1);
                return;
            }
            setSurfaceFormatImpl(flag, 2);
            return;
        }
        if (mNeedsCompositingSurface)
        {
            setSurfaceFormatImpl(flag, 1);
            return;
        } else
        {
            setSurfaceFormatImpl(flag, 4);
            return;
        }
    }

    public void showActionScript2Warning()
    {
        Activity activity = mActivityWrapper.getActivity();
        if (activity != null)
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(activity);
            TextView textview = new TextView(activity);
            textview.setText("Your application is attempting to run ActionScript2.0, which is not supported on smart phone profile. \nSee the Adobe Developer Connection for more info www.adobe.com/devnet");
            Linkify.addLinks(textview, 1);
            builder.setView(textview);
            builder.setTitle("Action Script 2.0");
            builder.setNeutralButton("OK", new android.content.DialogInterface.OnClickListener() {

                final AIRWindowSurfaceView this$0;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                }

            
            {
                this$0 = AIRWindowSurfaceView.this;
                super();
            }
            });
            builder.show();
        }
    }

    public void showSoftKeyboard(boolean flag)
    {
        showSoftKeyboard(flag, ((View) (this)));
    }

    public void showSoftKeyboard(boolean flag, View view)
    {
        AIRLogger.d("AIRWindowSurfaceView", (new StringBuilder()).append("showSoftKeyboard show: ").append(flag).toString());
        InputMethodManager inputmethodmanager = getInputMethodManager();
        if (!flag)
        {
            if (mSurfaceChangedForSoftKeyboard)
            {
                mDispatchUserTriggeredSkDeactivate = false;
            }
            inputmethodmanager.hideSoftInputFromWindow(getWindowToken(), 0);
            if (mInputConnection != null)
            {
                mInputConnection.Reset();
            }
            nativeSetKeyboardVisible(false);
            return;
        } else
        {
            inputmethodmanager.showSoftInput(view, 0, mInputMethodReceiver);
            return;
        }
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
        int l;
label0:
        {
label1:
            {
label2:
                {
                    Display display = ((WindowManager)mActivityWrapper.getActivity().getSystemService("window")).getDefaultDisplay();
                    mBoundHeight = display.getHeight();
                    mBoundWidth = display.getWidth();
                    mVisibleBoundHeight = k;
                    mVisibleBoundWidth = j;
                    nativeOnFormatChangeListener(i);
                    if (!mSurfaceValid)
                    {
                        mSurfaceValid = true;
                        mActivityWrapper.onSurfaceInitialized();
                        setMultitouchMode(nativeGetMultitouchMode());
                    }
                    if (mSurfaceValid)
                    {
                        l = getResources().getConfiguration().orientation;
                        if (l != mCurrentOrientation)
                        {
                            break label1;
                        }
                        if (l != 1 && l != 2 || k >= mHt)
                        {
                            break label0;
                        }
                        if (k != 0)
                        {
                            break label2;
                        }
                    }
                    return;
                }
                if (nativePerformWindowPanning(l, mHt - k))
                {
                    mSurfaceChangedForSoftKeyboard = true;
                    return;
                }
                break label0;
            }
            showSoftKeyboard(false);
            nativeDispatchUserTriggeredSkDeactivateEvent();
            mDispatchUserTriggeredSkDeactivate = false;
        }
        boolean flag;
        OrientationManager orientationmanager;
        if (mCurrentOrientation != l)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mCurrentOrientation = l;
        mWd = j;
        mHt = k;
        nativeOnSizeChangedListener(mWd, mHt, flag);
        orientationmanager = OrientationManager.getOrientationManager();
        if (orientationmanager.mDispatchOrientationChangePending)
        {
            orientationmanager.nativeOrientationChanged(orientationmanager.mBeforeOrientation, orientationmanager.mAfterOrientation);
            orientationmanager.mDispatchOrientationChangePending = false;
        }
        nativeForceReDraw();
        forceSoftKeyboardDown();
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        mActivityWrapper.planeStepCascade();
        if (mIsFullScreen)
        {
            setFullScreen();
        }
        if (mActivityWrapper.isStarted() || mActivityWrapper.isResumed() || Build.MANUFACTURER.equalsIgnoreCase("SAMSUNG") && Build.MODEL.equalsIgnoreCase("GT-I9300"))
        {
            nativeSurfaceCreated();
        }
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        mSurfaceValid = false;
        if (mFlashEGL != null)
        {
            mFlashEGL.DestroyWindowSurface();
        }
        mActivityWrapper.onSurfaceDestroyed();
        mActivityWrapper.planeBreakCascade();
    }

    public void updateFocusedStageText(AndroidStageText androidstagetext, boolean flag)
    {
        if (flag)
        {
            mFocusedStageText = androidstagetext;
        } else
        if (mFocusedStageText == androidstagetext)
        {
            mFocusedStageText = null;
            return;
        }
    }

    public void updateFocusedStageWebView(AndroidWebView androidwebview, boolean flag)
    {
        if (flag)
        {
            mFocusedWebView = androidwebview;
        } else
        if (mFocusedWebView == androidwebview)
        {
            mFocusedWebView = null;
            return;
        }
    }


/*
    static boolean access$002(AIRWindowSurfaceView airwindowsurfaceview, boolean flag)
    {
        airwindowsurfaceview.mHoverInProgress = flag;
        return flag;
    }

*/








/*
    static AndroidWebView access$602(AIRWindowSurfaceView airwindowsurfaceview, AndroidWebView androidwebview)
    {
        airwindowsurfaceview.mResizedWebView = androidwebview;
        return androidwebview;
    }

*/



/*
    static AndroidStageText access$702(AIRWindowSurfaceView airwindowsurfaceview, AndroidStageText androidstagetext)
    {
        airwindowsurfaceview.mResizedStageText = androidstagetext;
        return androidstagetext;
    }

*/


/*
    static int access$802(AIRWindowSurfaceView airwindowsurfaceview, int i)
    {
        airwindowsurfaceview.mCurrentSurfaceFormat = i;
        return i;
    }

*/

}
