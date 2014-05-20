.class Lcom/chartboost/sdk/impl/o$e;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "e"
.end annotation


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0
    .parameter

    .prologue
    .line 374
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 375
    return-void
.end method


# virtual methods
.method public skip(J)J
    .locals 7
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v5, 0x0

    .line 379
    move-wide v0, v5

    .line 380
    :goto_0
    cmp-long v2, v0, p1

    if-ltz v2, :cond_1

    .line 392
    :cond_0
    return-wide v0

    .line 381
    :cond_1
    iget-object v2, p0, Lcom/chartboost/sdk/impl/o$e;->in:Ljava/io/InputStream;

    sub-long v3, p1, v0

    invoke-virtual {v2, v3, v4}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 382
    cmp-long v4, v2, v5

    if-nez v4, :cond_2

    .line 383
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/o$e;->read()I

    move-result v2

    .line 384
    if-ltz v2, :cond_0

    .line 387
    const-wide/16 v2, 0x1

    .line 390
    :cond_2
    add-long/2addr v0, v2

    goto :goto_0
.end method
