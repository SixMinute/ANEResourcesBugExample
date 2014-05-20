.class public Lcom/adobe/air/AIRWindowSurfaceView;
.super Landroid/view/SurfaceView;
.source "AIRWindowSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AIRWindowSurfaceView$5;,
        Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;,
        Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;,
        Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;,
        Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;,
        Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;
    }
.end annotation


# static fields
.field static final CURSOR_POS_END_DOCUMENT:I = 0x3

.field static final CURSOR_POS_END_LINE:I = 0x1

.field static final CURSOR_POS_START_DOCUMENT:I = 0x2

.field static final CURSOR_POS_START_LINE:I = 0x0

.field static final ID_COPY:I = 0x3

.field static final ID_COPY_ALL:I = 0x4

.field static final ID_CUT:I = 0x1

.field static final ID_CUT_ALL:I = 0x2

.field static final ID_PASTE:I = 0x5

.field static final ID_SELECT_ALL:I = 0x0

.field static final ID_START_SELECTING:I = 0x7

.field static final ID_STOP_SELECTING:I = 0x8

.field static final ID_SWITCH_INPUT_METHOD:I = 0x6

.field private static final LOG_TAG:Ljava/lang/String; = "AIRWindowSurfaceView"

.field static final LONG_PRESS_DELAY:I = 0x1f4

.field static final MAX_MOVE_ACTION_ALLOWED:I = 0x4

.field static final POST_TOUCH_MESSAGE_AFTER_DELAY:I = 0x0

.field private static final kDefaultBitsPerPixel:I = 0x20

.field private static final kMotionEventButtonSecondary:I = 0x2

.field private static final kMotionEventToolTypeEraser:I = 0x4

.field private static final kMotionEventToolTypeStylus:I = 0x2

.field private static final kTouchActionBegin:I = 0x2

.field private static final kTouchActionEnd:I = 0x4

.field private static final kTouchActionHoverBegin:I = 0x10

.field private static final kTouchActionHoverEnd:I = 0x20

.field private static final kTouchActionHoverMove:I = 0x8

.field private static final kTouchActionMove:I = 0x1

.field private static final kTouchMetaStateIsEraser:I = 0x4000000

.field private static final kTouchMetaStateIsPen:I = 0x2000000

.field private static final kTouchMetaStateMask:I = 0xe000000

.field private static final kTouchMetaStateSideButton1:I = 0x8000000


# instance fields
.field private inTouch:Z

.field public final kMultitouchGesture:I

.field public final kMultitouchNone:I

.field public final kMultitouchRaw:I

.field private final kSampleSize:F

.field private mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

.field private mBoundHeight:I

.field private mBoundWidth:I

.field private mContextMenuVisible:Z

.field private mCurrentOrientation:I

.field private mCurrentSurfaceFormat:I

.field private mDispatchUserTriggeredSkDeactivate:Z

.field private mDownX:F

.field private mDownY:F

.field private mEatTouchRelease:Z

.field protected mFlashEGL:Lcom/adobe/air/FlashEGL;

.field private mFocusedStageText:Lcom/adobe/air/AndroidStageText;

.field private mFocusedWebView:Lcom/adobe/air/AndroidWebView;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

.field private mHideSoftKeyboardOnWindowFocusChange:Z

.field private mHoverInProgress:Z

.field private mHoverMetaState:I

.field private mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

.field private mHt:I

.field private mInputConnection:Lcom/adobe/air/AndroidInputConnection;

.field mInputMethodReceiver:Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

.field private mIsFullScreen:Z

.field private mLastTouchedXCoord:F

.field private mLastTouchedYCoord:F

.field private mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

.field private mMaliWorkaround:Z

.field private mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

.field private mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

.field private mMultitouchMode:I

.field private mNeedsCompositingSurface:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPaintScaled:Landroid/graphics/Paint;

.field private mResizedStageText:Lcom/adobe/air/AndroidStageText;

.field private mResizedWebView:Lcom/adobe/air/AndroidWebView;

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mScaledTouchSlop:I

.field private mSkipHeightFromTop:I

.field private mSurfaceChangedForSoftKeyboard:Z

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceValid:Z

.field private mTextBoxBounds:Landroid/graphics/Rect;

.field private mTrackBallPressed:Z

.field private mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

.field private mVisibleBoundHeight:I

.field private mVisibleBoundWidth:I

.field private mWd:I

