.class Lcom/chartboost/sdk/impl/x$c;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/x;

.field private b:Lcom/chartboost/sdk/impl/x;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/x;Lcom/chartboost/sdk/impl/x;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/chartboost/sdk/impl/x$c;->a:Lcom/chartboost/sdk/impl/x;

    .line 89
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    .line 92
    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->c:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->c:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/c$a;->a()V

    .line 98
    :cond_0
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 103
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->d:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->d:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/c$a;->a()V

    .line 104
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7
    .parameter "webView"
    .parameter "url"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x3

    const/4 v5, 0x4

    const/4 v4, 0x0

    const-string v0, "UTF-8"

    .line 112
    const-string v0, ""

    .line 114
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 122
    const-string v1, "chartboost"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 124
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 125
    array-length v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 126
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v3, :cond_2

    .line 128
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->a:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->a:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/c$a;->a()V

    :cond_0
    move v0, v4

    .line 164
    :goto_0
    return v0

    .line 117
    :catch_0
    move-exception v0

    .line 118
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->a:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->a:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/c$a;->a()V

    :cond_1
    move v0, v4

    .line 119
    goto :goto_0

    .line 131
    :cond_2
    const/4 v2, 0x2

    aget-object v2, v0, v2

    .line 133
    const-string v3, "close"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 135
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->a:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->a:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/c$a;->a()V

    .line 164
    :cond_3
    :goto_1
    const/4 v0, 0x1

    goto :goto_0

    .line 137
    :cond_4
    const-string v3, "link"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 139
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ge v2, v5, :cond_6

    .line 141
    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->a:Lcom/chartboost/sdk/c$a;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    iget-object v0, v0, Lcom/chartboost/sdk/impl/x;->a:Lcom/chartboost/sdk/c$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/c$a;->a()V

    :cond_5
    move v0, v4

    .line 142
    goto :goto_0

    .line 149
    :cond_6
    const/4 v2, 0x3

    :try_start_1
    aget-object v2, v0, v2

    const-string v3, "UTF-8"

    invoke-static {v2, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 150
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v1, v5, :cond_7

    .line 152
    new-instance v1, Lorg/json/JSONTokener;

    const/4 v3, 0x4

    aget-object v0, v0, v3

    const-string v3, "UTF-8"

    invoke-static {v0, v3}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 153
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-object v1, v0

    move-object v0, v2

    .line 159
    :goto_2
    iget-object v2, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/x;->b:Lcom/chartboost/sdk/c$c;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/chartboost/sdk/impl/x$c;->b:Lcom/chartboost/sdk/impl/x;

    iget-object v2, v2, Lcom/chartboost/sdk/impl/x;->b:Lcom/chartboost/sdk/c$c;

    invoke-interface {v2, v0, v1}, Lcom/chartboost/sdk/c$c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_1

    .line 155
    :catch_1
    move-exception v0

    move-object v1, v6

    .line 156
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    move-object v1, v6

    goto :goto_2

    .line 155
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :cond_7
    move-object v0, v2

    move-object v1, v6

    goto :goto_2
.end method
