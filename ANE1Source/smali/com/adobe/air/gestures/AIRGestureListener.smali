.class public Lcom/adobe/air/gestures/AIRGestureListener;
.super Ljava/lang/Object;
.source "AIRGestureListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/GestureDetector$OnDoubleTapListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AIRGestureListener"

.field private static final MAX_TOUCH_POINTS:I = 0x2

.field private static final MM_PER_INCH:F = 25.4f

.field private static final _FP_GESTURE_PAN_THRESHOLD_MM:F = 3.0f

.field private static final _FP_GESTURE_ROTATION_THRESHOLD_DEGREES:F = 15.0f

.field private static final _FP_GESTURE_SWIPE_PRIMARY_AXIS_MIN_MM:F = 10.0f

.field private static final _FP_GESTURE_SWIPE_SECONDARY_AXIS_MAX_MM:F = 5.0f

.field private static final _FP_GESTURE_ZOOM_PER_AXIS_THRESHOLD_MM:F = 3.0f

.field private static final _FP_GESTURE_ZOOM_THRESHOLD_MM:F = 8.0f

.field private static final kGestureAll:I = 0x8

.field private static final kGestureBegin:I = 0x2

.field private static final kGestureEnd:I = 0x4

.field private static final kGesturePan:I = 0x1

.field private static final kGestureRotate:I = 0x2

.field private static final kGestureSwipe:I = 0x5

.field private static final kGestureTwoFingerTap:I = 0x3

.field private static final kGestureUpdate:I = 0x1

.field private static final kGestureZoom:I

.field private static screenPPI:I


# instance fields
.field private mCheckForSwipe:Z

.field private mCouldBeTwoFingerTap:I

.field private mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

.field private mInPanTransformGesture:Z

.field private mInRotateTransformGesture:Z

.field private mInZoomTransformGesture:Z

.field private mInZoomTransformGestureX:Z

.field private mInZoomTransformGestureY:Z

.field private mPreviousAbsoluteRotation:F

.field private mPreviousPanLocX:F

.field private mPreviousPanLocY:F

.field private mPreviousRotateLocX:F

.field private mPreviousRotateLocY:F

.field private mPreviousZoomLocX:F

.field private mPreviousZoomLocY:F

.field private mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

