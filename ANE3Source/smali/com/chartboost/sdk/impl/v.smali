.class public Lcom/chartboost/sdk/impl/v;
.super Landroid/widget/AbsoluteLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Matrix;

.field private b:Landroid/graphics/Matrix;

.field private c:[F

.field private d:Landroid/view/View;

.field private e:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->a:Landroid/graphics/Matrix;

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Landroid/graphics/Matrix;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:[F

    .line 33
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/RelativeLayout;

    .line 34
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 35
    invoke-direct {v1, v2, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 34
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/v;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Landroid/view/View;

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 57
    invoke-direct {p0, p1}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->a:Landroid/graphics/Matrix;

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->b:Landroid/graphics/Matrix;

    .line 23
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:[F

    .line 59
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    .line 60
    invoke-direct {v0, v1, v1, v2, v2}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    .line 59
    invoke-virtual {p0, p2, v0}, Lcom/chartboost/sdk/impl/v;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iput-object p2, p0, Lcom/chartboost/sdk/impl/v;->d:Landroid/view/View;

    .line 62
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Landroid/view/View;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, -0x2

    .line 42
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/chartboost/sdk/impl/v;->a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 43
    return-void
.end method

.method public a(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->e:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot call addViewToContainer() on CBRotatableContainer that was set up with a default view"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    const/high16 v8, 0x4000

    .line 93
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v6

    .line 94
    invoke-virtual {v6}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->getAsInt()I

    move-result v7

    .line 96
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_0:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    if-ne v6, v0, :cond_0

    .line 98
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 126
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 101
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->getHeight()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 103
    :try_start_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :try_start_1
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 107
    instance-of v2, v1, Landroid/widget/ScrollView;

    if-nez v2, :cond_1

    instance-of v2, v1, Landroid/widget/HorizontalScrollView;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v2, :cond_2

    :cond_1
    move-object v0, v1

    .line 110
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v2

    sub-int v3, v1, v2

    .line 111
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->getTop()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int v4, v1, v2

    .line 112
    sub-int v1, v9, v3

    int-to-float v1, v1

    sub-int v2, v9, v4

    int-to-float v2, v2

    .line 113
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    sub-int v3, v5, v3

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr v0, v4

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    move-object v0, p1

    .line 112
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 115
    :goto_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 116
    int-to-float v0, v7

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 117
    invoke-virtual {v6}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isOdd()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 118
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 121
    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/impl/v;->a:Landroid/graphics/Matrix;

    .line 122
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->a:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->b:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 123
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 124
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 120
    :cond_3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_3

    .line 114
    :catch_0
    move-exception v0

    goto :goto_2

    .line 109
    :catch_1
    move-exception v1

    goto/16 :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 130
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v0

    .line 131
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_0:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    if-ne v0, v1, :cond_0

    .line 133
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 142
    :goto_0
    return v0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->c:[F

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    aput v1, v0, v2

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    aput v1, v0, v3

    .line 139
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->b:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 141
    aget v1, v0, v2

    aget v0, v0, v3

    invoke-virtual {p1, v1, v0}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 142
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 80
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v0

    .line 82
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isOdd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-super {p0, p2, p1}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 84
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/v;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/v;->setMeasuredDimension(II)V

    .line 89
    :goto_0
    return-void

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    goto :goto_0
.end method

.method public onSizeChanged(IIII)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v5, 0x4000

    const/4 v4, 0x0

    .line 66
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 68
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/chartboost/sdk/impl/v;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 70
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isOdd()Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, p2

    :goto_0
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 71
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isOdd()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, p1

    :goto_1
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Landroid/view/View;

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 74
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 73
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->measure(II)V

    .line 75
    iget-object v0, p0, Lcom/chartboost/sdk/impl/v;->d:Landroid/view/View;

    iget v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v4, v4, v2, v1}, Landroid/view/View;->layout(IIII)V

    .line 76
    return-void

    :cond_0
    move v2, p1

    .line 70
    goto :goto_0

    :cond_1
    move v0, p2

    .line 71
    goto :goto_1
.end method
