.class Lcom/chartboost/sdk/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/a$a;,
        Lcom/chartboost/sdk/a$b;,
        Lcom/chartboost/sdk/a$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/chartboost/sdk/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/chartboost/sdk/a$a;

.field private c:Lcom/chartboost/sdk/Chartboost;

.field private d:Lcom/chartboost/sdk/impl/j;

.field private e:Lcom/chartboost/sdk/impl/n;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/impl/a;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/chartboost/sdk/impl/a;

.field private h:Lcom/chartboost/sdk/impl/a;

.field private i:Lcom/chartboost/sdk/impl/a$a;

.field private j:Lcom/chartboost/sdk/impl/n$a;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/Chartboost;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/a;->a:Ljava/util/ArrayList;

    .line 52
    iput-object v2, p0, Lcom/chartboost/sdk/a;->b:Lcom/chartboost/sdk/a$a;

    .line 455
    new-instance v0, Lcom/chartboost/sdk/a$1;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/a$1;-><init>(Lcom/chartboost/sdk/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/a;->i:Lcom/chartboost/sdk/impl/a$a;

    .line 618
    new-instance v0, Lcom/chartboost/sdk/a$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/a$2;-><init>(Lcom/chartboost/sdk/a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/a;->j:Lcom/chartboost/sdk/impl/n$a;

    .line 72
    iput-object p1, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    .line 73
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    iget-object v0, v0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/impl/j;

    iput-object v0, p0, Lcom/chartboost/sdk/a;->d:Lcom/chartboost/sdk/impl/j;

    .line 74
    new-instance v0, Lcom/chartboost/sdk/impl/n;

    iget-object v1, p0, Lcom/chartboost/sdk/a;->j:Lcom/chartboost/sdk/impl/n$a;

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/n;-><init>(Lcom/chartboost/sdk/impl/n$a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/a;->e:Lcom/chartboost/sdk/impl/n;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/a;->f:Ljava/util/Map;

    .line 76
    iput-object v2, p0, Lcom/chartboost/sdk/a;->g:Lcom/chartboost/sdk/impl/a;

    .line 77
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/a;)Ljava/util/Map;
    .locals 1
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/chartboost/sdk/a;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 200
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/a;->c(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/impl/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/chartboost/sdk/a;->g:Lcom/chartboost/sdk/impl/a;

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/a;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 315
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/a;Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/a$c;ZLjava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 222
    invoke-direct/range {p0 .. p5}, Lcom/chartboost/sdk/a;->a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/a$c;ZLjava/lang/String;Z)V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/a;Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 257
    invoke-direct {p0, p1, p2}, Lcom/chartboost/sdk/a;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 317
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v0

    .line 318
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/sdk/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 319
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadInterstitial(Ljava/lang/String;)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 325
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldRequestInterstitial(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 330
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 331
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadInterstitial(Ljava/lang/String;)V

    goto :goto_0

    .line 337
    :cond_3
    monitor-enter p0

    .line 339
    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    .line 338
    invoke-virtual {p0, v0, p1}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)Lcom/chartboost/sdk/a$a;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_6

    .line 341
    if-nez p2, :cond_4

    invoke-static {v0}, Lcom/chartboost/sdk/a$a;->a(Lcom/chartboost/sdk/a$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 342
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/a$a;->a(Lcom/chartboost/sdk/a$a;Z)V

    .line 343
    monitor-exit p0

    goto :goto_0

    .line 337
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 345
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 346
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadInterstitial(Ljava/lang/String;)V

    .line 347
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 351
    :cond_6
    sget-object v0, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    .line 350
    invoke-virtual {p0, v0, p1, p2}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;Z)V

    .line 337
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 354
    new-instance v0, Lcom/chartboost/sdk/impl/k;

    const-string v1, "api/get"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/k;-><init>(Ljava/lang/String;)V

    .line 355
    iget-object v1, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    iget-object v1, v1, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost$b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/k;->a(Landroid/content/Context;)V

    .line 356
    const-string v1, "location"

    invoke-virtual {v0, v1, p1}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 357
    if-eqz p2, :cond_7

    .line 358
    const-string v1, "cache"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 359
    :cond_7
    iget-object v1, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getAppID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost;->getAppSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v1, p0, Lcom/chartboost/sdk/a;->d:Lcom/chartboost/sdk/impl/j;

    new-instance v2, Lcom/chartboost/sdk/a$3;

    invoke-direct {v2, p0, p2, p1}, Lcom/chartboost/sdk/a$3;-><init>(Lcom/chartboost/sdk/a;ZLjava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/j$b;)V

    goto/16 :goto_0
.end method

.method private a(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/a$c;ZLjava/lang/String;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 224
    const-string v0, "status"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "200"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 225
    invoke-direct {p0, p2, p4}, Lcom/chartboost/sdk/a;->c(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 229
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    if-ne p2, v0, :cond_2

    if-nez p3, :cond_2

    .line 230
    const/4 v0, 0x0

    .line 231
    iget-object v1, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 232
    const/4 v0, 0x1

    .line 233
    :cond_1
    if-eqz p5, :cond_2

    if-nez v0, :cond_2

    .line 234
    invoke-virtual {p0, p2, p4}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)V

    goto :goto_0

    .line 240
    :cond_2
    if-eqz p3, :cond_3

    .line 241
    sget-object v0, Lcom/chartboost/sdk/impl/a$b;->e:Lcom/chartboost/sdk/impl/a$b;

    move-object v4, v0

    .line 246
    :goto_1
    new-instance v0, Lcom/chartboost/sdk/impl/a;

    iget-object v3, p0, Lcom/chartboost/sdk/a;->i:Lcom/chartboost/sdk/impl/a$a;

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/a;-><init>(Lorg/json/JSONObject;Lcom/chartboost/sdk/impl/a$c;Lcom/chartboost/sdk/impl/a$a;Lcom/chartboost/sdk/impl/a$b;Ljava/lang/String;Z)V

    goto :goto_0

    .line 243
    :cond_3
    sget-object v0, Lcom/chartboost/sdk/impl/a$b;->b:Lcom/chartboost/sdk/impl/a$b;

    move-object v4, v0

    goto :goto_1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 259
    iget-object v0, p0, Lcom/chartboost/sdk/a;->e:Lcom/chartboost/sdk/impl/n;

    iget-object v1, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getHostActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/chartboost/sdk/impl/n;->a(Ljava/lang/String;Landroid/app/Activity;)V

    .line 260
    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/Chartboost;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/impl/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 262
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/impl/a;)V

    return-void
.end method

.method private b(Lcom/chartboost/sdk/impl/a;)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "ad_id"

    .line 263
    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/a;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldDisplayInterstitial(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)V

    .line 284
    :goto_0
    return-void

    .line 269
    :cond_0
    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->f:Lcom/chartboost/sdk/impl/a$b;

    if-ne v0, v1, :cond_2

    .line 270
    iget-object v0, p0, Lcom/chartboost/sdk/a;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    .line 271
    iget-object v0, p0, Lcom/chartboost/sdk/a;->f:Ljava/util/Map;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v0, Lcom/chartboost/sdk/impl/k;

    const-string v1, "api/show"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/k;-><init>(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    iget-object v1, v1, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost$b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/k;->a(Landroid/content/Context;)V

    .line 275
    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->a:Lorg/json/JSONObject;

    const-string v2, "ad_id"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 276
    if-eqz v1, :cond_1

    .line 277
    const-string v2, "ad_id"

    invoke-virtual {v0, v3, v1}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 278
    :cond_1
    iget-object v1, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getAppID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost;->getAppSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v1, p0, Lcom/chartboost/sdk/a;->d:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/k;)V

    .line 282
    :cond_2
    sget-object v0, Lcom/chartboost/sdk/impl/a$b;->b:Lcom/chartboost/sdk/impl/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    .line 283
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    new-instance v1, Lcom/chartboost/sdk/b$a;

    invoke-direct {v1, p1}, Lcom/chartboost/sdk/b$a;-><init>(Lcom/chartboost/sdk/impl/a;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/b$a;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/impl/j;
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/chartboost/sdk/a;->d:Lcom/chartboost/sdk/impl/j;

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/impl/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 286
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/a;->c(Lcom/chartboost/sdk/impl/a;)V

    return-void
.end method

.method private c(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 201
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v0

    .line 204
    sget-object v1, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    if-ne p1, v1, :cond_0

    .line 205
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 206
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/b;->a(Z)V

    .line 208
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/impl/a;)V

    .line 210
    sget-object v0, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    if-ne p1, v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadInterstitial(Ljava/lang/String;)V

    .line 215
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    if-ne p1, v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 217
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadMoreApps()V

    .line 220
    :cond_2
    return-void
.end method

.method private c(Lcom/chartboost/sdk/impl/a;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 287
    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/a;->k:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldDisplayMoreApps()Z

    move-result v0

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->d:Lcom/chartboost/sdk/impl/a$c;

    iget-object v1, p1, Lcom/chartboost/sdk/impl/a;->e:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/a;->b(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)V

    .line 313
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/a;->g:Lcom/chartboost/sdk/impl/a;

    if-ne p1, v0, :cond_1

    .line 293
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/a;->g:Lcom/chartboost/sdk/impl/a;

    .line 296
    :cond_1
    iget-object v0, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->f:Lcom/chartboost/sdk/impl/a$b;

    if-ne v0, v1, :cond_4

    const/4 v0, 0x1

    .line 297
    :goto_1
    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->a:Lcom/chartboost/sdk/impl/a$b;

    iput-object v1, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    .line 299
    iget-boolean v1, p1, Lcom/chartboost/sdk/impl/a;->l:Z

    .line 300
    iget-object v2, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v2

    .line 301
    if-eqz v2, :cond_3

    .line 302
    invoke-virtual {v2}, Lcom/chartboost/sdk/b;->a()Z

    move-result v3

    if-nez v3, :cond_2

    if-nez v1, :cond_5

    .line 303
    :cond_2
    if-eqz v1, :cond_3

    .line 304
    invoke-virtual {v2, v4}, Lcom/chartboost/sdk/b;->a(Z)V

    .line 311
    :cond_3
    sget-object v0, Lcom/chartboost/sdk/impl/a$b;->b:Lcom/chartboost/sdk/impl/a$b;

    iput-object v0, p1, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    .line 312
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    new-instance v1, Lcom/chartboost/sdk/b$a;

    invoke-direct {v1, p1}, Lcom/chartboost/sdk/b$a;-><init>(Lcom/chartboost/sdk/impl/a;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/b$a;)V

    goto :goto_0

    :cond_4
    move v0, v4

    .line 296
    goto :goto_1

    .line 306
    :cond_5
    if-nez v0, :cond_3

    iget-boolean v0, p1, Lcom/chartboost/sdk/impl/a;->j:Z

    if-nez v0, :cond_3

    goto :goto_0
.end method

.method static synthetic d(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/impl/n$a;
    .locals 1
    .parameter

    .prologue
    .line 618
    iget-object v0, p0, Lcom/chartboost/sdk/a;->j:Lcom/chartboost/sdk/impl/n$a;

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/impl/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 61
    iput-object p1, p0, Lcom/chartboost/sdk/a;->h:Lcom/chartboost/sdk/impl/a;

    return-void
.end method

.method static synthetic e(Lcom/chartboost/sdk/a;)Lcom/chartboost/sdk/impl/a;
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/a;->g:Lcom/chartboost/sdk/impl/a;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)Lcom/chartboost/sdk/a$a;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 84
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    if-ne p1, v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/chartboost/sdk/a;->b:Lcom/chartboost/sdk/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :goto_0
    monitor-exit p0

    return-object v0

    .line 86
    :cond_0
    :try_start_1
    sget-object v0, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    if-ne p1, v0, :cond_3

    .line 87
    if-nez p2, :cond_4

    .line 88
    const-string v0, ""

    move-object v1, v0

    .line 89
    :goto_1
    const/4 v0, 0x0

    move v2, v0

    :goto_2
    iget-object v0, p0, Lcom/chartboost/sdk/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt v2, v0, :cond_1

    move-object v0, v3

    .line 93
    goto :goto_0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/a$a;

    invoke-static {v0}, Lcom/chartboost/sdk/a$a;->b(Lcom/chartboost/sdk/a$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/chartboost/sdk/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/a$a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 89
    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    :cond_3
    move-object v0, v3

    .line 95
    goto :goto_0

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_4
    move-object v1, p2

    goto :goto_1
.end method

.method protected a()Lcom/chartboost/sdk/impl/a;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/chartboost/sdk/a;->h:Lcom/chartboost/sdk/impl/a;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/chartboost/sdk/a$a;

    invoke-direct {v0, p1, p2, p3}, Lcom/chartboost/sdk/a$a;-><init>(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;Z)V

    .line 111
    sget-object v1, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    if-ne p1, v1, :cond_1

    .line 112
    iput-object v0, p0, Lcom/chartboost/sdk/a;->b:Lcom/chartboost/sdk/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 113
    :cond_1
    :try_start_1
    sget-object v1, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    if-ne p1, v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/chartboost/sdk/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(Lcom/chartboost/sdk/impl/a;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/chartboost/sdk/a;->h:Lcom/chartboost/sdk/impl/a;

    .line 69
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 122
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldRequestInterstitialsInFirstSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cbPrefSessionCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 124
    if-gt v0, v3, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-direct {p0, p1, v3}, Lcom/chartboost/sdk/a;->a(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected a(Z)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 379
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v0

    .line 380
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/sdk/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadMoreApps()V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 387
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldRequestMoreApps()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    :cond_2
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 393
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadMoreApps()V

    goto :goto_0

    .line 399
    :cond_3
    monitor-enter p0

    .line 401
    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    const/4 v1, 0x0

    .line 400
    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)Lcom/chartboost/sdk/a$a;

    move-result-object v0

    .line 402
    if-eqz v0, :cond_6

    .line 403
    if-nez p1, :cond_4

    invoke-static {v0}, Lcom/chartboost/sdk/a$a;->a(Lcom/chartboost/sdk/a$a;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 404
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/chartboost/sdk/a$a;->a(Lcom/chartboost/sdk/a$a;Z)V

    .line 405
    monitor-exit p0

    goto :goto_0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 407
    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 408
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/ChartboostDelegate;->didFailToLoadMoreApps()V

    .line 409
    :cond_5
    monitor-exit p0

    goto :goto_0

    .line 412
    :cond_6
    sget-object v0, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;Z)V

    .line 399
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 417
    if-nez p1, :cond_9

    .line 418
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldDisplayLoadingViewForMoreApps()Z

    move-result v0

    if-nez v0, :cond_8

    move v0, v2

    .line 430
    :goto_1
    new-instance v1, Lcom/chartboost/sdk/impl/k;

    const-string v2, "api/more"

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/impl/k;-><init>(Ljava/lang/String;)V

    .line 431
    iget-object v2, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    iget-object v2, v2, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost$b;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/k;->a(Landroid/content/Context;)V

    .line 432
    if-eqz p1, :cond_7

    .line 433
    const-string v2, "cache"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 434
    :cond_7
    iget-object v2, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v2}, Lcom/chartboost/sdk/Chartboost;->getAppID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v3}, Lcom/chartboost/sdk/Chartboost;->getAppSignature()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/impl/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Lcom/chartboost/sdk/a;->d:Lcom/chartboost/sdk/impl/j;

    new-instance v3, Lcom/chartboost/sdk/a$4;

    invoke-direct {v3, p0, p1, v0}, Lcom/chartboost/sdk/a$4;-><init>(Lcom/chartboost/sdk/a;ZZ)V

    invoke-virtual {v2, v1, v3}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/j$b;)V

    goto/16 :goto_0

    .line 423
    :cond_8
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    new-instance v1, Lcom/chartboost/sdk/b$a;

    invoke-direct {v1, v4, v3}, Lcom/chartboost/sdk/b$a;-><init>(ZLcom/chartboost/sdk/impl/a;)V

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/b$a;)V

    move v0, v4

    goto :goto_1

    :cond_9
    move v0, v2

    .line 426
    goto :goto_1
.end method

.method protected b()V
    .locals 2

    .prologue
    .line 168
    new-instance v0, Lcom/chartboost/sdk/a$c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/a$c;-><init>(Lcom/chartboost/sdk/a;Lcom/chartboost/sdk/a$c;)V

    .line 169
    iget-object v1, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method

.method public declared-synchronized b(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 100
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/chartboost/sdk/impl/a$c;->c:Lcom/chartboost/sdk/impl/a$c;

    if-ne p1, v0, :cond_1

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/a;->b:Lcom/chartboost/sdk/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 102
    :cond_1
    :try_start_1
    sget-object v0, Lcom/chartboost/sdk/impl/a$c;->b:Lcom/chartboost/sdk/impl/a$c;

    if-ne p1, v0, :cond_0

    .line 103
    invoke-virtual {p0, p1, p2}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/impl/a$c;Ljava/lang/String;)Lcom/chartboost/sdk/a$a;

    move-result-object v0

    .line 104
    if-eqz v0, :cond_0

    .line 105
    iget-object v1, p0, Lcom/chartboost/sdk/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 100
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 136
    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/chartboost/sdk/ChartboostDelegate;->shouldRequestInterstitialsInFirstSession()Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "cbPrefSessionCount"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 138
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Lcom/chartboost/sdk/a$b;

    invoke-direct {v0, p0, p1}, Lcom/chartboost/sdk/a$b;-><init>(Lcom/chartboost/sdk/a;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/chartboost/sdk/a;->c:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method protected c()Z
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/chartboost/sdk/a;->g:Lcom/chartboost/sdk/impl/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 188
    iget-object v0, p0, Lcom/chartboost/sdk/a;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/impl/a;

    .line 189
    if-nez p0, :cond_0

    move v0, v5

    .line 192
    :goto_0
    return v0

    .line 191
    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/chartboost/sdk/impl/a;->b:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    .line 192
    const-wide/32 v2, 0x15180

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_0
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/chartboost/sdk/a;->h:Lcom/chartboost/sdk/impl/a;

    if-nez v0, :cond_0

    .line 198
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/a;->i:Lcom/chartboost/sdk/impl/a$a;

    iget-object v1, p0, Lcom/chartboost/sdk/a;->h:Lcom/chartboost/sdk/impl/a;

    invoke-interface {v0, v1}, Lcom/chartboost/sdk/impl/a$a;->b(Lcom/chartboost/sdk/impl/a;)V

    goto :goto_0
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 253
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/a;->f:Ljava/util/Map;

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/a;->g:Lcom/chartboost/sdk/impl/a;

    .line 255
    return-void
.end method
