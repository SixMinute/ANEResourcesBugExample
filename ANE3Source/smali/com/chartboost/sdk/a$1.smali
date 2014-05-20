.class Lcom/chartboost/sdk/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/a;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/a;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/a$1;)Lcom/chartboost/sdk/a;
    .locals 1
    .parameter

    .prologue
    .line 455
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    return-object v0
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/impl/k;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 530
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 532
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/a;)V
    .locals 4
    .parameter

    .prologue
    .line 458
    const/4 v0, 0x0

    .line 460
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    sget-object v2, Lcom/chartboost/sdk/impl/a$b;->e:Lcom/chartboost/sdk/impl/a$b;

    if-ne v1, v2, :cond_2

    .line 461
    monitor-enter p0

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    iget-object v3, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)Lcom/chartboost/sdk/a$a;

    move-result-object v1

    .line 463
    if-eqz v1, :cond_0

    .line 464
    invoke-static {v1}, Lcom/chartboost/sdk/a$a;->a(Lcom/chartboost/sdk/a$a;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 465
    const/4 v0, 0x1

    .line 461
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    sget-object v2, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    if-ne v1, v2, :cond_6

    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 470
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/a;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 472
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheInterstitial(Ljava/lang/String;)V

    .line 478
    :cond_1
    :goto_0
    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->f:Lcom/chartboost/sdk/impl/a$b;

    iput-object v1, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    .line 481
    :cond_2
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    sget-object v2, Lcom/chartboost/sdk/impl/a$b;->b:Lcom/chartboost/sdk/impl/a$b;

    if-eq v1, v2, :cond_3

    if-eqz v0, :cond_5

    .line 482
    :cond_3
    if-nez v0, :cond_4

    .line 483
    sget-object v0, Lcom/chartboost/sdk/impl/a$b;->a:Lcom/chartboost/sdk/impl/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    .line 485
    :cond_4
    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    sget-object v1, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    if-ne v0, v1, :cond_7

    .line 486
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0, p1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/impl/a;)V

    .line 492
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    iget-object v2, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)V

    .line 493
    return-void

    .line 461
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 473
    :cond_6
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    sget-object v2, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    if-ne v1, v2, :cond_1

    .line 474
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1, p1}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/impl/a;)V

    .line 475
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 476
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCacheMoreApps()V

    goto :goto_0

    .line 487
    :cond_7
    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    sget-object v1, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    if-ne v0, v1, :cond_5

    .line 488
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0, p1}, Lcom/chartboost/sdk/a;->c(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/impl/a;)V

    goto :goto_1
.end method

