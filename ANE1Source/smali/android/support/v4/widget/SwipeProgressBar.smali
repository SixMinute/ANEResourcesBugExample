.class final Landroid/support/v4/widget/SwipeProgressBar;
.super Ljava/lang/Object;
.source "SwipeProgressBar.java"


# static fields
.field private static final ANIMATION_DURATION_MS:I = 0x7d0

.field private static final COLOR1:I = -0x4d000000

.field private static final COLOR2:I = -0x80000000

.field private static final COLOR3:I = 0x4d000000

.field private static final COLOR4:I = 0x1a000000

.field private static final FINISH_ANIMATION_DURATION_MS:I = 0x3e8

.field private static final INTERPOLATOR:Landroid/view/animation/Interpolator;


# instance fields
.field private mBounds:Landroid/graphics/Rect;

.field private final mClipRect:Landroid/graphics/RectF;

.field private mColor1:I

.field private mColor2:I

.field private mColor3:I

.field private mColor4:I

.field private mFinishTime:J

.field private final mPaint:Landroid/graphics/Paint;

.field private mParent:Landroid/view/View;

.field private mRunning:Z

.field private mStartTime:J

.field private mTriggerPercentage:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Landroid/support/v4/widget/BakedBezierInterpolator;->getInstance()Landroid/support/v4/widget/BakedBezierInterpolator;

    move-result-object v0

    sput-object v0, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .parameter "parent"

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    .line 54
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    .line 70
    iput-object p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    .line 71
    const/high16 v0, -0x4d00

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    .line 72
    const/high16 v0, -0x8000

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    .line 73
    const/high16 v0, 0x4d00

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    .line 74
    const/high16 v0, 0x1a00

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    .line 75
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FFIF)V
    .locals 3
    .parameter "canvas"
    .parameter "cx"
    .parameter "cy"
    .parameter "color"
    .parameter "pct"

    .prologue
    const/4 v2, 0x0

    .line 255
    iget-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 256
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 257
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 258
    sget-object v1, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 259
    .local v0, radiusScale:F
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 260
    iget-object v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, p2, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 261
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 262
    return-void
.end method

