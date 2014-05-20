.class Lcom/adobe/air/AndroidWebView$3;
.super Ljava/lang/Object;
.source "AndroidWebView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebView;->refreshGlobalBounds()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidWebView;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 802
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$3;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 806
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$3;->this$0:Lcom/adobe/air/AndroidWebView;

    #getter for: Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;
    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$100(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    move-result-object v0

    if-nez v0, :cond_0

    .line 818
    :goto_0
    return-void

    .line 809
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$3;->this$0:Lcom/adobe/air/AndroidWebView;

    #getter for: Lcom/adobe/air/AndroidWebView;->mGlobalBounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/adobe/air/AndroidWebView;->access$800(Lcom/adobe/air/AndroidWebView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v2, p0, Lcom/adobe/air/AndroidWebView$3;->this$0:Lcom/adobe/air/AndroidWebView;

    #getter for: Lcom/adobe/air/AndroidWebView;->mGlobalBounds:Landroid/graphics/Rect;
    invoke-static {v2}, Lcom/adobe/air/AndroidWebView;->access$800(Lcom/adobe/air/AndroidWebView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 810
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$3;->this$0:Lcom/adobe/air/AndroidWebView;

    #getter for: Lcom/adobe/air/AndroidWebView;->mGlobalBounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/adobe/air/AndroidWebView;->access$800(Lcom/adobe/air/AndroidWebView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 811
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$3;->this$0:Lcom/adobe/air/AndroidWebView;

    #getter for: Lcom/adobe/air/AndroidWebView;->mGlobalBounds:Landroid/graphics/Rect;
    invoke-static {v1}, Lcom/adobe/air/AndroidWebView;->access$800(Lcom/adobe/air/AndroidWebView;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 813
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$3;->this$0:Lcom/adobe/air/AndroidWebView;

    #getter for: Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;
    invoke-static {v1}, Lcom/adobe/air/AndroidWebView;->access$100(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$3;->this$0:Lcom/adobe/air/AndroidWebView;

    #getter for: Lcom/adobe/air/AndroidWebView;->mView:Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;
    invoke-static {v0}, Lcom/adobe/air/AndroidWebView;->access$100(Lcom/adobe/air/AndroidWebView;)Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$AndroidWebViewImpl;->requestLayout()V

    goto :goto_0
.end method
