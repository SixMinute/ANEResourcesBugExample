.class public Lcom/chartboost/sdk/impl/e;
.super Lcom/chartboost/sdk/impl/c;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/h$b;


# static fields
.field private static c:I

.field private static d:I


# instance fields
.field public b:Lcom/chartboost/sdk/impl/f;

.field private e:Lcom/chartboost/sdk/impl/g;

.field private f:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/16 v0, 0x32

    sput v0, Lcom/chartboost/sdk/impl/e;->c:I

    .line 23
    const/16 v0, 0xa

    sput v0, Lcom/chartboost/sdk/impl/e;->d:I

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 30
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Lcom/chartboost/sdk/impl/g;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/e;->e:Lcom/chartboost/sdk/impl/g;

    .line 32
    new-instance v0, Lcom/chartboost/sdk/impl/f;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/impl/f;

    .line 33
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/e;->f:Landroid/widget/TextView;

    .line 35
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->f:Landroid/widget/TextView;

    const/4 v1, 0x2

    const/high16 v2, 0x4180

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->f:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 38
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->f:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->f:Landroid/widget/TextView;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->f:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 42
    const v0, -0x333334

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/e;->setBackgroundColor(I)V

    .line 43
    invoke-virtual {p0, v4}, Lcom/chartboost/sdk/impl/e;->setFocusable(Z)V

    .line 45
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->e:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/e;->addView(Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->f:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/e;->addView(Landroid/view/View;)V

    .line 47
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/impl/f;

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/e;->addView(Landroid/view/View;)V

    .line 48
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 105
    sget v0, Lcom/chartboost/sdk/impl/e;->c:I

    sget v1, Lcom/chartboost/sdk/impl/e;->d:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public a(Lorg/json/JSONObject;I)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->f:Landroid/widget/TextView;

    const-string v1, "name"

    const-string v2, "Unknown App"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    const-string v0, "deep-text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 55
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/impl/f;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/f;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :goto_0
    const-string v0, "assets"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_0

    .line 67
    const-string v1, "icon"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_0

    .line 70
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 71
    const-string v0, "index"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 72
    invoke-static {}, Lcom/chartboost/sdk/impl/o;->a()Lcom/chartboost/sdk/impl/o;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "checksum"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/chartboost/sdk/impl/e;->e:Lcom/chartboost/sdk/impl/g;

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/o;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;Landroid/widget/ImageView;Landroid/os/Bundle;)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e;->b()V

    .line 77
    return-void

    .line 61
    :cond_1
    const-string v0, "text"

    const-string v1, "VIEW"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/impl/f;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/f;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected b()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v3, -0x2

    .line 82
    sget v0, Lcom/chartboost/sdk/impl/e;->c:I

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v0

    .line 83
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 84
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 85
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 87
    sget v3, Lcom/chartboost/sdk/impl/e;->d:I

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/e;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/chartboost/sdk/Libraries/d;->a(ILandroid/content/Context;)I

    move-result v3

    .line 88
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 89
    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 90
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 92
    const/high16 v3, 0x3f80

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 93
    iget-object v3, p0, Lcom/chartboost/sdk/impl/e;->f:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 94
    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 96
    iget-object v3, p0, Lcom/chartboost/sdk/impl/e;->e:Lcom/chartboost/sdk/impl/g;

    invoke-virtual {v3, v1}, Lcom/chartboost/sdk/impl/g;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 97
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->e:Lcom/chartboost/sdk/impl/g;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/impl/g;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 98
    iget-object v1, p0, Lcom/chartboost/sdk/impl/e;->f:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/impl/f;

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/f;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    return-void
.end method
