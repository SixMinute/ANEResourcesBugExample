.class Lcom/chartboost/sdk/impl/i$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/i;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/i;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/i;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/i$1;->a:Lcom/chartboost/sdk/impl/i;

    .line 26
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 2
    .parameter "view"
    .parameter "url"

    .prologue
    .line 30
    if-nez p2, :cond_0

    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0

    .line 33
    :cond_0
    const-string v0, "chartboost"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "click"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    iget-object v0, p0, Lcom/chartboost/sdk/impl/i$1;->a:Lcom/chartboost/sdk/impl/i;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/i;->a:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/i$1;->a:Lcom/chartboost/sdk/impl/i;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/i;->a:Landroid/view/View$OnClickListener;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/i$1;->a:Lcom/chartboost/sdk/impl/i;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 36
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
