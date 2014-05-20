.class public Lcom/chartboost/sdk/impl/h;
.super Lcom/chartboost/sdk/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/h$a;,
        Lcom/chartboost/sdk/impl/h$b;
    }
.end annotation


# static fields
.field private static h:I

.field private static i:I

.field private static j:I


# instance fields
.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/chartboost/sdk/Libraries/a$a;

.field private m:Lcom/chartboost/sdk/Libraries/a$a;

.field private n:Lcom/chartboost/sdk/Libraries/a$a;

.field private o:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/chartboost/sdk/Libraries/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x32

    .line 39
    sput v0, Lcom/chartboost/sdk/impl/h;->h:I

    .line 40
    sput v0, Lcom/chartboost/sdk/impl/h;->i:I

    .line 41
    const/16 v0, 0x1e

    sput v0, Lcom/chartboost/sdk/impl/h;->j:I

    .line 37
    return-void
.end method

.method public constructor <init>(Lcom/chartboost/sdk/impl/a;)V
    .locals 1
    .parameter

    .prologue
    .line 344
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/c;-><init>(Lcom/chartboost/sdk/impl/a;)V

    .line 345
    const/4 v0, 0x3

    iput v0, p0, Lcom/chartboost/sdk/impl/h;->e:I

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/h;->k:Ljava/util/List;

    .line 347
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/h;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h;->k:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Libraries/a$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/h;->a(Lcom/chartboost/sdk/Libraries/a$a;)V

    return-void
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/h;)Lcom/chartboost/sdk/Libraries/a$a;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h;->n:Lcom/chartboost/sdk/Libraries/a$a;

    return-object v0
.end method

.method static synthetic b(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Libraries/a$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h;->l:Lcom/chartboost/sdk/Libraries/a$a;

    return-void
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/h;)Lcom/chartboost/sdk/Libraries/a$a;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h;->m:Lcom/chartboost/sdk/Libraries/a$a;

    return-object v0
.end method

.method static synthetic c(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Libraries/a$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h;->m:Lcom/chartboost/sdk/Libraries/a$a;

    return-void
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/h;)Lcom/chartboost/sdk/Libraries/a$a;
    .locals 1
    .parameter

    .prologue
    .line 51
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h;->l:Lcom/chartboost/sdk/Libraries/a$a;

    return-object v0
.end method

.method static synthetic d(Lcom/chartboost/sdk/impl/h;Lcom/chartboost/sdk/Libraries/a$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 53
    iput-object p1, p0, Lcom/chartboost/sdk/impl/h;->n:Lcom/chartboost/sdk/Libraries/a$a;

    return-void
.end method

.method static synthetic e(Lcom/chartboost/sdk/impl/h;)Landroid/util/SparseArray;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h;->o:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic f()I
    .locals 1

    .prologue
    .line 39
    sget v0, Lcom/chartboost/sdk/impl/h;->h:I

    return v0
.end method

.method static synthetic g()I
    .locals 1

    .prologue
    .line 41
    sget v0, Lcom/chartboost/sdk/impl/h;->j:I

    return v0
.end method

.method static synthetic h()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/chartboost/sdk/impl/h;->i:I

    return v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lcom/chartboost/sdk/c$b;
    .locals 2
    .parameter

    .prologue
    .line 351
    new-instance v0, Lcom/chartboost/sdk/impl/h$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/h$a;-><init>(Lcom/chartboost/sdk/impl/h;Landroid/content/Context;Lcom/chartboost/sdk/impl/h$a;)V

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 8
    .parameter

    .prologue
    const-string v7, "assets"

    const-string v6, "index"

    .line 357
    invoke-super {p0, p1}, Lcom/chartboost/sdk/c;->a(Lorg/json/JSONObject;)V

    .line 358
    const-string v0, "cells"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 359
    if-nez v0, :cond_1

    .line 361
    iget-object v0, p0, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/h;->d:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/c$a;->a()V

    .line 417
    :cond_0
    :goto_0
    return-void

    .line 367
    :cond_1
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/chartboost/sdk/impl/h;->o:Landroid/util/SparseArray;

    .line 368
    new-instance v1, Lcom/chartboost/sdk/impl/h$1;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/h$1;-><init>(Lcom/chartboost/sdk/impl/h;)V

    .line 376
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 410
    new-instance v0, Lcom/chartboost/sdk/impl/h$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/impl/h$2;-><init>(Lcom/chartboost/sdk/impl/h;)V

    .line 411
    new-instance v1, Lcom/chartboost/sdk/impl/h$3;

    invoke-direct {v1, p0}, Lcom/chartboost/sdk/impl/h$3;-><init>(Lcom/chartboost/sdk/impl/h;)V

    .line 412
    new-instance v2, Lcom/chartboost/sdk/impl/h$4;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/impl/h$4;-><init>(Lcom/chartboost/sdk/impl/h;)V

    .line 414
    const-string v3, "close"

    invoke-virtual {p0, v3, v0}, Lcom/chartboost/sdk/impl/h;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;)V

    .line 415
    const-string v0, "header-center"

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/impl/h;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;)V

    .line 416
    const-string v0, "header-tile"

    invoke-virtual {p0, v0, v2}, Lcom/chartboost/sdk/impl/h;->a(Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;)V

    goto :goto_0

    .line 377
    :cond_2
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 379
    iget-object v4, p0, Lcom/chartboost/sdk/impl/h;->k:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    const-string v4, "type"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 382
    const-string v5, "regular"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 383
    const-string v4, "assets"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 384
    if-eqz v3, :cond_3

    .line 386
    iget v4, p0, Lcom/chartboost/sdk/impl/h;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/chartboost/sdk/impl/h;->e:I

    .line 387
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 388
    const-string v5, "index"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 389
    const-string v5, "icon"

    invoke-virtual {p0, v3, v5, v1, v4}, Lcom/chartboost/sdk/impl/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;Landroid/os/Bundle;)V

    .line 376
    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 391
    :cond_4
    const-string v5, "featured"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 392
    const-string v4, "assets"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 393
    if-eqz v3, :cond_3

    .line 395
    iget v4, p0, Lcom/chartboost/sdk/impl/h;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/chartboost/sdk/impl/h;->e:I

    .line 396
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 397
    const-string v5, "index"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 398
    const-string v5, "portrait"

    invoke-virtual {p0, v3, v5, v1, v4}, Lcom/chartboost/sdk/impl/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;Landroid/os/Bundle;)V

    .line 400
    iget v4, p0, Lcom/chartboost/sdk/impl/h;->e:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/chartboost/sdk/impl/h;->e:I

    .line 401
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 402
    const-string v5, "index"

    invoke-virtual {v4, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 403
    const-string v5, "landscape"

    invoke-virtual {p0, v3, v5, v1, v4}, Lcom/chartboost/sdk/impl/h;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;Landroid/os/Bundle;)V

    goto :goto_2

    .line 405
    :cond_5
    const-string v3, "webview"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public c()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 422
    invoke-super {p0}, Lcom/chartboost/sdk/c;->c()V

    .line 423
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h;->k:Ljava/util/List;

    .line 424
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h;->l:Lcom/chartboost/sdk/Libraries/a$a;

    .line 425
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h;->n:Lcom/chartboost/sdk/Libraries/a$a;

    .line 426
    iput-object v0, p0, Lcom/chartboost/sdk/impl/h;->m:Lcom/chartboost/sdk/Libraries/a$a;

    .line 427
    return-void
.end method
