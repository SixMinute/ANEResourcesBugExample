.class Lcom/adobe/flashruntime/air/VideoViewAIR$1;
.super Ljava/lang/Object;
.source "VideoViewAIR.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/flashruntime/air/VideoViewAIR;-><init>(Landroid/content/Context;Lcom/adobe/air/AndroidActivityWrapper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/flashruntime/air/VideoViewAIR;


# direct methods
.method constructor <init>(Lcom/adobe/flashruntime/air/VideoViewAIR;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/adobe/flashruntime/air/VideoViewAIR$1;->this$0:Lcom/adobe/flashruntime/air/VideoViewAIR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    iget-object v0, p0, Lcom/adobe/flashruntime/air/VideoViewAIR$1;->this$0:Lcom/adobe/flashruntime/air/VideoViewAIR;

    iget-object v1, p0, Lcom/adobe/flashruntime/air/VideoViewAIR$1;->this$0:Lcom/adobe/flashruntime/air/VideoViewAIR;

    invoke-virtual {v1}, Lcom/adobe/flashruntime/air/VideoViewAIR;->getFPInstance()J

    move-result-wide v1

    #calls: Lcom/adobe/flashruntime/air/VideoViewAIR;->nativeSetSurfaceSize(JII)V
    invoke-static {v0, v1, v2, p3, p4}, Lcom/adobe/flashruntime/air/VideoViewAIR;->access$000(Lcom/adobe/flashruntime/air/VideoViewAIR;JII)V

    .line 59
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/flashruntime/air/VideoViewAIR$1;->this$0:Lcom/adobe/flashruntime/air/VideoViewAIR;

    iget-object v0, v0, Lcom/adobe/flashruntime/air/VideoViewAIR;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeStepCascade()V

    .line 64
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter

    .prologue
    .line 68
    iget-object v0, p0, Lcom/adobe/flashruntime/air/VideoViewAIR$1;->this$0:Lcom/adobe/flashruntime/air/VideoViewAIR;

    iget-object v0, v0, Lcom/adobe/flashruntime/air/VideoViewAIR;->mActivityWrapper:Lcom/adobe/air/AndroidActivityWrapper;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->planeBreakCascade()V

    .line 69
    return-void
.end method
