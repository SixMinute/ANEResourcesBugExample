.class public Lcom/chartboost/sdk/impl/d;
.super Lcom/chartboost/sdk/impl/c;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/h$b;


# static fields
.field private static b:I

.field private static c:I


# instance fields
.field private d:Lcom/chartboost/sdk/impl/g;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/16 v0, 0x64

    sput v0, Lcom/chartboost/sdk/impl/d;->b:I

    .line 18
    const/4 v0, 0x5

    sput v0, Lcom/chartboost/sdk/impl/d;->c:I

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, -0x1

    .line 23
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/c;-><init>(Landroid/content/Context;)V

    .line 25
    new-instance v0, Lcom/chartboost/sdk/impl/g;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/impl/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/impl/g;

    .line 26
    iget-object v0, p0, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/impl/g;

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 27
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/d;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 28
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 51
    sget v0, Lcom/chartboost/sdk/impl/d;->b:I

    sget v1, Lcom/chartboost/sdk/impl/d;->c:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/d;->getContext()Landroid/content/Context;

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
    .line 33
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getOrientation()Lcom/chartboost/sdk/Libraries/CBOrientation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/CBOrientation;->isPortrait()Z

    move-result v0

    .line 35
    const-string v1, "assets"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 38
    if-eqz v0, :cond_1

    const-string v0, "portrait"

    :goto_0
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 39
    if-eqz v2, :cond_0

    .line 41
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v0, "index"

    invoke-virtual {v5, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43
    invoke-static {}, Lcom/chartboost/sdk/impl/o;->a()Lcom/chartboost/sdk/impl/o;

    move-result-object v0

    const-string v1, "url"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "checksum"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/chartboost/sdk/impl/d;->d:Lcom/chartboost/sdk/impl/g;

    invoke-virtual/range {v0 .. v5}, Lcom/chartboost/sdk/impl/o;->a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;Landroid/widget/ImageView;Landroid/os/Bundle;)V

    .line 46
    :cond_0
    return-void

    .line 38
    :cond_1
    const-string v0, "landscape"

    goto :goto_0
.end method
