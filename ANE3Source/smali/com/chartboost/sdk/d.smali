.class final Lcom/chartboost/sdk/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/chartboost/sdk/d;


# instance fields
.field private b:Lcom/chartboost/sdk/impl/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/d;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/chartboost/sdk/impl/j;

    const-string v1, "https://www.chartboost.com"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/j;

    .line 25
    return-void
.end method

.method private static a()Lcom/chartboost/sdk/d;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/d;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Lcom/chartboost/sdk/d;

    invoke-direct {v0}, Lcom/chartboost/sdk/d;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/d;

    .line 18
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/d;->a:Lcom/chartboost/sdk/d;

    return-object v0
.end method

.method protected static a(Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V
    .locals 3
    .parameter

    .prologue
    .line 55
    new-instance v0, Lcom/chartboost/sdk/impl/k;

    const-string v1, "api/more"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/k;-><init>(Ljava/lang/String;)V

    .line 56
    const-string v1, "format"

    const-string v2, "data"

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    invoke-static {}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d;

    move-result-object v1

    invoke-direct {v1, v0, p0}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V

    .line 58
    return-void
.end method

.method private a(Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 61
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    .line 62
    iget-object v1, v0, Lcom/chartboost/sdk/Chartboost;->a:Lcom/chartboost/sdk/Chartboost$b;

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost$b;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/chartboost/sdk/impl/k;->a(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getAppSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/chartboost/sdk/impl/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/chartboost/sdk/d;->b:Lcom/chartboost/sdk/impl/j;

    new-instance v1, Lcom/chartboost/sdk/d$1;

    invoke-direct {v1, p0, p2}, Lcom/chartboost/sdk/d$1;-><init>(Lcom/chartboost/sdk/d;Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V

    invoke-virtual {v0, p1, v1}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/impl/j$b;)V

    .line 74
    return-void
.end method

.method protected static a(Ljava/lang/String;ILcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xa

    const/4 v3, 0x1

    .line 37
    new-instance v0, Lcom/chartboost/sdk/impl/k;

    const-string v1, "api/get_batch"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/k;-><init>(Ljava/lang/String;)V

    .line 38
    const-string v1, "raw"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    const-string v1, "cache"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 40
    if-eqz p0, :cond_0

    .line 41
    const-string v1, "location"

    invoke-virtual {v0, v1, p0}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    :cond_0
    if-le p1, v4, :cond_1

    move v1, v4

    .line 44
    :goto_0
    const-string v2, "amount"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 45
    invoke-static {}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d;

    move-result-object v1

    invoke-direct {v1, v0, p2}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V

    .line 46
    return-void

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 28
    new-instance v0, Lcom/chartboost/sdk/impl/k;

    const-string v1, "api/get"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/k;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v1, "raw"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const-string v1, "cache"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    if-eqz p0, :cond_0

    .line 32
    const-string v1, "location"

    invoke-virtual {v0, v1, p0}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 33
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d;

    move-result-object v1

    invoke-direct {v1, v0, p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V

    .line 34
    return-void
.end method

.method protected static b(Ljava/lang/String;Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 49
    new-instance v0, Lcom/chartboost/sdk/impl/k;

    const-string v1, "api/show"

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/k;-><init>(Ljava/lang/String;)V

    .line 50
    const-string v1, "ad_id"

    invoke-virtual {v0, v1, p0}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 51
    invoke-static {}, Lcom/chartboost/sdk/d;->a()Lcom/chartboost/sdk/d;

    move-result-object v1

    invoke-direct {v1, v0, p1}, Lcom/chartboost/sdk/d;->a(Lcom/chartboost/sdk/impl/k;Lcom/chartboost/sdk/Chartboost$CBAPIResponseCallback;)V

    .line 52
    return-void
.end method
