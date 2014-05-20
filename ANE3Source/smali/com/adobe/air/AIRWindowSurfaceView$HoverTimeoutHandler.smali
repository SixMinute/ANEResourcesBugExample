.class Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;
.super Landroid/os/Handler;
.source "AIRWindowSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AIRWindowSurfaceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HoverTimeoutHandler"
.end annotation


# static fields
.field static final INTERVAL:I = 0x1f4


# instance fields
.field private mAIRWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

.field private mLastMove:J

.field final synthetic this$0:Lcom/adobe/air/AIRWindowSurfaceView;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AIRWindowSurfaceView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 221
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 222
    iput-object p2, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->mAIRWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    .line 223
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter

    .prologue
    const-wide/16 v6, 0x1f4

    const/4 v9, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 227
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->mLastMove:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-ltz v0, :cond_0

    .line 229
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    #setter for: Lcom/adobe/air/AIRWindowSurfaceView;->mHoverInProgress:Z
    invoke-static {v0, v5}, Lcom/adobe/air/AIRWindowSurfaceView;->access$002(Lcom/adobe/air/AIRWindowSurfaceView;Z)Z

    .line 230
    new-instance v0, Lcom/adobe/air/TouchEventData;

    const/16 v1, 0x20

    iget-object v2, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->mAIRWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    #getter for: Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedXCoord:F
    invoke-static {v2}, Lcom/adobe/air/AIRWindowSurfaceView;->access$100(Lcom/adobe/air/AIRWindowSurfaceView;)F

    move-result v2

    iget-object v3, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->mAIRWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    #getter for: Lcom/adobe/air/AIRWindowSurfaceView;->mLastTouchedYCoord:F
    invoke-static {v3}, Lcom/adobe/air/AIRWindowSurfaceView;->access$200(Lcom/adobe/air/AIRWindowSurfaceView;)F

    move-result v3

    const/4 v8, 0x1

    iget-object v6, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->mAIRWindowSurfaceView:Lcom/adobe/air/AIRWindowSurfaceView;

    #getter for: Lcom/adobe/air/AIRWindowSurfaceView;->mHoverMetaState:I
    invoke-static {v6}, Lcom/adobe/air/AIRWindowSurfaceView;->access$300(Lcom/adobe/air/AIRWindowSurfaceView;)I

    move-result v10

    move v6, v4

    move v7, v4

    invoke-direct/range {v0 .. v10}, Lcom/adobe/air/TouchEventData;-><init>(IFFFIFFZ[FI)V

    .line 240
    invoke-static {v5, v0, v9}, Lcom/adobe/air/Entrypoints;->registerTouchCallback(ILcom/adobe/air/TouchEventData;Landroid/os/Handler;)Z

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    #getter for: Lcom/adobe/air/AIRWindowSurfaceView;->mHoverTimeoutHandler:Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;
    invoke-static {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$400(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;

    move-result-object v0

    invoke-virtual {v0, v5, v6, v7}, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public setLastMove(J)V
    .locals 0
    .parameter

    .prologue
    .line 248
    iput-wide p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$HoverTimeoutHandler;->mLastMove:J

    return-void
.end method
