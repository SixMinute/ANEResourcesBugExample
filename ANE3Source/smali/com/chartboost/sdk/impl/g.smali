.class public Lcom/chartboost/sdk/impl/g;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/RectF;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Xfermode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/g;->a(Landroid/content/Context;)V

    .line 30
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/high16 v3, 0x3f80

    .line 44
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 46
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/g;->c:Landroid/graphics/Xfermode;

    .line 47
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/g;->a:Landroid/graphics/RectF;

    .line 48
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/g;->b:Landroid/graphics/Paint;

    .line 49
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->b:Landroid/graphics/Paint;

    const/high16 v2, -0x5a00

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->b:Landroid/graphics/Paint;

    mul-float/2addr v0, v3

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object v0, p0, Lcom/chartboost/sdk/impl/g;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    const/high16 v9, 0x4000

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 60
    const/high16 v2, 0x4120

    mul-float v3, v2, v1

    .line 61
    const/high16 v2, 0x3f80

    mul-float v4, v2, v1

    .line 63
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 64
    instance-of v1, v2, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 65
    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, v0

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    .line 67
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 68
    iget-object v5, p0, Lcom/chartboost/sdk/impl/g;->a:Landroid/graphics/RectF;

    invoke-virtual {v5, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 71
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    iget-object v5, p0, Lcom/chartboost/sdk/impl/g;->a:Landroid/graphics/RectF;

    invoke-virtual {v2, v5}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->a:Landroid/graphics/RectF;

    const/4 v5, 0x0

    .line 74
    const/16 v6, 0x1f

    .line 73
    invoke-virtual {p1, v2, v5, v6}, Landroid/graphics/Canvas;->saveLayer(Landroid/graphics/RectF;Landroid/graphics/Paint;I)I

    move-result v2

    .line 80
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 81
    invoke-virtual {p1, v7, v7, v7, v7}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 82
    const/high16 v5, -0x100

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 83
    iget-object v5, p0, Lcom/chartboost/sdk/impl/g;->a:Landroid/graphics/RectF;

    invoke-virtual {p1, v5, v3, v3, v1}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 86
    invoke-virtual {v1}, Landroid/graphics/Paint;->getXfermode()Landroid/graphics/Xfermode;

    move-result-object v5

    .line 87
    iget-object v6, p0, Lcom/chartboost/sdk/impl/g;->c:Landroid/graphics/Xfermode;

    invoke-virtual {v1, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 88
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 89
    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 90
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->a:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/g;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1, v8, v8, v2, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 97
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->a:Landroid/graphics/RectF;

    div-float v2, v4, v9

    div-float/2addr v4, v9

    invoke-virtual {v1, v2, v4}, Landroid/graphics/RectF;->inset(FF)V

    .line 98
    iget-object v1, p0, Lcom/chartboost/sdk/impl/g;->a:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/g;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 99
    return-void

    .line 92
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method
