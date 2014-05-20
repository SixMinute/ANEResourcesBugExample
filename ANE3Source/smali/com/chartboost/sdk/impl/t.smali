.class public Lcom/chartboost/sdk/impl/t;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/u$a;


# static fields
.field private static synthetic d:[I


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Lcom/chartboost/sdk/impl/v;

.field private c:Lcom/chartboost/sdk/impl/w;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 24
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/t;->a(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x11

    .line 33
    invoke-virtual {p0, v3}, Lcom/chartboost/sdk/impl/t;->setGravity(I)V

    .line 35
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/t;->a:Landroid/widget/TextView;

    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->a:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->a:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x4180

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->a:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->a:Landroid/widget/TextView;

    const-string v1, "Loading..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setGravity(I)V

    .line 42
    new-instance v0, Lcom/chartboost/sdk/impl/v;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/t;->a:Landroid/widget/TextView;

    invoke-direct {v0, p1, v1}, Lcom/chartboost/sdk/impl/v;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/t;->b:Lcom/chartboost/sdk/impl/v;

    .line 44
    new-instance v0, Lcom/chartboost/sdk/impl/w;

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/w;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/t;->c:Lcom/chartboost/sdk/impl/w;

    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->b:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/t;->addView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->c:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/t;->addView(Landroid/view/View;)V

    .line 47
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->a()V

    .line 48
    return-void
.end method

.method static synthetic b()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/chartboost/sdk/impl/t;->d:[I

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
    sput-object v0, Lcom/chartboost/sdk/impl/t;->d:[I

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
.method public a()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x2

    const/high16 v6, 0x4200

    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 52
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->b:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/t;->removeView(Landroid/view/View;)V

    .line 53
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->c:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/t;->removeView(Landroid/view/View;)V

    .line 55
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/t;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 56
    const/high16 v1, 0x41a0

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 57
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost;->getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v2

    .line 59
    invoke-static {}, Lcom/chartboost/sdk/impl/t;->b()[I

    move-result-object v3

    invoke-virtual {v2}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ordinal()I

    move-result v2

    aget v2, v3, v2

    packed-switch v2, :pswitch_data_0

    .line 95
    invoke-virtual {p0, v8}, Lcom/chartboost/sdk/impl/t;->setOrientation(I)V

    .line 96
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 98
    invoke-virtual {v2, v1, v1, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 99
    iget-object v3, p0, Lcom/chartboost/sdk/impl/t;->b:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {p0, v3, v2}, Lcom/chartboost/sdk/impl/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 101
    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 100
    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 102
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 103
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->c:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    :goto_0
    return-void

    .line 61
    :pswitch_0
    invoke-virtual {p0, v5}, Lcom/chartboost/sdk/impl/t;->setOrientation(I)V

    .line 62
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 62
    invoke-direct {v2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 64
    invoke-virtual {v2, v1, v1, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 65
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->c:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 68
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 69
    iget-object v1, p0, Lcom/chartboost/sdk/impl/t;->b:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 72
    :pswitch_1
    invoke-virtual {p0, v8}, Lcom/chartboost/sdk/impl/t;->setOrientation(I)V

    .line 73
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 74
    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 73
    invoke-direct {v2, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 75
    invoke-virtual {v2, v1, v1, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 76
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->c:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v4, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 79
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 80
    iget-object v1, p0, Lcom/chartboost/sdk/impl/t;->b:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {p0, v1, v0}, Lcom/chartboost/sdk/impl/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 83
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/chartboost/sdk/impl/t;->setOrientation(I)V

    .line 84
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v7, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 86
    invoke-virtual {v2, v1, v1, v5, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 87
    iget-object v3, p0, Lcom/chartboost/sdk/impl/t;->b:Lcom/chartboost/sdk/impl/v;

    invoke-virtual {p0, v3, v2}, Lcom/chartboost/sdk/impl/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 89
    mul-float/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 88
    invoke-direct {v2, v0, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    invoke-virtual {v2, v1, v1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 91
    iget-object v0, p0, Lcom/chartboost/sdk/impl/t;->c:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/t;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
