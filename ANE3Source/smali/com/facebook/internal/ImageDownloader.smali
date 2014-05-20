.class public Lcom/facebook/internal/ImageDownloader;
.super Ljava/lang/Object;
.source "ImageDownloader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;,
        Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;,
        Lcom/facebook/internal/ImageDownloader$DownloaderContext;,
        Lcom/facebook/internal/ImageDownloader$RequestKey;
    }
.end annotation


# static fields
.field private static final CACHE_READ_QUEUE_MAX_CONCURRENT:I = 0x2

.field private static final DOWNLOAD_QUEUE_MAX_CONCURRENT:I = 0x8

.field private static cacheReadQueue:Lcom/facebook/internal/WorkQueue;

.field private static downloadQueue:Lcom/facebook/internal/WorkQueue;

.field private static handler:Landroid/os/Handler;

.field private static final pendingRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/internal/ImageDownloader$RequestKey;",
            "Lcom/facebook/internal/ImageDownloader$DownloaderContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    .line 40
    new-instance v0, Lcom/facebook/internal/WorkQueue;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/facebook/internal/WorkQueue;-><init>(I)V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 175
    invoke-static {p0, p1, p2}, Lcom/facebook/internal/ImageDownloader;->readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V

    return-void
.end method

.method static synthetic access$1(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 205
    invoke-static {p0, p1}, Lcom/facebook/internal/ImageDownloader;->download(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V

    return-void
.end method

.method public static cancelRequest(Lcom/facebook/internal/ImageRequest;)Z
    .locals 5
    .parameter "request"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, cancelled:Z
    new-instance v2, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    .line 75
    .local v2, key:Lcom/facebook/internal/ImageDownloader$RequestKey;
    sget-object v3, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v3

    .line 76
    :try_start_0
    sget-object v4, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 77
    .local v1, downloaderContext:Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v1, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 83
    iget-object v4, v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {v4}, Lcom/facebook/internal/WorkQueue$WorkItem;->cancel()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 84
    sget-object v4, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    :cond_0
    :goto_0
    monitor-exit v3

    .line 93
    return v0

    .line 88
    :cond_1
    const/4 v4, 0x1

    iput-boolean v4, v1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    goto :goto_0

    .line 75
    .end local v1           #downloaderContext:Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public static clearCache(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 107
    invoke-static {p0}, Lcom/facebook/internal/ImageResponseCache;->clearCache(Landroid/content/Context;)V

    .line 108
    invoke-static {p0}, Lcom/facebook/internal/UrlRedirectCache;->clearCache(Landroid/content/Context;)V

    .line 109
    return-void
.end method

.method private static download(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;)V
    .locals 9
    .parameter "key"
    .parameter "context"

    .prologue
    .line 206
    const/4 v1, 0x0

    .line 207
    .local v1, connection:Ljava/net/HttpURLConnection;
    const/4 v6, 0x0

    .line 208
    .local v6, stream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 209
    .local v3, error:Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 210
    .local v0, bitmap:Landroid/graphics/Bitmap;
    const/4 v4, 0x1

    .line 213
    .local v4, issueResponse:Z
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v5, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    .end local v2           #url:Ljava/net/URL;
    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    .line 215
    .end local v1           #connection:Ljava/net/HttpURLConnection;
    .local v2, connection:Ljava/net/HttpURLConnection;
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v2, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 217
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 247
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v6

    .line 248
    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 249
    .local v5, reader:Ljava/io/InputStreamReader;
    const/16 p1, 0x80

    new-array p1, p1, [C

    .line 251
    .local p1, buffer:[C
    new-instance v3, Ljava/lang/StringBuilder;

    .end local v3           #error:Ljava/lang/Exception;
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    .local v3, errorMessageBuilder:Ljava/lang/StringBuilder;
    :goto_0
    const/4 v1, 0x0

    array-length v7, p1

    invoke-virtual {v5, p1, v1, v7}, Ljava/io/InputStreamReader;->read([CII)I

    move-result v1

    .local v1, bufferLength:I
    if-gtz v1, :cond_1

    .line 255
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 257
    new-instance p1, Lcom/facebook/FacebookException;

    .end local p1           #buffer:[C
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v1           #bufferLength:I
    invoke-direct {p1, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2

    .local p1, error:Ljava/lang/Exception;
    move v1, v4

    .end local v4           #issueResponse:Z
    .local v1, issueResponse:Z
    move-object v3, v6

    .end local v6           #stream:Ljava/io/InputStream;
    .local v3, stream:Ljava/io/InputStream;
    move-object v8, p1

    .end local p1           #error:Ljava/lang/Exception;
    .local v8, error:Ljava/lang/Exception;
    move-object p1, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    move-object v0, v8

    .line 265
    .end local v5           #reader:Ljava/io/InputStreamReader;
    .end local v8           #error:Ljava/lang/Exception;
    .local v0, error:Ljava/lang/Exception;
    :goto_1
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 266
    invoke-static {v2}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    move v8, v1

    .end local v1           #issueResponse:Z
    .local v8, issueResponse:Z
    move-object v1, v0

    .end local v0           #error:Ljava/lang/Exception;
    .local v1, error:Ljava/lang/Exception;
    move-object v0, v2

    .end local v2           #connection:Ljava/net/HttpURLConnection;
    .local v0, connection:Ljava/net/HttpURLConnection;
    move v2, v8

    .line 269
    .end local v8           #issueResponse:Z
    .local v2, issueResponse:Z
    :goto_2
    if-eqz v2, :cond_0

    .line 270
    const/4 v0, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 272
    .end local v0           #connection:Ljava/net/HttpURLConnection;
    :cond_0
    return-void

    .line 221
    .end local v1           #error:Ljava/lang/Exception;
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .local v2, connection:Ljava/net/HttpURLConnection;
    .local v3, error:Ljava/lang/Exception;
    .restart local v4       #issueResponse:Z
    .restart local v6       #stream:Ljava/io/InputStream;
    .local p1, context:Landroid/content/Context;
    :sswitch_0
    const/4 v1, 0x0

    .line 223
    .end local v4           #issueResponse:Z
    .local v1, issueResponse:Z
    :try_start_2
    const-string v4, "location"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 224
    .local v4, redirectLocation:Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 225
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 226
    .local v5, redirectUri:Ljava/net/URI;
    iget-object v4, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    .end local v4           #redirectLocation:Ljava/lang/String;
    invoke-static {p1, v4, v5}, Lcom/facebook/internal/UrlRedirectCache;->cacheUriRedirect(Landroid/content/Context;Ljava/net/URI;Ljava/net/URI;)V

    .line 230
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object p1

    .line 231
    .local p1, downloaderContext:Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz p1, :cond_2

    iget-boolean v4, p1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v4, :cond_2

    .line 233
    iget-object p1, p1, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    .line 234
    .end local p1           #downloaderContext:Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    new-instance v4, Lcom/facebook/internal/ImageDownloader$RequestKey;

    iget-object v7, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->tag:Ljava/lang/Object;

    invoke-direct {v4, v5, v7}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    .line 235
    const/4 v5, 0x0

    .line 232
    invoke-static {p1, v4, v5}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_3

    .end local v5           #redirectUri:Ljava/net/URI;
    move-object p1, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    move-object v0, v3

    .end local v3           #error:Ljava/lang/Exception;
    .local v0, error:Ljava/lang/Exception;
    move-object v3, v6

    .line 238
    .end local v6           #stream:Ljava/io/InputStream;
    .local v3, stream:Ljava/io/InputStream;
    goto :goto_1

    .line 242
    .end local v1           #issueResponse:Z
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .local v3, error:Ljava/lang/Exception;
    .local v4, issueResponse:Z
    .restart local v6       #stream:Ljava/io/InputStream;
    .local p1, context:Landroid/content/Context;
    :sswitch_1
    :try_start_3
    invoke-static {p1, v2}, Lcom/facebook/internal/ImageResponseCache;->interceptAndCacheImageStream(Landroid/content/Context;Ljava/net/HttpURLConnection;)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v1

    .line 243
    .end local v6           #stream:Ljava/io/InputStream;
    .local v1, stream:Ljava/io/InputStream;
    :try_start_4
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_4

    move-result-object p1

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    move-object v0, v3

    .end local v3           #error:Ljava/lang/Exception;
    .local v0, error:Ljava/lang/Exception;
    move-object v3, v1

    .end local v1           #stream:Ljava/io/InputStream;
    .local v3, stream:Ljava/io/InputStream;
    move v1, v4

    .line 244
    .end local v4           #issueResponse:Z
    .local v1, issueResponse:Z
    goto :goto_1

    .line 253
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .local v1, bufferLength:I
    .local v3, errorMessageBuilder:Ljava/lang/StringBuilder;
    .restart local v4       #issueResponse:Z
    .local v5, reader:Ljava/io/InputStreamReader;
    .restart local v6       #stream:Ljava/io/InputStream;
    .local p1, buffer:[C
    :cond_1
    const/4 v7, 0x0

    :try_start_5
    invoke-virtual {v3, p1, v7, v1}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 260
    .end local v1           #bufferLength:I
    .end local v3           #errorMessageBuilder:Ljava/lang/StringBuilder;
    .end local v5           #reader:Ljava/io/InputStreamReader;
    .end local p1           #buffer:[C
    :catch_0
    move-exception p1

    move-object v1, p1

    move-object v3, v6

    .end local v6           #stream:Ljava/io/InputStream;
    .local v3, stream:Ljava/io/InputStream;
    move-object p1, v2

    .end local v2           #connection:Ljava/net/HttpURLConnection;
    .local p1, connection:Ljava/net/HttpURLConnection;
    move v2, v4

    .line 261
    .end local v4           #issueResponse:Z
    .local v1, e:Ljava/io/IOException;
    .local v2, issueResponse:Z
    :goto_3
    move-object v1, v1

    .line 265
    .local v1, error:Ljava/lang/Exception;
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 266
    invoke-static {p1}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    move-object v8, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local v8, bitmap:Landroid/graphics/Bitmap;
    move-object v0, p1

    .end local p1           #connection:Ljava/net/HttpURLConnection;
    .local v0, connection:Ljava/net/HttpURLConnection;
    move-object p1, v8

    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 262
    .end local v2           #issueResponse:Z
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .local v1, connection:Ljava/net/HttpURLConnection;
    .local v3, error:Ljava/lang/Exception;
    .restart local v4       #issueResponse:Z
    .restart local v6       #stream:Ljava/io/InputStream;
    .local p1, context:Landroid/content/Context;
    :catch_1
    move-exception p1

    move v2, v4

    .end local v4           #issueResponse:Z
    .restart local v2       #issueResponse:Z
    move-object v3, v6

    .end local v6           #stream:Ljava/io/InputStream;
    .local v3, stream:Ljava/io/InputStream;
    move-object v8, p1

    move-object p1, v1

    .end local v1           #connection:Ljava/net/HttpURLConnection;
    .local p1, connection:Ljava/net/HttpURLConnection;
    move-object v1, v8

    .line 263
    .local v1, e:Ljava/net/URISyntaxException;
    :goto_4
    move-object v1, v1

    .line 265
    .local v1, error:Ljava/lang/Exception;
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 266
    invoke-static {p1}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    move-object v8, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .restart local v8       #bitmap:Landroid/graphics/Bitmap;
    move-object v0, p1

    .end local p1           #connection:Ljava/net/HttpURLConnection;
    .local v0, connection:Ljava/net/HttpURLConnection;
    move-object p1, v8

    .end local v8           #bitmap:Landroid/graphics/Bitmap;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    goto :goto_2

    .line 264
    .end local v2           #issueResponse:Z
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .local v1, connection:Ljava/net/HttpURLConnection;
    .local v3, error:Ljava/lang/Exception;
    .restart local v4       #issueResponse:Z
    .restart local v6       #stream:Ljava/io/InputStream;
    .local p1, context:Landroid/content/Context;
    :catchall_0
    move-exception p0

    move p1, v4

    .end local v4           #issueResponse:Z
    .local p1, issueResponse:Z
    move-object v0, v6

    .end local v6           #stream:Ljava/io/InputStream;
    .local v0, stream:Ljava/io/InputStream;
    move-object v8, p0

    move-object p0, v1

    .end local v1           #connection:Ljava/net/HttpURLConnection;
    .local p0, connection:Ljava/net/HttpURLConnection;
    move-object v1, v8

    .line 265
    .end local v3           #error:Ljava/lang/Exception;
    :goto_5
    invoke-static {v0}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 266
    invoke-static {p0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 267
    throw v1

    .line 264
    .end local p1           #issueResponse:Z
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .local v2, connection:Ljava/net/HttpURLConnection;
    .restart local v4       #issueResponse:Z
    .restart local v6       #stream:Ljava/io/InputStream;
    .local p0, key:Lcom/facebook/internal/ImageDownloader$RequestKey;
    :catchall_1
    move-exception p0

    move-object v1, p0

    move p1, v4

    .end local v4           #issueResponse:Z
    .restart local p1       #issueResponse:Z
    move-object v0, v6

    .end local v6           #stream:Ljava/io/InputStream;
    .local v0, stream:Ljava/io/InputStream;
    move-object p0, v2

    .end local v2           #connection:Ljava/net/HttpURLConnection;
    .local p0, connection:Ljava/net/HttpURLConnection;
    goto :goto_5

    .end local p1           #issueResponse:Z
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .local v1, issueResponse:Z
    .restart local v2       #connection:Ljava/net/HttpURLConnection;
    .restart local v3       #error:Ljava/lang/Exception;
    .restart local v6       #stream:Ljava/io/InputStream;
    .local p0, key:Lcom/facebook/internal/ImageDownloader$RequestKey;
    :catchall_2
    move-exception p0

    move p1, v1

    .end local v1           #issueResponse:Z
    .restart local p1       #issueResponse:Z
    move-object v0, v6

    .end local v6           #stream:Ljava/io/InputStream;
    .local v0, stream:Ljava/io/InputStream;
    move-object v1, p0

    move-object p0, v2

    .end local v2           #connection:Ljava/net/HttpURLConnection;
    .local p0, connection:Ljava/net/HttpURLConnection;
    goto :goto_5

    .local v0, bitmap:Landroid/graphics/Bitmap;
    .local v1, stream:Ljava/io/InputStream;
    .restart local v2       #connection:Ljava/net/HttpURLConnection;
    .restart local v4       #issueResponse:Z
    .local p0, key:Lcom/facebook/internal/ImageDownloader$RequestKey;
    .local p1, context:Landroid/content/Context;
    :catchall_3
    move-exception p0

    move p1, v4

    .end local v4           #issueResponse:Z
    .local p1, issueResponse:Z
    move-object v0, v1

    .end local v1           #stream:Ljava/io/InputStream;
    .local v0, stream:Ljava/io/InputStream;
    move-object v1, p0

    move-object p0, v2

    .end local v2           #connection:Ljava/net/HttpURLConnection;
    .local p0, connection:Ljava/net/HttpURLConnection;
    goto :goto_5

    .line 262
    .end local v3           #error:Ljava/lang/Exception;
    .end local p1           #issueResponse:Z
    .local v0, bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #connection:Ljava/net/HttpURLConnection;
    .restart local v4       #issueResponse:Z
    .restart local v6       #stream:Ljava/io/InputStream;
    .local p0, key:Lcom/facebook/internal/ImageDownloader$RequestKey;
    :catch_2
    move-exception p1

    move-object v1, p1

    move-object v3, v6

    .end local v6           #stream:Ljava/io/InputStream;
    .local v3, stream:Ljava/io/InputStream;
    move-object p1, v2

    .end local v2           #connection:Ljava/net/HttpURLConnection;
    .local p1, connection:Ljava/net/HttpURLConnection;
    move v2, v4

    .end local v4           #issueResponse:Z
    .local v2, issueResponse:Z
    goto :goto_4

    .end local p1           #connection:Ljava/net/HttpURLConnection;
    .local v1, issueResponse:Z
    .local v2, connection:Ljava/net/HttpURLConnection;
    .local v3, error:Ljava/lang/Exception;
    .restart local v6       #stream:Ljava/io/InputStream;
    :catch_3
    move-exception p1

    move-object v3, v6

    .end local v6           #stream:Ljava/io/InputStream;
    .local v3, stream:Ljava/io/InputStream;
    move v8, v1

    .end local v1           #issueResponse:Z
    .local v8, issueResponse:Z
    move-object v1, p1

    move-object p1, v2

    .end local v2           #connection:Ljava/net/HttpURLConnection;
    .restart local p1       #connection:Ljava/net/HttpURLConnection;
    move v2, v8

    .end local v8           #issueResponse:Z
    .local v2, issueResponse:Z
    goto :goto_4

    .local v1, stream:Ljava/io/InputStream;
    .local v2, connection:Ljava/net/HttpURLConnection;
    .local v3, error:Ljava/lang/Exception;
    .restart local v4       #issueResponse:Z
    .local p1, context:Landroid/content/Context;
    :catch_4
    move-exception p1

    move-object v3, v1

    .end local v1           #stream:Ljava/io/InputStream;
    .local v3, stream:Ljava/io/InputStream;
    move-object v1, p1

    move-object p1, v2

    .end local v2           #connection:Ljava/net/HttpURLConnection;
    .local p1, connection:Ljava/net/HttpURLConnection;
    move v2, v4

    .end local v4           #issueResponse:Z
    .local v2, issueResponse:Z
    goto :goto_4

    .line 260
    .end local v2           #issueResponse:Z
    .local v1, connection:Ljava/net/HttpURLConnection;
    .local v3, error:Ljava/lang/Exception;
    .restart local v4       #issueResponse:Z
    .restart local v6       #stream:Ljava/io/InputStream;
    .local p1, context:Landroid/content/Context;
    :catch_5
    move-exception p1

    move v2, v4

    .end local v4           #issueResponse:Z
    .restart local v2       #issueResponse:Z
    move-object v3, v6

    .end local v6           #stream:Ljava/io/InputStream;
    .local v3, stream:Ljava/io/InputStream;
    move-object v8, p1

    move-object p1, v1

    .end local v1           #connection:Ljava/net/HttpURLConnection;
    .local p1, connection:Ljava/net/HttpURLConnection;
    move-object v1, v8

    goto :goto_3

    .end local p1           #connection:Ljava/net/HttpURLConnection;
    .local v1, issueResponse:Z
    .local v2, connection:Ljava/net/HttpURLConnection;
    .local v3, error:Ljava/lang/Exception;
    .restart local v6       #stream:Ljava/io/InputStream;
    :catch_6
    move-exception p1

    move-object v3, v6

    .end local v6           #stream:Ljava/io/InputStream;
    .local v3, stream:Ljava/io/InputStream;
    move v8, v1

    .end local v1           #issueResponse:Z
    .restart local v8       #issueResponse:Z
    move-object v1, p1

    move-object p1, v2

    .end local v2           #connection:Ljava/net/HttpURLConnection;
    .restart local p1       #connection:Ljava/net/HttpURLConnection;
    move v2, v8

    .end local v8           #issueResponse:Z
    .local v2, issueResponse:Z
    goto :goto_3

    .local v1, stream:Ljava/io/InputStream;
    .local v2, connection:Ljava/net/HttpURLConnection;
    .local v3, error:Ljava/lang/Exception;
    .restart local v4       #issueResponse:Z
    .local p1, context:Landroid/content/Context;
    :catch_7
    move-exception p1

    move-object v3, v1

    .end local v1           #stream:Ljava/io/InputStream;
    .local v3, stream:Ljava/io/InputStream;
    move-object v1, p1

    move-object p1, v2

    .end local v2           #connection:Ljava/net/HttpURLConnection;
    .local p1, connection:Ljava/net/HttpURLConnection;
    move v2, v4

    .end local v4           #issueResponse:Z
    .local v2, issueResponse:Z
    goto :goto_3

    .end local p1           #connection:Ljava/net/HttpURLConnection;
    .local v1, issueResponse:Z
    .local v2, connection:Ljava/net/HttpURLConnection;
    .local v3, error:Ljava/lang/Exception;
    .restart local v6       #stream:Ljava/io/InputStream;
    :cond_2
    move-object p1, v0

    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .local p1, bitmap:Landroid/graphics/Bitmap;
    move-object v0, v3

    .end local v3           #error:Ljava/lang/Exception;
    .local v0, error:Ljava/lang/Exception;
    move-object v3, v6

    .end local v6           #stream:Ljava/io/InputStream;
    .local v3, stream:Ljava/io/InputStream;
    goto/16 :goto_1

    .line 217
    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x12d -> :sswitch_0
        0x12e -> :sswitch_0
    .end sparse-switch
.end method

.method public static downloadAsync(Lcom/facebook/internal/ImageRequest;)V
    .locals 4
    .parameter "request"

    .prologue
    .line 50
    if-nez p0, :cond_0

    .line 70
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    .line 60
    .local v1, key:Lcom/facebook/internal/ImageDownloader$RequestKey;
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v2

    .line 61
    :try_start_0
    sget-object v3, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 62
    .local v0, downloaderContext:Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v0, :cond_1

    .line 63
    iput-object p0, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    .line 64
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    .line 65
    iget-object v3, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {v3}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    .line 60
    :goto_1
    monitor-exit v2

    goto :goto_0

    .end local v0           #downloaderContext:Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 67
    .restart local v0       #downloaderContext:Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->isCachedRedirectAllowed()Z

    move-result v3

    invoke-static {p0, v1, v3}, Lcom/facebook/internal/ImageDownloader;->enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method private static enqueueCacheRead(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V
    .locals 3
    .parameter "request"
    .parameter "key"
    .parameter "allowCachedRedirects"

    .prologue
    .line 113
    .line 115
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->cacheReadQueue:Lcom/facebook/internal/WorkQueue;

    .line 116
    new-instance v1, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1, p2}, Lcom/facebook/internal/ImageDownloader$CacheReadWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/internal/ImageDownloader$RequestKey;Z)V

    .line 112
    invoke-static {p0, p1, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    .line 117
    return-void
.end method

.method private static enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V
    .locals 3
    .parameter "request"
    .parameter "key"

    .prologue
    .line 121
    .line 123
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->downloadQueue:Lcom/facebook/internal/WorkQueue;

    .line 124
    new-instance v1, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/facebook/internal/ImageDownloader$DownloadImageWorkItem;-><init>(Landroid/content/Context;Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    .line 120
    invoke-static {p0, p1, v0, v1}, Lcom/facebook/internal/ImageDownloader;->enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V

    .line 125
    return-void
.end method

.method private static enqueueRequest(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;Lcom/facebook/internal/WorkQueue;Ljava/lang/Runnable;)V
    .locals 3
    .parameter "request"
    .parameter "key"
    .parameter "workQueue"
    .parameter "workItem"

    .prologue
    .line 132
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v1

    .line 133
    :try_start_0
    new-instance v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/facebook/internal/ImageDownloader$DownloaderContext;-><init>(Lcom/facebook/internal/ImageDownloader$DownloaderContext;)V

    .line 134
    .local v0, downloaderContext:Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    iput-object p0, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    .line 135
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p2, p3}, Lcom/facebook/internal/WorkQueue;->addActiveWorkItem(Ljava/lang/Runnable;)Lcom/facebook/internal/WorkQueue$WorkItem;

    move-result-object v2

    iput-object v2, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    .line 132
    monitor-exit v1

    .line 146
    return-void

    .line 132
    .end local v0           #downloaderContext:Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static declared-synchronized getHandler()Landroid/os/Handler;
    .locals 3

    .prologue
    .line 275
    const-class v0, Lcom/facebook/internal/ImageDownloader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 276
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;

    .line 278
    :cond_0
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->handler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 275
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V
    .locals 8
    .parameter "key"
    .parameter "error"
    .parameter "bitmap"
    .parameter "isCachedRedirect"

    .prologue
    .line 155
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v6

    .line 156
    .local v6, completedRequestContext:Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v6, :cond_0

    iget-boolean v0, v6, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v0, :cond_0

    .line 157
    iget-object v1, v6, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    .line 158
    .local v1, request:Lcom/facebook/internal/ImageRequest;
    invoke-virtual {v1}, Lcom/facebook/internal/ImageRequest;->getCallback()Lcom/facebook/internal/ImageRequest$Callback;

    move-result-object v5

    .line 159
    .local v5, callback:Lcom/facebook/internal/ImageRequest$Callback;
    if-eqz v5, :cond_0

    .line 160
    invoke-static {}, Lcom/facebook/internal/ImageDownloader;->getHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/facebook/internal/ImageDownloader$1;

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/ImageDownloader$1;-><init>(Lcom/facebook/internal/ImageRequest;Ljava/lang/Exception;ZLandroid/graphics/Bitmap;Lcom/facebook/internal/ImageRequest$Callback;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    .end local v1           #request:Lcom/facebook/internal/ImageRequest;
    .end local v5           #callback:Lcom/facebook/internal/ImageRequest$Callback;
    :cond_0
    return-void
.end method

.method public static prioritizeRequest(Lcom/facebook/internal/ImageRequest;)V
    .locals 4
    .parameter "request"

    .prologue
    .line 97
    new-instance v1, Lcom/facebook/internal/ImageDownloader$RequestKey;

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getImageUri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/internal/ImageRequest;->getCallerTag()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/facebook/internal/ImageDownloader$RequestKey;-><init>(Ljava/net/URI;Ljava/lang/Object;)V

    .line 98
    .local v1, key:Lcom/facebook/internal/ImageDownloader$RequestKey;
    sget-object v2, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v2

    .line 99
    :try_start_0
    sget-object v3, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    .line 100
    .local v0, downloaderContext:Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v0, :cond_0

    .line 101
    iget-object v3, v0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->workItem:Lcom/facebook/internal/WorkQueue$WorkItem;

    invoke-interface {v3}, Lcom/facebook/internal/WorkQueue$WorkItem;->moveToFront()V

    .line 98
    :cond_0
    monitor-exit v2

    .line 104
    return-void

    .line 98
    .end local v0           #downloaderContext:Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static readFromCache(Lcom/facebook/internal/ImageDownloader$RequestKey;Landroid/content/Context;Z)V
    .locals 6
    .parameter "key"
    .parameter "context"
    .parameter "allowCachedRedirects"

    .prologue
    .line 176
    const/4 v1, 0x0

    .line 177
    .local v1, cachedStream:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 178
    .local v3, isCachedRedirect:Z
    if-eqz p2, :cond_0

    .line 179
    iget-object v5, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    invoke-static {p1, v5}, Lcom/facebook/internal/UrlRedirectCache;->getRedirectedUri(Landroid/content/Context;Ljava/net/URI;)Ljava/net/URI;

    move-result-object v4

    .line 180
    .local v4, redirectUri:Ljava/net/URI;
    if-eqz v4, :cond_0

    .line 181
    invoke-static {v4, p1}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Ljava/net/URI;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_3

    const/4 v5, 0x1

    move v3, v5

    .line 186
    .end local v4           #redirectUri:Ljava/net/URI;
    :cond_0
    :goto_0
    if-nez v3, :cond_1

    .line 187
    iget-object v5, p0, Lcom/facebook/internal/ImageDownloader$RequestKey;->uri:Ljava/net/URI;

    invoke-static {v5, p1}, Lcom/facebook/internal/ImageResponseCache;->getCachedImageStream(Ljava/net/URI;Landroid/content/Context;)Ljava/io/InputStream;

    move-result-object v1

    .line 190
    :cond_1
    if-eqz v1, :cond_4

    .line 192
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 193
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 194
    const/4 v5, 0x0

    invoke-static {p0, v5, v0, v3}, Lcom/facebook/internal/ImageDownloader;->issueResponse(Lcom/facebook/internal/ImageDownloader$RequestKey;Ljava/lang/Exception;Landroid/graphics/Bitmap;Z)V

    .line 203
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    return-void

    .line 182
    .restart local v4       #redirectUri:Ljava/net/URI;
    :cond_3
    const/4 v5, 0x0

    move v3, v5

    goto :goto_0

    .line 198
    .end local v4           #redirectUri:Ljava/net/URI;
    :cond_4
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    move-result-object v2

    .line 199
    .local v2, downloaderContext:Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    if-eqz v2, :cond_2

    iget-boolean v5, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->isCancelled:Z

    if-nez v5, :cond_2

    .line 200
    iget-object v5, v2, Lcom/facebook/internal/ImageDownloader$DownloaderContext;->request:Lcom/facebook/internal/ImageRequest;

    invoke-static {v5, p0}, Lcom/facebook/internal/ImageDownloader;->enqueueDownload(Lcom/facebook/internal/ImageRequest;Lcom/facebook/internal/ImageDownloader$RequestKey;)V

    goto :goto_1
.end method

.method private static removePendingRequest(Lcom/facebook/internal/ImageDownloader$RequestKey;)Lcom/facebook/internal/ImageDownloader$DownloaderContext;
    .locals 2
    .parameter "key"

    .prologue
    .line 282
    sget-object v0, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    monitor-enter v0

    .line 283
    :try_start_0
    sget-object v1, Lcom/facebook/internal/ImageDownloader;->pendingRequests:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/facebook/internal/ImageDownloader$DownloaderContext;

    monitor-exit v0

    return-object p0

    .line 282
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
