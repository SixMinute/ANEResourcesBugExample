.class Lcom/chartboost/sdk/impl/x$b;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/x;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/x;Landroid/content/Context;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, -0x1

    .line 70
    iput-object p1, p0, Lcom/chartboost/sdk/impl/x$b;->a:Lcom/chartboost/sdk/impl/x;

    .line 71
    invoke-direct {p0, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/x$b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 73
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/x$b;->setBackgroundColor(I)V

    .line 74
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/x$b;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 75
    return-void
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 78
    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$b;->a:Lcom/chartboost/sdk/impl/x;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->a:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$b;->a:Lcom/chartboost/sdk/impl/x;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->a:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/c$a;->a()V

    .line 81
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
