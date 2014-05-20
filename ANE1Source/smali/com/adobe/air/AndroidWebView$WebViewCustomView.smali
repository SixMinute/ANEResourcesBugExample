.class public Lcom/adobe/air/AndroidWebView$WebViewCustomView;
.super Ljava/lang/Object;
.source "AndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/AndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebViewCustomView"
.end annotation


# instance fields
.field private mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private mCustomViewHolder:Landroid/widget/FrameLayout;

.field final synthetic this$0:Lcom/adobe/air/AndroidWebView;


# direct methods
.method public constructor <init>(Lcom/adobe/air/AndroidWebView;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->this$0:Lcom/adobe/air/AndroidWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    return-void
.end method


# virtual methods
.method public onHideCustomView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 131
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getView()Landroid/view/View;

    move-result-object v0

    .line 136
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_1

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 143
    iput-object v2, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    .line 145
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 146
    iput-object v2, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    goto :goto_0
.end method

.method public onShowCustomView(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x8

    const/4 v3, -0x1

    .line 81
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_0

    .line 84
    invoke-interface {p2}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    .line 127
    :goto_0
    return-void

    .line 88
    :cond_0
    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCallback:Landroid/webkit/WebChromeClient$CustomViewCallback;

    .line 91
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getView()Landroid/view/View;

    move-result-object v0

    .line 92
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 94
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/adobe/air/AndroidActivityWrapper;->getOverlaysLayout(Z)Landroid/widget/RelativeLayout;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_1

    .line 96
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 98
    :cond_1
    new-instance v1, Lcom/adobe/air/AndroidWebView$WebViewCustomView$1;

    iget-object v2, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->this$0:Lcom/adobe/air/AndroidWebView;

    #getter for: Lcom/adobe/air/AndroidWebView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/adobe/air/AndroidWebView;->access$000(Lcom/adobe/air/AndroidWebView;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/adobe/air/AndroidWebView$WebViewCustomView$1;-><init>(Lcom/adobe/air/AndroidWebView$WebViewCustomView;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    .line 114
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 115
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 116
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x11

    invoke-direct {v0, v3, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 123
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 126
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$WebViewCustomView;->mCustomViewHolder:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestFocus()Z

    goto :goto_0
.end method
