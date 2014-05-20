.class public final Lcom/chartboost/sdk/Chartboost;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;,
        Lcom/chartboost/sdk/Chartboost$a;,
        Lcom/chartboost/sdk/Chartboost$b;
    }
.end annotation


# static fields
.field private static d:Lcom/chartboost/sdk/Chartboost;


# instance fields
.field private A:Ljava/lang/Runnable;

.field protected a:Lcom/chartboost/sdk/Chartboost$b;

.field protected b:Lcom/chartboost/sdk/impl/j;

.field protected c:Landroid/os/Handler;

.field private e:Lcom/chartboost/sdk/b;

.field private f:Landroid/content/Context;

.field private g:Lcom/chartboost/sdk/CBImpressionActivity;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/chartboost/sdk/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/chartboost/sdk/a;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/chartboost/sdk/ChartboostDelegate;

.field private m:I

.field private n:Z

.field private o:Lcom/chartboost/sdk/Libraries/CBOrientation;

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Landroid/util/SparseBooleanArray;

.field private v:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/chartboost/sdk/b;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:J

.field private y:J

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/Chartboost;

    .line 35
    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object v1, p0, Lcom/chartboost/sdk/Chartboost;->f:Landroid/content/Context;

    .line 54
    iput-object v1, p0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Chartboost;->h:Ljava/util/List;

    .line 58
    iput-object v1, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    .line 67
    const/16 v0, 0x7530

    iput v0, p0, Lcom/chartboost/sdk/Chartboost;->m:I

    .line 68
    iput-boolean v2, p0, Lcom/chartboost/sdk/Chartboost;->n:Z

    .line 71
    iput-boolean v2, p0, Lcom/chartboost/sdk/Chartboost;->q:Z

    .line 72
    iput-boolean v2, p0, Lcom/chartboost/sdk/Chartboost;->r:Z

    .line 73
    iput-object v1, p0, Lcom/chartboost/sdk/Chartboost;->s:Ljava/lang/String;

    .line 76
    iput-boolean v2, p0, Lcom/chartboost/sdk/Chartboost;->t:Z

    .line 77
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Chartboost;->u:Landroid/util/SparseBooleanArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Chartboost;->v:Landroid/util/SparseArray;

    .line 79
    iput-boolean v2, p0, Lcom/chartboost/sdk/Chartboost;->w:Z

    .line 80
    iput-wide v3, p0, Lcom/chartboost/sdk/Chartboost;->x:J

    .line 81
    iput-wide v3, p0, Lcom/chartboost/sdk/Chartboost;->y:J

    .line 82
    iput-boolean v2, p0, Lcom/chartboost/sdk/Chartboost;->z:Z

    .line 507
    new-instance v0, Lcom/chartboost/sdk/Chartboost$a;

    invoke-direct {v0, p0, v1}, Lcom/chartboost/sdk/Chartboost$a;-><init>(Lcom/chartboost/sdk/Chartboost;Lcom/chartboost/sdk/Chartboost$a;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Chartboost;->A:Ljava/lang/Runnable;

    .line 134
    sput-object p0, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/Chartboost;

    .line 135
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/Chartboost;->c:Landroid/os/Handler;

    .line 136
    new-instance v0, Lcom/chartboost/sdk/impl/j;

    invoke-direct {v0, v1, v1}, Lcom/chartboost/sdk/impl/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/impl/j;

    .line 137
    new-instance v0, Lcom/chartboost/sdk/a;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/a;-><init>(Lcom/chartboost/sdk/Chartboost;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/CBImpressionActivity;
    .locals 1
    .parameter

    .prologue
    .line 54
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/CBImpressionActivity;

    return-object v0
.end method

.method private a(IZ)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 257
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->u:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 258
    return-void
.end method

.method private a(Landroid/app/Activity;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 243
    if-nez p1, :cond_0

    .line 246
    :goto_0
    return-void

    .line 245
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/chartboost/sdk/Chartboost;->a(IZ)V

    goto :goto_0
.end method

.method private a(Lcom/chartboost/sdk/Chartboost$b;Z)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 250
    if-nez p1, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Chartboost$b;->a()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/chartboost/sdk/Chartboost;->a(IZ)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/chartboost/sdk/Chartboost;Lcom/chartboost/sdk/CBImpressionActivity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/CBImpressionActivity;

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Chartboost;Lcom/chartboost/sdk/ChartboostDelegate;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 66
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/ChartboostDelegate;

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/Chartboost;Lcom/chartboost/sdk/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/b;

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 974
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 978
    :goto_0
    return-void

    .line 977
    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private a(Lcom/chartboost/sdk/Chartboost$b;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 235
    if-nez p1, :cond_0

    move v0, v2

    .line 238
    :goto_0
    return v0

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->u:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Chartboost$b;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method static synthetic b(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/ChartboostDelegate;
    .locals 1
    .parameter

    .prologue
    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/ChartboostDelegate;

    return-object v0
.end method

.method private b(Lcom/chartboost/sdk/Chartboost$b;)V
    .locals 4
    .parameter

    .prologue
    .line 384
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->n:Z

    if-nez v0, :cond_0

    .line 385
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Chartboost$b;)V

    .line 387
    :cond_0
    invoke-virtual {p1}, Lcom/chartboost/sdk/Chartboost$b;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_1

    .line 388
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Chartboost$b;Z)V

    .line 391
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/chartboost/sdk/Chartboost;->x:J

    .line 392
    return-void
.end method

.method private b(Lcom/chartboost/sdk/Chartboost$b;Z)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 261
    invoke-virtual {p1}, Lcom/chartboost/sdk/Chartboost$b;->a()I

    move-result v1

    .line 264
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->v:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/b;

    .line 265
    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 267
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/b;

    if-eqz v0, :cond_1

    .line 268
    iget-object v2, p0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/b;

    .line 269
    iput-object v3, p0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/b;

    .line 270
    invoke-virtual {p1}, Lcom/chartboost/sdk/Chartboost$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)V

    move-object v0, v2

    .line 274
    :goto_0
    iget-object v2, p0, Lcom/chartboost/sdk/Chartboost;->v:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 282
    :cond_0
    :goto_1
    return-void

    .line 272
    :cond_1
    new-instance v2, Lcom/chartboost/sdk/b;

    invoke-virtual {p1}, Lcom/chartboost/sdk/Chartboost$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, p0, v0}, Lcom/chartboost/sdk/b;-><init>(Lcom/chartboost/sdk/Chartboost;Landroid/app/Activity;)V

    move-object v0, v2

    goto :goto_0

    .line 275
    :cond_2
    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 276
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->v:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/b;

    .line 277
    iget-object v2, p0, Lcom/chartboost/sdk/Chartboost;->v:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 278
    invoke-virtual {v0, v3}, Lcom/chartboost/sdk/b;->a(Landroid/app/Activity;)V

    .line 279
    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/b;

    if-nez v1, :cond_0

    .line 280
    iput-object v0, p0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/b;

    goto :goto_1
.end method

.method static synthetic c(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/b;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->e:Lcom/chartboost/sdk/b;

    return-object v0
.end method

.method private c(Lcom/chartboost/sdk/Chartboost$b;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 402
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v0

    .line 403
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/Chartboost;->d(Lcom/chartboost/sdk/Chartboost$b;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 404
    invoke-direct {p0, p1, v2}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Chartboost$b;Z)V

    .line 405
    iput-boolean v2, p0, Lcom/chartboost/sdk/Chartboost;->w:Z

    .line 406
    invoke-virtual {v0}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 407
    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/b;->a(Z)V

    .line 408
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/chartboost/sdk/Chartboost;->w:Z

    .line 410
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/a;->a()Lcom/chartboost/sdk/impl/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 411
    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    invoke-virtual {v1}, Lcom/chartboost/sdk/a;->a()Lcom/chartboost/sdk/impl/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/impl/a;)V

    .line 413
    :cond_1
    invoke-virtual {p1}, Lcom/chartboost/sdk/Chartboost$b;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v0, :cond_2

    .line 414
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->d()V

    .line 417
    :cond_2
    invoke-virtual {p1}, Lcom/chartboost/sdk/Chartboost$b;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_3

    .line 418
    invoke-direct {p0, p1, v2}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Chartboost$b;Z)V

    .line 420
    :cond_3
    return-void
.end method

.method private cacheInterstitialData(Ljava/lang/String;Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V
    .locals 0
    .parameter "location"
    .parameter "callback"

    .prologue
    .line 642
    invoke-static {p1, p2}, Lcom/chartboost/sdk/d;->a(Ljava/lang/String;Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V

    .line 643
    return-void
.end method

.method private cacheInterstitialDataBatch(Ljava/lang/String;ILcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V
    .locals 0
    .parameter "location"
    .parameter "amount"
    .parameter "callback"

    .prologue
    .line 631
    invoke-static {p1, p2, p3}, Lcom/chartboost/sdk/d;->a(Ljava/lang/String;ILcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V

    .line 632
    return-void
.end method

.method static synthetic d(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/a;
    .locals 1
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    return-object v0
.end method

.method private d(Landroid/app/Activity;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 869
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->n:Z

    if-eqz v0, :cond_1

    .line 870
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/CBImpressionActivity;

    if-ne v0, p1, :cond_0

    move v0, v2

    .line 874
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 870
    goto :goto_0

    .line 872
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    if-nez v0, :cond_3

    .line 873
    if-nez p1, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 874
    :cond_3
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Chartboost$b;->a(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0
.end method

.method private d(Lcom/chartboost/sdk/Chartboost$b;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 881
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->n:Z

    if-eqz v0, :cond_2

    .line 882
    if-nez p1, :cond_1

    .line 883
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v0, :cond_0

    move v0, v2

    .line 888
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 883
    goto :goto_0

    .line 884
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-virtual {p1, v0}, Lcom/chartboost/sdk/Chartboost$b;->a(Landroid/app/Activity;)Z

    move-result v0

    goto :goto_0

    .line 886
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    if-nez v0, :cond_4

    .line 887
    if-nez p1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    .line 888
    :cond_4
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Chartboost$b;->a(Lcom/chartboost/sdk/Chartboost$b;)Z

    move-result v0

    goto :goto_0
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Chartboost$b;)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized sharedChartboost()Lcom/chartboost/sdk/Chartboost;
    .locals 2

    .prologue
    .line 127
    const-class v0, Lcom/chartboost/sdk/Chartboost;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/Chartboost;

    if-nez v1, :cond_0

    .line 128
    new-instance v1, Lcom/chartboost/sdk/Chartboost;

    invoke-direct {v1}, Lcom/chartboost/sdk/Chartboost;-><init>()V

    sput-object v1, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/Chartboost;

    .line 130
    :cond_0
    sget-object v1, Lcom/chartboost/sdk/Chartboost;->d:Lcom/chartboost/sdk/Chartboost;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private showInterstitialData(Ljava/lang/String;Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V
    .locals 0
    .parameter "ad_id"
    .parameter "callback"

    .prologue
    .line 654
    invoke-static {p1, p2}, Lcom/chartboost/sdk/d;->b(Ljava/lang/String;Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V

    .line 655
    return-void
.end method


# virtual methods
.method protected a()Lcom/chartboost/sdk/b;
    .locals 2

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->c()Landroid/app/Activity;

    move-result-object v0

    .line 288
    if-nez v0, :cond_0

    .line 289
    const/4 v0, 0x0

    .line 290
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->v:Landroid/util/SparseArray;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/b;

    move-object v0, p0

    goto :goto_0
.end method

.method protected a(Landroid/app/Activity;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 320
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/chartboost/sdk/Chartboost;->f:Landroid/content/Context;

    .line 321
    instance-of v1, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-nez v1, :cond_1

    .line 322
    new-instance v1, Lcom/chartboost/sdk/Chartboost$b;

    invoke-direct {v1, p1}, Lcom/chartboost/sdk/Chartboost$b;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    .line 323
    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-direct {p0, v1, v5}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Chartboost$b;Z)V

    .line 329
    :goto_0
    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->c:Landroid/os/Handler;

    iget-object v2, p0, Lcom/chartboost/sdk/Chartboost;->A:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 331
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/chartboost/sdk/Chartboost;->d(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 368
    :cond_0
    :goto_1
    return-void

    .line 326
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/chartboost/sdk/CBImpressionActivity;

    move-object v1, v0

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    goto :goto_0

    .line 334
    :cond_2
    new-instance v1, Lcom/chartboost/sdk/Chartboost$b;

    invoke-direct {v1, p1}, Lcom/chartboost/sdk/Chartboost$b;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v1, v5}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Chartboost$b;Z)V

    .line 337
    instance-of v1, p1, Lcom/chartboost/sdk/CBImpressionActivity;

    if-eqz v1, :cond_4

    .line 338
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v2

    .line 339
    if-eqz v2, :cond_3

    move v3, v4

    .line 340
    :goto_2
    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v3, v1, :cond_6

    .line 343
    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 345
    :cond_3
    iput-boolean v4, p0, Lcom/chartboost/sdk/Chartboost;->z:Z

    .line 350
    :cond_4
    iget-boolean v1, p0, Lcom/chartboost/sdk/Chartboost;->w:Z

    if-eqz v1, :cond_7

    .line 351
    iput-boolean v4, p0, Lcom/chartboost/sdk/Chartboost;->w:Z

    move v1, v5

    .line 356
    :goto_3
    iget-object v2, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    invoke-virtual {v2}, Lcom/chartboost/sdk/a;->a()Lcom/chartboost/sdk/impl/a;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 357
    iget-object v2, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    invoke-virtual {v2}, Lcom/chartboost/sdk/a;->a()Lcom/chartboost/sdk/impl/a;

    move-result-object v2

    iget-object v2, v2, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    sget-object v3, Lcom/chartboost/sdk/impl/a$b;->b:Lcom/chartboost/sdk/impl/a$b;

    if-ne v2, v3, :cond_5

    .line 358
    iget-object v2, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    invoke-virtual {v2}, Lcom/chartboost/sdk/a;->a()Lcom/chartboost/sdk/impl/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/a;->a()Z

    move-result v2

    .line 359
    if-eqz v2, :cond_5

    move v1, v4

    .line 365
    :cond_5
    if-eqz v1, :cond_0

    .line 366
    new-instance v1, Lcom/chartboost/sdk/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, v5, v2}, Lcom/chartboost/sdk/b$a;-><init>(ZLcom/chartboost/sdk/impl/a;)V

    invoke-virtual {p0, v1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/b$a;)V

    goto :goto_1

    .line 341
    :cond_6
    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->h:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/chartboost/sdk/b$a;

    invoke-virtual {v2, v1}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/b$a;)V

    .line 340
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_7
    move v1, v4

    goto :goto_3
.end method

.method protected a(Lcom/chartboost/sdk/CBImpressionActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->t:Z

    if-nez v0, :cond_0

    .line 896
    invoke-virtual {p1}, Lcom/chartboost/sdk/CBImpressionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Chartboost;->f:Landroid/content/Context;

    .line 897
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 898
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->t:Z

    .line 901
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 902
    return-void
.end method

.method protected a(Lcom/chartboost/sdk/b$a;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 919
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->getImpressionsUseActivities()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 920
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v0

    .line 921
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->c()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/chartboost/sdk/Chartboost;->t:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 922
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/b$a;)V

    .line 961
    :cond_0
    :goto_0
    return-void

    .line 925
    :cond_1
    invoke-direct {p0}, Lcom/chartboost/sdk/Chartboost;->e()Z

    move-result v0

    .line 926
    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 930
    if-nez v0, :cond_2

    .line 933
    iget-object v0, p1, Lcom/chartboost/sdk/b$a;->b:Lcom/chartboost/sdk/impl/a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_0

    .line 934
    iget-object v0, p1, Lcom/chartboost/sdk/b$a;->b:Lcom/chartboost/sdk/impl/a;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->f:Lcom/chartboost/sdk/c;

    iget-object v0, v0, Lcom/chartboost/sdk/c;->d:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/c$a;->a()V

    goto :goto_0

    .line 936
    :cond_2
    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->h:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 937
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/chartboost/sdk/CBImpressionActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 939
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_3

    move v2, v5

    .line 941
    :goto_1
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v3, v3, 0x800

    if-eqz v3, :cond_4

    move v3, v5

    .line 943
    :goto_2
    const-string v4, "paramFullscreen"

    if-eqz v2, :cond_5

    if-nez v3, :cond_5

    move v2, v5

    :goto_3
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 946
    :try_start_0
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 947
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->z:Z
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 948
    :catch_0
    move-exception v0

    .line 949
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Chartboost impression activity not declared in manifest. Please add the following inside your manifest\'s <application> tag: \n<activity android:name=\"com.chartboost.sdk.CBImpressionActivity\" android:theme=\"@android:style/Theme.Translucent.NoTitleBar\" android:excludeFromRecents=\"true\" />"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    move v2, v6

    .line 939
    goto :goto_1

    :cond_4
    move v3, v6

    .line 941
    goto :goto_2

    :cond_5
    move v2, v6

    .line 943
    goto :goto_3

    .line 957
    :cond_6
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v0

    .line 958
    if-eqz v0, :cond_0

    .line 959
    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/b$a;)V

    goto :goto_0
.end method

.method protected a(Lcom/chartboost/sdk/impl/a;)V
    .locals 1
    .parameter

    .prologue
    .line 964
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/a;->a(Lcom/chartboost/sdk/impl/a;)V

    .line 965
    return-void
.end method

.method protected b(Landroid/app/Activity;)V
    .locals 1
    .parameter

    .prologue
    .line 398
    new-instance v0, Lcom/chartboost/sdk/Chartboost$b;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Chartboost$b;-><init>(Landroid/app/Activity;)V

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Chartboost;->c(Lcom/chartboost/sdk/Chartboost$b;)V

    .line 399
    return-void
.end method

.method protected b()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 445
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/a;->a()Lcom/chartboost/sdk/impl/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/a;->a()Lcom/chartboost/sdk/impl/a;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/impl/a;->c:Lcom/chartboost/sdk/impl/a$b;

    .line 447
    sget-object v1, Lcom/chartboost/sdk/impl/a$b;->c:Lcom/chartboost/sdk/impl/a$b;

    .line 446
    if-ne v0, v1, :cond_0

    .line 448
    new-instance v0, Lcom/chartboost/sdk/Chartboost$2;

    invoke-direct {v0, p0}, Lcom/chartboost/sdk/Chartboost$2;-><init>(Lcom/chartboost/sdk/Chartboost;)V

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    move v0, v2

    .line 464
    :goto_0
    return v0

    .line 455
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->a()Lcom/chartboost/sdk/b;

    move-result-object v0

    .line 456
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/sdk/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 457
    new-instance v1, Lcom/chartboost/sdk/Chartboost$3;

    invoke-direct {v1, p0, v0}, Lcom/chartboost/sdk/Chartboost$3;-><init>(Lcom/chartboost/sdk/Chartboost;Lcom/chartboost/sdk/b;)V

    invoke-direct {p0, v1}, Lcom/chartboost/sdk/Chartboost;->a(Ljava/lang/Runnable;)V

    move v0, v2

    .line 462
    goto :goto_0

    .line 464
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected c()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 859
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->n:Z

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 862
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$b;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    move-object v0, p0

    goto :goto_0
.end method

.method protected c(Landroid/app/Activity;)V
    .locals 2
    .parameter

    .prologue
    .line 477
    new-instance v0, Lcom/chartboost/sdk/Chartboost$b;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Chartboost$b;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Chartboost$b;Z)V

    .line 478
    return-void
.end method

.method public cacheInterstitial()V
    .locals 1

    .prologue
    .line 536
    const-string v0, "Default"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Chartboost;->cacheInterstitial(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public cacheInterstitial(Ljava/lang/String;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 543
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    if-nez v0, :cond_0

    .line 544
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling cacheInterstitial()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/a;->a(Ljava/lang/String;)V

    .line 548
    return-void
.end method

.method public cacheMoreApps()V
    .locals 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    if-nez v0, :cond_0

    .line 597
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling cacheMoreApps()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/a;->a(Z)V

    .line 600
    return-void
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/a;->e()V

    .line 530
    return-void
.end method

.method public clearImageCache()V
    .locals 2

    .prologue
    .line 518
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling clearImageCache()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 522
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/impl/o;->a()Lcom/chartboost/sdk/impl/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o;->b()V

    .line 523
    return-void
.end method

.method protected d()V
    .locals 1

    .prologue
    .line 907
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->t:Z

    if-eqz v0, :cond_0

    .line 908
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/chartboost/sdk/Chartboost;->g:Lcom/chartboost/sdk/CBImpressionActivity;

    .line 909
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->t:Z

    .line 911
    :cond_0
    return-void
.end method

.method public getAnalytics()Lcom/chartboost/sdk/Analytics/CBAnalytics;
    .locals 1

    .prologue
    .line 142
    invoke-static {}, Lcom/chartboost/sdk/Analytics/CBAnalytics;->sharedAnalytics()Lcom/chartboost/sdk/Analytics/CBAnalytics;

    move-result-object v0

    return-object v0
.end method

.method public getAnimationsOff()Z
    .locals 1

    .prologue
    .line 771
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->r:Z

    return v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getAppSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 699
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->f:Landroid/content/Context;

    return-object v0
.end method

.method public getDelegate()Lcom/chartboost/sdk/ChartboostDelegate;
    .locals 1

    .prologue
    .line 710
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/ChartboostDelegate;

    return-object v0
.end method

.method public getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;
    .locals 3

    .prologue
    .line 838
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->p:Z

    if-nez v0, :cond_0

    .line 839
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_0:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    .line 851
    :goto_0
    return-object v0

    .line 841
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/d;->c(Landroid/content/Context;)Lcom/chartboost/sdk/Libraries/CBOrientation;

    move-result-object v0

    .line 842
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->getOrientation()Lcom/chartboost/sdk/Libraries/CBOrientation;

    move-result-object v1

    .line 844
    sget-object v2, Lcom/chartboost/sdk/Libraries/CBOrientation;->UNSPECIFIED:Lcom/chartboost/sdk/Libraries/CBOrientation;

    if-eq v1, v2, :cond_1

    if-ne v1, v0, :cond_2

    .line 845
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_0:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    goto :goto_0

    .line 846
    :cond_2
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/CBOrientation;->rotate90()Lcom/chartboost/sdk/Libraries/CBOrientation;

    move-result-object v2

    if-ne v1, v2, :cond_3

    .line 847
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_90:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    goto :goto_0

    .line 848
    :cond_3
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/CBOrientation;->rotate180()Lcom/chartboost/sdk/Libraries/CBOrientation;

    move-result-object v0

    if-ne v1, v0, :cond_4

    .line 849
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_180:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    goto :goto_0

    .line 851
    :cond_4
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->ANGLE_270:Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    goto :goto_0
.end method

.method public getFramework()Ljava/lang/String;
    .locals 1

    .prologue
    .line 683
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "native"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->s:Ljava/lang/String;

    goto :goto_0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->c:Landroid/os/Handler;

    return-object v0
.end method

.method protected getHostActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 970
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost$b;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIgnoreErrors()Z
    .locals 1

    .prologue
    .line 750
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->q:Z

    return v0
.end method

.method public getImpressionsUseActivities()Z
    .locals 1

    .prologue
    .line 729
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->n:Z

    return v0
.end method

.method public getOrientation()Lcom/chartboost/sdk/Libraries/CBOrientation;
    .locals 2

    .prologue
    .line 820
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling getOrientation()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 823
    :cond_0
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->o:Lcom/chartboost/sdk/Libraries/CBOrientation;

    sget-object v1, Lcom/chartboost/sdk/Libraries/CBOrientation;->UNSPECIFIED:Lcom/chartboost/sdk/Libraries/CBOrientation;

    if-eq v0, v1, :cond_1

    .line 824
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->o:Lcom/chartboost/sdk/Libraries/CBOrientation;

    .line 826
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/d;->c(Landroid/content/Context;)Lcom/chartboost/sdk/Libraries/CBOrientation;

    move-result-object v0

    goto :goto_0
.end method

.method public getTimeout()I
    .locals 1

    .prologue
    .line 662
    iget v0, p0, Lcom/chartboost/sdk/Chartboost;->m:I

    return v0
.end method

.method public hasCachedInterstitial()Z
    .locals 1

    .prologue
    .line 574
    const-string v0, "Default"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Chartboost;->hasCachedInterstitial(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCachedInterstitial(Ljava/lang/String;)Z
    .locals 1
    .parameter "location"

    .prologue
    .line 588
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/a;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasCachedMoreApps()Z
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/a;->c()Z

    move-result v0

    return v0
.end method

.method public isIdentityTrackingDisabledOnThisDevice()Z
    .locals 1

    .prologue
    .line 801
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->c()Z

    move-result v0

    return v0
.end method

.method public onBackPressed()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 425
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->q:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It is illegal to call this method from any thread other than the UI thread. Please call it from the onBackPressed() method of your host activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    if-nez v0, :cond_1

    .line 429
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The Chartboost methods onCreate(), onStart(), onStop(), and onDestroy() must be called in the corresponding methods of your activity in order for Chartboost to function properly."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 432
    :cond_1
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->n:Z

    if-eqz v0, :cond_3

    .line 433
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->z:Z

    if-eqz v0, :cond_2

    .line 434
    iput-boolean v1, p0, Lcom/chartboost/sdk/Chartboost;->z:Z

    .line 435
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->b()Z

    .line 436
    const/4 v0, 0x1

    .line 441
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 438
    goto :goto_0

    .line 441
    :cond_3
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->b()Z

    move-result v0

    goto :goto_0
.end method

.method public onCreate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/ChartboostDelegate;)V
    .locals 2
    .parameter "activity"
    .parameter "appId"
    .parameter "appSignature"
    .parameter "chartBoostDelegate"

    .prologue
    .line 206
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->q:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It is illegal to call this method from any thread other than the UI thread. Please call it from the onCreate() method of your host activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Chartboost$b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Chartboost;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 212
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Chartboost$b;)V

    .line 213
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Chartboost$b;Z)V

    .line 216
    :cond_1
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 219
    new-instance v0, Lcom/chartboost/sdk/Chartboost$b;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Chartboost$b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    .line 220
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Chartboost;->f:Landroid/content/Context;

    .line 223
    invoke-virtual {p0, p2}, Lcom/chartboost/sdk/Chartboost;->setAppID(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, p3}, Lcom/chartboost/sdk/Chartboost;->setAppSignature(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0, p4}, Lcom/chartboost/sdk/Chartboost;->setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 226
    return-void
.end method

.method public onDestroy(Landroid/app/Activity;)V
    .locals 4
    .parameter "activity"

    .prologue
    .line 470
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->A:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 472
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Chartboost;->c(Landroid/app/Activity;)V

    .line 473
    return-void
.end method

.method public onStart(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->q:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It is illegal to call this method from any thread other than the UI thread. Please call it from the onStart() method of your host activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->A:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/Chartboost$b;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/chartboost/sdk/Chartboost;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 304
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Chartboost$b;)V

    .line 305
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Chartboost$b;Z)V

    .line 308
    :cond_1
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/chartboost/sdk/Chartboost;->a(Landroid/app/Activity;Z)V

    .line 309
    new-instance v0, Lcom/chartboost/sdk/Chartboost$b;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Chartboost$b;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    .line 310
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Chartboost;->f:Landroid/content/Context;

    .line 312
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->n:Z

    if-nez v0, :cond_2

    .line 313
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/Chartboost;->a(Landroid/app/Activity;)V

    .line 314
    :cond_2
    return-void
.end method

.method public onStop(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->q:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 374
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It is illegal to call this method from any thread other than the UI thread. Please call it from the onStop() method of your host activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 377
    :cond_0
    new-instance v0, Lcom/chartboost/sdk/Chartboost$b;

    invoke-direct {v0, p1}, Lcom/chartboost/sdk/Chartboost$b;-><init>(Landroid/app/Activity;)V

    .line 378
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/Chartboost$b;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 379
    invoke-direct {p0, v0}, Lcom/chartboost/sdk/Chartboost;->b(Lcom/chartboost/sdk/Chartboost$b;)V

    .line 381
    :cond_1
    return-void
.end method

.method public setAnimationsOff(Z)V
    .locals 0
    .parameter "animationsOff"

    .prologue
    .line 779
    iput-boolean p1, p0, Lcom/chartboost/sdk/Chartboost;->r:Z

    .line 780
    return-void
.end method

.method public setAppID(Ljava/lang/String;)V
    .locals 0
    .parameter "appId"

    .prologue
    .line 694
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost;->j:Ljava/lang/String;

    .line 695
    return-void
.end method

.method public setAppSignature(Ljava/lang/String;)V
    .locals 0
    .parameter "appSignature"

    .prologue
    .line 705
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost;->k:Ljava/lang/String;

    .line 706
    return-void
.end method

.method public setDelegate(Lcom/chartboost/sdk/ChartboostDelegate;)V
    .locals 0
    .parameter "delegate"

    .prologue
    .line 716
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost;->l:Lcom/chartboost/sdk/ChartboostDelegate;

    .line 717
    return-void
.end method

.method public setFramework(Ljava/lang/String;)V
    .locals 0
    .parameter "framework"

    .prologue
    .line 678
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost;->s:Ljava/lang/String;

    .line 679
    return-void
.end method

.method public setIdentityTrackingDisabledOnThisDevice(Z)V
    .locals 2
    .parameter "disabled"

    .prologue
    .line 789
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 790
    const-string v1, "cbIdentityTrackingDisabled"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 791
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 792
    return-void
.end method

.method public setIgnoreErrors(Z)V
    .locals 0
    .parameter "ignoreErrors"

    .prologue
    .line 762
    iput-boolean p1, p0, Lcom/chartboost/sdk/Chartboost;->q:Z

    .line 763
    return-void
.end method

.method public setImpressionsUseActivities(Z)V
    .locals 0
    .parameter "impressionsUseActivities"

    .prologue
    .line 742
    iput-boolean p1, p0, Lcom/chartboost/sdk/Chartboost;->n:Z

    .line 743
    return-void
.end method

.method public setOrientation(Lcom/chartboost/sdk/Libraries/CBOrientation;)V
    .locals 1
    .parameter "_orientation"

    .prologue
    .line 811
    sget-object v0, Lcom/chartboost/sdk/Libraries/CBOrientation;->UNSPECIFIED:Lcom/chartboost/sdk/Libraries/CBOrientation;

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/chartboost/sdk/Chartboost;->p:Z

    .line 812
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost;->o:Lcom/chartboost/sdk/Libraries/CBOrientation;

    .line 813
    return-void

    .line 811
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 670
    iput p1, p0, Lcom/chartboost/sdk/Chartboost;->m:I

    .line 671
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 555
    const-string v0, "Default"

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/Chartboost;->showInterstitial(Ljava/lang/String;)V

    .line 556
    return-void
.end method

.method public showInterstitial(Ljava/lang/String;)V
    .locals 2
    .parameter "location"

    .prologue
    .line 563
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling showInterstitial()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/a;->b(Ljava/lang/String;)V

    .line 568
    return-void
.end method

.method public showMoreApps()V
    .locals 2

    .prologue
    .line 607
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    if-nez v0, :cond_0

    .line 608
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling showMoreApps()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->i:Lcom/chartboost/sdk/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/a;->b()V

    .line 612
    return-void
.end method

.method public showMoreAppsData(Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 619
    invoke-static {p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V

    .line 620
    return-void
.end method

.method public startSession()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const-string v7, "cbPrefSessionCount"

    .line 149
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    if-nez v0, :cond_0

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling startSession()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 154
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L

    div-double/2addr v0, v2

    double-to-long v0, v0

    .line 155
    iget-wide v2, p0, Lcom/chartboost/sdk/Chartboost;->x:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 157
    :cond_2
    iget-wide v2, p0, Lcom/chartboost/sdk/Chartboost;->y:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    .line 159
    iput-wide v0, p0, Lcom/chartboost/sdk/Chartboost;->y:J

    .line 161
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 162
    const-string v1, "cbPrefSessionCount"

    invoke-interface {v0, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 163
    add-int/lit8 v1, v1, 0x1

    .line 164
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    const-string v2, "cbPrefSessionCount"

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 168
    new-instance v0, Lcom/chartboost/sdk/impl/k;

    const-string v1, "api/install"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/k;-><init>(Ljava/lang/String;)V

    .line 169
    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost$b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/k;->a(Landroid/content/Context;)V

    .line 170
    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/chartboost/sdk/Chartboost;->getAppSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/chartboost/sdk/Libraries/e$g;

    const-string v2, "status"

    sget-object v3, Lcom/chartboost/sdk/impl/j;->a:Lcom/chartboost/sdk/Libraries/e$a;

    invoke-static {v2, v3}, Lcom/chartboost/sdk/Libraries/e;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/e$a;)Lcom/chartboost/sdk/Libraries/e$g;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/k;->a([Lcom/chartboost/sdk/Libraries/e$g;)V

    .line 173
    iget-object v1, p0, Lcom/chartboost/sdk/Chartboost;->b:Lcom/chartboost/sdk/impl/j;

    new-instance v2, Lcom/chartboost/sdk/Chartboost$1;

    invoke-direct {v2, p0}, Lcom/chartboost/sdk/Chartboost$1;-><init>(Lcom/chartboost/sdk/Chartboost;)V

    invoke-virtual {v1, v0, v2}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/j$b;)V

    goto :goto_0
.end method
