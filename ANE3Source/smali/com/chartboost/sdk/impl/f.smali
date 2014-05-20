.class public Lcom/chartboost/sdk/impl/f;
.super Landroid/widget/Button;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Path;

.field private b:Landroid/graphics/Path;

.field private c:Landroid/graphics/Path;

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/Shader;

.field private h:Landroid/graphics/Shader;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 43
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/f;->a(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Path;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->a:Landroid/graphics/Path;

    return-object v0
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/4 v8, 0x3

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/f;->getHeight()I

    move-result v0

    .line 174
    iget v2, p0, Lcom/chartboost/sdk/impl/f;->i:I

    if-ne v0, v2, :cond_0

    .line 187
    :goto_0
    return-void

    .line 176
    :cond_0
    iput v0, p0, Lcom/chartboost/sdk/impl/f;->i:I

    .line 178
    new-array v5, v8, [I

    fill-array-data v5, :array_0

    .line 180
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/f;->getHeight()I

    move-result v2

    int-to-float v4, v2

    .line 181
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 180
    iput-object v0, p0, Lcom/chartboost/sdk/impl/f;->g:Landroid/graphics/Shader;

    .line 183
    new-array v5, v8, [I

    fill-array-data v5, :array_1

    .line 185
    new-instance v0, Landroid/graphics/LinearGradient;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/f;->getHeight()I

    move-result v2

    int-to-float v4, v2

    .line 186
    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move v2, v1

    move v3, v1

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 185
    iput-object v0, p0, Lcom/chartboost/sdk/impl/f;->h:Landroid/graphics/Shader;

    goto :goto_0

    .line 178
    nop

    :array_0
    .array-data 0x4
        0x2at 0xc2t 0xfet 0xfft
        0x0t 0xa2t 0xfet 0xfft
        0x0t 0x84t 0xfet 0xfft
    .end array-data

    .line 183
    :array_1
    .array-data 0x4
        0x0t 0x84t 0xfet 0xfft
        0x0t 0xa2t 0xfet 0xfft
        0x2at 0xc2t 0xfet 0xfft
    .end array-data
.end method

.method private a(Landroid/content/Context;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, -0x1

    const/high16 v7, 0x4140

    const/high16 v6, 0x40a0

    const/high16 v3, 0x3f80

    const/4 v5, 0x1

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 59
    const/4 v1, 0x2

    const/high16 v2, 0x4150

    invoke-virtual {p0, v1, v2}, Lcom/chartboost/sdk/impl/f;->setTextSize(IF)V

    .line 60
    mul-float v1, v3, v0

    mul-float v2, v3, v0

    mul-float/2addr v3, v0

    const v4, -0xffb48d

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/chartboost/sdk/impl/f;->setShadowLayer(FFFI)V

    .line 61
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v5}, Lcom/chartboost/sdk/impl/f;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 62
    invoke-virtual {p0, v8}, Lcom/chartboost/sdk/impl/f;->setTextColor(I)V

    .line 63
    invoke-virtual {p0, v5}, Lcom/chartboost/sdk/impl/f;->setClickable(Z)V

    .line 64
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/impl/f;->setGravity(I)V

    .line 65
    mul-float v1, v7, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    mul-float v2, v6, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    mul-float v3, v7, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/chartboost/sdk/impl/f;->setPadding(IIII)V

    .line 67
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/f;->a:Landroid/graphics/Path;

    .line 68
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/f;->b:Landroid/graphics/Path;

    .line 69
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/f;->c:Landroid/graphics/Path;

    .line 70
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/f;->d:Landroid/graphics/RectF;

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/f;->e:Landroid/graphics/Paint;

    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 74
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->e:Landroid/graphics/Paint;

    const v1, -0x449c00

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 77
    iput v8, p0, Lcom/chartboost/sdk/impl/f;->i:I

    .line 78
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/f;->f:Landroid/graphics/Paint;

    .line 79
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->f:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->f:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 82
    new-instance v0, Lcom/chartboost/sdk/impl/f$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/f$1;-><init>(Lcom/chartboost/sdk/impl/f;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/f;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 169
    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/RectF;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->d:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/f;)V
    .locals 0
    .parameter

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/chartboost/sdk/impl/f;->a()V

    return-void
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->f:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Shader;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->h:Landroid/graphics/Shader;

    return-object v0
.end method

.method static synthetic f(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Shader;
    .locals 1
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->g:Landroid/graphics/Shader;

    return-object v0
.end method

.method static synthetic g(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Path;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->b:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic h(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Path;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->c:Landroid/graphics/Path;

    return-object v0
.end method

.method static synthetic i(Lcom/chartboost/sdk/impl/f;)Landroid/graphics/Paint;
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/f;->e:Landroid/graphics/Paint;

    return-object v0
.end method