.method public a(Lcom/chartboost/sdk/impl/a;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "creative"

    const-string v7, "cgn"

    .line 540
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0, v6}, Lcom/chartboost/sdk/a;->d(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/impl/a;)V

    .line 543
    if-eqz p2, :cond_4

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    move v0, v5

    .line 545
    :goto_0
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    sget-object v2, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    if-ne v1, v2, :cond_6

    .line 546
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 547
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissInterstitial(Ljava/lang/String;)V

    .line 549
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 550
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v1

    iget-object v2, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickInterstitial(Ljava/lang/String;)V

    .line 553
    :cond_1
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    sget-object v2, Lcom/chartboost/sdk/impl/a$b;->c:Lcom/chartboost/sdk/impl/a$b;

    if-ne v1, v2, :cond_2

    .line 554
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v1

    .line 555
    if-eqz v1, :cond_2

    .line 556
    if-eqz v0, :cond_5

    move v2, v4

    :goto_1
    invoke-virtual {v1, p1, v2}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/impl/a;Z)V

    .line 574
    :cond_2
    :goto_2
    new-instance v1, Lcom/chartboost/sdk/impl/k;

    const-string v2, "api/click"

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/impl/k;-><init>(Ljava/lang/String;)V

    .line 575
    iget-object v2, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v2}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v2

    iget-object v2, v2, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    if-nez v2, :cond_a

    .line 576
    iget-object v2, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v2}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost;->c()Landroid/app/Activity;

    move-result-object v2

    .line 577
    :goto_3
    if-nez v2, :cond_3

    .line 578
    iget-object v2, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v2}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 579
    :cond_3
    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/k;->a(Landroid/content/Context;)V

    .line 581
    iget-object v2, p1, Lcom/chartboost/sdk/impl/a;->a:Lorg/json/JSONObject;

    const-string v3, "to"

    invoke-direct {p0, v2, v3, v1}, Lcom/chartboost/sdk/a$1;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/impl/k;)V

    .line 582
    iget-object v2, p1, Lcom/chartboost/sdk/impl/a;->a:Lorg/json/JSONObject;

    const-string v3, "cgn"

    invoke-direct {p0, v2, v7, v1}, Lcom/chartboost/sdk/a$1;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/impl/k;)V

    .line 583
    iget-object v2, p1, Lcom/chartboost/sdk/impl/a;->a:Lorg/json/JSONObject;

    const-string v3, "creative"

    invoke-direct {p0, v2, v8, v1}, Lcom/chartboost/sdk/a$1;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/impl/k;)V

    .line 584
    iget-object v2, p1, Lcom/chartboost/sdk/impl/a;->a:Lorg/json/JSONObject;

    const-string v3, "ad_id"

    invoke-direct {p0, v2, v3, v1}, Lcom/chartboost/sdk/a$1;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/impl/k;)V

    .line 585
    const-string v2, "cgn"

    invoke-direct {p0, p3, v7, v1}, Lcom/chartboost/sdk/a$1;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/impl/k;)V

    .line 586
    const-string v2, "creative"

    invoke-direct {p0, p3, v8, v1}, Lcom/chartboost/sdk/a$1;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/impl/k;)V

    .line 587
    const-string v2, "type"

    invoke-direct {p0, p3, v2, v1}, Lcom/chartboost/sdk/a$1;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/impl/k;)V

    .line 588
    const-string v2, "more_type"

    invoke-direct {p0, p3, v2, v1}, Lcom/chartboost/sdk/a$1;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/impl/k;)V

    .line 590
    iget-object v2, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v2}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost;->getAppID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v3}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v3

    invoke-virtual {v3}, Lcom/chartboost/sdk/Chartboost;->getAppSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/impl/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    if-eqz v0, :cond_b

    .line 593
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    new-instance v2, Lcom/chartboost/sdk/b$a;

    invoke-direct {v2, v5, v6}, Lcom/chartboost/sdk/b$a;-><init>(ZLcom/chartboost/sdk/impl/a;)V

    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/b$a;)V

    .line 594
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->c(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/impl/j;

    move-result-object v0

    new-instance v2, Lcom/chartboost/sdk/a$1$1;

    invoke-direct {v2, p0, p2}, Lcom/chartboost/sdk/a$1$1;-><init>(Lcom/chartboost/sdk/a$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/j$b;)V

    .line 606
    :goto_4
    return-void

    :cond_4
    move v0, v4

    .line 543
    goto/16 :goto_0

    :cond_5
    move v2, v5

    .line 556
    goto/16 :goto_1

    .line 558
    :cond_6
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    sget-object v2, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    if-ne v1, v2, :cond_2

    .line 559
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 560
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissMoreApps()V

    .line 562
    :cond_7
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 563
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/chartboost/sdk/ChartboostDelegate;->didClickMoreApps()V

    .line 566
    :cond_8
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    sget-object v2, Lcom/chartboost/sdk/impl/a$b;->c:Lcom/chartboost/sdk/impl/a$b;

    if-ne v1, v2, :cond_2

    .line 567
    iget-object v1, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v1

    .line 568
    if-eqz v1, :cond_2

    .line 569
    if-eqz v0, :cond_9

    move v2, v4

    :goto_5
    invoke-virtual {v1, p1, v2}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/impl/a;Z)V

    goto/16 :goto_2

    :cond_9
    move v2, v5

    goto :goto_5

    .line 576
    :cond_a
    iget-object v2, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v2}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v2

    iget-object v2, v2, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost$b;->b()Landroid/content/Context;

    move-result-object v2

    goto/16 :goto_3

    .line 603
    :cond_b
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->d(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/impl/n$a;

    move-result-object v0

    invoke-interface {v0, v4, p2}, Lcom/chartboost/sdk/impl/n$a;->a(ZLjava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->c(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/impl/j;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/k;)V

    goto :goto_4
.end method

.method public b(Lcom/chartboost/sdk/impl/a;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 497
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/a;->d(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/impl/a;)V

    .line 499
    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    sget-object v1, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    if-ne v0, v1, :cond_3

    .line 500
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissInterstitial(Ljava/lang/String;)V

    .line 503
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 504
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseInterstitial(Ljava/lang/String;)V

    .line 507
    :cond_1
    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->c:Lcom/chartboost/sdk/impl/a$b;

    if-ne v0, v1, :cond_2

    .line 508
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_2

    .line 510
    invoke-virtual {v0, p1, v2}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/impl/a;Z)V

    .line 526
    :cond_2
    :goto_0
    return-void

    .line 512
    :cond_3
    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    sget-object v1, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    if-ne v0, v1, :cond_2

    .line 513
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 514
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/ChartboostDelegate;->didDismissMoreApps()V

    .line 516
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 517
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/ChartboostDelegate;->didCloseMoreApps()V

    .line 520
    :cond_5
    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->c:Lcom/chartboost/sdk/impl/a$b;

    if-ne v0, v1, :cond_2

    .line 521
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    invoke-static {v0}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v0

    .line 522
    if-eqz v0, :cond_2

    .line 523
    invoke-virtual {v0, p1, v2}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/impl/a;Z)V

    goto :goto_0
.end method

.method public c(Lcom/chartboost/sdk/impl/a;)V
    .locals 4
    .parameter

    .prologue
    .line 610
    iget-object v0, p0, Lcom/chartboost/sdk/a$1;->a:Lcom/chartboost/sdk/a;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    .line 611
    iget-object v2, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    sget-object v3, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    if-ne v2, v3, :cond_0

    .line 612
    iget-object v2, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    .line 610
    :goto_0
    invoke-static {v0, v1, v2}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)V

    .line 613
    return-void

    .line 612
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
