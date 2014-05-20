.class Lcom/chartboost/sdk/impl/f$1;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/f;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lcom/chartboost/sdk/impl/f;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/f;)V
    .locals 1
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    .line 82
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/impl/f$1;->a:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter "canvas"

    .prologue
    const/4 v2, 0x0

    const/high16 v6, 0x4000

    .line 87
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 89
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/f$1;->getState()[I

    move-result-object v1

    move v3, v2

    .line 90
    :goto_0
    array-length v4, v1

    if-lt v2, v4, :cond_1

    .line 95
    const/high16 v1, 0x40c0

    mul-float/2addr v1, v0

    .line 98
    iget-object v2, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/f;->a(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 99
    iget-object v2, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/f;->b(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/f$1;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 100
    iget-object v2, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/f;->a(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v4, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v4}, Lcom/chartboost/sdk/impl/f;->b(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/RectF;

    move-result-object v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v1, v1, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 103
    iget-object v2, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/f;->c(Lcom/chartboost/sdk/impl/f;)V

    .line 104
    iget-object v2, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/f;->d(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Paint;

    move-result-object v2

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v4}, Lcom/chartboost/sdk/impl/f;->e(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Shader;

    move-result-object v4

    :goto_1
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 105
    iget-object v2, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/f;->a(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v4, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v4}, Lcom/chartboost/sdk/impl/f;->d(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 108
    const/high16 v2, 0x3f80

    mul-float/2addr v0, v2

    .line 110
    iget-object v2, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/f;->g(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 111
    iget-object v2, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/f;->b(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/RectF;

    move-result-object v2

    div-float v4, v0, v6

    div-float v5, v0, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->inset(FF)V

    .line 112
    iget-object v2, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/f;->g(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Path;

    move-result-object v2

    iget-object v4, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v4}, Lcom/chartboost/sdk/impl/f;->b(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/RectF;

    move-result-object v4

    sget-object v5, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v2, v4, v1, v1, v5}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 114
    iget-object v2, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/f;->h(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 115
    iget-object v2, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/f;->b(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v4, 0x0

    div-float/2addr v0, v6

    invoke-virtual {v2, v4, v0}, Landroid/graphics/RectF;->offset(FF)V

    .line 116
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/f;->h(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v2, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/f;->b(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/RectF;

    move-result-object v2

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v2, v1, v1, v4}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 119
    if-nez v3, :cond_0

    .line 120
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/f;->i(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/f;->h(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/f;->i(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/f;->i(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0x449c00

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/f;->g(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/f;->i(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 127
    return-void

    .line 91
    :cond_1
    aget v4, v1, v2

    const v5, 0x10100a7

    if-ne v4, v5, :cond_2

    .line 92
    const/4 v3, 0x1

    .line 90
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 104
    :cond_3
    iget-object v4, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v4}, Lcom/chartboost/sdk/impl/f;->f(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Shader;

    move-result-object v4

    goto/16 :goto_1
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method protected onStateChange([I)Z
    .locals 6
    .parameter "states"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 149
    move v0, v4

    move v1, v4

    .line 150
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_0

    .line 154
    iget-boolean v0, p0, Lcom/chartboost/sdk/impl/f$1;->a:Z

    if-eq v0, v1, :cond_2

    .line 155
    iput-boolean v1, p0, Lcom/chartboost/sdk/impl/f$1;->a:Z

    .line 156
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/f$1;->invalidateSelf()V

    move v0, v5

    .line 160
    :goto_1
    return v0

    .line 151
    :cond_0
    aget v2, p1, v0

    const v3, 0x10100a7

    if-ne v2, v3, :cond_1

    move v1, v5

    .line 150
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v4

    .line 160
    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 131
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/f;->i(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 132
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/f;->d(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 133
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .parameter "cf"

    .prologue
    .line 137
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/f;->i(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 138
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f$1;->b:Lcom/chartboost/sdk/impl/f;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/f;->d(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 139
    return-void
.end method
