.class Lcom/adobe/air/AndroidWebView$2$1;
.super Ljava/lang/Thread;
.source "AndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidWebView$2;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/adobe/air/AndroidWebView$2;

.field final synthetic val$error:Landroid/net/http/SslError;

.field final synthetic val$handler:Landroid/webkit/SslErrorHandler;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidWebView$2;Landroid/net/http/SslError;Ljava/lang/String;Landroid/webkit/SslErrorHandler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 523
    iput-object p1, p0, Lcom/adobe/air/AndroidWebView$2$1;->this$1:Lcom/adobe/air/AndroidWebView$2;

    iput-object p2, p0, Lcom/adobe/air/AndroidWebView$2$1;->val$error:Landroid/net/http/SslError;

    iput-object p3, p0, Lcom/adobe/air/AndroidWebView$2$1;->val$url:Ljava/lang/String;

    iput-object p4, p0, Lcom/adobe/air/AndroidWebView$2$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 525
    const/4 v0, 0x0

    .line 527
    iget-object v1, p0, Lcom/adobe/air/AndroidWebView$2$1;->val$error:Landroid/net/http/SslError;

    invoke-virtual {v1}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 528
    new-instance v1, Lcom/adobe/air/SSLSecurityDialog;

    invoke-direct {v1}, Lcom/adobe/air/SSLSecurityDialog;-><init>()V

    .line 529
    iget-object v2, p0, Lcom/adobe/air/AndroidWebView$2$1;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/adobe/air/AndroidWebView$2$1;->val$error:Landroid/net/http/SslError;

    invoke-virtual {v3}, Landroid/net/http/SslError;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/adobe/air/SSLSecurityDialog;->show(Ljava/lang/String;Landroid/net/http/SslCertificate;)Ljava/lang/String;

    .line 530
    invoke-virtual {v1}, Lcom/adobe/air/SSLSecurityDialog;->getUserAction()Ljava/lang/String;

    move-result-object v1

    .line 532
    const-string v2, "session"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 533
    const/4 v0, 0x1

    .line 536
    :cond_0
    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$2$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 540
    :goto_0
    return-void

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidWebView$2$1;->val$handler:Landroid/webkit/SslErrorHandler;

    invoke-virtual {v0}, Landroid/webkit/SslErrorHandler;->cancel()V

    goto :goto_0
.end method