.method private drawTrigger(Landroid/graphics/Canvas;II)V
    .locals 4
    .parameter "canvas"
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    int-to-float v0, p2

    int-to-float v1, p3

    int-to-float v2, p2

    iget v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 243
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 27
    .parameter "canvas"

    .prologue
    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v26

    .line 138
    .local v26, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v19

    .line 139
    .local v19, height:I
    div-int/lit8 v11, v26, 0x2

    .line 140
    .local v11, cx:I
    div-int/lit8 v12, v19, 0x2

    .line 141
    .local v12, cy:I
    const/4 v13, 0x0

    .line 142
    .local v13, drawTriggerWhileFinishing:Z
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v25

    .line 143
    .local v25, restoreCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 145
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    move v4, v0

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    move-wide v4, v0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_e

    .line 146
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v22

    .line 147
    .local v22, now:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    move-wide v4, v0

    sub-long v4, v22, v4

    const-wide/16 v6, 0x7d0

    rem-long v14, v4, v6

    .line 148
    .local v14, elapsed:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    move-wide v4, v0

    sub-long v4, v22, v4

    const-wide/16 v6, 0x7d0

    div-long v20, v4, v6

    .line 149
    .local v20, iterations:J
    long-to-float v4, v14

    const/high16 v5, 0x41a0

    div-float v24, v4, v5

    .line 153
    .local v24, rawProgress:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    move v4, v0

    if-nez v4, :cond_2

    .line 156
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    move-wide v4, v0

    sub-long v4, v22, v4

    const-wide/16 v6, 0x3e8

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 157
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    .line 238
    .end local v14           #elapsed:J
    .end local v20           #iterations:J
    .end local v22           #now:J
    .end local v24           #rawProgress:F
    :goto_0
    return-void

    .line 164
    .restart local v14       #elapsed:J
    .restart local v20       #iterations:J
    .restart local v22       #now:J
    .restart local v24       #rawProgress:F
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    move-wide v4, v0

    sub-long v4, v22, v4

    const-wide/16 v6, 0x3e8

    rem-long v16, v4, v6

    .line 165
    .local v16, finishElapsed:J
    move-wide/from16 v0, v16

    long-to-float v0, v0

    move v4, v0

    const/high16 v5, 0x4120

    div-float v18, v4, v5

    .line 166
    .local v18, finishProgress:F
    const/high16 v4, 0x42c8

    div-float v9, v18, v4

    .line 168
    .local v9, pct:F
    div-int/lit8 v4, v26, 0x2

    int-to-float v4, v4

    sget-object v5, Landroid/support/v4/widget/SwipeProgressBar;->INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-interface {v5, v9}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v5

    mul-float v10, v4, v5

    .line 169
    .local v10, clearRadius:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    move-object v4, v0

    int-to-float v5, v11

    sub-float/2addr v5, v10

    const/4 v6, 0x0

    int-to-float v7, v11

    add-float/2addr v7, v10

    move/from16 v0, v19

    int-to-float v0, v0

    move v8, v0

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;->set(FFFF)V

    .line 170
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mClipRect:Landroid/graphics/RectF;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->saveLayerAlpha(Landroid/graphics/RectF;II)I

    .line 175
    const/4 v13, 0x1

    .line 179
    .end local v9           #pct:F
    .end local v10           #clearRadius:F
    .end local v16           #finishElapsed:J
    .end local v18           #finishProgress:F
    :cond_2
    const-wide/16 v4, 0x0

    cmp-long v4, v20, v4

    if-nez v4, :cond_a

    .line 180
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move v4, v0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 199
    :goto_1
    const/4 v4, 0x0

    cmpl-float v4, v24, v4

    if-ltz v4, :cond_3

    const/high16 v4, 0x41c8

    cmpg-float v4, v24, v4

    if-gtz v4, :cond_3

    .line 200
    const/high16 v4, 0x41c8

    add-float v4, v4, v24

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c8

    div-float v9, v4, v5

    .line 201
    .restart local v9       #pct:F
    int-to-float v6, v11

    int-to-float v7, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move v8, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 203
    .end local v9           #pct:F
    :cond_3
    const/4 v4, 0x0

    cmpl-float v4, v24, v4

    if-ltz v4, :cond_4

    const/high16 v4, 0x4248

    cmpg-float v4, v24, v4

    if-gtz v4, :cond_4

    .line 204
    const/high16 v4, 0x4000

    mul-float v4, v4, v24

    const/high16 v5, 0x42c8

    div-float v9, v4, v5

    .line 205
    .restart local v9       #pct:F
    int-to-float v6, v11

    int-to-float v7, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    move v8, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 207
    .end local v9           #pct:F
    :cond_4
    const/high16 v4, 0x41c8

    cmpl-float v4, v24, v4

    if-ltz v4, :cond_5

    const/high16 v4, 0x4296

    cmpg-float v4, v24, v4

    if-gtz v4, :cond_5

    .line 208
    const/high16 v4, 0x41c8

    sub-float v4, v24, v4

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c8

    div-float v9, v4, v5

    .line 209
    .restart local v9       #pct:F
    int-to-float v6, v11

    int-to-float v7, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    move v8, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 211
    .end local v9           #pct:F
    :cond_5
    const/high16 v4, 0x4248

    cmpl-float v4, v24, v4

    if-ltz v4, :cond_6

    const/high16 v4, 0x42c8

    cmpg-float v4, v24, v4

    if-gtz v4, :cond_6

    .line 212
    const/high16 v4, 0x4248

    sub-float v4, v24, v4

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c8

    div-float v9, v4, v5

    .line 213
    .restart local v9       #pct:F
    int-to-float v6, v11

    int-to-float v7, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    move v8, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 215
    .end local v9           #pct:F
    :cond_6
    const/high16 v4, 0x4296

    cmpl-float v4, v24, v4

    if-ltz v4, :cond_7

    const/high16 v4, 0x42c8

    cmpg-float v4, v24, v4

    if-gtz v4, :cond_7

    .line 216
    const/high16 v4, 0x4296

    sub-float v4, v24, v4

    const/high16 v5, 0x4000

    mul-float/2addr v4, v5

    const/high16 v5, 0x42c8

    div-float v9, v4, v5

    .line 217
    .restart local v9       #pct:F
    int-to-float v6, v11

    int-to-float v7, v12

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move v8, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/support/v4/widget/SwipeProgressBar;->drawCircle(Landroid/graphics/Canvas;FFIF)V

    .line 219
    .end local v9           #pct:F
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    move v4, v0

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_8

    if-eqz v13, :cond_8

    .line 224
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 225
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v25

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    move-object v4, v0

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 227
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    .line 230
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    move-object v4, v0

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 237
    .end local v14           #elapsed:J
    .end local v20           #iterations:J
    .end local v22           #now:J
    .end local v24           #rawProgress:F
    :cond_9
    :goto_2
    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 182
    .restart local v14       #elapsed:J
    .restart local v20       #iterations:J
    .restart local v22       #now:J
    .restart local v24       #rawProgress:F
    :cond_a
    const/4 v4, 0x0

    cmpl-float v4, v24, v4

    if-ltz v4, :cond_b

    const/high16 v4, 0x41c8

    cmpg-float v4, v24, v4

    if-gez v4, :cond_b

    .line 183
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    move v4, v0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 184
    :cond_b
    const/high16 v4, 0x41c8

    cmpl-float v4, v24, v4

    if-ltz v4, :cond_c

    const/high16 v4, 0x4248

    cmpg-float v4, v24, v4

    if-gez v4, :cond_c

    .line 185
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    move v4, v0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 186
    :cond_c
    const/high16 v4, 0x4248

    cmpl-float v4, v24, v4

    if-ltz v4, :cond_d

    const/high16 v4, 0x4296

    cmpg-float v4, v24, v4

    if-gez v4, :cond_d

    .line 187
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    move v4, v0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 189
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    move v4, v0

    move-object/from16 v0, p1

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    goto/16 :goto_1

    .line 233
    .end local v14           #elapsed:J
    .end local v20           #iterations:J
    .end local v22           #now:J
    .end local v24           #rawProgress:F
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    move v4, v0

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    move v4, v0

    float-to-double v4, v4

    const-wide/high16 v6, 0x3ff0

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_9

    .line 234
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Landroid/support/v4/widget/SwipeProgressBar;->drawTrigger(Landroid/graphics/Canvas;II)V

    goto :goto_2
