.class Lcom/adobe/air/AdobeAIR$2;
.super Landroid/webkit/WebViewClient;
.source "AdobeAIR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AdobeAIR;->createWebView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AdobeAIR;


# direct methods
.method constructor <init>(Lcom/adobe/air/AdobeAIR;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/adobe/air/AdobeAIR$2;->this$0:Lcom/adobe/air/AdobeAIR;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$2;->this$0:Lcom/adobe/air/AdobeAIR;

    #getter for: Lcom/adobe/air/AdobeAIR;->mFirstLoad:Z
    invoke-static {v0}, Lcom/adobe/air/AdobeAIR;->access$100(Lcom/adobe/air/AdobeAIR;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$2;->this$0:Lcom/adobe/air/AdobeAIR;

    iget-object v0, v0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$2;->this$0:Lcom/adobe/air/AdobeAIR;

    const/4 v1, 0x0

    #setter for: Lcom/adobe/air/AdobeAIR;->mFirstLoad:Z
    invoke-static {v0, v1}, Lcom/adobe/air/AdobeAIR;->access$102(Lcom/adobe/air/AdobeAIR;Z)Z

    .line 171
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$2;->this$0:Lcom/adobe/air/AdobeAIR;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/adobe/air/AdobeAIR;->setRequestedOrientation(I)V

    .line 175
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$2;->this$0:Lcom/adobe/air/AdobeAIR;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR$2;->this$0:Lcom/adobe/air/AdobeAIR;

    #getter for: Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;
    invoke-static {v1}, Lcom/adobe/air/AdobeAIR;->access$200(Lcom/adobe/air/AdobeAIR;)Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AdobeAIR;->setContentView(Landroid/view/View;)V

    .line 178
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 186
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$2;->this$0:Lcom/adobe/air/AdobeAIR;

    const/4 v1, 0x1

    #setter for: Lcom/adobe/air/AdobeAIR;->mOffline:Z
    invoke-static {v0, v1}, Lcom/adobe/air/AdobeAIR;->access$302(Lcom/adobe/air/AdobeAIR;Z)Z

    .line 189
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$2;->this$0:Lcom/adobe/air/AdobeAIR;

    #getter for: Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/adobe/air/AdobeAIR;->access$200(Lcom/adobe/air/AdobeAIR;)Landroid/webkit/WebView;

    move-result-object v0

    const-string v1, "file:///android_res/raw/startga.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 107
    if-eqz p2, :cond_4

    .line 109
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 116
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR$2;->this$0:Lcom/adobe/air/AdobeAIR;

    iget-object v1, v1, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gamespace.adobe.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "dh8vjmvwgc27o.cloudfront.net"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    move v0, v4

    .line 155
    :goto_0
    return v0

    .line 123
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "www.adobe.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "play.google.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gaming.adobe.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_3
    move v1, v3

    .line 135
    :goto_1
    if-eqz v1, :cond_6

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 138
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$2;->this$0:Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AdobeAIR;->startActivity(Landroid/content/Intent;)V

    :cond_4
    :goto_2
    move v0, v3

    .line 155
    goto :goto_0

    :cond_5
    move v1, v3

    .line 131
    goto :goto_1

    .line 144
    :cond_6
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR$2;->this$0:Lcom/adobe/air/AdobeAIR;

    #getter for: Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;
    invoke-static {v0}, Lcom/adobe/air/AdobeAIR;->access$000(Lcom/adobe/air/AdobeAIR;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 147
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_7
    move v1, v4

    goto :goto_1
.end method
