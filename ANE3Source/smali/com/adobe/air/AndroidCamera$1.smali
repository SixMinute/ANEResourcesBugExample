.class Lcom/adobe/air/AndroidCamera$1;
.super Ljava/lang/Object;
.source "AndroidCamera.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidCamera;->startCapture(IIII)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidCamera;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidCamera;)V
    .locals 0
    .parameter

    .prologue
    .line 484
    iput-object p1, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 491
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    #getter for: Lcom/adobe/air/AndroidCamera;->mClientId:J
    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$000(Lcom/adobe/air/AndroidCamera;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    #getter for: Lcom/adobe/air/AndroidCamera;->mCallbacksRegistered:Z
    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$100(Lcom/adobe/air/AndroidCamera;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    iget-object v1, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    #getter for: Lcom/adobe/air/AndroidCamera;->mClientId:J
    invoke-static {v1}, Lcom/adobe/air/AndroidCamera;->access$000(Lcom/adobe/air/AndroidCamera;)J

    move-result-wide v1

    #calls: Lcom/adobe/air/AndroidCamera;->nativeOnFrameCaptured(J[B)V
    invoke-static {v0, v1, v2, p1}, Lcom/adobe/air/AndroidCamera;->access$200(Lcom/adobe/air/AndroidCamera;J[B)V

    .line 497
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    #getter for: Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B
    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$300(Lcom/adobe/air/AndroidCamera;)[B

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    #getter for: Lcom/adobe/air/AndroidCamera;->mBuffer1:[B
    invoke-static {v1}, Lcom/adobe/air/AndroidCamera;->access$400(Lcom/adobe/air/AndroidCamera;)[B

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 498
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    iget-object v1, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    #getter for: Lcom/adobe/air/AndroidCamera;->mBuffer2:[B
    invoke-static {v1}, Lcom/adobe/air/AndroidCamera;->access$500(Lcom/adobe/air/AndroidCamera;)[B

    move-result-object v1

    #setter for: Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B
    invoke-static {v0, v1}, Lcom/adobe/air/AndroidCamera;->access$302(Lcom/adobe/air/AndroidCamera;[B)[B

    .line 503
    :goto_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    #getter for: Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;
    invoke-static {v0}, Lcom/adobe/air/AndroidCamera;->access$600(Lcom/adobe/air/AndroidCamera;)Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    #getter for: Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B
    invoke-static {v1}, Lcom/adobe/air/AndroidCamera;->access$300(Lcom/adobe/air/AndroidCamera;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V

    .line 509
    :goto_1
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    iget-object v1, p0, Lcom/adobe/air/AndroidCamera$1;->this$0:Lcom/adobe/air/AndroidCamera;

    #getter for: Lcom/adobe/air/AndroidCamera;->mBuffer1:[B
    invoke-static {v1}, Lcom/adobe/air/AndroidCamera;->access$400(Lcom/adobe/air/AndroidCamera;)[B

    move-result-object v1

    #setter for: Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B
    invoke-static {v0, v1}, Lcom/adobe/air/AndroidCamera;->access$302(Lcom/adobe/air/AndroidCamera;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 505
    :catch_0
    move-exception v0

    goto :goto_1
.end method