.end method

.method isRunning()Z
    .locals 4

    .prologue
    .line 133
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setBounds(IIII)V
    .locals 1
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 268
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p1, v0, Landroid/graphics/Rect;->left:I

    .line 269
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p2, v0, Landroid/graphics/Rect;->top:I

    .line 270
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->right:I

    .line 271
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mBounds:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->bottom:I

    .line 272
    return-void
.end method

.method setColorScheme(IIII)V
    .locals 0
    .parameter "color1"
    .parameter "color2"
    .parameter "color3"
    .parameter "color4"

    .prologue
    .line 88
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor1:I

    .line 89
    iput p2, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor2:I

    .line 90
    iput p3, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor3:I

    .line 91
    iput p4, p0, Landroid/support/v4/widget/SwipeProgressBar;->mColor4:I

    .line 92
    return-void
.end method

.method setTriggerPercentage(F)V
    .locals 2
    .parameter "triggerPercentage"

    .prologue
    .line 100
    iput p1, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    .line 101
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    .line 102
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 103
    return-void
.end method

.method start()V
    .locals 2

    .prologue
    .line 109
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-nez v0, :cond_0

    .line 110
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    .line 111
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mStartTime:J

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    .line 113
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 115
    :cond_0
    return-void
.end method

.method stop()V
    .locals 2

    .prologue
    .line 121
    iget-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mTriggerPercentage:F

    .line 123
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mFinishTime:J

    .line 124
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mRunning:Z

    .line 125
    iget-object v0, p0, Landroid/support/v4/widget/SwipeProgressBar;->mParent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 127
    :cond_0
    return-void
.end method
