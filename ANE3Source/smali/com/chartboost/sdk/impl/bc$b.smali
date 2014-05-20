.class Lcom/chartboost/sdk/impl/bc$b;
.super Lcom/chartboost/sdk/impl/bc$a;
.source "SourceFile"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/bc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/bc$a",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Set",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bc;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/bc;)V
    .locals 0
    .parameter

    .prologue
    .line 399
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bc$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/bc;Lcom/chartboost/sdk/impl/bc$b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 399
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bc$b;-><init>(Lcom/chartboost/sdk/impl/bc;)V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 403
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->a(Lcom/chartboost/sdk/impl/bc;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 409
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bc;->a()Ljava/util/Map;

    move-result-object v0

    .line 410
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 411
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 415
    return-void

    .line 412
    :catchall_0
    move-exception v0

    .line 413
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 414
    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 418
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 420
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/chartboost/sdk/impl/bc$b;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result v0

    if-nez v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 421
    const/4 v0, 0x0

    .line 425
    :goto_0
    return v0

    .line 423
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bc;->a()Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 425
    :try_start_2
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v1

    .line 427
    :try_start_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 430
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    move v0, v1

    .line 425
    goto :goto_0

    .line 426
    :catchall_0
    move-exception v1

    .line 427
    :try_start_4
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V

    .line 428
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 429
    :catchall_1
    move-exception v0

    .line 430
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 431
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
    .line 435
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 437
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bc;->a()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 439
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 441
    :try_start_2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 444
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 439
    return v1

    .line 440
    :catchall_0
    move-exception v1

    .line 441
    :try_start_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V

    .line 442
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 443
    :catchall_1
    move-exception v0

    .line 444
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 445
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
    .line 449
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 451
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bc;->a()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 453
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 455
    :try_start_2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 458
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 453
    return v1

    .line 454
    :catchall_0
    move-exception v1

    .line 455
    :try_start_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V

    .line 456
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 457
    :catchall_1
    move-exception v0

    .line 458
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$b;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 459
    throw v0
.end method
