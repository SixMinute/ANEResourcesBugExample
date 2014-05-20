.class Lcom/facebook/Session$4;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Session;->postStateChange(Lcom/facebook/SessionState;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/Session;

.field private final synthetic val$exception:Ljava/lang/Exception;

.field private final synthetic val$newState:Lcom/facebook/SessionState;


# direct methods
.method constructor <init>(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/Session$4;->this$0:Lcom/facebook/Session;

    iput-object p2, p0, Lcom/facebook/Session$4;->val$newState:Lcom/facebook/SessionState;

    iput-object p3, p0, Lcom/facebook/Session$4;->val$exception:Ljava/lang/Exception;

    .line 1542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/Session$4;)Lcom/facebook/Session;
    .locals 1
    .parameter

    .prologue
    .line 1542
    iget-object v0, p0, Lcom/facebook/Session$4;->this$0:Lcom/facebook/Session;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1544
    iget-object v2, p0, Lcom/facebook/Session$4;->this$0:Lcom/facebook/Session;

    #getter for: Lcom/facebook/Session;->callbacks:Ljava/util/List;
    invoke-static {v2}, Lcom/facebook/Session;->access$12(Lcom/facebook/Session;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 1545
    :try_start_0
    iget-object v3, p0, Lcom/facebook/Session$4;->this$0:Lcom/facebook/Session;

    #getter for: Lcom/facebook/Session;->callbacks:Ljava/util/List;
    invoke-static {v3}, Lcom/facebook/Session;->access$12(Lcom/facebook/Session;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1544
    monitor-exit v2

    .line 1556
    return-void

    .line 1545
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Session$StatusCallback;

    .line 1546
    .local v0, callback:Lcom/facebook/Session$StatusCallback;
    new-instance v1, Lcom/facebook/Session$4$1;

    iget-object v4, p0, Lcom/facebook/Session$4;->val$newState:Lcom/facebook/SessionState;

    iget-object v5, p0, Lcom/facebook/Session$4;->val$exception:Ljava/lang/Exception;

    invoke-direct {v1, p0, v0, v4, v5}, Lcom/facebook/Session$4$1;-><init>(Lcom/facebook/Session$4;Lcom/facebook/Session$StatusCallback;Lcom/facebook/SessionState;Ljava/lang/Exception;)V

    .line 1553
    .local v1, closure:Ljava/lang/Runnable;
    iget-object v4, p0, Lcom/facebook/Session$4;->this$0:Lcom/facebook/Session;

    #getter for: Lcom/facebook/Session;->handler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/facebook/Session;->access$13(Lcom/facebook/Session;)Landroid/os/Handler;

    move-result-object v4

    #calls: Lcom/facebook/Session;->runWithHandlerOrExecutor(Landroid/os/Handler;Ljava/lang/Runnable;)V
    invoke-static {v4, v1}, Lcom/facebook/Session;->access$14(Landroid/os/Handler;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 1544
    .end local v0           #callback:Lcom/facebook/Session$StatusCallback;
    .end local v1           #closure:Ljava/lang/Runnable;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
