.class public Lcom/chartboost/sdk/impl/h$a$a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/h$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field final synthetic b:Lcom/chartboost/sdk/impl/h$a;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/h$a;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h$a$a;->b:Lcom/chartboost/sdk/impl/h$a;

    .line 267
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/chartboost/sdk/impl/h$a;->b(Lcom/chartboost/sdk/impl/h$a;)Lcom/chartboost/sdk/impl/h;

    move-result-object v1

    invoke-static {v1}, Lcom/chartboost/sdk/impl/h;->a(Lcom/chartboost/sdk/impl/h;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 268
    iput-object p2, p0, Lcom/chartboost/sdk/impl/h$a$a;->a:Landroid/content/Context;

    .line 269
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/h$a$a;)Lcom/chartboost/sdk/impl/h$a;
    .locals 1
    .parameter

    .prologue
    .line 262
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a$a;->b:Lcom/chartboost/sdk/impl/h$a;

    return-object v0
.end method


# virtual methods
.method public a(I)Lorg/json/JSONObject;
    .locals 1
    .parameter

    .prologue
    .line 336
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a$a;->b:Lcom/chartboost/sdk/impl/h$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/h$a;->b(Lcom/chartboost/sdk/impl/h$a;)Lcom/chartboost/sdk/impl/h;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/h;->a(Lcom/chartboost/sdk/impl/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/json/JSONObject;

    return-object p0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h$a$a;->b:Lcom/chartboost/sdk/impl/h$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/h$a;->b(Lcom/chartboost/sdk/impl/h$a;)Lcom/chartboost/sdk/impl/h;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/impl/h;->a(Lcom/chartboost/sdk/impl/h;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 329
    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/h$a$a;->a(I)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v7, -0x1

    .line 273
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v3

    .line 274
    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isReverse()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/h$a$a;->getCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int p1, v1, p1

    .line 277
    :cond_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/h$a$a;->a(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 278
    const-string v1, "type"

    const-string v2, ""

    invoke-virtual {v4, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 279
    const/4 v2, 0x0

    .line 282
    if-nez p2, :cond_5

    .line 283
    const-string v5, "featured"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 284
    new-instance v1, Lcom/chartboost/sdk/impl/d;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/h$a$a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/impl/d;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    .line 290
    :cond_1
    :goto_0
    new-instance v5, Lcom/chartboost/sdk/impl/v;

    iget-object v6, p0, Lcom/chartboost/sdk/impl/h$a$a;->a:Landroid/content/Context;

    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    invoke-direct {v5, v6, v1}, Lcom/chartboost/sdk/impl/v;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 296
    .end local p2
    :goto_1
    invoke-interface {v2, v4, p1}, Lcom/chartboost/sdk/impl/h$b;->a(Lorg/json/JSONObject;I)V

    .line 297
    move-object v0, v2

    check-cast v0, Lcom/chartboost/sdk/impl/c;

    move-object v1, v0

    .line 299
    invoke-virtual {v3}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isOdd()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 300
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .line 301
    invoke-interface {v2}, Lcom/chartboost/sdk/impl/h$b;->a()I

    move-result v6

    invoke-direct {v3, v6, v7}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 300
    invoke-virtual {v5, v3}, Lcom/chartboost/sdk/impl/v;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    :goto_2
    new-instance v3, Lcom/chartboost/sdk/impl/h$a$a$1;

    invoke-direct {v3, p0, v4}, Lcom/chartboost/sdk/impl/h$a$a$1;-><init>(Lcom/chartboost/sdk/impl/h$a$a;Lorg/json/JSONObject;)V

    .line 314
    iput-object v3, v1, Lcom/chartboost/sdk/impl/c;->a:Landroid/view/View$OnClickListener;

    .line 316
    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/impl/c;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    instance-of v1, v2, Lcom/chartboost/sdk/impl/e;

    if-eqz v1, :cond_2

    .line 319
    check-cast v2, Lcom/chartboost/sdk/impl/e;

    iget-object v1, v2, Lcom/chartboost/sdk/impl/e;->b:Lcom/chartboost/sdk/impl/f;

    invoke-virtual {v1, v3}, Lcom/chartboost/sdk/impl/f;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 322
    :cond_2
    return-object v5

    .line 285
    .restart local p2
    :cond_3
    const-string v5, "regular"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 286
    new-instance v1, Lcom/chartboost/sdk/impl/e;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/h$a$a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/impl/e;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    goto :goto_0

    .line 287
    :cond_4
    const-string v5, "webview"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 288
    new-instance v1, Lcom/chartboost/sdk/impl/i;

    iget-object v2, p0, Lcom/chartboost/sdk/impl/h$a$a;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/impl/i;-><init>(Landroid/content/Context;)V

    move-object v2, v1

    goto :goto_0

    .line 292
    :cond_5
    check-cast p2, Lcom/chartboost/sdk/impl/v;

    .line 293
    .end local p2
    invoke-virtual {p2}, Lcom/chartboost/sdk/impl/v;->a()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/impl/h$b;

    move-object v5, p2

    move-object v2, v1

    goto :goto_1

    .line 303
    :cond_6
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    .line 304
    invoke-interface {v2}, Lcom/chartboost/sdk/impl/h$b;->a()I

    move-result v6

    invoke-direct {v3, v7, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 303
    invoke-virtual {v5, v3}, Lcom/chartboost/sdk/impl/v;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method