.field private mWindowHasFocus:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 255
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 67
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kMultitouchNone:I

    .line 68
    iput v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kMultitouchRaw:I

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kMultitouchGesture:I

    .line 71
    const/high16 v0, 0x4080

    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->kSampleSize:F

    .line 83
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    .line 84
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    .line 85
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    .line 86
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    .line 88
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 89
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    .line 90
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundHeight:I

    .line 91
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundWidth:I

    .line 92
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    .line 93
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    .line 97
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMultitouchMode:I

    .line 98
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 99
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    .line 100
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMaliWorkaround:Z

    .line 108
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    .line 109
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverMetaState:I

    .line 111
    iput v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    .line 114
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    .line 115
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    .line 116
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    .line 117
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    .line 118
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    .line 119
    iput-boolean v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 120
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    .line 121
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 122
    iput-boolean v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWindowHasFocus:Z

    .line 128
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    .line 133
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    .line 137
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    .line 140
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    .line 144
    iput-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    .line 196
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    .line 206
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 207
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 251
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    invoke-direct {v0, p0, p0}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    .line 871
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

    invoke-direct {v0, p0}, Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputMethodReceiver:Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

    .line 256
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 258
    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    .line 260
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormat(Z)V

    .line 262
    new-instance v0, Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-direct {v0, p1, p0}, Lcom/adobe/air/gestures/AIRGestureListener;-><init>(Landroid/content/Context;Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    .line 263
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-direct {v0, p1, v1, v3, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 264
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 266
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->setWillNotDraw(Z)V

    .line 268
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->setClickable(Z)V

    .line 269
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->setEnabled(Z)V

    .line 270
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->setFocusable(Z)V

    .line 271
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->setFocusableInTouchMode(Z)V

    .line 272
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaledTouchSlop:I

    .line 273
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 274
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->setZOrderMediaOverlay(Z)V

    .line 276
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->registerPlane(Landroid/view/SurfaceView;I)V

    .line 277
    return-void
.end method

.method private AllowOSToHandleKeys(I)Z
    .locals 1
    .parameter

    .prologue
    .line 1907
    packed-switch p1, :pswitch_data_0

    .line 1915
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1913
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1907
    nop

    :pswitch_data_0
    .packed-switch 0x18
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private DoSetOnSystemUiVisibilityChangeListener()V
    .locals 1

    .prologue
    .line 1299
    .line 1301
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$3;

    invoke-direct {v0, p0, p0}, Lcom/adobe/air/AIRWindowSurfaceView$3;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView;)V

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 1318
    return-void
.end method

.method private GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1859
    if-eqz p3, :cond_2

    .line 1861
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$5;->$SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1871
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1891
    :goto_0
    return-object v0

    .line 1865
    :pswitch_0
    if-eqz p2, :cond_0

    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->PRESSED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1867
    :pswitch_1
    if-eqz p2, :cond_1

    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->PRESSED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1869
    :pswitch_2
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1876
    :cond_2
    if-eqz p2, :cond_3

    .line 1878
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$5;->$SwitchMap$com$adobe$air$AIRWindowSurfaceView$MetaKeyState:[I

    invoke-virtual {p1}, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 1887
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1882
    :pswitch_3
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1884
    :pswitch_4
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1891
    :cond_3
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1861
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1878
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private HandleMetaKeyAction(Landroid/view/KeyEvent;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1834
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1851
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1852
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1855
    :cond_0
    :goto_0
    return-void

    .line 1838
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1840
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1845
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1847
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v1

    invoke-direct {p0, v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyState(Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;ZZ)Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    goto :goto_0

    .line 1834
    :pswitch_data_0
    .packed-switch 0x39
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private HandleShortCuts(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1934
    const/16 v0, 0x17

    if-ne p1, v0, :cond_1

    .line 1938
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    if-nez v0, :cond_0

    .line 1940
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 1941
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->postCheckLongPress()V

    move v0, v1

    .line 1975
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 1945
    goto :goto_0

    .line 1949
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1952
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 1971
    goto :goto_0

    .line 1956
    :sswitch_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDeleteTextLine()V

    move v0, v2

    .line 1957
    goto :goto_0

    .line 1959
    :sswitch_1
    invoke-direct {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    move v0, v2

    .line 1960
    goto :goto_0

    .line 1962
    :sswitch_2
    invoke-direct {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    move v0, v2

    .line 1963
    goto :goto_0

    .line 1965
    :sswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    move v0, v2

    .line 1966
    goto :goto_0

    .line 1968
    :sswitch_4
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeMoveCursor(I)V

    move v0, v2

    .line 1969
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 1952
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_4
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x43 -> :sswitch_0
    .end sparse-switch
.end method

.method private IsIMEInFullScreen()Z
    .locals 1

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 988
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isFullscreenMode()Z

    move-result v0

    return v0
.end method

.method private IsPointInTextBox(FFI)Z
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1809
    .line 1811
    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    .line 1812
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextBoxBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    .line 1814
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    float-to-int v0, p1

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    if-le v0, v1, :cond_2

    float-to-int v0, p1

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_2

    float-to-int v0, p2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    if-le v0, v1, :cond_2

    float-to-int v0, p2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_2

    .line 1818
    const/4 v0, 0x1

    .line 1825
    :goto_0
    const/4 v1, 0x4

    if-ne p3, v1, :cond_1

    .line 1826
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTextBoxBounds:Landroid/graphics/Rect;

    .line 1828
    :cond_1
    return v0

    .line 1822
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private IsTouchEventHandlingAllowed(IFF)Z
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1757
    .line 1758
    invoke-direct {p0, p2, p3, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->IsPointInTextBox(FFI)Z

    move-result v0

    .line 1760
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 1762
    iput p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownX:F

    .line 1763
    iput p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownY:F

    .line 1764
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    .line 1765
    if-eqz v0, :cond_3

    .line 1767
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->postCheckLongPress()V

    move v0, v3

    .line 1792
    :goto_0
    return v0

    .line 1771
    :cond_0
    if-ne p1, v3, :cond_2

    .line 1773
    if-eqz v0, :cond_3

    .line 1775
    invoke-direct {p0, p2, p3}, Lcom/adobe/air/AIRWindowSurfaceView;->IsTouchMove(FF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1777
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v0, :cond_3

    .line 1778
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    .line 1782
    goto :goto_0

    .line 1787
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 1789
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v0, :cond_3

    .line 1790
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method private IsTouchMove(FF)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1797
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownX:F

    sub-float/2addr v0, p1

    .line 1798
    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDownY:F

    sub-float/2addr v1, p2

    .line 1799
    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1800
    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaledTouchSlop:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 1802
    const/4 v0, 0x1

    .line 1804
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/adobe/air/AIRWindowSurfaceView;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    return p1
.end method

.method static synthetic access$100(Lcom/adobe/air/AIRWindowSurfaceView;)F
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/air/AIRWindowSurfaceView;)F
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    return v0
.end method

.method static synthetic access$300(Lcom/adobe/air/AIRWindowSurfaceView;)I
    .locals 1
    .parameter

    .prologue
    .line 64
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverMetaState:I

    return v0
.end method

.method static synthetic access$400(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/air/AIRWindowSurfaceView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSetKeyboardVisible(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidWebView;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebView;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    return-object p1
.end method

.method static synthetic access$700(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidStageText;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    return-object v0
.end method

.method static synthetic access$702(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    return-object p1
.end method

.method static synthetic access$802(Lcom/adobe/air/AIRWindowSurfaceView;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    return p1
.end method

.method static synthetic access$900(Lcom/adobe/air/AIRWindowSurfaceView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchFullScreenEvent(Z)V

    return-void
.end method

.method private hasStatusBar(Landroid/view/Window;)Z
    .locals 2
    .parameter

    .prologue
    .line 1292
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1293
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1294
    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeCutText(Z)V
.end method

.method private native nativeDeleteTextLine()V
.end method

.method private native nativeDispatchFullScreenEvent(Z)V
.end method

.method private native nativeDispatchSelectionChangeEvent(Z)V
.end method

.method private native nativeForceReDraw()V
.end method

.method private native nativeGetMultitouchMode()I
.end method

.method private native nativeGetSelectedText()Ljava/lang/String;
.end method

.method private native nativeGetTextBoxBounds()Landroid/graphics/Rect;
.end method

.method private native nativeInsertText(Ljava/lang/String;)V
.end method

.method private native nativeIsEditable()Z
.end method

.method private native nativeIsFullScreenInteractive()Z
.end method

.method private native nativeIsMultiLineTextField()Z
.end method

.method private native nativeIsPasswordField()Z
.end method

.method private native nativeIsTextFieldInSelectionMode()Z
.end method

.method private native nativeIsTextFieldSelectable()Z
.end method

.method private native nativeMoveCursor(I)V
.end method

.method private native nativeOnFormatChangeListener(I)V
.end method

.method private native nativeOnSizeChangedListener(IIZ)V
.end method

.method private native nativePerformWindowPanning(II)Z
.end method

.method private native nativeSelectAllText()V
.end method

.method private native nativeSetKeyboardVisible(Z)V
.end method

.method private native nativeSurfaceCreated()V
.end method

.method private postCheckLongPress()V
    .locals 3

    .prologue
    .line 1643
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-nez v0, :cond_0

    .line 1644
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-direct {v0, p0}, Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    .line 1645
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    const-wide/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1646
    return-void
.end method

.method private setSurfaceFormatImpl(ZI)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1024
    if-eqz p1, :cond_0

    .line 1025
    new-instance v0, Lcom/adobe/air/AIRWindowSurfaceView$2;

    invoke-direct {v0, p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView$2;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;I)V

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 1034
    :goto_0
    return-void

    .line 1031
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p2}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 1032
    iput p2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    goto :goto_0
.end method

.method private static supportsSystemUiFlags()Z
    .locals 2

    .prologue
    .line 1286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1287
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static supportsSystemUiVisibilityAPI()Z
    .locals 2

    .prologue
    .line 1280
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 1281
    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public DispatchSoftKeyboardEventOnBackKey()V
    .locals 1

    .prologue
    .line 2027
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->IsIMEInFullScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2032
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchUserTriggeredSkDeactivateEvent()V

    .line 2034
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2036
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeShowOriginalRect()V

    .line 2039
    :cond_2
    return-void
.end method

.method GetMetaKeyCharacter(Landroid/view/KeyEvent;)I
    .locals 3
    .parameter

    .prologue
    .line 1896
    const/4 v0, 0x0

    .line 1897
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v1, v2, :cond_1

    .line 1898
    :cond_0
    or-int/lit8 v0, v0, 0x1

    .line 1899
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v1, v2, :cond_3

    .line 1900
    :cond_2
    or-int/lit8 v0, v0, 0x2

    .line 1901
    :cond_3
    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v0

    return v0
.end method

.method public HideSoftKeyboardOnWindowFocusChange()V
    .locals 1

    .prologue
    .line 1930
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    .line 1931
    return-void
.end method

.method public IsLandScape()Z
    .locals 2

    .prologue
    .line 1466
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsPasswordVisibleSettingEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1992
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_password"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    .line 1997
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 1992
    goto :goto_0

    .line 1994
    :catch_0
    move-exception v0

    move v0, v2

    .line 1997
    goto :goto_0
.end method

.method public IsSurfaceChangedForSoftKeyboard()Z
    .locals 1

    .prologue
    .line 2043
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    return v0
.end method

.method public IsTouchUpHandlingAllowed()Z
    .locals 1

    .prologue
    .line 2002
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    if-eqz v0, :cond_0

    .line 2004
    const/4 v0, 0x0

    .line 2006
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public RestartInput()V
    .locals 1

    .prologue
    .line 1514
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1515
    sget-object v0, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->INACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    .line 1517
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1518
    if-eqz v0, :cond_0

    .line 1520
    invoke-virtual {v0, p0}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    .line 1522
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v0, :cond_1

    .line 1523
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputConnection;->Reset()V

    .line 1524
    :cond_1
    return-void
.end method

.method public SetSelectionMode(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2011
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchSelectionChangeEvent(Z)V

    .line 2012
    return-void
.end method

.method public SetSurfaceChangedForSoftKeyboard(Z)V
    .locals 0
    .parameter

    .prologue
    .line 2054
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    .line 2055
    return-void
.end method

.method public clearFullScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1355
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    .line 1356
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->setIsFullScreen(Z)V

    .line 1358
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiVisibilityAPI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1360
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiFlags()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 1361
    :goto_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->DoSetOnSystemUiVisibilityChangeListener()V

    .line 1363
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1366
    if-eqz v0, :cond_1

    .line 1368
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1369
    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 1372
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 1373
    return-void

    :cond_2
    move v0, v2

    .line 1360
    goto :goto_0
.end method

.method protected draw(IIIILandroid/graphics/Bitmap;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 1080
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    if-nez v0, :cond_1

    .line 1169
    :cond_0
    :goto_0
    return-void

    .line 1083
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-direct {v0, p1, p2, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1087
    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    .line 1089
    if-eqz v1, :cond_7

    .line 1091
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {v2, v6, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1093
    invoke-static {v0, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1096
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1097
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1099
    iget v0, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 1100
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 1103
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_2

    .line 1105
    new-instance v0, Landroid/graphics/Rect;

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v5, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {v0, v6, v2, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1106
    invoke-virtual {v3, v0}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 1109
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    .line 1114
    iget-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-nez v2, :cond_3

    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v4, v1

    if-le v2, v4, :cond_3

    .line 1116
    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v2, v1

    iput v2, v3, Landroid/graphics/Rect;->bottom:I

    :cond_3
    move-object v2, v3

    .line 1126
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1129
    :try_start_1
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 1132
    if-eqz v1, :cond_4

    iget-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v2, :cond_4

    .line 1133
    const/high16 v2, -0x100

    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 1138
    :cond_4
    iget-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMaliWorkaround:Z

    if-eqz v2, :cond_8

    .line 1139
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 1141
    const/4 v2, 0x0

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1149
    :cond_5
    :goto_2
    const/4 v2, 0x0

    neg-int v1, v1

    int-to-float v1, v1

    iget-object v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p5, v2, v1, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1150
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1163
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1166
    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v0, :cond_0

    .line 1167
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    goto/16 :goto_0

    .line 1121
    :cond_7
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v2

    move-object v7, v2

    move-object v2, v0

    move-object v0, v7

    goto :goto_1

    .line 1143
    :cond_8
    :try_start_2
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_5

    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_5

    .line 1144
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 1145
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1146
    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    goto :goto_2

    .line 1150
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1153
    :catch_0
    move-exception v1

    .line 1163
    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_3

    :catchall_1
    move-exception v1

    if-eqz v0, :cond_9

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_9
    throw v1
.end method

.method public drawBitmap(IIIILandroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1266
    invoke-virtual/range {p0 .. p5}, Lcom/adobe/air/AIRWindowSurfaceView;->draw(IIIILandroid/graphics/Bitmap;)V

    .line 1267
    return-void
.end method

.method public drawBitmap(IIIILandroid/graphics/Bitmap;IIIIZI)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1271
    invoke-virtual/range {p0 .. p11}, Lcom/adobe/air/AIRWindowSurfaceView;->drawScaled(IIIILandroid/graphics/Bitmap;IIIIZI)V

    .line 1272
    return-void
.end method

.method protected drawScaled(IIIILandroid/graphics/Bitmap;IIIIZI)V
    .locals 14
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1173
    iget-boolean v5, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    if-nez v5, :cond_1

    .line 1262
    :cond_0
    :goto_0
    return-void

    .line 1176
    :cond_1
    const/4 v5, 0x0

    .line 1179
    :try_start_0
    new-instance v6, Landroid/graphics/Rect;

    add-int v7, p6, p8

    add-int v8, p7, p9

    move-object v0, v6

    move/from16 v1, p6

    move/from16 v2, p7

    move v3, v7

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1185
    if-eqz p10, :cond_2

    .line 1186
    new-instance v7, Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v11, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1190
    :goto_1
    iget v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    if-eqz v8, :cond_b

    .line 1192
    iget v8, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    .line 1193
    new-instance v9, Landroid/graphics/Rect;

    const/4 v10, 0x0

    iget v11, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v12, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {v9, v10, v8, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1195
    invoke-static {v6, v9}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-nez v10, :cond_4

    .line 1256
    if-eqz v5, :cond_0

    .line 1257
    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 1188
    :cond_2
    :try_start_1
    new-instance v7, Landroid/graphics/Rect;

    add-int v8, p6, p8

    add-int v9, p7, p9

    move-object v0, v7

    move/from16 v1, p6

    move/from16 v2, p7

    move v3, v8

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1248
    :catch_0
    move-exception v6

    .line 1256
    if-eqz v5, :cond_3

    .line 1257
    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 1259
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v5, :cond_0

    .line 1260
    iget-object v5, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v5}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    goto :goto_0

    .line 1198
    :cond_4
    :try_start_2
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1199
    invoke-virtual {v10, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 1201
    iget v6, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v8

    iput v6, v10, Landroid/graphics/Rect;->top:I

    .line 1202
    iget v6, v10, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v8

    iput v6, v10, Landroid/graphics/Rect;->bottom:I

    .line 1205
    if-nez p10, :cond_a

    move-object v6, v10

    .line 1212
    :goto_3
    if-nez p10, :cond_5

    iget v7, v10, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v9, v8

    if-le v7, v9, :cond_5

    .line 1213
    iget v7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v7, v8

    iput v7, v10, Landroid/graphics/Rect;->bottom:I

    :cond_5
    move-object v7, v10

    .line 1217
    :goto_4
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, p1, p3

    add-int v10, p2, p4

    move-object v0, v8

    move v1, p1

    move/from16 v2, p2

    move v3, v9

    move v4, v10

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1219
    iget-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v9, v6}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v5

    .line 1220
    :try_start_3
    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1223
    if-eqz p10, :cond_6

    .line 1226
    :try_start_4
    invoke-static/range {p11 .. p11}, Landroid/graphics/Color;->red(I)I

    move-result v9

    invoke-static/range {p11 .. p11}, Landroid/graphics/Color;->green(I)I

    move-result v10

    invoke-static/range {p11 .. p11}, Landroid/graphics/Color;->blue(I)I

    move-result v11

    invoke-virtual {v5, v9, v10, v11}, Landroid/graphics/Canvas;->drawRGB(III)V

    .line 1232
    :cond_6
    iget-boolean v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMaliWorkaround:Z

    if-eqz v9, :cond_8

    .line 1233
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaint:Landroid/graphics/Paint;

    .line 1235
    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1244
    :cond_7
    :goto_5
    iget-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    move-object v0, v5

    move-object/from16 v1, p5

    move-object v2, v8

    move-object v3, v7

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1245
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1256
    if-eqz v5, :cond_3

    .line 1257
    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v6, v5}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 1237
    :cond_8
    :try_start_5
    iget-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    if-nez v9, :cond_7

    iget v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 v10, 0x4

    if-eq v9, v10, :cond_7

    .line 1238
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    iput-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    .line 1239
    iget-object v9, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mPaintScaled:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    goto :goto_5

    .line 1245
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 1256
    :catchall_1
    move-exception v6

    move-object v13, v6

    move-object v6, v5

    move-object v5, v13

    :goto_6
    if-eqz v6, :cond_9

    .line 1257
    iget-object v7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v7, v6}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_9
    throw v5

    .line 1256
    :catchall_2
    move-exception v6

    move-object v13, v6

    move-object v6, v5

    move-object v5, v13

    goto :goto_6

    :cond_a
    move-object v6, v7

    goto/16 :goto_3

    :cond_b
    move-object v13, v7

    move-object v7, v6

    move-object v6, v13

    goto/16 :goto_4
.end method

.method public forceSoftKeyboardDown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 818
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeShowOriginalRect()V

    .line 819
    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setScrollTo(I)Z

    .line 821
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-eqz v0, :cond_0

    .line 823
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchUserTriggeredSkDeactivateEvent()V

    .line 826
    :cond_0
    invoke-direct {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSetKeyboardVisible(Z)V

    .line 827
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 828
    iput-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    .line 829
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2070
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2071
    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getLocationInWindow([I)V

    .line 2072
    aget v1, v0, v6

    const/4 v2, 0x1

    aget v2, v0, v2

    iget v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    iget v4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    .line 2073
    return v6
.end method

.method public getActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    return-object v0
.end method

.method public getAppSpecifiedPixelFormat()I
    .locals 1

    .prologue
    .line 1427
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->useRGB565()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1429
    const/16 v0, 0x10

    .line 1433
    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public getBoundHeight()I
    .locals 1

    .prologue
    .line 1386
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundHeight:I

    return v0
.end method

.method public getBoundWidth()I
    .locals 1

    .prologue
    .line 1379
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundWidth:I

    return v0
.end method

.method public getColorDepth()I
    .locals 2

    .prologue
    .line 1405
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1406
    const/16 v0, 0x10

    .line 1422
    :cond_0
    :goto_0
    return v0

    .line 1409
    :cond_1
    const/16 v0, 0x20

    .line 1411
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 1412
    if-eqz v1, :cond_0

    .line 1414
    const-string v0, "window"

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1416
    new-instance v1, Landroid/graphics/PixelFormat;

    invoke-direct {v1}, Landroid/graphics/PixelFormat;-><init>()V

    .line 1417
    invoke-virtual {v0}, Landroid/view/Display;->getPixelFormat()I

    move-result v0

    invoke-static {v0, v1}, Landroid/graphics/PixelFormat;->getPixelFormatInfo(ILandroid/graphics/PixelFormat;)V

    .line 1419
    iget v0, v1, Landroid/graphics/PixelFormat;->bitsPerPixel:I

    goto :goto_0
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 2

    .prologue
    .line 1528
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 1530
    return-object p0
.end method

.method public getIsFullScreen()Z
    .locals 1

    .prologue
    .line 1276
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    return v0
.end method

.method public getKeyboardHeight()I
    .locals 2

    .prologue
    .line 2048
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getVisibleBoundHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getMultitouchMode()I
    .locals 1

    .prologue
    .line 704
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMultitouchMode:I

    return v0
.end method

.method public getVideoView()Lcom/adobe/flashruntime/shared/VideoView;
    .locals 3

    .prologue
    .line 2059
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

    if-nez v0, :cond_0

    .line 2061
    new-instance v0, Lcom/adobe/flashruntime/air/VideoViewAIR;

    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-direct {v0, v1, v2}, Lcom/adobe/flashruntime/air/VideoViewAIR;-><init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V

    .line 2062
    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

    .line 2064
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVideoView:Lcom/adobe/flashruntime/shared/VideoView;

    return-object v0
.end method

.method public getVisibleBoundHeight()I
    .locals 1

    .prologue
    .line 1400
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    return v0
.end method

.method public getVisibleBoundWidth()I
    .locals 1

    .prologue
    .line 1393
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    return v0
.end method

.method public isStageTextInFocus()Z
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStageWebViewInFocus()Z
    .locals 1

    .prologue
    .line 914
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    if-eqz v0, :cond_0

    .line 915
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView;->isInTextEditingMode()Z

    move-result v0

    .line 917
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSurfaceValid()Z
    .locals 1

    .prologue
    .line 833
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    return v0
.end method

.method public native nativeDispatchUserTriggeredSkDeactivateEvent()V
.end method

.method public native nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;
.end method

.method public native nativeGetTextContentLength()I
.end method

.method public native nativeIsTextSelected()Z
.end method

.method public native nativeOnDoubleClickListener(FF)Z
.end method

.method public native nativeOnKeyListener(IIIZZZ)Z
.end method

.method public native nativeShowOriginalRect()V
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    .prologue
    .line 1472
    const/4 v0, 0x1

    return v0
.end method

.method protected onCreateContextMenu(Landroid/view/ContextMenu;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1559
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onCreateContextMenu(Landroid/view/ContextMenu;)V

    .line 1561
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsFullScreenInteractive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1639
    :cond_0
    :goto_0
    return-void

    .line 1563
    :cond_1
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1565
    new-instance v1, Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView$MenuHandler;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView$1;)V

    .line 1568
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v2

    .line 1569
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextFieldSelectable()Z

    move-result v3

    .line 1571
    if-nez v3, :cond_2

    if-eqz v2, :cond_0

    .line 1576
    :cond_2
    if-eqz v3, :cond_5

    .line 1578
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContentLength()I

    move-result v3

    if-lez v3, :cond_8

    move v3, v7

    .line 1579
    :goto_1
    if-eqz v3, :cond_3

    .line 1581
    sget-object v4, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_SELECT_ALL:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v4}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v6, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x61

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1582
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextFieldInSelectionMode()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1584
    const/16 v4, 0x8

    sget-object v5, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_STOP_SELECTING_TEXT:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v5}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1591
    :cond_3
    :goto_2
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v4

    if-nez v4, :cond_5

    if-eqz v3, :cond_5

    .line 1593
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsTextSelected()Z

    move-result v3

    .line 1594
    if-eqz v2, :cond_4

    .line 1596
    if-eqz v3, :cond_a

    .line 1599
    sget-object v4, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_CUT_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v4}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v7, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v4

    const/16 v5, 0x78

    invoke-interface {v4, v5}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1610
    :cond_4
    :goto_3
    if-eqz v3, :cond_b

    .line 1612
    const/4 v3, 0x3

    sget-object v4, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_COPY_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v4}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v3

    const/16 v4, 0x63

    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1624
    :cond_5
    :goto_4
    if-eqz v2, :cond_7

    .line 1626
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1628
    const/4 v0, 0x5

    sget-object v2, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_PASTE_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v2}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v0, v6, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x76

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 1632
    :cond_6
    const/4 v0, 0x6

    sget-object v2, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_INPUT_METHOD_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v2}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v6, v0, v6, v2}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1636
    :cond_7
    iput-boolean v7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mEatTouchRelease:Z

    .line 1637
    iput-boolean v7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    .line 1638
    sget-object v0, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_CONTEXT_MENU_TITLE_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v0}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    goto/16 :goto_0

    :cond_8
    move v3, v6

    .line 1578
    goto/16 :goto_1

    .line 1588
    :cond_9
    const/4 v4, 0x7

    sget-object v5, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_SELECT_TEXT:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v5}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 1605
    :cond_a
    const/4 v4, 0x2

    sget-object v5, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_CUT_ALL_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v5}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v6, v4, v6, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_3

    .line 1618
    :cond_b
    const/4 v3, 0x4

    sget-object v4, Lcom/adobe/air/AndroidLocale$STRING_ID;->IDA_COPY_ALL_STRING:Lcom/adobe/air/AndroidLocale$STRING_ID;

    invoke-static {v4}, Lcom/adobe/air/AndroidLocale;->GetLocalizedString(Lcom/adobe/air/AndroidLocale$STRING_ID;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v6, v3, v6, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_4
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 1483
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsEditable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1485
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v1, 0x4000

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1486
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    or-int/lit8 v0, v0, 0x6

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 1487
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1489
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1491
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1493
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsMultiLineTextField()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1495
    iget v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    const/high16 v1, 0x2

    or-int/2addr v0, v1

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 1497
    :cond_1
    new-instance v0, Lcom/adobe/air/AndroidInputConnection;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidInputConnection;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    .line 1498
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelStart:I

    .line 1499
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->initialSelEnd:I

    .line 1500
    const/4 v0, 0x0

    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->initialCapsMode:I

    .line 1507
    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    return-object v0

    .line 1504
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    goto :goto_0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 416
    const-string v0, "AIRWindowSurfaceView"

    const-string v1, "*** *** onFocusChanged: AIR"

    invoke-static {v0, v1}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    if-ne p1, v2, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    if-nez v0, :cond_0

    .line 421
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 422
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->forceSoftKeyboardDown()V

    .line 425
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/SurfaceView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 426
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter

    .prologue
    .line 405
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 409
    :cond_0
    invoke-virtual {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 411
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 322
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->AllowOSToHandleKeys(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    .line 352
    :cond_0
    :goto_0
    return v0

    .line 325
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 327
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v1, v2, :cond_5

    .line 330
    :cond_2
    invoke-virtual {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyCharacter(Landroid/view/KeyEvent;)I

    move-result v0

    move v3, v0

    .line 333
    :goto_1
    invoke-direct {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->HandleMetaKeyAction(Landroid/view/KeyEvent;)V

    .line 335
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v0, :cond_3

    .line 336
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 341
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->HandleShortCuts(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 343
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v6

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    move-result v0

    .line 345
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    goto :goto_0

    :cond_4
    move v0, v4

    .line 352
    goto :goto_0

    :cond_5
    move v3, v0

    goto :goto_1
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2017
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 2019
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->DispatchSoftKeyboardEventOnBackKey()V

    .line 2021
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 360
    invoke-direct {p0, p1}, Lcom/adobe/air/AIRWindowSurfaceView;->AllowOSToHandleKeys(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v7

    .line 399
    :cond_0
    :goto_0
    return v0

    .line 363
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    .line 364
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaShiftState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->ACTIVE:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMetaAltState:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    sget-object v2, Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;->LOCKED:Lcom/adobe/air/AIRWindowSurfaceView$MetaKeyState;

    if-ne v1, v2, :cond_7

    .line 367
    :cond_2
    invoke-virtual {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->GetMetaKeyCharacter(Landroid/view/KeyEvent;)I

    move-result v0

    move v3, v0

    .line 370
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v0, :cond_3

    .line 371
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 373
    :cond_3
    const/16 v0, 0x17

    if-ne p1, v0, :cond_4

    .line 374
    iput-boolean v7, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 376
    :cond_4
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 378
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v6

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v6}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnKeyListener(IIIZZZ)Z

    move-result v0

    .line 380
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v1, :cond_5

    .line 381
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v1}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    .line 383
    :cond_5
    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 392
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 393
    const/4 v0, 0x1

    goto :goto_0

    :cond_6
    move v0, v7

    .line 399
    goto :goto_0

    :cond_7
    move v3, v0

    goto :goto_1
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 693
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;->onSizeChanged(IIII)V

    .line 695
    return-void
.end method

.method public onTextBoxContextMenuItem(I)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1666
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1667
    packed-switch p1, :pswitch_data_0

    move v0, v3

    .line 1752
    :goto_0
    return v0

    .line 1670
    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSelectAllText()V

    .line 1749
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v0, :cond_1

    .line 1750
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputConnection;->updateIMEText()V

    :cond_1
    move v0, v4

    .line 1752
    goto :goto_0

    .line 1674
    :pswitch_1
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetSelectedText()Ljava/lang/String;

    move-result-object v1

    .line 1675
    if-eqz v1, :cond_3

    .line 1677
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1679
    invoke-static {v1}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1681
    :cond_2
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1683
    :cond_3
    invoke-virtual {p0, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_1

    .line 1687
    :pswitch_2
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    iget-object v1, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1688
    if-eqz v1, :cond_0

    .line 1690
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1692
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1694
    :cond_4
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1699
    :pswitch_3
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1700
    if-eqz v0, :cond_5

    .line 1701
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeInsertText(Ljava/lang/String;)V

    .line 1702
    :cond_5
    invoke-virtual {p0, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_1

    .line 1706
    :pswitch_4
    invoke-virtual {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_1

    .line 1710
    :pswitch_5
    invoke-virtual {p0, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_1

    .line 1714
    :pswitch_6
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetSelectedText()Ljava/lang/String;

    move-result-object v1

    .line 1715
    if-eqz v1, :cond_7

    .line 1717
    invoke-direct {p0, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeCutText(Z)V

    .line 1718
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1720
    invoke-static {v1}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1722
    :cond_6
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 1724
    :cond_7
    invoke-virtual {p0, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->SetSelectionMode(Z)V

    goto :goto_1

    .line 1727
    :pswitch_7
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextContent()Landroid/view/inputmethod/ExtractedText;

    move-result-object v1

    iget-object v1, v1, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    .line 1728
    if-eqz v1, :cond_0

    .line 1730
    invoke-direct {p0, v4}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeCutText(Z)V

    .line 1731
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeIsPasswordField()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1733
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/adobe/air/utils/Utils;->ReplaceTextContentWithStars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1735
    :cond_8
    invoke-virtual {v0, v1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1740
    :pswitch_8
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1741
    if-eqz v0, :cond_0

    .line 1742
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->showInputMethodPicker()V

    goto/16 :goto_1

    .line 1667
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_7
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_8
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 24
    .parameter

    .prologue
    .line 430
    const/4 v4, 0x1

    .line 431
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    .line 432
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 433
    and-int/lit16 v5, v5, 0xff

    .line 434
    const/16 v6, 0x9

    if-eq v5, v6, :cond_0

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    const/4 v6, 0x7

    if-ne v5, v6, :cond_2

    :cond_0
    const/4 v6, 0x1

    .line 438
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/air/AIRWindowSurfaceView;->hasFocus()Z

    move-result v7

    if-nez v7, :cond_3

    if-nez v6, :cond_3

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v6

    .line 441
    if-eqz v6, :cond_3

    .line 445
    invoke-virtual/range {p0 .. p0}, Lcom/adobe/air/AIRWindowSurfaceView;->requestFocus()Z

    .line 446
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->clearFocus()V

    .line 447
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v7

    .line 448
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_3

    .line 450
    invoke-virtual {v6, v8}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 451
    if-eqz v9, :cond_1

    .line 453
    invoke-virtual {v9}, Landroid/view/View;->clearFocus()V

    .line 448
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 434
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 462
    :cond_3
    const/4 v6, 0x5

    if-eq v5, v6, :cond_4

    if-nez v5, :cond_5

    .line 464
    :cond_4
    const/4 v6, 0x0

    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    if-ge v6, v7, :cond_5

    .line 466
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    invoke-virtual {v8, v9, v10, v7}, Lcom/adobe/air/gestures/AIRGestureListener;->setDownTouchPoint(FFI)V

    .line 464
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 473
    :cond_5
    if-nez v5, :cond_6

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/adobe/air/gestures/AIRGestureListener;->mayStartNewTransformGesture()V

    .line 478
    :cond_6
    const/4 v6, 0x5

    if-ne v5, v6, :cond_a

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    .line 483
    shr-int/lit8 v5, v5, 0x8

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    move-object v7, v0

    invoke-virtual {v7, v5}, Lcom/adobe/air/gestures/AIRGestureListener;->getDownTouchPoint(I)Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/adobe/air/gestures/AIRGestureListener;->setSecondaryPointOfTwoFingerTap(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)V

    .line 493
    :cond_7
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/adobe/air/AndroidActivityWrapper;->isApplicationLaunched()Z

    move-result v5

    if-eqz v5, :cond_18

    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v15

    .line 500
    const/4 v5, 0x0

    .line 502
    const/4 v6, 0x0

    move/from16 v16, v6

    move/from16 v17, v4

    move v4, v5

    :goto_4
    move/from16 v0, v16

    move v1, v15

    if-ge v0, v1, :cond_17

    .line 504
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 505
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    move v7, v0

    int-to-float v7, v7

    add-float/2addr v7, v5

    .line 507
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    .line 508
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    .line 510
    const/4 v5, 0x1

    .line 511
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 512
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 513
    const/4 v10, 0x0

    .line 515
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v11

    .line 517
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xe

    if-lt v12, v13, :cond_9

    .line 518
    const v12, -0xe000001

    and-int/2addr v11, v12

    .line 519
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v12

    .line 520
    const/4 v13, 0x4

    if-ne v12, v13, :cond_d

    .line 521
    const/high16 v12, 0x400

    or-int/2addr v11, v12

    .line 525
    :cond_8
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v12

    and-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_9

    .line 526
    const/high16 v12, 0x800

    or-int/2addr v11, v12

    .line 529
    :cond_9
    if-eqz v4, :cond_e

    .line 531
    const/4 v5, 0x3

    .line 532
    const/4 v8, 0x4

    move/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v4

    move v4, v10

    .line 581
    :goto_6
    move-object/from16 v0, p0

    move/from16 v1, v19

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->IsTouchEventHandlingAllowed(IFF)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 584
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v10

    .line 587
    if-nez v9, :cond_10

    const/4 v5, 0x1

    move v12, v5

    .line 590
    :goto_7
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v5

    .line 591
    add-int/lit8 v8, v5, 0x1

    mul-int/lit8 v8, v8, 0x3

    new-array v13, v8, [F

    .line 592
    const/4 v8, 0x0

    .line 593
    const/4 v14, 0x0

    move/from16 v23, v14

    move v14, v8

    move/from16 v8, v23

    :goto_8
    if-ge v8, v5, :cond_11

    .line 595
    add-int/lit8 v21, v14, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v22

    aput v22, v13, v14

    .line 596
    add-int/lit8 v14, v21, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v22

    aput v22, v13, v21

    .line 597
    add-int/lit8 v21, v14, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v22

    aput v22, v13, v14

    .line 593
    add-int/lit8 v8, v8, 0x1

    move/from16 v14, v21

    goto :goto_8

    .line 486
    :cond_a
    const/4 v6, 0x6

    if-ne v5, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/adobe/air/gestures/AIRGestureListener;->getCouldBeTwoFingerTap()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    move-object v5, v0

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    goto/16 :goto_3

    .line 488
    :cond_b
    const/4 v6, 0x1

    if-ne v5, v6, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/adobe/air/gestures/AIRGestureListener;->getCouldBeTwoFingerTap()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    goto/16 :goto_3

    .line 490
    :cond_c
    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/adobe/air/gestures/AIRGestureListener;->setCouldBeTwoFingerTap(I)V

    goto/16 :goto_3

    .line 523
    :cond_d
    const/4 v13, 0x2

    if-ne v12, v13, :cond_8

    .line 524
    const/high16 v12, 0x200

    or-int/2addr v11, v12

    goto/16 :goto_5

    .line 534
    :cond_e
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_f

    const v12, 0xff00

    and-int/2addr v12, v8

    shr-int/lit8 v12, v12, 0x8

    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v12

    if-ne v9, v12, :cond_1d

    .line 537
    :cond_f
    and-int/lit16 v5, v8, 0xff

    .line 539
    packed-switch v5, :pswitch_data_0

    .line 575
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    move-object v8, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->setLastMove(J)V

    .line 576
    const/4 v8, 0x1

    move/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v4

    move v4, v10

    goto/16 :goto_6

    .line 542
    :pswitch_1
    const/16 v8, 0x10

    move/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v4

    move v4, v10

    .line 543
    goto/16 :goto_6

    .line 545
    :pswitch_2
    const/16 v8, 0x20

    move/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v4

    move v4, v10

    .line 546
    goto/16 :goto_6

    .line 548
    :pswitch_3
    const/16 v8, 0x8

    .line 550
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v13, 0xe

    if-ge v12, v13, :cond_1c

    .line 552
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    move-object v12, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->setLastMove(J)V

    .line 553
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverMetaState:I

    .line 554
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    move v12, v0

    if-nez v12, :cond_1c

    .line 556
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    move-object v10, v0

    const/4 v12, 0x0

    const-wide/16 v13, 0x1f4

    invoke-virtual {v10, v12, v13, v14}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 557
    const/4 v10, 0x1

    .line 558
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z

    move/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v4

    move v4, v10

    goto/16 :goto_6

    .line 564
    :pswitch_4
    const/4 v8, 0x2

    move/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v4

    move v4, v10

    .line 565
    goto/16 :goto_6

    .line 567
    :pswitch_5
    const/4 v4, 0x1

    .line 570
    :pswitch_6
    const/4 v8, 0x4

    .line 571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/adobe/air/gestures/AIRGestureListener;->endTwoFingerGesture()Z

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureListener:Lcom/adobe/air/gestures/AIRGestureListener;

    move-object v12, v0

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Lcom/adobe/air/gestures/AIRGestureListener;->setCheckForSwipe(Z)V

    move/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v4

    move v4, v10

    .line 573
    goto/16 :goto_6

    .line 587
    :cond_10
    const/4 v5, 0x0

    move v12, v5

    goto/16 :goto_7

    .line 600
    :cond_11
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v8

    .line 603
    aput v6, v13, v14

    .line 604
    add-int/lit8 v5, v14, 0x1

    aput v7, v13, v5

    .line 605
    add-int/lit8 v5, v14, 0x2

    aput v8, v13, v5

    .line 608
    and-int/lit8 v14, v11, -0x2

    .line 611
    const/4 v5, 0x0

    .line 612
    sparse-switch v19, :sswitch_data_0

    .line 634
    :cond_12
    :goto_9
    if-eqz v5, :cond_13

    .line 636
    new-instance v4, Lcom/adobe/air/TouchEventData;

    move v11, v10

    invoke-direct/range {v4 .. v14}, Lcom/adobe/air/TouchEventData;-><init>(IFFFIFFZ[FI)V

    .line 646
    if-eqz v17, :cond_15

    const/4 v5, 0x0

    const/4 v11, 0x0

    invoke-static {v5, v4, v11}, Lcom/adobe/air/Entrypoints;->registerTouchCallback(ILcom/adobe/air/TouchEventData;Landroid/os/Handler;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v4, 0x1

    :goto_a
    move/from16 v17, v4

    .line 649
    :cond_13
    const/16 v4, 0x8

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_1b

    const/4 v4, 0x1

    move/from16 v0, v19

    move v1, v4

    if-eq v0, v1, :cond_1b

    .line 651
    const/4 v4, 0x3

    move/from16 v0, v18

    move v1, v4

    if-ne v0, v1, :cond_14

    .line 653
    or-int/lit8 v4, v14, 0x1

    move v14, v4

    .line 656
    :cond_14
    new-instance v4, Lcom/adobe/air/TouchEventData;

    const/4 v13, 0x0

    move/from16 v5, v19

    move v11, v10

    invoke-direct/range {v4 .. v14}, Lcom/adobe/air/TouchEventData;-><init>(IFFFIFFZ[FI)V

    .line 666
    if-eqz v17, :cond_16

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v5, v4, v6}, Lcom/adobe/air/Entrypoints;->registerTouchCallback(ILcom/adobe/air/TouchEventData;Landroid/os/Handler;)Z

    move-result v4

    if-eqz v4, :cond_16

    const/4 v4, 0x1

    .line 502
    :goto_b
    add-int/lit8 v5, v16, 0x1

    move/from16 v16, v5

    move/from16 v17, v4

    move/from16 v4, v20

    goto/16 :goto_4

    .line 615
    :sswitch_0
    const/16 v5, 0x8

    .line 616
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v21, 0xe

    move v0, v11

    move/from16 v1, v21

    if-ge v0, v1, :cond_12

    .line 619
    if-eqz v4, :cond_12

    .line 622
    or-int/lit8 v4, v5, 0x10

    move v5, v4

    goto :goto_9

    .line 628
    :sswitch_1
    const/4 v4, 0x1

    move v5, v4

    .line 629
    goto :goto_9

    .line 646
    :cond_15
    const/4 v4, 0x0

    goto :goto_a

    .line 666
    :cond_16
    const/4 v4, 0x0

    goto :goto_b

    :cond_17
    move/from16 v4, v17

    .line 678
    :goto_c
    if-eqz v4, :cond_19

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_19

    const/4 v4, 0x1

    .line 685
    :goto_d
    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/AIRWindowSurfaceView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_1a

    const/4 v4, 0x1

    .line 686
    :goto_e
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/air/AIRWindowSurfaceView;->inTouch:Z

    .line 687
    return v4

    .line 673
    :cond_18
    const/4 v4, 0x0

    goto :goto_c

    .line 678
    :cond_19
    const/4 v4, 0x0

    goto :goto_d

    .line 685
    :cond_1a
    const/4 v4, 0x0

    goto :goto_e

    .line 680
    :catch_0
    move-exception v5

    goto :goto_d

    :cond_1b
    move/from16 v4, v17

    goto :goto_b

    :cond_1c
    move/from16 v18, v5

    move/from16 v19, v8

    move/from16 v20, v4

    move v4, v10

    goto/16 :goto_6

    :cond_1d
    move/from16 v18, v8

    move/from16 v19, v5

    move/from16 v20, v4

    move v4, v10

    goto/16 :goto_6

    .line 539
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_6
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 612
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 292
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWindowHasFocus:Z

    .line 294
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLongPressCheck:Lcom/adobe/air/AIRWindowSurfaceView$CheckLongPress;

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 297
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    if-eqz v0, :cond_2

    .line 299
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 300
    if-eqz v0, :cond_1

    .line 302
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 304
    :cond_1
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHideSoftKeyboardOnWindowFocusChange:Z

    .line 306
    :cond_2
    if-eqz p1, :cond_3

    .line 309
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mContextMenuVisible:Z

    .line 315
    :cond_3
    return-void
.end method

.method public panStageTextInFocus()J
    .locals 2

    .prologue
    .line 968
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-nez v0, :cond_0

    .line 971
    const-wide/16 v0, 0x0

    .line 982
    :goto_0
    return-wide v0

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;

    .line 982
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidStageText;->updateViewBoundsWithKeyboard(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public panStageWebViewInFocus()J
    .locals 2

    .prologue
    .line 927
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    if-nez v0, :cond_0

    .line 930
    const-wide/16 v0, 0x0

    .line 941
    :goto_0
    return-wide v0

    .line 938
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;

    .line 941
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidWebView;->updateViewBoundsWithKeyboard(I)J

    move-result-wide v0

    goto :goto_0
.end method

.method public performLongClick()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1536
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWindowHasFocus:Z

    if-eqz v0, :cond_2

    .line 1538
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetTextBoxBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 1539
    if-eqz v0, :cond_2

    .line 1541
    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-ltz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    if-eqz v0, :cond_2

    .line 1545
    :cond_1
    iput-boolean v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mTrackBallPressed:Z

    .line 1546
    invoke-super {p0}, Landroid/view/SurfaceView;->performLongClick()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1548
    const/4 v0, 0x1

    .line 1553
    :goto_0
    return v0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public returnThis()Landroid/view/View;
    .locals 0

    .prologue
    .line 286
    return-object p0
.end method

.method public setCompositingHint(Z)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 1067
    iput-boolean p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    .line 1068
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    if-eq v0, v2, :cond_1

    :cond_0
    if-nez p1, :cond_2

    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentSurfaceFormat:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 1075
    :cond_1
    :goto_0
    return-void

    .line 1074
    :cond_2
    invoke-virtual {p0, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormat(Z)V

    goto :goto_0
.end method

.method public setFlashEGL(Lcom/adobe/air/FlashEGL;)V
    .locals 0
    .parameter

    .prologue
    .line 1985
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    .line 1986
    return-void
.end method

.method public setFullScreen()V
    .locals 4

    .prologue
    const/16 v3, 0x400

    const/4 v2, 0x1

    .line 1322
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-nez v0, :cond_1

    .line 1324
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    .line 1325
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->setIsFullScreen(Z)V

    .line 1327
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiVisibilityAPI()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1329
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiFlags()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 1330
    :goto_0
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->DoSetOnSystemUiVisibilityChangeListener()V

    .line 1332
    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1334
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 1337
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1338
    if-eqz v0, :cond_3

    .line 1340
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 1344
    invoke-static {}, Lcom/adobe/air/AIRWindowSurfaceView;->supportsSystemUiVisibilityAPI()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->hasStatusBar(Landroid/view/Window;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1346
    :cond_2
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 1349
    :cond_3
    return-void

    :cond_4
    move v0, v2

    .line 1329
    goto :goto_0
.end method

.method public setInputConnection(Lcom/adobe/air/AndroidInputConnection;)V
    .locals 0
    .parameter

    .prologue
    .line 1980
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    .line 1981
    return-void
.end method

.method public setMultitouchMode(I)V
    .locals 0
    .parameter

    .prologue
    .line 699
    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mMultitouchMode:I

    .line 700
    return-void
.end method

.method public setScrollTo(I)Z
    .locals 2
    .parameter

    .prologue
    .line 994
    iput p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSkipHeightFromTop:I

    .line 997
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 998
    if-eqz v0, :cond_0

    .line 1002
    new-instance v1, Lcom/adobe/air/AIRWindowSurfaceView$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView$1;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;ILandroid/widget/RelativeLayout;)V

    invoke-virtual {p0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 1019
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public setSurfaceFormat(Z)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 1038
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->useRGB565()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1041
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->needsCompositingSurface()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->isGingerbread()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1042
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    .line 1063
    :goto_0
    return-void

    .line 1044
    :cond_1
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    goto :goto_0

    .line 1052
    :cond_2
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mNeedsCompositingSurface:Z

    if-eqz v0, :cond_3

    .line 1054
    invoke-direct {p0, p1, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    goto :goto_0

    .line 1058
    :cond_3
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setSurfaceFormatImpl(ZI)V

    goto :goto_0
.end method

.method public showActionScript2Warning()V
    .locals 3

    .prologue
    .line 1441
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1442
    if-eqz v0, :cond_0

    .line 1444
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1446
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 1447
    const-string v0, "Your application is attempting to run ActionScript2.0, which is not supported on smart phone profile. \nSee the Adobe Developer Connection for more info www.adobe.com/devnet"

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1448
    const/4 v0, 0x1

    invoke-static {v2, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;I)Z

    .line 1450
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1451
    const-string v0, "Action Script 2.0"

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1452
    const-string v0, "OK"

    new-instance v2, Lcom/adobe/air/AIRWindowSurfaceView$4;

    invoke-direct {v2, p0}, Lcom/adobe/air/AIRWindowSurfaceView$4;-><init>(Lcom/adobe/air/AIRWindowSurfaceView;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1458
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1460
    :cond_0
    return-void
.end method

.method public showSoftKeyboard(Z)V
    .locals 0
    .parameter

    .prologue
    .line 897
    invoke-virtual {p0, p1, p0}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(ZLandroid/view/View;)V

    .line 898
    return-void
.end method

.method public showSoftKeyboard(ZLandroid/view/View;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 876
    const-string v0, "AIRWindowSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSoftKeyboard show: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adobe/air/utils/AIRLogger;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 878
    if-nez p1, :cond_2

    .line 880
    iget-boolean v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    if-eqz v1, :cond_0

    .line 882
    iput-boolean v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 884
    :cond_0
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 885
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    if-eqz v0, :cond_1

    .line 886
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputConnection:Lcom/adobe/air/AndroidInputConnection;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidInputConnection;->Reset()V

    .line 887
    :cond_1
    invoke-direct {p0, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSetKeyboardVisible(Z)V

    .line 893
    :goto_0
    return-void

    .line 891
    :cond_2
    iget-object v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mInputMethodReceiver:Lcom/adobe/air/AIRWindowSurfaceView$InputMethodReceiver;

    invoke-virtual {v0, p2, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;ILandroid/os/ResultReceiver;)Z

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 729
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 730
    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 732
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundHeight:I

    .line 733
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mBoundWidth:I

    .line 735
    iput p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundHeight:I

    .line 736
    iput p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mVisibleBoundWidth:I

    .line 741
    invoke-direct {p0, p2}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnFormatChangeListener(I)V

    .line 743
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    if-nez v0, :cond_0

    .line 745
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    .line 746
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->onSurfaceInitialized()V

    .line 747
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeGetMultitouchMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/air/AIRWindowSurfaceView;->setMultitouchMode(I)V

    .line 749
    :cond_0
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    if-eqz v0, :cond_2

    .line 751
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 752
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 753
    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    if-ne v0, v1, :cond_4

    .line 755
    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    :cond_1
    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    if-ge p4, v1, :cond_5

    .line 759
    if-nez p4, :cond_3

    .line 814
    :cond_2
    :goto_0
    return-void

    .line 760
    :cond_3
    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    sub-int/2addr v1, p4

    .line 761
    invoke-direct {p0, v0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativePerformWindowPanning(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 763
    iput-boolean v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceChangedForSoftKeyboard:Z

    goto :goto_0

    .line 780
    :cond_4
    invoke-virtual {p0, v3}, Lcom/adobe/air/AIRWindowSurfaceView;->showSoftKeyboard(Z)V

    .line 781
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeDispatchUserTriggeredSkDeactivateEvent()V

    .line 782
    iput-boolean v3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mDispatchUserTriggeredSkDeactivate:Z

    .line 785
    :cond_5
    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    if-eq v1, v0, :cond_7

    move v1, v2

    .line 787
    :goto_1
    iput v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mCurrentOrientation:I

    .line 788
    iput p3, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    .line 789
    iput p4, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    .line 793
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mWd:I

    iget v2, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mHt:I

    invoke-direct {p0, v0, v2, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnSizeChangedListener(IIZ)V

    .line 797
    invoke-static {}, Lcom/adobe/air/OrientationManager;->getOrientationManager()Lcom/adobe/air/OrientationManager;

    move-result-object v0

    .line 798
    iget-boolean v1, v0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    if-eqz v1, :cond_6

    .line 800
    iget v1, v0, Lcom/adobe/air/OrientationManager;->mBeforeOrientation:I

    iget v2, v0, Lcom/adobe/air/OrientationManager;->mAfterOrientation:I

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/OrientationManager;->nativeOrientationChanged(II)V

    .line 801
    iput-boolean v3, v0, Lcom/adobe/air/OrientationManager;->mDispatchOrientationChangePending:Z

    .line 806
    :cond_6
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeForceReDraw()V

    .line 811
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->forceSoftKeyboardDown()V

    goto :goto_0

    :cond_7
    move v1, v3

    .line 785
    goto :goto_1
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter

    .prologue
    .line 710
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeStepCascade()V

    .line 713
    iget-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mIsFullScreen:Z

    if-eqz v0, :cond_0

    .line 714
    invoke-virtual {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->setFullScreen()V

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isStarted()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->isResumed()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "SAMSUNG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-I9300"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 721
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeSurfaceCreated()V

    .line 723
    :cond_2
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 839
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mSurfaceValid:Z

    .line 840
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFlashEGL:Lcom/adobe/air/FlashEGL;

    invoke-virtual {v0}, Lcom/adobe/air/FlashEGL;->DestroyWindowSurface()Z

    .line 841
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->onSurfaceDestroyed()V

    .line 842
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 843
    return-void
.end method

.method public updateFocusedStageText(Lcom/adobe/air/AndroidStageText;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 946
    if-eqz p2, :cond_1

    .line 947
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 948
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    if-ne v0, p1, :cond_0

    .line 949
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedStageText:Lcom/adobe/air/AndroidStageText;

    goto :goto_0
.end method

.method public updateFocusedStageWebView(Lcom/adobe/air/AndroidWebView;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 902
    if-eqz p2, :cond_1

    .line 903
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    .line 906
    :cond_0
    :goto_0
    return-void

    .line 904
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    if-ne v0, p1, :cond_0

    .line 905
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView;->mFocusedWebView:Lcom/adobe/air/AndroidWebView;

    goto :goto_0
.end method
