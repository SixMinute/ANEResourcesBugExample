.class Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;
.super Ljava/lang/Object;
.source "AndroidCamera.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidCamera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreviewSurfaceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidCamera;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 596
    iput-object p1, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 601
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter

    .prologue
    .line 606
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    const/4 v1, 0x1

    #setter for: Lcom/adobe/air/AndroidCamera;->mPreviewSurfaceValid:Z
    invoke-static {v0, v1}, Lcom/adobe/air/AndroidCamera;->access$702(Lcom/adobe/air/AndroidCamera;Z)Z

    .line 607
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    #getter for: Lcom/adobe/air/AndroidCamera;->mClientId:J
    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$000(Lcom/adobe/air/AndroidCamera;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    #getter for: Lcom/adobe/air/AndroidCamera;->mCallbacksRegistered:Z
    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$100(Lcom/adobe/air/AndroidCamera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    iget-object v1, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    #getter for: Lcom/adobe/air/AndroidCamera;->mClientId:J
    invoke-static {v1}, Lcom/adobe/air/AndroidCamera;->access$000(Lcom/adobe/air/AndroidCamera;)J

    move-result-wide v1

    #calls: Lcom/adobe/air/AndroidCamera;->nativeOnCanOpenCamera(J)V
    invoke-static {v0, v1, v2}, Lcom/adobe/air/AndroidCamera;->access$800(Lcom/adobe/air/AndroidCamera;J)V

    .line 609
    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 4
    .parameter

    .prologue
    .line 614
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    const/4 v1, 0x0

    #setter for: Lcom/adobe/air/AndroidCamera;->mPreviewSurfaceValid:Z
    invoke-static {v0, v1}, Lcom/adobe/air/AndroidCamera;->access$702(Lcom/adobe/air/AndroidCamera;Z)Z

    .line 616
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    #getter for: Lcom/adobe/air/AndroidCamera;->mClientId:J
    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$000(Lcom/adobe/air/AndroidCamera;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    #getter for: Lcom/adobe/air/AndroidCamera;->mCallbacksRegistered:Z
    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$100(Lcom/adobe/air/AndroidCamera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    iget-object v1, p0, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;->this$0:Lcom/adobe/air/AndroidCamera;

    #getter for: Lcom/adobe/air/AndroidCamera;->mClientId:J
    invoke-static {v1}, Lcom/adobe/air/AndroidCamera;->access$000(Lcom/adobe/air/AndroidCamera;)J

    move-result-wide v1

    #calls: Lcom/adobe/air/AndroidCamera;->nativeOnShouldCloseCamera(J)V
    invoke-static {v0, v1, v2}, Lcom/adobe/air/AndroidCamera;->access$900(Lcom/adobe/air/AndroidCamera;J)V

    .line 618
    :cond_0
    return-void
.end method
