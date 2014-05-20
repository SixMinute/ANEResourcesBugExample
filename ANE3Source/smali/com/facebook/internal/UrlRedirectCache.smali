.class Lcom/facebook/internal/UrlRedirectCache;
.super Ljava/lang/Object;
.source "UrlRedirectCache.java"


# static fields
.field private static final REDIRECT_CONTENT_TAG:Ljava/lang/String;

.field static final TAG:Ljava/lang/String;

.field private static volatile urlRedirectCache:Lcom/facebook/internal/FileLruCache;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 31
    const-class v0, Lcom/facebook/internal/UrlRedirectCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_Redirect"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    .line 34
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static cacheUriRedirect(Landroid/content/Context;Ljava/net/URI;Ljava/net/URI;)V
    .locals 4
    .parameter "context"
    .parameter "fromUri"
    .parameter "toUri"

    .prologue
    .line 85
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const/4 v1, 0x0

    .line 91
    .local v1, redirectStream:Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/UrlRedirectCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object v0

    .line 92
    .local v0, cache:Lcom/facebook/internal/FileLruCache;
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/facebook/internal/FileLruCache;->openPutStream(Ljava/lang/String;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    .line 93
    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 94
    .end local v0           #cache:Lcom/facebook/internal/FileLruCache;
    :catch_0
    move-exception v2

    .line 97
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v2

    .line 97
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 98
    throw v2
.end method

.method static clearCache(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 103
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/UrlRedirectCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/internal/FileLruCache;->clearCache()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    return-void

    .line 104
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 105
    .local v0, e:Ljava/io/IOException;
    sget-object v1, Lcom/facebook/LoggingBehavior;->CACHE:Lcom/facebook/LoggingBehavior;

    const/4 v2, 0x5

    sget-object v3, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clearCache failed "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static declared-synchronized getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;
    .locals 5
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 37
    const-class v0, Lcom/facebook/internal/UrlRedirectCache;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    if-nez v1, :cond_0

    .line 38
    new-instance v1, Lcom/facebook/internal/FileLruCache;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/facebook/internal/UrlRedirectCache;->TAG:Ljava/lang/String;

    new-instance v4, Lcom/facebook/internal/FileLruCache$Limits;

    invoke-direct {v4}, Lcom/facebook/internal/FileLruCache$Limits;-><init>()V

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/internal/FileLruCache;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/FileLruCache$Limits;)V

    sput-object v1, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;

    .line 40
    :cond_0
    sget-object v1, Lcom/facebook/internal/UrlRedirectCache;->urlRedirectCache:Lcom/facebook/internal/FileLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 37
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static getRedirectedUri(Landroid/content/Context;Ljava/net/URI;)Ljava/net/URI;
    .locals 12
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v11, 0x0

    .line 44
    if-nez p1, :cond_0

    move-object v9, v11

    .line 81
    :goto_0
    return-object v9

    .line 48
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, uriString:Ljava/lang/String;
    const/4 v3, 0x0

    .line 52
    .local v3, reader:Ljava/io/InputStreamReader;
    :try_start_0
    invoke-static {p0}, Lcom/facebook/internal/UrlRedirectCache;->getCache(Landroid/content/Context;)Lcom/facebook/internal/FileLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 53
    .local v2, cache:Lcom/facebook/internal/FileLruCache;
    const/4 v5, 0x0

    .local v5, redirectExists:Z
    move-object v4, v3

    .line 54
    .end local v3           #reader:Ljava/io/InputStreamReader;
    .local v4, reader:Ljava/io/InputStreamReader;
    :goto_1
    :try_start_1
    sget-object v9, Lcom/facebook/internal/UrlRedirectCache;->REDIRECT_CONTENT_TAG:Ljava/lang/String;

    invoke-virtual {v2, v7, v9}, Lcom/facebook/internal/FileLruCache;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .local v6, stream:Ljava/io/InputStream;
    if-nez v6, :cond_1

    .line 71
    if-eqz v5, :cond_3

    .line 72
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, v7}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 78
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 55
    :cond_1
    const/4 v5, 0x1

    .line 58
    :try_start_2
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 59
    .end local v4           #reader:Ljava/io/InputStreamReader;
    .restart local v3       #reader:Ljava/io/InputStreamReader;
    const/16 v9, 0x80

    :try_start_3
    new-array v0, v9, [C

    .line 61
    .local v0, buffer:[C
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .local v8, urlBuilder:Ljava/lang/StringBuilder;
    :goto_2
    const/4 v9, 0x0

    array-length v10, v0

    invoke-virtual {v3, v0, v9, v10}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .local v1, bufferLength:I
    if-gtz v1, :cond_2

    .line 65
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 68
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v4, v3

    .end local v3           #reader:Ljava/io/InputStreamReader;
    .restart local v4       #reader:Ljava/io/InputStreamReader;
    goto :goto_1

    .line 63
    .end local v4           #reader:Ljava/io/InputStreamReader;
    .restart local v3       #reader:Ljava/io/InputStreamReader;
    :cond_2
    const/4 v9, 0x0

    invoke-virtual {v8, v0, v9, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 74
    .end local v0           #buffer:[C
    .end local v1           #bufferLength:I
    .end local v2           #cache:Lcom/facebook/internal/FileLruCache;
    .end local v5           #redirectExists:Z
    .end local v6           #stream:Ljava/io/InputStream;
    .end local v8           #urlBuilder:Ljava/lang/StringBuilder;
    :catch_0
    move-exception v9

    .line 78
    :goto_3
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    :goto_4
    move-object v9, v11

    .line 81
    goto :goto_0

    .line 76
    :catch_1
    move-exception v9

    .line 78
    :goto_5
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_4

    .line 77
    :catchall_0
    move-exception v9

    .line 78
    :goto_6
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 79
    throw v9

    .line 78
    .end local v3           #reader:Ljava/io/InputStreamReader;
    .restart local v2       #cache:Lcom/facebook/internal/FileLruCache;
    .restart local v4       #reader:Ljava/io/InputStreamReader;
    .restart local v5       #redirectExists:Z
    .restart local v6       #stream:Ljava/io/InputStream;
    :cond_3
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    move-object v3, v4

    .end local v4           #reader:Ljava/io/InputStreamReader;
    .restart local v3       #reader:Ljava/io/InputStreamReader;
    goto :goto_4

    .line 77
    .end local v3           #reader:Ljava/io/InputStreamReader;
    .end local v6           #stream:Ljava/io/InputStream;
    .restart local v4       #reader:Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #reader:Ljava/io/InputStreamReader;
    .restart local v3       #reader:Ljava/io/InputStreamReader;
    goto :goto_6

    .line 76
    .end local v3           #reader:Ljava/io/InputStreamReader;
    .restart local v4       #reader:Ljava/io/InputStreamReader;
    :catch_2
    move-exception v9

    move-object v3, v4

    .end local v4           #reader:Ljava/io/InputStreamReader;
    .restart local v3       #reader:Ljava/io/InputStreamReader;
    goto :goto_5

    .line 74
    .end local v3           #reader:Ljava/io/InputStreamReader;
    .restart local v4       #reader:Ljava/io/InputStreamReader;
    :catch_3
    move-exception v9

    move-object v3, v4

    .end local v4           #reader:Ljava/io/InputStreamReader;
    .restart local v3       #reader:Ljava/io/InputStreamReader;
    goto :goto_3
.end method
