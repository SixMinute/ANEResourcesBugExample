.class Lcom/adobe/air/AIRWindowSurfaceView$1;
.super Ljava/lang/Object;
.source "AIRWindowSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AIRWindowSurfaceView;->setScrollTo(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AIRWindowSurfaceView;

.field final synthetic val$height:I

.field final synthetic val$overlays:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/adobe/air/AIRWindowSurfaceView;ILandroid/widget/RelativeLayout;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/adobe/air/AIRWindowSurfaceView$1;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    iput p2, p0, Lcom/adobe/air/AIRWindowSurfaceView$1;->val$height:I

    iput-object p3, p0, Lcom/adobe/air/AIRWindowSurfaceView$1;->val$overlays:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1004
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$1;->val$height:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$1;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    #getter for: Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;
    invoke-static {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$600(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$1;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    #getter for: Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;
    invoke-static {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$600(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView;->resetGlobalBounds()V

    .line 1007
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$1;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    #setter for: Lcom/adobe/air/AIRWindowSurfaceView;->mResizedWebView:Lcom/adobe/air/AndroidWebView;
    invoke-static {v0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->access$602(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebView;

    .line 1009
    :cond_0
    iget v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$1;->val$height:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$1;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    #getter for: Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;
    invoke-static {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$700(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidStageText;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$1;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    #getter for: Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;
    invoke-static {v0}, Lcom/adobe/air/AIRWindowSurfaceView;->access$700(Lcom/adobe/air/AIRWindowSurfaceView;)Lcom/adobe/air/AndroidStageText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidStageText;->resetGlobalBounds()V

    .line 1012
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$1;->this$0:Lcom/adobe/air/AIRWindowSurfaceView;

    #setter for: Lcom/adobe/air/AIRWindowSurfaceView;->mResizedStageText:Lcom/adobe/air/AndroidStageText;
    invoke-static {v0, v1}, Lcom/adobe/air/AIRWindowSurfaceView;->access$702(Lcom/adobe/air/AIRWindowSurfaceView;Lcom/adobe/air/AndroidStageText;)Lcom/adobe/air/AndroidStageText;

    .line 1014
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$1;->val$overlays:Landroid/widget/RelativeLayout;

    iget v1, p0, Lcom/adobe/air/AIRWindowSurfaceView$1;->val$height:I

    neg-int v1, v1

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 1015
    iget-object v0, p0, Lcom/adobe/air/AIRWindowSurfaceView$1;->val$overlays:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->requestLayout()V

    .line 1016
    return-void
.end method
