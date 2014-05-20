.class public Lcom/chartboost/sdk/Libraries/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/Libraries/a$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/chartboost/sdk/Libraries/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:J


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    const/16 v1, 0xa

    const/high16 v2, 0x3fc0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/Libraries/a;->a:Ljava/util/Map;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/chartboost/sdk/Libraries/a;->b:J

    .line 22
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/chartboost/sdk/Libraries/a;->c:J

    .line 26
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x3e19999a

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/chartboost/sdk/Libraries/a;->a(J)V

    .line 27
    return-void
.end method

.method private static a(Landroid/graphics/Bitmap;)J
    .locals 2
    .parameter

    .prologue
    .line 76
    if-nez p0, :cond_0

    .line 77
    const-wide/16 v0, 0x0

    .line 78
    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_0
.end method

.method private b()V
    .locals 6

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/chartboost/sdk/Libraries/a;->b:J

    iget-wide v2, p0, Lcom/chartboost/sdk/Libraries/a;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 59
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 60
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    iget-wide v2, p0, Lcom/chartboost/sdk/Libraries/a;->b:J

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/a$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/a$a;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/a;->a(Landroid/graphics/Bitmap;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/chartboost/sdk/Libraries/a;->b:J

    .line 62
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 63
    iget-wide v2, p0, Lcom/chartboost/sdk/Libraries/a;->b:J

    iget-wide v4, p0, Lcom/chartboost/sdk/Libraries/a;->c:J

    cmp-long v0, v2, v4

    if-gtz v0, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/a$a;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 38
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/chartboost/sdk/Libraries/a$a;

    move-object v0, p0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/a;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 73
    return-void
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 30
    iput-wide p1, p0, Lcom/chartboost/sdk/Libraries/a;->c:J

    .line 33
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/a$a;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 44
    iget-wide v1, p0, Lcom/chartboost/sdk/Libraries/a;->b:J

    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/Libraries/a$a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/a$a;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/a;->a(Landroid/graphics/Bitmap;)J

    move-result-wide v3

    sub-long v0, v1, v3

    iput-wide v0, p0, Lcom/chartboost/sdk/Libraries/a;->b:J

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/Libraries/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-wide v0, p0, Lcom/chartboost/sdk/Libraries/a;->b:J

    invoke-virtual {p2}, Lcom/chartboost/sdk/Libraries/a$a;->b()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/a;->a(Landroid/graphics/Bitmap;)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/chartboost/sdk/Libraries/a;->b:J

    .line 47
    invoke-direct {p0}, Lcom/chartboost/sdk/Libraries/a;->b()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
