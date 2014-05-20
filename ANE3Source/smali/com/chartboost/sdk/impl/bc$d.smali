.class Lcom/chartboost/sdk/impl/bc$d;
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
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chartboost/sdk/impl/bc$a",
        "<TK;>;",
        "Ljava/util/Set",
        "<TK;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/bc;


# direct methods
.method private constructor <init>(Lcom/chartboost/sdk/impl/bc;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-direct {p0}, Lcom/chartboost/sdk/impl/bc$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/chartboost/sdk/impl/bc;Lcom/chartboost/sdk/impl/bc$d;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/chartboost/sdk/impl/bc$d;-><init>(Lcom/chartboost/sdk/impl/bc;)V

    return-void
.end method


# virtual methods
.method a()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 284
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->a(Lcom/chartboost/sdk/impl/bc;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 292
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bc;->a()Ljava/util/Map;

    move-result-object v0

    .line 295
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    .line 296
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v1, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 300
    return-void

    .line 297
    :catchall_0
    move-exception v0

    .line 298
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 299
    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter "o"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0, p1}, Lcom/chartboost/sdk/impl/bc;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 307
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 309
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bc;->a()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 311
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 313
    :try_start_2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 316
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 311
    return v1

    .line 312
    :catchall_0
    move-exception v1

    .line 313
    :try_start_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V

    .line 314
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 315
    :catchall_1
    move-exception v0

    .line 316
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 317
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
    .line 321
    .local p1, c:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 323
    :try_start_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/bc;->a()Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 325
    :try_start_1
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    .line 327
    :try_start_2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 330
    iget-object v0, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 325
    return v1

    .line 326
    :catchall_0
    move-exception v1

    .line 327
    :try_start_3
    iget-object v2, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-virtual {v2, v0}, Lcom/chartboost/sdk/impl/bc;->b(Ljava/util/Map;)V

    .line 328
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 329
    :catchall_1
    move-exception v0

    .line 330
    iget-object v1, p0, Lcom/chartboost/sdk/impl/bc$d;->a:Lcom/chartboost/sdk/impl/bc;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/bc;->b(Lcom/chartboost/sdk/impl/bc;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 331
    throw v0
.end method
