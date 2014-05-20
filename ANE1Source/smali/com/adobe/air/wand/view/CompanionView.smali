.class public Lcom/adobe/air/wand/view/CompanionView;
.super Landroid/view/View;
.source "CompanionView.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CompanionView"

.field static final POST_TOUCH_MESSAGE_AFTER_DELAY:I = 0x0

.field public static final kTouchActionBegin:I = 0x2

.field public static final kTouchActionEnd:I = 0x4

.field public static final kTouchActionMove:I = 0x1

.field public static final kTouchMetaStateIsEraser:I = 0x4000000

.field public static final kTouchMetaStateIsPen:I = 0x2000000

.field public static final kTouchMetaStateMask:I = 0xe000000

.field public static final kTouchMetaStateSideButton1:I = 0x8000000


# instance fields
.field public final kMultitouchGesture:I

.field public final kMultitouchNone:I

.field public final kMultitouchRaw:I

.field private mBoundHeight:I

.field private mBoundWidth:I

.field private mCurrentOrientation:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

.field private mIsFullScreen:Z

.field private mMultitouchMode:I

.field private mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mSkipHeightFromTop:I

.field private mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

.field private mVisibleBoundHeight:I

.field private mVisibleBoundWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 77
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 42
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->kMultitouchNone:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/air/wand/view/CompanionView;->kMultitouchRaw:I

    .line 44
    iput v2, p0, Lcom/adobe/air/wand/view/CompanionView;->kMultitouchGesture:I

    .line 52
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mSkipHeightFromTop:I

    .line 53
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mBoundHeight:I

    .line 54
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mBoundWidth:I

    .line 55
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mVisibleBoundWidth:I

    .line 56
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mVisibleBoundHeight:I

    .line 62
    iput v2, p0, Lcom/adobe/air/wand/view/CompanionView;->mMultitouchMode:I

    .line 68
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mCurrentOrientation:I

    .line 69
    iput-boolean v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mIsFullScreen:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 79
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/view/CompanionView;->initView(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->kMultitouchNone:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/adobe/air/wand/view/CompanionView;->kMultitouchRaw:I

    .line 44
    iput v2, p0, Lcom/adobe/air/wand/view/CompanionView;->kMultitouchGesture:I

    .line 52
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mSkipHeightFromTop:I

    .line 53
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mBoundHeight:I

    .line 54
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mBoundWidth:I

    .line 55
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mVisibleBoundWidth:I

    .line 56
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mVisibleBoundHeight:I

    .line 62
    iput v2, p0, Lcom/adobe/air/wand/view/CompanionView;->mMultitouchMode:I

    .line 68
    iput v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mCurrentOrientation:I

    .line 69
    iput-boolean v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mIsFullScreen:Z

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 86
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/view/CompanionView;->initView(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method private IsTouchEventHandlingAllowed(IFF)Z
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 91
    new-instance v0, Lcom/adobe/air/wand/view/TouchSensor;

    invoke-direct {v0}, Lcom/adobe/air/wand/view/TouchSensor;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 93
    new-instance v0, Lcom/adobe/air/wand/view/GestureListener;

    invoke-direct {v0, p1, p0}, Lcom/adobe/air/wand/view/GestureListener;-><init>(Landroid/content/Context;Lcom/adobe/air/wand/view/CompanionView;)V

    iput-object v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    .line 94
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 95
    new-instance v0, Landroid/view/ScaleGestureDetector;

    iget-object v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 97
    invoke-virtual {p0, v4}, Lcom/adobe/air/wand/view/CompanionView;->setWillNotDraw(Z)V

    .line 99
    invoke-virtual {p0, v3}, Lcom/adobe/air/wand/view/CompanionView;->setClickable(Z)V

    .line 100
    invoke-virtual {p0, v3}, Lcom/adobe/air/wand/view/CompanionView;->setEnabled(Z)V

    .line 101
    invoke-virtual {p0, v3}, Lcom/adobe/air/wand/view/CompanionView;->setFocusable(Z)V

    .line 102
    invoke-virtual {p0, v3}, Lcom/adobe/air/wand/view/CompanionView;->setFocusableInTouchMode(Z)V

    .line 103
    return-void
.end method


# virtual methods
.method public IsLandScape()Z
    .locals 2

    .prologue
    .line 403
    iget v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public IsTouchUpHandlingAllowed()Z
    .locals 1

    .prologue
    .line 413
    const/4 v0, 0x1

    return v0
.end method

.method public getBoundHeight()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mBoundHeight:I

    return v0
.end method

.method public getBoundWidth()I
    .locals 1

    .prologue
    .line 380
    iget v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mBoundWidth:I

    return v0
.end method

.method public getIsFullScreen()Z
    .locals 1

    .prologue
    .line 375
    iget-boolean v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mIsFullScreen:Z

    return v0
.end method

.method public getMultitouchMode()I
    .locals 1

    .prologue
    .line 370
    iget v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mMultitouchMode:I

    return v0
.end method

.method public getTouchSensor()Lcom/adobe/air/wand/view/TouchSensor;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    return-object v0
.end method

.method public getVisibleBoundHeight()I
    .locals 1

    .prologue
    .line 398
    iget v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mVisibleBoundHeight:I

    return v0
.end method

.method public getVisibleBoundWidth()I
    .locals 1

    .prologue
    .line 392
    iget v0, p0, Lcom/adobe/air/wand/view/CompanionView;->mVisibleBoundWidth:I

    return v0
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 131
    return-void
.end method

.method public onGestureListener(IIZFFFFFFF)V
    .locals 11
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
    .line 343
    new-instance v0, Lcom/adobe/air/wand/view/GestureEventData;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/adobe/air/wand/view/GestureEventData;-><init>(IIZFFFFFFF)V

    .line 348
    iget-object v1, p0, Lcom/adobe/air/wand/view/CompanionView;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v1, v0}, Lcom/adobe/air/wand/view/TouchSensor;->dispatchEvent(Lcom/adobe/air/wand/view/GestureEventData;)V

    .line 349
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 124
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 361
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 23
    .parameter

    .prologue
    .line 136
    const/4 v15, 0x1

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 138
    and-int/lit16 v4, v4, 0xff

    .line 139
    const/4 v5, 0x0

    .line 141
    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    move-object v5, v0

    if-eqz v5, :cond_3

    .line 144
    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    if-nez v4, :cond_1

    .line 146
    :cond_0
    const/4 v5, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 148
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    .line 149
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    move-object v7, v0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    invoke-virtual {v7, v8, v9, v6}, Lcom/adobe/air/wand/view/GestureListener;->setDownTouchPoint(FFI)V

    .line 146
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 155
    :cond_1
    if-nez v4, :cond_2

    .line 157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/adobe/air/wand/view/GestureListener;->mayStartNewTransformGesture()V

    .line 160
    :cond_2
    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/adobe/air/wand/view/GestureListener;->setCouldBeTwoFingerTap(I)V

    .line 165
    shr-int/lit8 v4, v4, 0x8

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    move-object v6, v0

    invoke-virtual {v6, v4}, Lcom/adobe/air/wand/view/GestureListener;->getDownTouchPoint(I)Lcom/adobe/air/wand/view/GestureListener$TouchPoint;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/adobe/air/wand/view/GestureListener;->setSecondaryPointOfTwoFingerTap(Lcom/adobe/air/wand/view/GestureListener$TouchPoint;)V

    .line 177
    :cond_3
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    .line 181
    const/4 v4, 0x0

    .line 183
    const/4 v5, 0x0

    move/from16 v17, v5

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_e

    .line 185
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 186
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mSkipHeightFromTop:I

    move v7, v0

    int-to-float v7, v7

    add-float/2addr v7, v5

    .line 188
    const/4 v5, 0x1

    .line 189
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 190
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v9

    .line 192
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v10

    .line 194
    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v12, 0xe

    if-lt v11, v12, :cond_17

    .line 195
    const v11, -0xe000001

    and-int/2addr v10, v11

    .line 196
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v11

    .line 197
    const/4 v12, 0x4

    if-ne v11, v12, :cond_8

    .line 198
    const/high16 v11, 0x400

    or-int/2addr v10, v11

    .line 202
    :cond_4
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v11

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_17

    .line 203
    const/high16 v11, 0x800

    or-int/2addr v10, v11

    move v11, v10

    .line 206
    :goto_4
    if-eqz v4, :cond_9

    .line 208
    const/4 v5, 0x3

    .line 209
    const/4 v8, 0x4

    move/from16 v18, v4

    move v4, v5

    move v5, v8

    .line 240
    :goto_5
    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/adobe/air/wand/view/CompanionView;->IsTouchEventHandlingAllowed(IFF)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 243
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v10

    .line 246
    if-nez v9, :cond_b

    const/4 v8, 0x1

    move v12, v8

    .line 249
    :goto_6
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v8

    .line 250
    add-int/lit8 v13, v8, 0x1

    mul-int/lit8 v13, v13, 0x3

    move v0, v13

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 251
    const/4 v13, 0x0

    .line 252
    const/4 v14, 0x0

    move/from16 v22, v14

    move v14, v13

    move/from16 v13, v22

    :goto_7
    if-ge v13, v8, :cond_c

    .line 254
    add-int/lit8 v20, v14, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v21

    aput v21, v19, v14

    .line 255
    add-int/lit8 v14, v20, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v21

    aput v21, v19, v20

    .line 256
    add-int/lit8 v20, v14, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalPressure(II)F

    move-result v21

    aput v21, v19, v14

    .line 252
    add-int/lit8 v13, v13, 0x1

    move/from16 v14, v20

    goto :goto_7

    .line 168
    :cond_5
    const/4 v5, 0x6

    if-ne v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/adobe/air/wand/view/GestureListener;->getCouldBeTwoFingerTap()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 169
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    move-object v4, v0

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/adobe/air/wand/view/GestureListener;->setCouldBeTwoFingerTap(I)V

    goto/16 :goto_1

    .line 170
    :cond_6
    const/4 v5, 0x1

    if-ne v4, v5, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/adobe/air/wand/view/GestureListener;->getCouldBeTwoFingerTap()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    move-object v4, v0

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/adobe/air/wand/view/GestureListener;->setCouldBeTwoFingerTap(I)V

    goto/16 :goto_1

    .line 172
    :cond_7
    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/adobe/air/wand/view/GestureListener;->setCouldBeTwoFingerTap(I)V

    goto/16 :goto_1

    .line 200
    :cond_8
    const/4 v12, 0x2

    if-ne v11, v12, :cond_4

    .line 201
    const/high16 v11, 0x200

    or-int/2addr v10, v11

    goto/16 :goto_3

    .line 211
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_a

    const v10, 0xff00

    and-int/2addr v10, v8

    shr-int/lit8 v10, v10, 0x8

    move-object/from16 v0, p1

    move v1, v10

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    if-ne v9, v10, :cond_16

    .line 214
    :cond_a
    and-int/lit16 v5, v8, 0xff

    .line 216
    packed-switch v5, :pswitch_data_0

    .line 235
    :pswitch_0
    const/4 v8, 0x1

    move/from16 v18, v4

    move v4, v5

    move v5, v8

    goto/16 :goto_5

    .line 220
    :pswitch_1
    const/4 v8, 0x2

    move/from16 v18, v4

    move v4, v5

    move v5, v8

    .line 221
    goto/16 :goto_5

    .line 223
    :pswitch_2
    const/4 v4, 0x1

    .line 226
    :pswitch_3
    const/4 v8, 0x4

    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    move-object v10, v0

    if-eqz v10, :cond_15

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    move-object v10, v0

    invoke-virtual {v10}, Lcom/adobe/air/wand/view/GestureListener;->endTwoFingerGesture()Z

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureListener:Lcom/adobe/air/wand/view/GestureListener;

    move-object v10, v0

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Lcom/adobe/air/wand/view/GestureListener;->setCheckForSwipe(Z)V

    move/from16 v18, v4

    move v4, v5

    move v5, v8

    goto/16 :goto_5

    .line 246
    :cond_b
    const/4 v8, 0x0

    move v12, v8

    goto/16 :goto_6

    .line 259
    :cond_c
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v8

    .line 262
    aput v6, v19, v14

    .line 263
    add-int/lit8 v13, v14, 0x1

    aput v7, v19, v13

    .line 264
    add-int/lit8 v13, v14, 0x2

    aput v8, v19, v13

    .line 267
    and-int/lit8 v11, v11, -0x2

    .line 269
    const/4 v13, 0x1

    if-eq v5, v13, :cond_14

    .line 271
    const/4 v13, 0x3

    if-ne v4, v13, :cond_13

    .line 273
    or-int/lit8 v4, v11, 0x1

    move v14, v4

    .line 276
    :goto_8
    new-instance v4, Lcom/adobe/air/TouchEventData;

    const/4 v13, 0x0

    move v11, v10

    invoke-direct/range {v4 .. v14}, Lcom/adobe/air/TouchEventData;-><init>(IFFFIFFZ[FI)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    move-object v11, v0

    invoke-virtual {v11, v4}, Lcom/adobe/air/wand/view/TouchSensor;->dispatchEvent(Lcom/adobe/air/TouchEventData;)V

    .line 290
    :goto_9
    const/4 v4, 0x0

    .line 291
    packed-switch v5, :pswitch_data_1

    move v5, v4

    .line 301
    :goto_a
    if-eqz v5, :cond_d

    .line 303
    new-instance v4, Lcom/adobe/air/TouchEventData;

    move v11, v10

    move-object/from16 v13, v19

    invoke-direct/range {v4 .. v14}, Lcom/adobe/air/TouchEventData;-><init>(IFFFIFFZ[FI)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    move-object v5, v0

    invoke-virtual {v5, v4}, Lcom/adobe/air/wand/view/TouchSensor;->dispatchEvent(Lcom/adobe/air/TouchEventData;)V

    .line 183
    :cond_d
    add-int/lit8 v4, v17, 0x1

    move/from16 v17, v4

    move/from16 v4, v18

    goto/16 :goto_2

    .line 295
    :pswitch_4
    const/4 v4, 0x1

    move v5, v4

    .line 296
    goto :goto_a

    .line 318
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object v4, v0

    if-eqz v4, :cond_12

    .line 322
    if-eqz v15, :cond_10

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x1

    .line 330
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object v5, v0

    if-eqz v5, :cond_f

    .line 332
    if-eqz v4, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/wand/view/CompanionView;->mGestureDetector:Landroid/view/GestureDetector;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_11

    const/4 v4, 0x1

    .line 335
    :cond_f
    :goto_c
    return v4

    .line 322
    :cond_10
    const/4 v4, 0x0

    goto :goto_b

    .line 324
    :catch_0
    move-exception v4

    move v4, v15

    goto :goto_b

    .line 332
    :cond_11
    const/4 v4, 0x0

    goto :goto_c

    :cond_12
    move v4, v15

    goto :goto_b

    :cond_13
    move v14, v11

    goto :goto_8

    :cond_14
    move v14, v11

    goto :goto_9

    :cond_15
    move/from16 v18, v4

    move v4, v5

    move v5, v8

    goto/16 :goto_5

    :cond_16
    move/from16 v18, v4

    move v4, v8

    goto/16 :goto_5

    :cond_17
    move v11, v10

    goto/16 :goto_4

    .line 216
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    .line 291
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter

    .prologue
    .line 113
    return-void
.end method

.method public returnThis()Landroid/view/View;
    .locals 0

    .prologue
    .line 107
    return-object p0
.end method

.method public setMultitouchMode(I)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput p1, p0, Lcom/adobe/air/wand/view/CompanionView;->mMultitouchMode:I

    .line 366
    return-void
.end method
