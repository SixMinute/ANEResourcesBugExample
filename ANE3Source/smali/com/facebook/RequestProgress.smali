.class Lcom/facebook/RequestProgress;
.super Ljava/lang/Object;
.source "RequestProgress.java"


# instance fields
.field private final callbackHandler:Landroid/os/Handler;

.field private lastReportedProgress:J

.field private maxProgress:J

.field private progress:J

.field private final request:Lcom/facebook/Request;

.field private final threshold:J


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/facebook/Request;)V
    .locals 2
    .parameter "callbackHandler"
    .parameter "request"

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/Request;

    .line 30
    iput-object p1, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    .line 32
    invoke-static {}, Lcom/facebook/Settings;->getOnProgressThreshold()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->threshold:J

    .line 33
    return-void
.end method


# virtual methods
.method addProgress(J)V
    .locals 6
    .parameter "size"

    .prologue
    .line 44
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    .line 46
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v2, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    iget-wide v4, p0, Lcom/facebook/RequestProgress;->threshold:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v2, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/RequestProgress;->reportProgress()V

    .line 49
    :cond_1
    return-void
.end method

.method addToMax(J)V
    .locals 2
    .parameter "size"

    .prologue
    .line 52
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    .line 53
    return-void
.end method

.method getMaxProgress()J
    .locals 2

    .prologue
    .line 40
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    return-wide v0
.end method

.method getProgress()J
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/facebook/RequestProgress;->progress:J

    return-wide v0
.end method

.method reportProgress()V
    .locals 11

    .prologue
    .line 56
    iget-wide v1, p0, Lcom/facebook/RequestProgress;->progress:J

    iget-wide v9, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    cmp-long v1, v1, v9

    if-lez v1, :cond_0

    .line 57
    iget-object v1, p0, Lcom/facebook/RequestProgress;->request:Lcom/facebook/Request;

    invoke-virtual {v1}, Lcom/facebook/Request;->getCallback()Lcom/facebook/Request$Callback;

    move-result-object v8

    .line 58
    .local v8, callback:Lcom/facebook/Request$Callback;
    iget-wide v1, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    const-wide/16 v9, 0x0

    cmp-long v1, v1, v9

    if-lez v1, :cond_0

    instance-of v1, v8, Lcom/facebook/Request$OnProgressCallback;

    if-eqz v1, :cond_0

    .line 60
    iget-wide v4, p0, Lcom/facebook/RequestProgress;->progress:J

    .line 61
    .local v4, currentCopy:J
    iget-wide v6, p0, Lcom/facebook/RequestProgress;->maxProgress:J

    .line 62
    .local v6, maxProgressCopy:J
    move-object v0, v8

    check-cast v0, Lcom/facebook/Request$OnProgressCallback;

    move-object v3, v0

    .line 63
    .local v3, callbackCopy:Lcom/facebook/Request$OnProgressCallback;
    iget-object v1, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    .line 64
    invoke-interface {v3, v4, v5, v6, v7}, Lcom/facebook/Request$OnProgressCallback;->onProgress(JJ)V

    .line 74
    :goto_0
    iget-wide v1, p0, Lcom/facebook/RequestProgress;->progress:J

    iput-wide v1, p0, Lcom/facebook/RequestProgress;->lastReportedProgress:J

    .line 77
    .end local v3           #callbackCopy:Lcom/facebook/Request$OnProgressCallback;
    .end local v4           #currentCopy:J
    .end local v6           #maxProgressCopy:J
    .end local v8           #callback:Lcom/facebook/Request$Callback;
    :cond_0
    return-void

    .line 67
    .restart local v3       #callbackCopy:Lcom/facebook/Request$OnProgressCallback;
    .restart local v4       #currentCopy:J
    .restart local v6       #maxProgressCopy:J
    .restart local v8       #callback:Lcom/facebook/Request$Callback;
    :cond_1
    iget-object v9, p0, Lcom/facebook/RequestProgress;->callbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/facebook/RequestProgress$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/facebook/RequestProgress$1;-><init>(Lcom/facebook/RequestProgress;Lcom/facebook/Request$OnProgressCallback;JJ)V

    invoke-virtual {v9, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
