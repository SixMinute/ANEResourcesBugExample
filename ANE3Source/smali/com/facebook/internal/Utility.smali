.class public final Lcom/facebook/internal/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/internal/Utility$FetchedAppSettings;
    }
.end annotation


# static fields
.field private static final APPLICATION_FIELDS:Ljava/lang/String; = "fields"

.field private static final APP_SETTING_FIELDS:[Ljava/lang/String; = null

.field public static final DEFAULT_STREAM_BUFFER_SIZE:I = 0x2000

.field private static final HASH_ALGORITHM_MD5:Ljava/lang/String; = "MD5"

.field private static final HASH_ALGORITHM_SHA1:Ljava/lang/String; = "SHA-1"

.field static final LOG_TAG:Ljava/lang/String; = "FacebookSDK"

.field private static final NUX_CONTENT:Ljava/lang/String; = "gdpv4_nux_content"

.field private static final NUX_ENABLED:Ljava/lang/String; = "gdpv4_nux_enabled"

.field private static final SUPPORTS_ATTRIBUTION:Ljava/lang/String; = "supports_attribution"

.field private static final SUPPORTS_IMPLICIT_SDK_LOGGING:Ljava/lang/String; = "supports_implicit_sdk_logging"

.field private static final URL_SCHEME:Ljava/lang/String; = "https"

.field private static fetchedAppSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/internal/Utility$FetchedAppSettings;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 62
    const-string v2, "supports_attribution"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 63
    const-string v2, "supports_implicit_sdk_logging"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 64
    const-string v2, "gdpv4_nux_content"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 65
    const-string v2, "gdpv4_nux_enabled"

    aput-object v2, v0, v1

    .line 61
    sput-object v0, Lcom/facebook/internal/Utility;->APP_SETTING_FIELDS:[Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 72
    sput-object v0, Lcom/facebook/internal/Utility;->fetchedAppSettings:Ljava/util/Map;

    .line 73
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 362
    .local p0, a:Ljava/lang/Object;,"TT;"
    .local p1, b:Ljava/lang/Object;,"TT;"
    if-nez p0, :cond_1

    .line 363
    if-nez p1, :cond_0

    const/4 v0, 0x1

    .line 365
    :goto_0
    return v0

    .line 363
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 365
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public static varargs arrayList([Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 4
    .parameter "ts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/ArrayList",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    .local v0, arrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 142
    return-object v0

    .line 139
    :cond_0
    aget-object v1, p0, v3

    .line 140
    .local v1, t:Ljava/lang/Object;,"TT;"
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static varargs asListNoNulls([Ljava/lang/Object;)Ljava/util/List;
    .locals 4
    .parameter "array"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 435
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 436
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<TT;>;"
    array-length v2, p0

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 441
    return-object v0

    .line 436
    :cond_0
    aget-object v1, p0, v3

    .line 437
    .local v1, t:Ljava/lang/Object;,"TT;"
    if-eqz v1, :cond_1

    .line 438
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static buildUri(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/net/Uri;
    .locals 5
    .parameter "authority"
    .parameter "path"
    .parameter "parameters"

    .prologue
    .line 183
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 184
    .local v0, builder:Landroid/net/Uri$Builder;
    const-string v3, "https"

    invoke-virtual {v0, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 185
    invoke-virtual {v0, p0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 186
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 187
    invoke-virtual {p2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 193
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 187
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 188
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 189
    .local v2, parameter:Ljava/lang/Object;
    instance-of v4, v2, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 190
    check-cast v2, Ljava/lang/String;

    .end local v2           #parameter:Ljava/lang/Object;
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0
.end method

.method public static clearCaches(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 418
    invoke-static {p0}, Lcom/facebook/internal/ImageDownloader;->clearCache(Landroid/content/Context;)V

    .line 419
    return-void
.end method

.method private static clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V
    .locals 12
    .parameter "context"
    .parameter "domain"

    .prologue
    const/4 v11, 0x0

    .line 319
    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    move-result-object v6

    .line 320
    .local v6, syncManager:Landroid/webkit/CookieSyncManager;
    invoke-virtual {v6}, Landroid/webkit/CookieSyncManager;->sync()V

    .line 322
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v1

    .line 324
    .local v1, cookieManager:Landroid/webkit/CookieManager;
    invoke-virtual {v1, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 325
    .local v3, cookies:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 338
    :goto_0
    return-void

    .line 329
    :cond_0
    const-string v7, ";"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 330
    .local v5, splitCookies:[Ljava/lang/String;
    array-length v7, v5

    move v8, v11

    :goto_1
    if-lt v8, v7, :cond_1

    .line 337
    invoke-virtual {v1}, Landroid/webkit/CookieManager;->removeExpiredCookie()V

    goto :goto_0

    .line 330
    :cond_1
    aget-object v0, v5, v8

    .line 331
    .local v0, cookie:Ljava/lang/String;
    const-string v9, "="

    invoke-virtual {v0, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, cookieParts:[Ljava/lang/String;
    array-length v9, v2

    if-lez v9, :cond_2

    .line 333
    new-instance v9, Ljava/lang/StringBuilder;

    aget-object v10, v2, v11

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "=;expires=Sat, 1 Jan 2000 00:00:01 UTC;"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, newCookie:Ljava/lang/String;
    invoke-virtual {v1, p1, v4}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .end local v4           #newCookie:Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method public static clearFacebookCookies(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 343
    const-string v0, "facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 344
    const-string v0, ".facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 345
    const-string v0, "https://facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    const-string v0, "https://.facebook.com"

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->clearCookiesForDomain(Landroid/content/Context;Ljava/lang/String;)V

    .line 347
    return-void
.end method

.method public static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .parameter "closeable"

    .prologue
    .line 210
    if-eqz p0, :cond_0

    .line 211
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    :cond_0
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static convertJSONObjectToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 6
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 234
    .local v3, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v2

    .line 235
    .local v2, keys:Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v0, v5, :cond_0

    .line 247
    return-object v3

    .line 238
    :cond_0
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 239
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 240
    .local v4, value:Ljava/lang/Object;
    instance-of v5, v4, Lorg/json/JSONObject;

    if-eqz v5, :cond_1

    .line 241
    check-cast v4, Lorg/json/JSONObject;

    .end local v4           #value:Ljava/lang/Object;
    invoke-static {v4}, Lcom/facebook/internal/Utility;->convertJSONObjectToHashMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v4

    .line 243
    :cond_1
    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1           #key:Ljava/lang/String;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static deleteDirectory(Ljava/io/File;)V
    .locals 4
    .parameter "directoryOrFile"

    .prologue
    .line 422
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 432
    :goto_0
    return-void

    .line 426
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v2, :cond_2

    .line 431
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 427
    :cond_2
    aget-object v0, v1, v3

    .line 428
    .local v0, child:Ljava/io/File;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->deleteDirectory(Ljava/io/File;)V

    .line 427
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static disconnectQuietly(Ljava/net/URLConnection;)V
    .locals 1
    .parameter "connection"

    .prologue
    .line 219
    instance-of v0, p0, Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 220
    check-cast p0, Ljava/net/HttpURLConnection;

    .end local p0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 222
    :cond_0
    return-void
.end method

.method public static getHashedDeviceAndAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "applicationId"

    .prologue
    .line 449
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, androidId:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 452
    const/4 v1, 0x0

    .line 454
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->sha1hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    .line 225
    const-string v0, "context"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-static {p0}, Lcom/facebook/Settings;->loadDefaultsFromMetadata(Landroid/content/Context;)V

    .line 229
    invoke-static {}, Lcom/facebook/Settings;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .parameter
    .parameter "methodName"
    .parameter "parameterTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 477
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 479
    :goto_0
    return-object v1

    .line 478
    :catch_0
    move-exception v0

    .line 479
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static varargs getMethodQuietly(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .parameter "className"
    .parameter "methodName"
    .parameter "parameterTypes"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 485
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 486
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0, p1, p2}, Lcom/facebook/internal/Utility;->getMethodQuietly(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 488
    .end local v0           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :goto_0
    return-object v2

    .line 487
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 488
    .local v1, ex:Ljava/lang/ClassNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getStringPropertyAsJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .parameter "jsonObject"
    .parameter "key"
    .parameter "nonJSONPropertyKey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 254
    .local v1, value:Ljava/lang/Object;
    if-eqz v1, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 255
    new-instance v0, Lorg/json/JSONTokener;

    check-cast v1, Ljava/lang/String;

    .end local v1           #value:Ljava/lang/Object;
    invoke-direct {v0, v1}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 256
    .local v0, tokener:Lorg/json/JSONTokener;
    invoke-virtual {v0}, Lorg/json/JSONTokener;->nextValue()Ljava/lang/Object;

    move-result-object v1

    .line 259
    .end local v0           #tokener:Lorg/json/JSONTokener;
    .restart local v1       #value:Ljava/lang/Object;
    :cond_0
    if-eqz v1, :cond_2

    instance-of v2, v1, Lorg/json/JSONObject;

    if-nez v2, :cond_2

    instance-of v2, v1, Lorg/json/JSONArray;

    if-nez v2, :cond_2

    .line 260
    if-eqz p2, :cond_1

    .line 266
    new-instance p0, Lorg/json/JSONObject;

    .end local p0
    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 267
    .restart local p0
    invoke-virtual {p0, p2, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object v2, p0

    .line 274
    :goto_0
    return-object v2

    .line 270
    :cond_1
    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Got an unexpected non-JSON object."

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object v2, v1

    .line 274
    goto :goto_0
.end method

.method private static hashBytes(Ljava/security/MessageDigest;[B)Ljava/lang/String;
    .locals 6
    .parameter "hash"
    .parameter "bytes"

    .prologue
    .line 172
    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 173
    invoke-virtual {p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 174
    .local v2, digest:[B
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    .local v1, builder:Ljava/lang/StringBuilder;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v3, :cond_0

    .line 179
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 175
    :cond_0
    aget-byte v0, v2, v4

    .line 176
    .local v0, b:I
    shr-int/lit8 v5, v0, 0x4

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    shr-int/lit8 v5, v0, 0x0

    and-int/lit8 v5, v5, 0xf

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "algorithm"
    .parameter "key"

    .prologue
    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;
    .locals 3
    .parameter "algorithm"
    .parameter "bytes"

    .prologue
    .line 164
    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 168
    .local v1, hash:Ljava/security/MessageDigest;
    invoke-static {v1, p1}, Lcom/facebook/internal/Utility;->hashBytes(Ljava/security/MessageDigest;[B)Ljava/lang/String;

    move-result-object v2

    .end local v1           #hash:Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static varargs invokeMethodQuietly(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .parameter "receiver"
    .parameter "method"
    .parameter "args"

    .prologue
    const/4 v1, 0x0

    .line 494
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 498
    :goto_0
    return-object v1

    .line 495
    :catch_0
    move-exception v0

    .line 496
    .local v0, ex:Ljava/lang/IllegalAccessException;
    goto :goto_0

    .line 497
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 498
    .local v0, ex:Ljava/lang/reflect/InvocationTargetException;
    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 130
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isNullOrEmpty(Ljava/util/Collection;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 126
    .local p0, c:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection",
            "<TT;>;",
            "Ljava/util/Collection",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .local p0, subset:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    .local p1, superset:Ljava/util/Collection;,"Ljava/util/Collection<TT;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 112
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 113
    :cond_0
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    .line 122
    :goto_0
    return v2

    :cond_1
    move v2, v5

    .line 113
    goto :goto_0

    .line 116
    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 117
    .local v0, hash:Ljava/util/HashSet;,"Ljava/util/HashSet<TT;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_4

    move v2, v5

    .line 122
    goto :goto_0

    .line 117
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Object;

    .line 118
    .local v1, t:Ljava/lang/Object;,"TT;"
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v2, v4

    .line 119
    goto :goto_0
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2
    .parameter "tag"
    .parameter "e"

    .prologue
    .line 350
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    :cond_0
    return-void
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 356
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 357
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    return-void
.end method

.method static md5hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 146
    const-string v0, "MD5"

    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static putObjectInBundle(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .parameter "bundle"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 197
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 198
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    :goto_0
    return-void

    .line 199
    .restart local p2
    :cond_0
    instance-of v0, p2, Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 200
    check-cast p2, Landroid/os/Parcelable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 201
    .restart local p2
    :cond_1
    instance-of v0, p2, [B

    if-eqz v0, :cond_2

    .line 202
    check-cast p2, [B

    .end local p2
    invoke-virtual {p0, p1, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    goto :goto_0

    .line 204
    .restart local p2
    :cond_2
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "attempted to add unsupported type to Bundle"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;
    .locals 9
    .parameter "applicationId"
    .parameter "forceRequery"

    .prologue
    const/4 v5, 0x0

    .line 372
    if-nez p1, :cond_0

    sget-object v1, Lcom/facebook/internal/Utility;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 373
    sget-object v1, Lcom/facebook/internal/Utility;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-object v1, p0

    .line 392
    :goto_0
    return-object v1

    .line 376
    .restart local p0
    :cond_0
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 377
    .local v6, appSettingsParams:Landroid/os/Bundle;
    const-string v1, "fields"

    const-string v2, ","

    sget-object v3, Lcom/facebook/internal/Utility;->APP_SETTING_FIELDS:[Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static {v5, p0, v5}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v7

    .line 380
    .local v7, request:Lcom/facebook/Request;
    invoke-virtual {v7, v6}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 382
    invoke-virtual {v7}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v8

    .line 383
    .local v8, supportResponse:Lcom/facebook/model/GraphObject;
    new-instance v0, Lcom/facebook/internal/Utility$FetchedAppSettings;

    .line 384
    const-string v1, "supports_attribution"

    invoke-static {v8, v1}, Lcom/facebook/internal/Utility;->safeGetBooleanFromResponse(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Z

    move-result v1

    .line 385
    const-string v2, "supports_implicit_sdk_logging"

    invoke-static {v8, v2}, Lcom/facebook/internal/Utility;->safeGetBooleanFromResponse(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Z

    move-result v2

    .line 386
    const-string v3, "gdpv4_nux_content"

    invoke-static {v8, v3}, Lcom/facebook/internal/Utility;->safeGetStringFromResponse(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 387
    const-string v4, "gdpv4_nux_enabled"

    invoke-static {v8, v4}, Lcom/facebook/internal/Utility;->safeGetBooleanFromResponse(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Z

    move-result v4

    .line 383
    invoke-direct/range {v0 .. v5}, Lcom/facebook/internal/Utility$FetchedAppSettings;-><init>(ZZLjava/lang/String;ZLcom/facebook/internal/Utility$FetchedAppSettings;)V

    .line 390
    .local v0, result:Lcom/facebook/internal/Utility$FetchedAppSettings;
    sget-object v1, Lcom/facebook/internal/Utility;->fetchedAppSettings:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 392
    goto :goto_0
.end method

.method public static readStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .parameter "inputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 279
    const/4 v2, 0x0

    .line 280
    .local v2, bufferedInputStream:Ljava/io/BufferedInputStream;
    const/4 v5, 0x0

    .line 282
    .local v5, reader:Ljava/io/InputStreamReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 283
    .end local v2           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .local v3, bufferedInputStream:Ljava/io/BufferedInputStream;
    :try_start_1
    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 284
    .end local v5           #reader:Ljava/io/InputStreamReader;
    .local v6, reader:Ljava/io/InputStreamReader;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 286
    .local v7, stringBuilder:Ljava/lang/StringBuilder;
    const/16 v1, 0x800

    .line 287
    .local v1, bufferSize:I
    const/16 v8, 0x800

    new-array v0, v8, [C

    .line 288
    .local v0, buffer:[C
    const/4 v4, 0x0

    .line 289
    .local v4, n:I
    :goto_0
    invoke-virtual {v6, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v4

    const/4 v8, -0x1

    if-ne v4, v8, :cond_0

    .line 293
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    .line 295
    invoke-static {v3}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    invoke-static {v6}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 293
    return-object v8

    .line 290
    :cond_0
    const/4 v8, 0x0

    :try_start_3
    invoke-virtual {v7, v0, v8, v4}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 294
    .end local v0           #buffer:[C
    .end local v1           #bufferSize:I
    .end local v4           #n:I
    .end local v7           #stringBuilder:Ljava/lang/StringBuilder;
    :catchall_0
    move-exception v8

    move-object v5, v6

    .end local v6           #reader:Ljava/io/InputStreamReader;
    .restart local v5       #reader:Ljava/io/InputStreamReader;
    move-object v2, v3

    .line 295
    .end local v3           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v2       #bufferedInputStream:Ljava/io/BufferedInputStream;
    :goto_1
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 296
    invoke-static {v5}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 297
    throw v8

    .line 294
    :catchall_1
    move-exception v8

    goto :goto_1

    .end local v2           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v3       #bufferedInputStream:Ljava/io/BufferedInputStream;
    :catchall_2
    move-exception v8

    move-object v2, v3

    .end local v3           #bufferedInputStream:Ljava/io/BufferedInputStream;
    .restart local v2       #bufferedInputStream:Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method private static safeGetBooleanFromResponse(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Z
    .locals 3
    .parameter "response"
    .parameter "propertyName"

    .prologue
    const/4 v2, 0x0

    .line 396
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 397
    .local v0, result:Ljava/lang/Boolean;
    if-eqz p0, :cond_0

    .line 398
    invoke-interface {p0, p1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 400
    .end local v0           #result:Ljava/lang/Boolean;
    :cond_0
    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 401
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .restart local v0       #result:Ljava/lang/Boolean;
    move-object p0, v0

    .line 403
    .end local v0           #result:Ljava/lang/Boolean;
    .end local p0
    :goto_0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .restart local p0
    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method private static safeGetStringFromResponse(Lcom/facebook/model/GraphObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "response"
    .parameter "propertyName"

    .prologue
    .line 407
    const-string v0, ""

    .line 408
    .local v0, result:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 409
    invoke-interface {p0, p1}, Lcom/facebook/model/GraphObject;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 411
    .end local v0           #result:Ljava/lang/String;
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_1

    .line 412
    const-string v0, ""

    .restart local v0       #result:Ljava/lang/String;
    move-object p0, v0

    .line 414
    .end local v0           #result:Ljava/lang/String;
    .end local p0
    :goto_0
    check-cast p0, Ljava/lang/String;

    return-object p0

    .restart local p0
    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method public static setAppEventAttributionParameters(Lcom/facebook/model/GraphObject;Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Z)V
    .locals 5
    .parameter "params"
    .parameter "attributionIdentifiers"
    .parameter "hashedDeviceAndAppId"
    .parameter "limitEventUsage"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v4, "advertiser_id"

    .line 461
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 462
    const-string v0, "attribution"

    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 465
    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 466
    const-string v0, "advertiser_id"

    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v4, v0}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 467
    const-string v0, "advertiser_tracking_enabled"

    invoke-virtual {p1}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 472
    :cond_1
    :goto_1
    const-string v0, "application_tracking_enabled"

    if-eqz p3, :cond_4

    move v1, v2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 473
    return-void

    :cond_2
    move v1, v3

    .line 467
    goto :goto_0

    .line 468
    :cond_3
    if-eqz p2, :cond_1

    .line 469
    const-string v0, "advertiser_id"

    invoke-interface {p0, v4, p2}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_4
    move v1, v3

    .line 472
    goto :goto_2
.end method

.method static sha1hash(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "key"

    .prologue
    .line 150
    const-string v0, "SHA-1"

    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static sha1hash([B)Ljava/lang/String;
    .locals 1
    .parameter "bytes"

    .prologue
    .line 154
    const-string v0, "SHA-1"

    invoke-static {v0, p0}, Lcom/facebook/internal/Utility;->hashWithAlgorithm(Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static stringsEqualOrEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 301
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 302
    .local v0, aEmpty:Z
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 304
    .local v1, bEmpty:Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 306
    const/4 v2, 0x1

    .line 313
    :goto_0
    return v2

    .line 308
    :cond_0
    if-nez v0, :cond_1

    if-nez v1, :cond_1

    .line 310
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 313
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static varargs unmodifiableCollection([Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .parameter "ts"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 134
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
