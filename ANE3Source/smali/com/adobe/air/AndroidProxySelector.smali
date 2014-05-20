.class public final Lcom/adobe/air/AndroidProxySelector;
.super Ljava/lang/Object;
.source "AndroidProxySelector.java"


# static fields
.field private static final LIST_HEAD:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidProxySelector"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProxyUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const-string v2, ""

    .line 53
    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    .line 58
    invoke-virtual {v1, v0}, Ljava/net/ProxySelector;->select(Ljava/net/URI;)Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    const-string v0, ""

    move-object v0, v2

    .line 88
    :goto_0
    return-object v0

    .line 66
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/net/Proxy;

    .line 68
    sget-object v0, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v0, p0, :cond_2

    .line 88
    :cond_1
    :goto_1
    const-string v0, ""

    move-object v0, v2

    goto :goto_0

    .line 75
    :cond_2
    :try_start_1
    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    invoke-virtual {p0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 78
    invoke-virtual {p0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    goto :goto_1

    .line 82
    :catch_1
    move-exception v0

    goto :goto_1

    .line 80
    :catch_2
    move-exception v0

    goto :goto_1
.end method
