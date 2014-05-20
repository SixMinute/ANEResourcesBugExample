.class Lcom/adobe/air/AndroidWebView$WebViewCustomView$1;
.super Landroid/widget/FrameLayout;
.source "AndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebView$WebViewCustomView;->onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/air/AndroidWebView$WebViewCustomView;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebView$WebViewCustomView;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView$1;->this$1:Lcom/adobe/air/AndroidWebView$WebViewCustomView;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 102
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    .line 111
    :goto_0
    return v0

    .line 105
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 107
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView$1;->this$1:Lcom/adobe/air/AndroidWebView$WebViewCustomView;

    invoke-virtual {v0}, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->onHideCustomView()V

    move v0, v2

    .line 108
    goto :goto_0

    .line 111
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