.field private mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    sput v0, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    .line 62
    iput-boolean v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    .line 63
    iput-boolean v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 64
    iput-boolean v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    .line 65
    iput-boolean v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    .line 66
    iput-boolean v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    .line 68
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocX:F

    .line 69
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocY:F

    .line 70
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    .line 71
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    .line 72
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocX:F

    .line 73
    iput v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocY:F

    .line 85
    iput v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    .line 152
    iput-object p2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 154
    new-array v0, v3, [Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    iput-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    move v0, v1

    .line 155
    :goto_0
    if-ge v0, v3, :cond_0

    .line 157
    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    new-instance v2, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-direct {v2, p0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;)V

    aput-object v2, v1, v0

    .line 155
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    :cond_0
    new-instance v0, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    invoke-direct {v0, p0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;)V

    iput-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 161
    invoke-static {p1}, Lcom/adobe/air/SystemCapabilities;->GetScreenDPI(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    .line 162
    return-void
.end method

.method private distanceBetweenPoints(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)D
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/high16 v4, 0x4000

    .line 883
    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private endPanGesture()V
    .locals 11

    .prologue
    const/4 v2, 0x1

    const/high16 v6, 0x3f80

    const/4 v8, 0x0

    .line 296
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 300
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-eqz v0, :cond_0

    .line 302
    const/4 v1, 0x4

    .line 312
    iget v4, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocX:F

    .line 313
    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocY:F

    move-object v0, p0

    move v3, v2

    move v7, v6

    move v9, v8

    move v10, v8

    .line 315
    invoke-direct/range {v0 .. v10}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    goto :goto_0
.end method

.method private endRotateGesture()V
    .locals 11

    .prologue
    const/4 v2, 0x2

    const/high16 v6, 0x3f80

    const/4 v8, 0x0

    .line 242
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eq v0, v2, :cond_1

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 246
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    if-eqz v0, :cond_0

    .line 248
    const/4 v1, 0x4

    .line 258
    iget v4, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocX:F

    .line 259
    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocY:F

    .line 261
    const/4 v3, 0x1

    move-object v0, p0

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-direct/range {v0 .. v10}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    .line 262
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    goto :goto_0
.end method

.method private endZoomGesture()V
    .locals 11

    .prologue
    const/high16 v6, 0x3f80

    const/4 v8, 0x0

    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_0

    .line 274
    const/4 v1, 0x4

    .line 284
    iget v4, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    .line 285
    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    .line 287
    const/4 v3, 0x1

    move-object v0, p0

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-direct/range {v0 .. v10}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    .line 288
    iput-boolean v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 289
    iput-boolean v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    .line 290
    iput-boolean v2, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    goto :goto_0
.end method

.method private getRotation(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide v8, 0x4066800000000000L

    const-wide v6, 0x400921fb54442d18L

    .line 825
    const/4 v0, 0x0

    .line 826
    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v1

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v2

    if-ne v1, v2, :cond_0

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v1

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 829
    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    mul-double/2addr v0, v8

    div-double/2addr v0, v6

    .line 831
    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v4

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    mul-double/2addr v2, v8

    div-double/2addr v2, v6

    .line 833
    sub-double v0, v2, v0

    double-to-float v0, v0

    .line 836
    :cond_0
    return v0
.end method

.method private isPanGesture(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 850
    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    sub-float/2addr v0, v1

    .line 851
    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v1

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p1}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    sub-float/2addr v1, v2

    .line 853
    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v2

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    sub-float/2addr v2, v3

    .line 854
    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v3

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {p2}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v4

    sub-float/2addr v3, v4

    .line 856
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 857
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 858
    mul-float/2addr v4, v4

    mul-float/2addr v5, v5

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 863
    cmpl-float v6, v0, v7

    if-ltz v6, :cond_0

    cmpl-float v6, v2, v7

    if-gez v6, :cond_1

    :cond_0
    cmpg-float v0, v0, v7

    if-gtz v0, :cond_5

    cmpg-float v0, v2, v7

    if-gtz v0, :cond_5

    :cond_1
    cmpl-float v0, v1, v7

    if-ltz v0, :cond_2

    cmpl-float v0, v3, v7

    if-gez v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v7

    if-gtz v0, :cond_5

    cmpg-float v0, v3, v7

    if-gtz v0, :cond_5

    :cond_3
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    if-nez v0, :cond_4

    const/high16 v0, 0x4040

    sget v1, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x41cb3333

    div-float/2addr v0, v1

    float-to-double v0, v0

    cmpl-double v0, v4, v0

    if-lez v0, :cond_5

    .line 871
    :cond_4
    const/4 v0, 0x1

    .line 873
    :goto_0
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private native nativeOnGestureListener(IIZFFFFFFF)Z
.end method


# virtual methods
.method public endTwoFingerGesture()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 228
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move v0, v2

    .line 237
    :goto_0
    return v0

    .line 235
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endRotateGesture()V

    .line 236
    invoke-direct {p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endPanGesture()V

    move v0, v2

    .line 237
    goto :goto_0
.end method

.method public getCheckForSwipe()Z
    .locals 1

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    return v0
.end method

.method public getCouldBeTwoFingerTap()I
    .locals 1

    .prologue
    .line 199
    iget v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    return v0
.end method

.method public getDownTouchPoint(I)Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;
    .locals 1
    .parameter

    .prologue
    .line 171
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-ge p1, v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v0, v0, p1

    .line 174
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mayStartNewTransformGesture()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 209
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    .line 210
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 211
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    .line 212
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    .line 213
    iput-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    .line 214
    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 656
    .line 660
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 662
    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/adobe/air/AIRWindowSurfaceView;->nativeOnDoubleClickListener(FF)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    .line 664
    :goto_0
    return v0

    :cond_0
    move v0, v3

    .line 662
    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 672
    const/4 v0, 0x1

    return v0
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 328
    const/4 v0, 0x1

    return v0
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 344
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 25
    .parameter

    .prologue
    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 704
    const/4 v2, 0x1

    .line 785
    :goto_0
    return v2

    .line 708
    :cond_0
    const/4 v2, 0x1

    .line 709
    const/4 v4, 0x0

    .line 711
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    .line 712
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    .line 714
    const/high16 v5, 0x3f80

    .line 715
    const/high16 v8, 0x3f80

    .line 716
    const/4 v10, 0x0

    .line 717
    const/4 v11, 0x0

    .line 718
    const/4 v12, 0x0

    .line 720
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v3

    float-to-double v13, v3

    .line 721
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v3

    float-to-double v15, v3

    .line 722
    sub-double/2addr v15, v13

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    .line 723
    const-wide/16 v17, 0x0

    .line 724
    const-wide/16 v19, 0x0

    .line 725
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v3, v9, :cond_a

    .line 727
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v9

    sub-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move v0, v3

    float-to-double v0, v0

    move-wide/from16 v17, v0

    .line 728
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v9

    sub-float/2addr v3, v9

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    move v0, v3

    float-to-double v0, v0

    move-wide/from16 v19, v0

    move-wide/from16 v23, v19

    move-wide/from16 v19, v17

    move-wide/from16 v17, v23

    .line 731
    :goto_1
    const-wide/16 v21, 0x0

    cmpl-double v3, v13, v21

    if-eqz v3, :cond_6

    .line 733
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    move v3, v0

    if-nez v3, :cond_1

    const-wide v13, 0x4039666660000000L

    mul-double/2addr v13, v15

    sget v3, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-double v15, v3

    div-double/2addr v13, v15

    const-wide/high16 v15, 0x4020

    cmpl-double v3, v13, v15

    if-lez v3, :cond_5

    .line 735
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    move v3, v0

    if-nez v3, :cond_9

    .line 737
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    .line 738
    const/4 v2, 0x2

    move v3, v2

    .line 743
    :goto_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0xb

    if-lt v2, v9, :cond_4

    .line 745
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v2

    const/4 v9, 0x0

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v2

    const/4 v9, 0x0

    cmpl-float v2, v2, v9

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    move v2, v0

    if-nez v2, :cond_2

    const-wide v13, 0x4039666660000000L

    mul-double v13, v13, v19

    sget v2, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-double v15, v2

    div-double/2addr v13, v15

    const-wide/high16 v15, 0x4008

    cmpl-double v2, v13, v15

    if-lez v2, :cond_8

    .line 748
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanX()F

    move-result v5

    div-float/2addr v2, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 749
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureX:Z

    .line 752
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v5

    const/4 v9, 0x0

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_7

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v5

    const/4 v9, 0x0

    cmpl-float v5, v5, v9

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    move v5, v0

    if-nez v5, :cond_3

    const-wide v13, 0x4039666660000000L

    mul-double v13, v13, v17

    sget v5, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-double v15, v5

    div-double/2addr v13, v15

    const-wide/high16 v15, 0x4008

    cmpl-double v5, v13, v15

    if-lez v5, :cond_7

    .line 755
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpanY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpanY()F

    move-result v8

    div-float/2addr v5, v8

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 756
    const/4 v8, 0x1

    move v0, v8

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGestureY:Z

    move v9, v5

    move v8, v2

    .line 771
    :goto_4
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    .line 772
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    .line 775
    const/4 v5, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v12}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    .line 777
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 761
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v2

    move v9, v2

    move v8, v2

    .line 765
    goto :goto_4

    .line 782
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 785
    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_7
    move v9, v8

    move v8, v2

    goto :goto_4

    :cond_8
    move v2, v5

    goto :goto_3

    :cond_9
    move v3, v2

    goto/16 :goto_2

    :cond_a
    move-wide/from16 v23, v19

    move-wide/from16 v19, v17

    move-wide/from16 v17, v23

    goto/16 :goto_1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_0

    .line 687
    invoke-direct {p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endZoomGesture()V

    .line 693
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 11
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 795
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 812
    :cond_0
    :goto_0
    return-void

    .line 802
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    if-eqz v0, :cond_0

    .line 804
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v6

    .line 810
    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget v4, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocX:F

    iget v5, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousZoomLocY:F

    move-object v0, p0

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-direct/range {v0 .. v10}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    goto :goto_0
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 20
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 352
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x2

    if-eq v5, v6, :cond_0

    .line 353
    const/4 v5, 0x1

    .line 591
    :goto_0
    return v5

    .line 364
    :cond_0
    const/high16 v11, 0x3f80

    .line 365
    const/high16 v12, 0x3f80

    .line 366
    const/4 v13, 0x0

    .line 367
    const/4 v14, 0x0

    .line 368
    const/4 v15, 0x0

    .line 374
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 379
    const/4 v5, 0x1

    .line 381
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float v9, v6, v7

    .line 382
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float v10, v6, v7

    .line 387
    const/4 v6, 0x2

    move v0, v6

    new-array v0, v0, [Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    move-object/from16 v16, v0

    .line 389
    const/4 v6, 0x0

    :goto_1
    const/4 v7, 0x2

    if-ge v6, v7, :cond_1

    .line 391
    new-instance v7, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v17

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v18

    move-object v0, v7

    move-object/from16 v1, p0

    move v2, v8

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;-><init>(Lcom/adobe/air/gestures/AIRGestureListener;FFI)V

    aput-object v7, v16, v6

    .line 389
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 394
    :cond_1
    const/4 v6, 0x0

    aget-object v6, v16, v6

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {v6}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v17

    .line 395
    const/4 v6, 0x1

    aget-object v6, v16, v6

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {v6}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v18

    .line 397
    if-ltz v17, :cond_6

    const/4 v6, 0x2

    move/from16 v0, v17

    move v1, v6

    if-ge v0, v1, :cond_6

    if-ltz v18, :cond_6

    const/4 v6, 0x2

    move/from16 v0, v18

    move v1, v6

    if-ge v0, v1, :cond_6

    .line 403
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    move v6, v0

    if-nez v6, :cond_4

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    move-object v6, v0

    aget-object v6, v6, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    move-object v7, v0

    aget-object v7, v7, v18

    const/4 v8, 0x0

    aget-object v8, v16, v8

    const/16 v19, 0x1

    aget-object v19, v16, v19

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/air/gestures/AIRGestureListener;->getRotation(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v6

    .line 417
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const/high16 v8, 0x4334

    cmpl-float v7, v7, v8

    if-lez v7, :cond_10

    .line 419
    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-lez v7, :cond_7

    const/high16 v7, 0x43b4

    sub-float v6, v7, v6

    const/high16 v7, -0x4080

    mul-float/2addr v6, v7

    :goto_2
    move v8, v6

    .line 425
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    move v6, v0

    if-nez v6, :cond_2

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const/high16 v7, 0x4170

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    .line 427
    :cond_2
    const/4 v7, 0x2

    .line 428
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    move v6, v0

    if-nez v6, :cond_3

    .line 430
    const/4 v5, 0x2

    .line 431
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    .line 432
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    :cond_3
    move v6, v5

    .line 435
    move-object/from16 v0, p0

    iget v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    move v5, v0

    sub-float v5, v8, v5

    .line 440
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v13

    const/high16 v19, 0x4334

    cmpl-float v13, v13, v19

    if-lez v13, :cond_f

    .line 442
    const/4 v13, 0x0

    cmpl-float v13, v5, v13

    if-lez v13, :cond_8

    const/high16 v13, 0x43b4

    sub-float v5, v13, v5

    const/high16 v13, -0x4080

    mul-float/2addr v5, v13

    :goto_4
    move v13, v5

    .line 447
    :goto_5
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousAbsoluteRotation:F

    .line 448
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocX:F

    .line 449
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousRotateLocY:F

    .line 452
    const/4 v8, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v15}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    .line 455
    const/4 v5, 0x0

    move v13, v5

    move v5, v6

    .line 463
    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInZoomTransformGesture:Z

    move v6, v0

    if-nez v6, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInRotateTransformGesture:Z

    move v6, v0

    if-nez v6, :cond_6

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    move-object v6, v0

    aget-object v6, v6, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    move-object v7, v0

    aget-object v7, v7, v18

    const/4 v8, 0x0

    aget-object v8, v16, v8

    const/4 v14, 0x1

    aget-object v14, v16, v14

    move-object/from16 v0, p0

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object v4, v14

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/adobe/air/gestures/AIRGestureListener;->isPanGesture(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 471
    const/4 v7, 0x1

    .line 472
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    move v6, v0

    if-nez v6, :cond_5

    .line 474
    const/4 v5, 0x2

    .line 475
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    :cond_5
    move v6, v5

    .line 478
    const/high16 v5, -0x4080

    mul-float v14, v5, p3

    .line 479
    const/high16 v5, -0x4080

    mul-float v15, v5, p4

    .line 480
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocX:F

    .line 481
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Lcom/adobe/air/gestures/AIRGestureListener;->mPreviousPanLocY:F

    .line 486
    const/4 v8, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v15}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    .line 591
    :cond_6
    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 419
    :cond_7
    const/high16 v7, 0x43b4

    add-float/2addr v6, v7

    goto/16 :goto_2

    .line 442
    :cond_8
    const/high16 v13, 0x43b4

    add-float/2addr v5, v13

    goto :goto_4

    .line 494
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mInPanTransformGesture:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 497
    invoke-direct/range {p0 .. p0}, Lcom/adobe/air/gestures/AIRGestureListener;->endPanGesture()V

    .line 498
    const/4 v5, 0x0

    aget-object v5, v16, v5

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {v5}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v5

    const/4 v6, 0x0

    aget-object v6, v16, v6

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {v6}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v6

    const/4 v7, 0x0

    aget-object v7, v16, v7

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {v7}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v7

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/air/gestures/AIRGestureListener;->setDownTouchPoint(FFI)V

    .line 499
    const/4 v5, 0x1

    aget-object v5, v16, v5

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {v5}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v5

    const/4 v6, 0x1

    aget-object v6, v16, v6

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {v6}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v6

    const/4 v7, 0x1

    aget-object v7, v16, v7

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->pid:I
    invoke-static {v7}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$100(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)I

    move-result v7

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/adobe/air/gestures/AIRGestureListener;->setDownTouchPoint(FFI)V

    goto :goto_6

    .line 509
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 511
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    .line 513
    if-ltz v5, :cond_6

    const/4 v6, 0x2

    if-ge v5, v6, :cond_6

    .line 521
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    move v6, v0

    if-eqz v6, :cond_6

    .line 523
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 529
    const/4 v6, 0x0

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    move-object v7, v0

    aget-object v7, v7, v5

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {v7}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v7

    sub-float/2addr v6, v7

    .line 530
    const/4 v7, 0x0

    move-object/from16 v0, p2

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    move-object v8, v0

    aget-object v5, v8, v5

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {v5}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v5

    sub-float v5, v7, v5

    .line 534
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x41cb3333

    mul-float/2addr v7, v8

    sget v8, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x4120

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_c

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x41cb3333

    mul-float/2addr v7, v8

    sget v8, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x40a0

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_c

    .line 536
    const/4 v5, 0x1

    .line 537
    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-lez v6, :cond_b

    const/high16 v6, 0x3f80

    .line 538
    :goto_7
    const/4 v7, 0x0

    move v15, v7

    move v14, v6

    .line 552
    :goto_8
    if-eqz v5, :cond_6

    .line 556
    const/16 v6, 0x8

    .line 557
    const/4 v7, 0x5

    .line 560
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 561
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 563
    const/4 v8, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v15}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    .line 565
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    goto/16 :goto_6

    .line 537
    :cond_b
    const/high16 v6, -0x4080

    goto :goto_7

    .line 540
    :cond_c
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x41cb3333

    mul-float/2addr v7, v8

    sget v8, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x4120

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_e

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x41cb3333

    mul-float/2addr v6, v7

    sget v7, Lcom/adobe/air/gestures/AIRGestureListener;->screenPPI:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x40a0

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_e

    .line 542
    const/4 v6, 0x1

    .line 543
    const/4 v7, 0x0

    .line 544
    const/4 v8, 0x0

    cmpl-float v5, v5, v8

    if-lez v5, :cond_d

    const/high16 v5, 0x3f80

    :goto_9
    move v15, v5

    move v14, v7

    move v5, v6

    goto :goto_8

    :cond_d
    const/high16 v5, -0x4080

    goto :goto_9

    .line 549
    :cond_e
    const/4 v5, 0x0

    goto :goto_8

    :cond_f
    move v13, v5

    goto/16 :goto_5

    :cond_10
    move v8, v6

    goto/16 :goto_3
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0
    .parameter

    .prologue
    .line 599
    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter

    .prologue
    const/high16 v7, 0x4000

    const/high16 v6, 0x3f80

    const/4 v11, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    .line 615
    .line 617
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->getMultitouchMode()I

    move-result v0

    iget-object v1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    move v0, v11

    .line 638
    :goto_0
    return v0

    .line 620
    :cond_0
    const/16 v1, 0x8

    .line 621
    const/4 v2, 0x3

    .line 625
    iget v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    const/4 v4, 0x3

    if-ne v0, v4, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v11, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->x:F
    invoke-static {v0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$200(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    add-float/2addr v0, v4

    div-float v4, v0, v7

    .line 629
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    #getter for: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->y:F
    invoke-static {v0}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$300(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)F

    move-result v0

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    add-float/2addr v0, v5

    div-float v5, v0, v7

    .line 632
    if-eqz v11, :cond_1

    move-object v0, p0

    move v7, v6

    move v9, v8

    move v10, v8

    invoke-direct/range {v0 .. v10}, Lcom/adobe/air/gestures/AIRGestureListener;->nativeOnGestureListener(IIZFFFFFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v11

    .line 635
    :goto_1
    iput v3, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    goto :goto_0

    :cond_1
    move v0, v3

    .line 632
    goto :goto_1

    :cond_2
    move v0, v11

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 646
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckForSwipe(Z)V
    .locals 0
    .parameter

    .prologue
    .line 223
    iput-boolean p1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCheckForSwipe:Z

    .line 224
    return-void
.end method

.method public setCouldBeTwoFingerTap(I)V
    .locals 0
    .parameter

    .prologue
    .line 194
    iput p1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mCouldBeTwoFingerTap:I

    .line 195
    return-void
.end method

.method public setDownTouchPoint(FFI)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    if-ltz p3, :cond_0

    const/4 v0, 0x2

    if-ge p3, v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mDownTouchPoints:[Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    aget-object v0, v0, p3

    #calls: Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->assign(FFI)V
    invoke-static {v0, p1, p2, p3}, Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;->access$000(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;FFI)V

    .line 190
    :cond_0
    return-void
.end method

.method public setSecondaryPointOfTwoFingerTap(Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;)V
    .locals 0
    .parameter

    .prologue
    .line 204
    iput-object p1, p0, Lcom/adobe/air/gestures/AIRGestureListener;->mSecondaryPointOfTwoFingerTap:Lcom/adobe/air/gestures/AIRGestureListener$TouchPoint;

    .line 205
    return-void
.end method
