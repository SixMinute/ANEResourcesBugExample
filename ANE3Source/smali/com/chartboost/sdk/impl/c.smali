.class public abstract Lcom/chartboost/sdk/impl/c;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/h$b;


# instance fields
.field protected a:Landroid/view/View$OnClickListener;

.field private b:Landroid/graphics/RectF;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c;->b:Landroid/graphics/RectF;

    .line 25
    iput-object v1, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/graphics/Paint;

    .line 26
    iput-object v1, p0, Lcom/chartboost/sdk/impl/c;->d:Landroid/graphics/Paint;

    .line 27
    iput-object v1, p0, Lcom/chartboost/sdk/impl/c;->e:Landroid/graphics/RectF;

    .line 28
    iput-object v1, p0, Lcom/chartboost/sdk/impl/c;->a:Landroid/view/View$OnClickListener;

    .line 32
    return-void
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v3, 0x3dcccccd

    const/4 v1, 0x0

    .line 50
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->d:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c;->d:Landroid/graphics/Paint;

    .line 52
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->d:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 53
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->d:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->e:Landroid/graphics/RectF;

    if-eqz v0, :cond_1

    iget v0, p2, Landroid/graphics/RectF;->top:F

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_1

    .line 60
    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, p0, Lcom/chartboost/sdk/impl/c;->e:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_2

    .line 61
    :cond_1
    iget-object v8, p0, Lcom/chartboost/sdk/impl/c;->d:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    .line 62
    const v5, -0x161617

    const v6, -0x232324

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 61
    invoke-virtual {v8, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 65
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 66
    return-void
.end method

.method private b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    const/high16 v6, 0x3f80

    .line 70
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/graphics/Paint;

    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/graphics/Paint;

    const v1, -0xb0b0c

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v2, p2, Landroid/graphics/RectF;->top:F

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float v4, v0, v6

    iget-object v5, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/graphics/Paint;

    const v1, -0x333334

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 82
    iget v1, p2, Landroid/graphics/RectF;->left:F

    iget v0, p2, Landroid/graphics/RectF;->bottom:F

    sub-float v2, v0, v6

    iget v3, p2, Landroid/graphics/RectF;->right:F

    iget v4, p2, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/chartboost/sdk/impl/c;->c:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter "canvas"

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->b:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/c;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/c;->a()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->b:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/c;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/impl/c;->b:Landroid/graphics/RectF;

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/impl/c;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    .line 41
    return-void
.end method
