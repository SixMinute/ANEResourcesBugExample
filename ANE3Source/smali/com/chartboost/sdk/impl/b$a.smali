.class public Lcom/chartboost/sdk/impl/b$a;
.super Lcom/chartboost/sdk/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field public c:Landroid/widget/ImageView;

.field public d:Landroid/widget/ImageView;

.field public e:Landroid/widget/Button;

.field public f:Lcom/chartboost/sdk/impl/v;

.field final synthetic g:Lcom/chartboost/sdk/impl/b;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/b;Landroid/content/Context;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 50
    iput-object p1, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/c$b;-><init>(Lcom/chartboost/sdk/c;Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/b$a;->setBackgroundColor(I)V

    .line 53
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/b$a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v0, Lcom/chartboost/sdk/impl/v;

    invoke-direct {v0, p2}, Lcom/chartboost/sdk/impl/v;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->f:Lcom/chartboost/sdk/impl/v;

    .line 56
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    .line 57
    new-instance v0, Landroid/widget/Button;

    invoke-direct {v0, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->e:Landroid/widget/Button;

    .line 58
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->c:Landroid/widget/ImageView;

    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->e:Landroid/widget/Button;

    new-instance v1, Lcom/chartboost/sdk/impl/b$a$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/b$a$1;-><init>(Lcom/chartboost/sdk/impl/b$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 69
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/chartboost/sdk/impl/b$a$2;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/b$a$2;-><init>(Lcom/chartboost/sdk/impl/b$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->f:Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/v;->a(Landroid/view/View;)V

    .line 78
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->f:Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/v;->a(Landroid/view/View;)V

    .line 79
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->f:Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->e:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/v;->a(Landroid/view/View;)V

    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->f:Lcom/chartboost/sdk/impl/v;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/b$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/b;Landroid/content/Context;Lcom/chartboost/sdk/impl/b$a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/b$a;-><init>(Lcom/chartboost/sdk/impl/b;Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;)Landroid/graphics/Point;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 154
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/b;->a(Lcom/chartboost/sdk/impl/b;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 155
    if-eqz v0, :cond_0

    .line 157
    const-string v1, "offset"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    .line 160
    new-instance v1, Landroid/graphics/Point;

    const-string v2, "x"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "y"

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v2, v0}, Landroid/graphics/Point;-><init>(II)V

    move-object v0, v1

    .line 163
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v4, v4}, Landroid/graphics/Point;-><init>(II)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/b$a;)Lcom/chartboost/sdk/impl/b;
    .locals 1
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    return-object v0
.end method


# virtual methods
.method protected a(II)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x4000

    const/4 v6, -0x2

    .line 87
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getOrientation()Lcom/chartboost/sdk/Libraries/CBOrientation;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/CBOrientation;->isPortrait()Z

    move-result v0

    .line 92
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/b;->h:Lcom/chartboost/sdk/Libraries/a$a;

    .line 93
    :goto_0
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/b;->j:Lcom/chartboost/sdk/Libraries/a$a;

    .line 95
    :goto_1
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 97
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 99
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v5, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 105
    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/a$a;->c()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/a$a;->e()F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 106
    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/a$a;->d()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/a$a;->e()F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 107
    if-eqz v0, :cond_2

    const-string v6, "frame-portrait"

    :goto_2
    invoke-direct {p0, v6}, Lcom/chartboost/sdk/impl/b$a;->a(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v6

    .line 108
    iget v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v7, p1, v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    iget v8, v6, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    add-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 109
    iget v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v7, p2, v7

    int-to-float v7, v7

    div-float/2addr v7, v9

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 112
    iget-object v6, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    const/16 v7, 0x64

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setId(I)V

    .line 113
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/a$a;->c()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/a$a;->e()F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 114
    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/a$a;->d()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/a$a;->e()F

    move-result v7

    div-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 115
    if-eqz v0, :cond_3

    const-string v0, "ad-portrait"

    :goto_3
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/b$a;->a(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    .line 116
    iget v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v6, p1, v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    iget v7, v0, Landroid/graphics/Point;->x:I

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 117
    iget v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v6, p2, v6

    int-to-float v6, v6

    div-float/2addr v6, v9

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 120
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/a$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/a$a;->c()I

    move-result v0

    int-to-float v0, v0

    iget-object v6, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v6, v6, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/a$a;

    invoke-virtual {v6}, Lcom/chartboost/sdk/Libraries/a$a;->e()F

    move-result v6

    div-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 121
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/a$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/a$a;->d()I

    move-result v0

    int-to-float v0, v0

    iget-object v6, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v6, v6, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/a$a;

    invoke-virtual {v6}, Lcom/chartboost/sdk/Libraries/a$a;->e()F

    move-result v6

    div-float/2addr v0, v6

    float-to-int v0, v0

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 122
    const-string v0, "close"

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/b$a;->a(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v0

    .line 123
    iget-object v6, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/b$a;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/chartboost/sdk/impl/b;->a(Lcom/chartboost/sdk/impl/b;Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object v6

    .line 124
    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    add-int/2addr v7, v8

    iget v8, v0, Landroid/graphics/Point;->x:I

    iget v9, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    add-int/2addr v7, v8

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 125
    iget v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    iget v8, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int/2addr v7, v8

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v6, v6, Landroid/graphics/Point;->y:I

    add-int/2addr v0, v6

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    add-int/2addr v0, v7

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 126
    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    sub-int v6, p1, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 127
    iget v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v6, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    sub-int v6, p2, v6

    invoke-static {v0, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v5, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 129
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 131
    iget-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->e:Landroid/widget/Button;

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/a$a;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 134
    iget-object v2, p0, Lcom/chartboost/sdk/impl/b$a;->c:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 135
    iget-object v2, p0, Lcom/chartboost/sdk/impl/b$a;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/a$a;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 137
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 138
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 139
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/b;->l:Lcom/chartboost/sdk/Libraries/a$a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/a$a;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 140
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->e:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 141
    return-void

    .line 92
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v1, v1, Lcom/chartboost/sdk/impl/b;->i:Lcom/chartboost/sdk/Libraries/a$a;

    goto/16 :goto_0

    .line 93
    :cond_1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/b$a;->g:Lcom/chartboost/sdk/impl/b;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/b;->k:Lcom/chartboost/sdk/Libraries/a$a;

    goto/16 :goto_1

    .line 107
    :cond_2
    const-string v6, "frame-landscape"

    goto/16 :goto_2

    .line 115
    :cond_3
    const-string v0, "ad-landscape"

    goto/16 :goto_3
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-super {p0}, Lcom/chartboost/sdk/c$b;->b()V

    .line 147
    iput-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->d:Landroid/widget/ImageView;

    .line 148
    iput-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->c:Landroid/widget/ImageView;

    .line 149
    iput-object v0, p0, Lcom/chartboost/sdk/impl/b$a;->e:Landroid/widget/Button;

    .line 150
    return-void
.end method
