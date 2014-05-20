.class public Lcom/chartboost/sdk/impl/h$a;
.super Lcom/chartboost/sdk/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/h$a$a;
    }
.end annotation


# static fields
.field private static synthetic k:[I


# instance fields
.field final synthetic c:Lcom/chartboost/sdk/impl/h;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/FrameLayout;

.field private g:Lcom/chartboost/sdk/impl/s;

.field private h:Lcom/chartboost/sdk/impl/v;

.field private i:Lcom/chartboost/sdk/impl/v;

.field private j:Lcom/chartboost/sdk/impl/h$a$a;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/h;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const v3, -0x1c1c1d

    const/4 v2, 0x0

    .line 67
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h$a;->c:Lcom/chartboost/sdk/impl/h;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/c$b;-><init>(Lcom/chartboost/sdk/c;Landroid/content/Context;)V

    .line 70
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/h$a;->setBackgroundColor(I)V

    .line 72
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->f:Landroid/widget/FrameLayout;

    .line 73
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->e:Landroid/widget/ImageView;

    .line 74
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->d:Landroid/widget/ImageView;

    .line 76
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v0

    .line 77
    new-instance v1, Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isOdd()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-direct {v1, p2, v0}, Lcom/chartboost/sdk/impl/s;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/h$a;->g:Lcom/chartboost/sdk/impl/s;

    .line 78
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->g:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->b()Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 80
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 81
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 82
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 84
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 86
    new-instance v0, Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/h$a;->d:Landroid/widget/ImageView;

    invoke-direct {v0, p2, v1}, Lcom/chartboost/sdk/impl/v;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->h:Lcom/chartboost/sdk/impl/v;

    .line 87
    new-instance v0, Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/h$a;->f:Landroid/widget/FrameLayout;

    invoke-direct {v0, p2, v1}, Lcom/chartboost/sdk/impl/v;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->i:Lcom/chartboost/sdk/impl/v;

    .line 89
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->i:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/h$a;->addView(Landroid/view/View;)V

    .line 90
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->f:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/h$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/h$a;->addView(Landroid/view/View;)V

    .line 93
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->e:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/h$a;->a(Landroid/view/View;)V

    .line 94
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->f:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/h$a;->a(Landroid/view/View;)V

    .line 95
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->d:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/h$a;->a(Landroid/view/View;)V

    .line 96
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->i:Lcom/chartboost/sdk/impl/v;

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/h$a;->a(Landroid/view/View;)V

    .line 97
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/impl/h$a;->a(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->d:Landroid/widget/ImageView;

    new-instance v1, Lcom/chartboost/sdk/impl/h$a$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/h$a$1;-><init>(Lcom/chartboost/sdk/impl/h$a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    new-instance v0, Lcom/chartboost/sdk/impl/h$a$a;

    invoke-direct {v0, p0, p2}, Lcom/chartboost/sdk/impl/h$a$a;-><init>(Lcom/chartboost/sdk/impl/h$a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->j:Lcom/chartboost/sdk/impl/h$a$a;

    .line 107
    return-void

    :cond_0
    move v0, v4

    .line 77
    goto :goto_0
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/h;Landroid/content/Context;Lcom/chartboost/sdk/impl/h$a;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/impl/h$a;-><init>(Lcom/chartboost/sdk/impl/h;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/h$a;)Lcom/chartboost/sdk/impl/s;
    .locals 1
    .parameter

    .prologue
    .line 62
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->g:Lcom/chartboost/sdk/impl/s;

    return-object v0
.end method

.method private a(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 112
    const/16 v0, 0xc8

    .line 113
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 114
    add-int/lit8 v0, v0, 0x1

    .line 115
    :cond_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/h$a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    move-object v0, v2

    .line 116
    :goto_0
    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p1, v1}, Landroid/view/View;->setId(I)V

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSaveEnabled(Z)V

    .line 121
    return-void

    .line 117
    :cond_1
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/h$a;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v2, v1

    move v1, v0

    move-object v0, v2

    goto :goto_0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/h$a;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/chartboost/sdk/impl/h$a;->a:Z

    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/h$a;)Lcom/chartboost/sdk/impl/h;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->c:Lcom/chartboost/sdk/impl/h;

    return-object v0
.end method

.method static synthetic c()[I
    .locals 3

    .prologue
    .line 56
    sget-object v0, Lcom/chartboost/sdk/impl/h$a;->k:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->values()[Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_0:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_180:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_270:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_90:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcom/chartboost/sdk/impl/h$a;->k:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method protected a(II)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/16 v10, 0xb

    const/4 v9, 0x0

    const/16 v8, 0xa

    const/4 v7, -0x1

    const/4 v4, -0x2

    .line 126
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->g:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->a()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->g:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/s;->a()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/h$a;->removeView(Landroid/view/View;)V

    .line 129
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 130
    const/16 v1, 0x11

    .line 129
    invoke-direct {v0, v4, v4, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 131
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 133
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 135
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 138
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v4

    invoke-virtual {v4}, Lcom/chartboost/sdk/Chartboost;->getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v4

    .line 140
    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isOdd()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/chartboost/sdk/impl/h;->f()I

    move-result v5

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v5

    :goto_0
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 141
    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isOdd()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v7

    :goto_1
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 142
    invoke-static {}, Lcom/chartboost/sdk/impl/h$a;->c()[I

    move-result-object v5

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 157
    :goto_2
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/chartboost/sdk/impl/h$a;->c:Lcom/chartboost/sdk/impl/h;

    invoke-static {v6}, Lcom/chartboost/sdk/impl/h;->b(Lcom/chartboost/sdk/impl/h;)Lcom/chartboost/sdk/Libraries/a$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/chartboost/sdk/Libraries/a$a;->b()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 158
    sget-object v6, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeX(Landroid/graphics/Shader$TileMode;)V

    .line 159
    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/BitmapDrawable;->setTileModeY(Landroid/graphics/Shader$TileMode;)V

    .line 160
    iget-object v6, p0, Lcom/chartboost/sdk/impl/h$a;->f:Landroid/widget/FrameLayout;

    invoke-virtual {v6, v5}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 162
    iget-object v5, p0, Lcom/chartboost/sdk/impl/h$a;->c:Lcom/chartboost/sdk/impl/h;

    invoke-static {v5}, Lcom/chartboost/sdk/impl/h;->c(Lcom/chartboost/sdk/impl/h;)Lcom/chartboost/sdk/Libraries/a$a;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 163
    iget-object v5, p0, Lcom/chartboost/sdk/impl/h$a;->e:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/chartboost/sdk/impl/h$a;->c:Lcom/chartboost/sdk/impl/h;

    invoke-static {v6}, Lcom/chartboost/sdk/impl/h;->c(Lcom/chartboost/sdk/impl/h;)Lcom/chartboost/sdk/Libraries/a$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/chartboost/sdk/Libraries/a$a;->b()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 164
    iget-object v5, p0, Lcom/chartboost/sdk/impl/h$a;->c:Lcom/chartboost/sdk/impl/h;

    invoke-static {v5}, Lcom/chartboost/sdk/impl/h;->c(Lcom/chartboost/sdk/impl/h;)Lcom/chartboost/sdk/Libraries/a$a;

    move-result-object v5

    invoke-virtual {v5}, Lcom/chartboost/sdk/Libraries/a$a;->c()I

    move-result v5

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 165
    invoke-static {}, Lcom/chartboost/sdk/impl/h;->f()I

    move-result v5

    iget-object v6, p0, Lcom/chartboost/sdk/impl/h$a;->c:Lcom/chartboost/sdk/impl/h;

    invoke-static {v6}, Lcom/chartboost/sdk/impl/h;->c(Lcom/chartboost/sdk/impl/h;)Lcom/chartboost/sdk/Libraries/a$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/chartboost/sdk/Libraries/a$a;->d()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v5

    iput v5, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 168
    :cond_1
    iget-object v5, p0, Lcom/chartboost/sdk/impl/h$a;->d:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/chartboost/sdk/impl/h$a;->c:Lcom/chartboost/sdk/impl/h;

    invoke-static {v6}, Lcom/chartboost/sdk/impl/h;->d(Lcom/chartboost/sdk/impl/h;)Lcom/chartboost/sdk/Libraries/a$a;

    move-result-object v6

    invoke-virtual {v6}, Lcom/chartboost/sdk/Libraries/a$a;->b()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 170
    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isOdd()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/chartboost/sdk/impl/h;->g()I

    move-result v5

    :goto_3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 171
    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isOdd()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {}, Lcom/chartboost/sdk/impl/h;->h()I

    move-result v5

    :goto_4
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 172
    invoke-static {}, Lcom/chartboost/sdk/impl/h$a;->c()[I

    move-result-object v5

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_1

    .line 190
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 191
    invoke-static {}, Lcom/chartboost/sdk/impl/h;->f()I

    move-result v5

    invoke-static {}, Lcom/chartboost/sdk/impl/h;->g()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 192
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    :goto_5
    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 197
    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 198
    invoke-static {}, Lcom/chartboost/sdk/impl/h$a;->c()[I

    move-result-object v5

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_2

    .line 210
    const/4 v5, 0x3

    iget-object v6, p0, Lcom/chartboost/sdk/impl/h$a;->i:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v6}, Lcom/chartboost/sdk/impl/v;->getId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 213
    :goto_6
    iget-object v5, p0, Lcom/chartboost/sdk/impl/h$a;->g:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v4}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isOdd()Z

    move-result v6

    if-eqz v6, :cond_6

    move v6, v9

    :goto_7
    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/impl/s;->a(I)V

    .line 214
    iget-object v5, p0, Lcom/chartboost/sdk/impl/h$a;->g:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v5}, Lcom/chartboost/sdk/impl/s;->a()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/chartboost/sdk/impl/h$a;->a(Landroid/view/View;)V

    .line 215
    iget-object v5, p0, Lcom/chartboost/sdk/impl/h$a;->g:Lcom/chartboost/sdk/impl/s;

    iget-object v6, p0, Lcom/chartboost/sdk/impl/h$a;->j:Lcom/chartboost/sdk/impl/h$a$a;

    invoke-virtual {v5, v6}, Lcom/chartboost/sdk/impl/s;->a(Landroid/widget/BaseAdapter;)V

    .line 216
    iget-object v5, p0, Lcom/chartboost/sdk/impl/h$a;->g:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v5}, Lcom/chartboost/sdk/impl/s;->a()Landroid/view/ViewGroup;

    move-result-object v5

    invoke-virtual {p0, v5, v3}, Lcom/chartboost/sdk/impl/h$a;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    sget-object v3, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_180:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    if-ne v4, v3, :cond_7

    .line 218
    iget-object v3, p0, Lcom/chartboost/sdk/impl/h$a;->g:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/s;->b()Landroid/widget/LinearLayout;

    move-result-object v3

    const/16 v5, 0x50

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 225
    :goto_8
    iget-object v3, p0, Lcom/chartboost/sdk/impl/h$a;->i:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/impl/v;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 226
    iget-object v1, p0, Lcom/chartboost/sdk/impl/h$a;->e:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 227
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->e:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 228
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->h:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/v;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 229
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->d:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 233
    new-instance v0, Lcom/chartboost/sdk/impl/h$a$2;

    invoke-direct {v0, p0, v4}, Lcom/chartboost/sdk/impl/h$a$2;-><init>(Lcom/chartboost/sdk/impl/h$a;Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/h$a;->post(Ljava/lang/Runnable;)Z

    .line 251
    return-void

    :cond_2
    move v5, v7

    .line 140
    goto/16 :goto_0

    .line 141
    :cond_3
    invoke-static {}, Lcom/chartboost/sdk/impl/h;->f()I

    move-result v5

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v5

    goto/16 :goto_1

    .line 144
    :pswitch_0
    invoke-virtual {v1, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_2

    .line 147
    :pswitch_1
    const/16 v5, 0xc

    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_2

    .line 170
    :cond_4
    invoke-static {}, Lcom/chartboost/sdk/impl/h;->h()I

    move-result v5

    goto/16 :goto_3

    .line 171
    :cond_5
    invoke-static {}, Lcom/chartboost/sdk/impl/h;->g()I

    move-result v5

    goto/16 :goto_4

    .line 174
    :pswitch_2
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 175
    invoke-static {}, Lcom/chartboost/sdk/impl/h;->f()I

    move-result v5

    invoke-static {}, Lcom/chartboost/sdk/impl/h;->g()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 176
    invoke-virtual {v2, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 177
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    .line 180
    :pswitch_3
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 181
    invoke-static {}, Lcom/chartboost/sdk/impl/h;->f()I

    move-result v5

    invoke-static {}, Lcom/chartboost/sdk/impl/h;->g()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 182
    const/16 v5, 0xc

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto/16 :goto_5

    .line 185
    :pswitch_4
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 186
    invoke-static {}, Lcom/chartboost/sdk/impl/h;->f()I

    move-result v5

    invoke-static {}, Lcom/chartboost/sdk/impl/h;->g()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v5

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto/16 :goto_5

    .line 200
    :pswitch_5
    iget-object v5, p0, Lcom/chartboost/sdk/impl/h$a;->i:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v5}, Lcom/chartboost/sdk/impl/v;->getId()I

    move-result v5

    invoke-virtual {v3, v9, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_6

    .line 203
    :pswitch_6
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/chartboost/sdk/impl/h$a;->i:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v6}, Lcom/chartboost/sdk/impl/v;->getId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_6

    .line 206
    :pswitch_7
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/chartboost/sdk/impl/h$a;->i:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {v6}, Lcom/chartboost/sdk/impl/v;->getId()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto/16 :goto_6

    .line 213
    :cond_6
    const/4 v6, 0x1

    goto/16 :goto_7

    .line 219
    :cond_7
    sget-object v3, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_90:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    if-ne v4, v3, :cond_8

    .line 220
    iget-object v3, p0, Lcom/chartboost/sdk/impl/h$a;->g:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/s;->b()Landroid/widget/LinearLayout;

    move-result-object v3

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_8

    .line 222
    :cond_8
    iget-object v3, p0, Lcom/chartboost/sdk/impl/h$a;->g:Lcom/chartboost/sdk/impl/s;

    invoke-virtual {v3}, Lcom/chartboost/sdk/impl/s;->b()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto/16 :goto_8

    .line 142
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 172
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 198
    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-super {p0}, Lcom/chartboost/sdk/c$b;->b()V

    .line 257
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->d:Landroid/widget/ImageView;

    .line 258
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->e:Landroid/widget/ImageView;

    .line 259
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h$a;->g:Lcom/chartboost/sdk/impl/s;

    .line 260
    return-void
.end method
