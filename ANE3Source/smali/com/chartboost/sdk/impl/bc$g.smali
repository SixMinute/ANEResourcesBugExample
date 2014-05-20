.class final Lcom/chartboost/sdk/impl/bc$g;
.super Lcom/chartboost/sdk/impl/bc$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/bc$a",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bc;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/bc;)V
    .locals 0
    .parameter

    .prologue
    .line 335
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bc$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/bc;Lcom/chartboost/sdk/impl/bc$g;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 335
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bc$g;-><init>(Lcom/chartboost/sdk/impl/bc;)V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 339
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->a(Lcom/chartboost/sdk/impl/bc;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 343
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 345
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bc;->a()Ljava/util/Map;

    move-result-object v0

    .line 346
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 347
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 349
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 351
    return-void

    .line 348
    :catchall_0
    move-exception v0

    .line 349
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 350
    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 354
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 356
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/bc$g;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 357
    const/4 v0, 0x0

    .line 361
    :goto_0
    return v0

    .line 359
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bc;->a()Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 361
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 363
    :try_start_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 366
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v1

    .line 361
    goto :goto_0

    .line 362
    :catchall_0
    move-exception v1

    .line 363
    :try_start_4
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V

    .line 364
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 365
    :catchall_1
    move-exception v0

    .line 366
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 367
    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 371
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bc;->a()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 375
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 377
    :try_start_2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 380
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 375
    return v1

    .line 376
    :catchall_0
    move-exception v1

    .line 377
    :try_start_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V

    .line 378
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 379
    :catchall_1
    move-exception v0

    .line 380
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 381
    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 385
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bc;->a()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 389
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 391
    :try_start_2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 394
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 389
    return v1

    .line 390
    :catchall_0
    move-exception v1

    .line 391
    :try_start_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V

    .line 392
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 393
    :catchall_1
    move-exception v0

    .line 394
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$g;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 395
    throw v0
.end method
