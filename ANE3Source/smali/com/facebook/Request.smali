.class public Lcom/facebook/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/Request$Attachment;,
        Lcom/facebook/Request$Callback;,
        Lcom/facebook/Request$GraphPlaceListCallback;,
        Lcom/facebook/Request$GraphUserCallback;,
        Lcom/facebook/Request$GraphUserListCallback;,
        Lcom/facebook/Request$KeyValueSerializer;,
        Lcom/facebook/Request$OnProgressCallback;,
        Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;,
        Lcom/facebook/Request$Serializer;
    }
.end annotation


# static fields
.field private static final ACCEPT_LANGUAGE_HEADER:Ljava/lang/String; = "Accept-Language"

.field private static final ACCESS_TOKEN_PARAM:Ljava/lang/String; = "access_token"

.field private static final ATTACHED_FILES_PARAM:Ljava/lang/String; = "attached_files"

.field private static final ATTACHMENT_FILENAME_PREFIX:Ljava/lang/String; = "file"

.field private static final BATCH_APP_ID_PARAM:Ljava/lang/String; = "batch_app_id"

.field private static final BATCH_BODY_PARAM:Ljava/lang/String; = "body"

.field private static final BATCH_ENTRY_DEPENDS_ON_PARAM:Ljava/lang/String; = "depends_on"

.field private static final BATCH_ENTRY_NAME_PARAM:Ljava/lang/String; = "name"

.field private static final BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM:Ljava/lang/String; = "omit_response_on_success"

.field private static final BATCH_METHOD_PARAM:Ljava/lang/String; = "method"

.field private static final BATCH_PARAM:Ljava/lang/String; = "batch"

.field private static final BATCH_RELATIVE_URL_PARAM:Ljava/lang/String; = "relative_url"

.field private static final CONTENT_TYPE_HEADER:Ljava/lang/String; = "Content-Type"

.field private static final FORMAT_JSON:Ljava/lang/String; = "json"

.field private static final FORMAT_PARAM:Ljava/lang/String; = "format"

.field private static final ISO_8601_FORMAT_STRING:Ljava/lang/String; = "yyyy-MM-dd\'T\'HH:mm:ssZ"

.field public static final MAXIMUM_BATCH_SIZE:I = 0x32

.field private static final ME:Ljava/lang/String; = "me"

.field private static final MIME_BOUNDARY:Ljava/lang/String; = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

.field private static final MY_ACTION_FORMAT:Ljava/lang/String; = "me/%s"

.field private static final MY_FEED:Ljava/lang/String; = "me/feed"

.field private static final MY_FRIENDS:Ljava/lang/String; = "me/friends"

.field private static final MY_OBJECTS_FORMAT:Ljava/lang/String; = "me/objects/%s"

.field private static final MY_PHOTOS:Ljava/lang/String; = "me/photos"

.field private static final MY_STAGING_RESOURCES:Ljava/lang/String; = "me/staging_resources"

.field private static final MY_VIDEOS:Ljava/lang/String; = "me/videos"

.field private static final OBJECT_PARAM:Ljava/lang/String; = "object"

.field private static final PICTURE_PARAM:Ljava/lang/String; = "picture"

.field private static final SDK_ANDROID:Ljava/lang/String; = "android"

.field private static final SDK_PARAM:Ljava/lang/String; = "sdk"

.field private static final SEARCH:Ljava/lang/String; = "search"

.field private static final STAGING_PARAM:Ljava/lang/String; = "file"

.field public static final TAG:Ljava/lang/String; = null

.field private static final USER_AGENT_BASE:Ljava/lang/String; = "FBAndroidSDK"

.field private static final USER_AGENT_HEADER:Ljava/lang/String; = "User-Agent"

.field private static final VIDEOS_SUFFIX:Ljava/lang/String; = "/videos"

.field private static defaultBatchApplicationId:Ljava/lang/String;

.field private static volatile userAgent:Ljava/lang/String;

.field private static versionPattern:Ljava/util/regex/Pattern;


# instance fields
.field private batchEntryDependsOn:Ljava/lang/String;

.field private batchEntryName:Ljava/lang/String;

.field private batchEntryOmitResultOnSuccess:Z

.field private callback:Lcom/facebook/Request$Callback;

.field private graphObject:Lcom/facebook/model/GraphObject;

.field private graphPath:Ljava/lang/String;

.field private httpMethod:Lcom/facebook/HttpMethod;

.field private overriddenURL:Ljava/lang/String;

.field private parameters:Landroid/os/Bundle;

.field private restMethod:Ljava/lang/String;

.field private session:Lcom/facebook/Session;

.field private tag:Ljava/lang/Object;

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Lcom/facebook/Request;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/Request;->TAG:Ljava/lang/String;

    .line 114
    const-string v0, "^v\\d+\\.\\d+/.*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/Request;->versionPattern:Ljava/util/regex/Pattern;

    .line 2175
    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 134
    move-object v0, p0

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 135
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;)V
    .locals 6
    .parameter "session"
    .parameter "graphPath"

    .prologue
    const/4 v3, 0x0

    .line 149
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 150
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V
    .locals 6
    .parameter "session"
    .parameter "graphPath"
    .parameter "parameters"
    .parameter "httpMethod"

    .prologue
    .line 171
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 172
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V
    .locals 7
    .parameter "session"
    .parameter "graphPath"
    .parameter "parameters"
    .parameter "httpMethod"
    .parameter "callback"

    .prologue
    .line 195
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;Ljava/lang/String;)V
    .locals 1
    .parameter "session"
    .parameter "graphPath"
    .parameter "parameters"
    .parameter "httpMethod"
    .parameter "callback"
    .parameter "version"

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    .line 221
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 222
    iput-object p2, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    .line 223
    iput-object p5, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    .line 224
    iput-object p6, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    .line 226
    invoke-virtual {p0, p4}, Lcom/facebook/Request;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 228
    if-eqz p3, :cond_1

    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    .line 234
    :goto_0
    iget-object v0, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 235
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getAPIVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    .line 237
    :cond_0
    return-void

    .line 231
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    goto :goto_0
.end method

.method constructor <init>(Lcom/facebook/Session;Ljava/net/URL;)V
    .locals 1
    .parameter "session"
    .parameter "overriddenURL"

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    .line 240
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 241
    invoke-virtual {p2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    .line 243
    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    invoke-virtual {p0, v0}, Lcom/facebook/Request;->setHttpMethod(Lcom/facebook/HttpMethod;)V

    .line 245
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    .line 246
    return-void
.end method

.method static synthetic access$0(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 2218
    invoke-static {p0}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2223
    invoke-static {p0}, Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 2199
    invoke-static {p0, p1}, Lcom/facebook/Request;->typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private addCommonParameters()V
    .locals 6

    .prologue
    const-string v5, "access_token"

    .line 1760
    iget-object v3, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    if-eqz v3, :cond_2

    .line 1761
    iget-object v3, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v3}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1762
    new-instance v3, Lcom/facebook/FacebookException;

    const-string v4, "Session provided to a Request in un-opened state."

    invoke-direct {v3, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1763
    :cond_0
    iget-object v3, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v4, "access_token"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1764
    iget-object v3, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v3}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 1765
    .local v0, accessToken:Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1766
    iget-object v3, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v4, "access_token"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1779
    .end local v0           #accessToken:Ljava/lang/String;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v4, "sdk"

    const-string v5, "android"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    iget-object v3, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v4, "format"

    const-string v5, "json"

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1781
    return-void

    .line 1768
    :cond_2
    iget-object v3, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v4, "access_token"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1769
    invoke-static {}, Lcom/facebook/Settings;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 1770
    .local v1, appID:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/Settings;->getClientToken()Ljava/lang/String;

    move-result-object v2

    .line 1771
    .local v2, clientToken:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1772
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1773
    .restart local v0       #accessToken:Ljava/lang/String;
    iget-object v3, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    const-string v4, "access_token"

    invoke-virtual {v3, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1775
    .end local v0           #accessToken:Ljava/lang/String;
    :cond_3
    sget-object v3, Lcom/facebook/Request;->TAG:Ljava/lang/String;

    .line 1776
    const-string v4, "Warning: Sessionless Request needs token but missing either application ID or client token."

    .line 1775
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "baseUrl"

    .prologue
    .line 1784
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {v4, p1}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 1786
    .local v2, uriBuilder:Landroid/net/Uri$Builder;
    iget-object v4, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1787
    .local v1, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1807
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 1787
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1788
    .local v0, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1790
    .local v3, value:Ljava/lang/Object;
    if-nez v3, :cond_2

    .line 1791
    const-string v3, ""

    .line 1794
    .end local v3           #value:Ljava/lang/Object;
    :cond_2
    invoke-static {v3}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1795
    invoke-static {v3}, Lcom/facebook/Request;->parameterToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1804
    .local v3, value:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v0, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 1797
    .end local v3           #value:Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    sget-object v6, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-ne v5, v6, :cond_0

    .line 1798
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "Unsupported parameter type for GET request: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1799
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1798
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method static createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 3
    .parameter "url"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1748
    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 1750
    .local v0, connection:Ljava/net/HttpURLConnection;
    const-string v1, "User-Agent"

    invoke-static {}, Lcom/facebook/Request;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    const-string v1, "Content-Type"

    invoke-static {}, Lcom/facebook/Request;->getMimeContentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    const-string v1, "Accept-Language"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 1754
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 1755
    return-object v0
.end method

.method public static executeAndWait(Lcom/facebook/Request;)Lcom/facebook/Response;
    .locals 4
    .parameter "request"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1442
    new-array v1, v3, [Lcom/facebook/Request;

    aput-object p0, v1, v2

    invoke-static {v1}, Lcom/facebook/Request;->executeBatchAndWait([Lcom/facebook/Request;)Ljava/util/List;

    move-result-object v0

    .line 1444
    .local v0, responses:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/Response;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eq v1, v3, :cond_1

    .line 1445
    :cond_0
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "invalid state: expected a single response"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1448
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/facebook/Response;

    return-object p0
.end method

.method public static executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;
    .locals 6
    .parameter "requests"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/RequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1508
    const-string v3, "requests"

    invoke-static {p0, v3}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1510
    const/4 v0, 0x0

    .line 1512
    .local v0, connection:Ljava/net/HttpURLConnection;
    :try_start_0
    invoke-static {p0}, Lcom/facebook/Request;->toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1519
    invoke-static {v0, p0}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v2

    .line 1520
    .local v2, responses:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/Response;>;"
    :goto_0
    return-object v2

    .line 1513
    .end local v2           #responses:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/Response;>;"
    :catch_0
    move-exception v1

    .line 1514
    .local v1, ex:Ljava/lang/Exception;
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getRequests()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/facebook/FacebookException;

    invoke-direct {v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v3, v4, v5}, Lcom/facebook/Response;->constructErrorResponses(Ljava/util/List;Ljava/net/HttpURLConnection;Lcom/facebook/FacebookException;)Ljava/util/List;

    move-result-object v2

    .line 1515
    .restart local v2       #responses:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/Response;>;"
    invoke-static {p0, v2}, Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V

    goto :goto_0
.end method

.method public static executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1488
    .local p0, requests:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/facebook/Request;>;"
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAndWait(Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAndWait([Lcom/facebook/Request;)Ljava/util/List;
    .locals 1
    .parameter "requests"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/facebook/Request;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1468
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1470
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAndWait(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .locals 2
    .parameter "requests"

    .prologue
    .line 1576
    const-string v1, "requests"

    invoke-static {p0, v1}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1578
    new-instance v0, Lcom/facebook/RequestAsyncTask;

    invoke-direct {v0, p0}, Lcom/facebook/RequestAsyncTask;-><init>(Lcom/facebook/RequestBatch;)V

    .line 1579
    .local v0, asyncTask:Lcom/facebook/RequestAsyncTask;
    invoke-virtual {v0}, Lcom/facebook/RequestAsyncTask;->executeOnSettingsExecutor()Lcom/facebook/RequestAsyncTask;

    .line 1580
    return-object v0
.end method

.method public static executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Lcom/facebook/RequestAsyncTask;"
        }
    .end annotation

    .prologue
    .line 1558
    .local p0, requests:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/facebook/Request;>;"
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static varargs executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .parameter "requests"

    .prologue
    .line 1538
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1540
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync(Ljava/util/Collection;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;
    .locals 10
    .parameter "connection"
    .parameter "requests"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Lcom/facebook/RequestBatch;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1620
    invoke-static {p0, p1}, Lcom/facebook/Response;->fromHttpConnection(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v2

    .line 1622
    .local v2, responses:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/Response;>;"
    invoke-static {p0}, Lcom/facebook/internal/Utility;->disconnectQuietly(Ljava/net/URLConnection;)V

    .line 1624
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->size()I

    move-result v0

    .line 1625
    .local v0, numRequests:I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eq v0, v5, :cond_0

    .line 1626
    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "Received %d responses while expecting %d"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    .line 1627
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    .line 1626
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1630
    :cond_0
    invoke-static {p1, v2}, Lcom/facebook/Request;->runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V

    .line 1634
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1635
    .local v4, sessions:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/facebook/Session;>;"
    invoke-virtual {p1}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2

    .line 1640
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1644
    return-object v2

    .line 1635
    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/Request;

    .line 1636
    .local v1, request:Lcom/facebook/Request;
    iget-object v6, v1, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    if-eqz v6, :cond_1

    .line 1637
    iget-object v6, v1, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1640
    .end local v1           #request:Lcom/facebook/Request;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/Session;

    .line 1641
    .local v3, session:Lcom/facebook/Session;
    invoke-virtual {v3}, Lcom/facebook/Session;->extendAccessTokenIfNeeded()V

    goto :goto_1
.end method

.method public static executeConnectionAndWait(Ljava/net/HttpURLConnection;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .parameter "connection"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1600
    .local p1, requests:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/facebook/Request;>;"
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p1}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {p0, v0}, Lcom/facebook/Request;->executeConnectionAndWait(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .locals 2
    .parameter "callbackHandler"
    .parameter "connection"
    .parameter "requests"

    .prologue
    .line 1688
    const-string v1, "connection"

    invoke-static {p1, v1}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1690
    new-instance v0, Lcom/facebook/RequestAsyncTask;

    invoke-direct {v0, p1, p2}, Lcom/facebook/RequestAsyncTask;-><init>(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)V

    .line 1691
    .local v0, asyncTask:Lcom/facebook/RequestAsyncTask;
    invoke-virtual {p2, p0}, Lcom/facebook/RequestBatch;->setCallbackHandler(Landroid/os/Handler;)V

    .line 1692
    invoke-virtual {v0}, Lcom/facebook/RequestAsyncTask;->executeOnSettingsExecutor()Lcom/facebook/RequestAsyncTask;

    .line 1693
    return-object v0
.end method

.method public static executeConnectionAsync(Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .parameter "connection"
    .parameter "requests"

    .prologue
    .line 1664
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/facebook/Request;->executeConnectionAsync(Landroid/os/Handler;Ljava/net/HttpURLConnection;Lcom/facebook/RequestBatch;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeGraphPathRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .parameter "session"
    .parameter "graphPath"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1257
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeMeRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .parameter "session"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1180
    invoke-static {p0, p1}, Lcom/facebook/Request;->newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeMyFriendsRequestAsync(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .parameter "session"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1198
    invoke-static {p0, p1}, Lcom/facebook/Request;->newMyFriendsRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executePlacesSearchRequestAsync(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .parameter "session"
    .parameter "location"
    .parameter "radiusInMeters"
    .parameter "resultsLimit"
    .parameter "searchText"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1288
    invoke-static/range {p0 .. p5}, Lcom/facebook/Request;->newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;

    move-result-object v0

    .line 1289
    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    .line 1288
    return-object v0
.end method

.method public static executePostRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .parameter "session"
    .parameter "graphPath"
    .parameter "graphObject"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1138
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeRestRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .parameter "session"
    .parameter "restMethod"
    .parameter "parameters"
    .parameter "httpMethod"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1162
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->newRestRequest(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeStatusUpdateRequestAsync(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .parameter "session"
    .parameter "message"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1309
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeUploadPhotoRequestAsync(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .parameter "session"
    .parameter "image"
    .parameter "callback"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1218
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public static executeUploadPhotoRequestAsync(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/RequestAsyncTask;
    .locals 1
    .parameter "session"
    .parameter "file"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1237
    invoke-static {p0, p1, p2}, Lcom/facebook/Request;->newUploadPhotoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method private static getBatchAppId(Lcom/facebook/RequestBatch;)Ljava/lang/String;
    .locals 4
    .parameter "batch"

    .prologue
    .line 2186
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2187
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getBatchApplicationId()Ljava/lang/String;

    move-result-object v2

    .line 2196
    :goto_0
    return-object v2

    .line 2190
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2196
    sget-object v2, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    goto :goto_0

    .line 2190
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request;

    .line 2191
    .local v0, request:Lcom/facebook/Request;
    iget-object v1, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 2192
    .local v1, session:Lcom/facebook/Session;
    if-eqz v1, :cond_1

    .line 2193
    invoke-virtual {v1}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static final getDefaultBatchApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1063
    sget-object v0, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    return-object v0
.end method

.method private getGraphPathWithVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1849
    sget-object v1, Lcom/facebook/Request;->versionPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1850
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1851
    iget-object v1, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    .line 1853
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getMimeContentType()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2172
    const-string v0, "multipart/form-data; boundary=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getRestPathWithVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1857
    sget-object v1, Lcom/facebook/Request;->versionPattern:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1858
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1859
    iget-object v1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    .line 1861
    :goto_0
    return-object v1

    :cond_0
    const-string v1, "%s/%s/%s"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "method"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getUserAgent()Ljava/lang/String;
    .locals 4

    .prologue
    .line 2178
    sget-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2179
    const-string v0, "%s.%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "FBAndroidSDK"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "3.14.1"

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    .line 2182
    :cond_0
    sget-object v0, Lcom/facebook/Request;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method private static hasOnProgressCallbacks(Lcom/facebook/RequestBatch;)Z
    .locals 5
    .parameter "requests"

    .prologue
    const/4 v4, 0x1

    .line 1942
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getCallbacks()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1948
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1954
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 1942
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/RequestBatch$Callback;

    .line 1943
    .local v0, callback:Lcom/facebook/RequestBatch$Callback;
    instance-of v3, v0, Lcom/facebook/RequestBatch$OnProgressCallback;

    if-eqz v3, :cond_0

    move v2, v4

    .line 1944
    goto :goto_0

    .line 1948
    .end local v0           #callback:Lcom/facebook/RequestBatch$Callback;
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/Request;

    .line 1949
    .local v1, request:Lcom/facebook/Request;
    invoke-virtual {v1}, Lcom/facebook/Request;->getCallback()Lcom/facebook/Request$Callback;

    move-result-object v3

    instance-of v3, v3, Lcom/facebook/Request$OnProgressCallback;

    if-eqz v3, :cond_1

    move v2, v4

    .line 1950
    goto :goto_0
.end method

.method private static isSupportedAttachmentType(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 2214
    instance-of v0, p0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    instance-of v0, p0, [B

    if-nez v0, :cond_0

    instance-of v0, p0, Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_0

    .line 2215
    instance-of v0, p0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    if-nez v0, :cond_0

    .line 2214
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isSupportedParameterType(Ljava/lang/Object;)Z
    .locals 1
    .parameter "value"

    .prologue
    .line 2219
    instance-of v0, p0, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/lang/Number;

    if-nez v0, :cond_0

    .line 2220
    instance-of v0, p0, Ljava/util/Date;

    if-nez v0, :cond_0

    .line 2219
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/Session;Landroid/content/Context;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 1
    .parameter "session"
    .parameter "context"
    .parameter "callback"

    .prologue
    .line 559
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/facebook/Request;->newCustomAudienceThirdPartyIdRequest(Lcom/facebook/Session;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newCustomAudienceThirdPartyIdRequest(Lcom/facebook/Session;Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 8
    .parameter "session"
    .parameter "context"
    .parameter "applicationId"
    .parameter "callback"

    .prologue
    .line 599
    if-nez p0, :cond_0

    .line 600
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object p0

    .line 603
    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/Session;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    .line 604
    const/4 p0, 0x0

    .line 607
    :cond_1
    if-nez p2, :cond_2

    .line 608
    if-eqz p0, :cond_3

    .line 609
    invoke-virtual {p0}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object p2

    .line 615
    :cond_2
    :goto_0
    if-nez p2, :cond_4

    .line 616
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Facebook App ID cannot be determined"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_3
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 619
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "/custom_audience_third_party_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 620
    .local v2, endpoint:Ljava/lang/String;
    invoke-static {p1}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v6

    .line 621
    .local v6, attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 623
    .local v3, parameters:Landroid/os/Bundle;
    if-nez p0, :cond_5

    .line 626
    invoke-virtual {v6}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 627
    invoke-virtual {v6}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 629
    .local v7, udid:Ljava/lang/String;
    :goto_1
    invoke-virtual {v6}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 630
    const-string v0, "udid"

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    .end local v7           #udid:Ljava/lang/String;
    :cond_5
    invoke-static {p1}, Lcom/facebook/Settings;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {v6}, Lcom/facebook/internal/AttributionIdentifiers;->isTrackingLimited()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 637
    :cond_6
    const-string v0, "limit_event_usage"

    const-string v1, "1"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_7
    new-instance v0, Lcom/facebook/Request;

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0

    .line 628
    :cond_8
    invoke-virtual {v6}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_1
.end method

.method public static newDeleteObjectRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .parameter "session"
    .parameter "id"
    .parameter "callback"

    .prologue
    .line 787
    new-instance v0, Lcom/facebook/Request;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newGraphPathRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .parameter "session"
    .parameter "graphPath"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    .line 396
    new-instance v0, Lcom/facebook/Request;

    move-object v1, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newMeRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserCallback;)Lcom/facebook/Request;
    .locals 6
    .parameter "session"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    .line 298
    new-instance v5, Lcom/facebook/Request$1;

    invoke-direct {v5, p1}, Lcom/facebook/Request$1;-><init>(Lcom/facebook/Request$GraphUserCallback;)V

    .line 306
    .local v5, wrapper:Lcom/facebook/Request$Callback;
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newMyFriendsRequest(Lcom/facebook/Session;Lcom/facebook/Request$GraphUserListCallback;)Lcom/facebook/Request;
    .locals 6
    .parameter "session"
    .parameter "callback"

    .prologue
    const/4 v3, 0x0

    .line 319
    new-instance v5, Lcom/facebook/Request$2;

    invoke-direct {v5, p1}, Lcom/facebook/Request$2;-><init>(Lcom/facebook/Request$GraphUserListCallback;)V

    .line 327
    .local v5, wrapper:Lcom/facebook/Request$Callback;
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/friends"

    move-object v1, p0

    move-object v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newPlacesSearchRequest(Lcom/facebook/Session;Landroid/location/Location;IILjava/lang/String;Lcom/facebook/Request$GraphPlaceListCallback;)Lcom/facebook/Request;
    .locals 9
    .parameter "session"
    .parameter "location"
    .parameter "radiusInMeters"
    .parameter "resultsLimit"
    .parameter "searchText"
    .parameter "callback"

    .prologue
    .line 423
    if-nez p1, :cond_0

    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Either location or searchText must be specified."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 427
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x5

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 428
    .local v3, parameters:Landroid/os/Bundle;
    const-string v0, "type"

    const-string v1, "place"

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    const-string v0, "limit"

    invoke-virtual {v3, v0, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 430
    if-eqz p1, :cond_1

    .line 431
    const-string v0, "center"

    .line 432
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%f,%f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v1, v2, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 431
    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    const-string v0, "distance"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 435
    :cond_1
    invoke-static {p4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 436
    const-string v0, "q"

    invoke-virtual {v3, v0, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_2
    new-instance v5, Lcom/facebook/Request$3;

    invoke-direct {v5, p5}, Lcom/facebook/Request$3;-><init>(Lcom/facebook/Request$GraphPlaceListCallback;)V

    .line 448
    .local v5, wrapper:Lcom/facebook/Request$Callback;
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "search"

    sget-object v4, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newPostOpenGraphActionRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphAction;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 5
    .parameter "session"
    .parameter "openGraphAction"
    .parameter "callback"

    .prologue
    .line 764
    if-nez p1, :cond_0

    .line 765
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "openGraphAction cannot be null"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 767
    :cond_0
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphAction;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 768
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "openGraphAction must have non-null \'type\' property"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 771
    :cond_1
    const-string v1, "me/%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p1}, Lcom/facebook/model/OpenGraphAction;->getType()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 772
    .local v0, path:Ljava/lang/String;
    invoke-static {p0, v0, p1, p2}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v1

    return-object v1
.end method

.method public static newPostOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .parameter "session"
    .parameter "openGraphObject"
    .parameter "callback"

    .prologue
    .line 702
    if-nez p1, :cond_0

    .line 703
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphObject cannot be null"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 705
    :cond_0
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphObject must have non-null \'type\' property"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 708
    :cond_1
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphObject must have non-null \'title\' property"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 712
    :cond_2
    const-string v0, "me/objects/%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 713
    .local v2, path:Ljava/lang/String;
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 714
    .local v3, bundle:Landroid/os/Bundle;
    const-string v0, "object"

    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    new-instance v0, Lcom/facebook/Request;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newPostOpenGraphObjectRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 7
    .parameter "session"
    .parameter "type"
    .parameter "title"
    .parameter "imageUrl"
    .parameter "url"
    .parameter "description"
    .parameter "objectProperties"
    .parameter "callback"

    .prologue
    .line 742
    const-class v0, Lcom/facebook/model/OpenGraphObject;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;

    move-result-object v6

    .line 744
    .local v6, openGraphObject:Lcom/facebook/model/OpenGraphObject;
    if-eqz p6, :cond_0

    .line 745
    invoke-interface {v6, p6}, Lcom/facebook/model/OpenGraphObject;->setData(Lcom/facebook/model/GraphObject;)V

    .line 748
    :cond_0
    invoke-static {p0, v6, p7}, Lcom/facebook/Request;->newPostOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .parameter "session"
    .parameter "graphPath"
    .parameter "graphObject"
    .parameter "callback"

    .prologue
    .line 263
    new-instance v0, Lcom/facebook/Request;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    .line 264
    .local v0, request:Lcom/facebook/Request;
    invoke-virtual {v0, p2}, Lcom/facebook/Request;->setGraphObject(Lcom/facebook/model/GraphObject;)V

    .line 265
    return-object v0
.end method

.method public static newRestRequest(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)Lcom/facebook/Request;
    .locals 2
    .parameter "session"
    .parameter "restMethod"
    .parameter "parameters"
    .parameter "httpMethod"

    .prologue
    .line 283
    new-instance v0, Lcom/facebook/Request;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;)V

    .line 284
    .local v0, request:Lcom/facebook/Request;
    invoke-virtual {v0, p1}, Lcom/facebook/Request;->setRestMethod(Ljava/lang/String;)V

    .line 285
    return-object v0
.end method

.method public static newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 1
    .parameter "session"
    .parameter "message"
    .parameter "callback"

    .prologue
    const/4 v0, 0x0

    .line 463
    invoke-static {p0, p1, v0, v0, p2}, Lcom/facebook/Request;->newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphPlace;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 5
    .parameter "session"
    .parameter "message"
    .parameter "place"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Session;",
            "Ljava/lang/String;",
            "Lcom/facebook/model/GraphPlace;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">;",
            "Lcom/facebook/Request$Callback;",
            ")",
            "Lcom/facebook/Request;"
        }
    .end annotation

    .prologue
    .line 517
    .local p3, tags:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/model/GraphUser;>;"
    const/4 v2, 0x0

    .line 518
    .local v2, tagIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p3, :cond_0

    .line 519
    new-instance v2, Ljava/util/ArrayList;

    .end local v2           #tagIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 520
    .restart local v2       #tagIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 524
    :cond_0
    if-nez p2, :cond_2

    const/4 v3, 0x0

    move-object v0, v3

    .line 525
    .local v0, placeId:Ljava/lang/String;
    :goto_1
    invoke-static {p0, p1, v0, v2, p4}, Lcom/facebook/Request;->newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v3

    return-object v3

    .line 520
    .end local v0           #placeId:Ljava/lang/String;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/model/GraphUser;

    .line 521
    .local v1, tag:Lcom/facebook/model/GraphUser;
    invoke-interface {v1}, Lcom/facebook/model/GraphUser;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 524
    .end local v1           #tag:Lcom/facebook/model/GraphUser;
    :cond_2
    invoke-interface {p2}, Lcom/facebook/model/GraphPlace;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_1
.end method

.method private static newStatusUpdateRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 7
    .parameter "session"
    .parameter "message"
    .parameter "placeId"
    .parameter
    .parameter "callback"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Session;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/Request$Callback;",
            ")",
            "Lcom/facebook/Request;"
        }
    .end annotation

    .prologue
    .line 484
    .local p3, tagIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 485
    .local v3, parameters:Landroid/os/Bundle;
    const-string v0, "message"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    if-eqz p2, :cond_0

    .line 488
    const-string v0, "place"

    invoke-virtual {v3, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :cond_0
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 492
    const-string v0, ","

    invoke-static {v0, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, tags:Ljava/lang/String;
    const-string v0, "tags"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    .end local v6           #tags:Ljava/lang/String;
    :cond_1
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/feed"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUpdateOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .parameter "session"
    .parameter "openGraphObject"
    .parameter "callback"

    .prologue
    .line 803
    if-nez p1, :cond_0

    .line 804
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphObject cannot be null"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 807
    :cond_0
    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getId()Ljava/lang/String;

    move-result-object v2

    .line 808
    .local v2, path:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 809
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "openGraphObject must have an id"

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 812
    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 813
    .local v3, bundle:Landroid/os/Bundle;
    const-string v0, "object"

    invoke-interface {p1}, Lcom/facebook/model/OpenGraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    new-instance v0, Lcom/facebook/Request;

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUpdateOpenGraphObjectRequest(Lcom/facebook/Session;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 7
    .parameter "session"
    .parameter "id"
    .parameter "title"
    .parameter "imageUrl"
    .parameter "url"
    .parameter "description"
    .parameter "objectProperties"
    .parameter "callback"

    .prologue
    .line 840
    const-class v0, Lcom/facebook/model/OpenGraphObject;

    const/4 v1, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;

    move-result-object v6

    .line 842
    .local v6, openGraphObject:Lcom/facebook/model/OpenGraphObject;
    invoke-interface {v6, p1}, Lcom/facebook/model/OpenGraphObject;->setId(Ljava/lang/String;)V

    .line 843
    invoke-interface {v6, p6}, Lcom/facebook/model/OpenGraphObject;->setData(Lcom/facebook/model/GraphObject;)V

    .line 845
    invoke-static {p0, v6, p7}, Lcom/facebook/Request;->newUpdateOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v0

    return-object v0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .parameter "session"
    .parameter "image"
    .parameter "callback"

    .prologue
    .line 342
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 343
    .local v3, parameters:Landroid/os/Bundle;
    const-string v0, "picture"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 345
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/photos"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadPhotoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 7
    .parameter "session"
    .parameter "file"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 359
    const/high16 v0, 0x1000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 360
    .local v6, descriptor:Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 361
    .local v3, parameters:Landroid/os/Bundle;
    const-string v0, "picture"

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 363
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/photos"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/Session;Landroid/graphics/Bitmap;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 6
    .parameter "session"
    .parameter "image"
    .parameter "callback"

    .prologue
    .line 659
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 660
    .local v3, parameters:Landroid/os/Bundle;
    const-string v0, "file"

    invoke-virtual {v3, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 662
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/staging_resources"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadStagingResourceWithImageRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 8
    .parameter "session"
    .parameter "file"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 681
    const/high16 v0, 0x1000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 682
    .local v6, descriptor:Landroid/os/ParcelFileDescriptor;
    new-instance v7, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    const-string v0, "image/png"

    invoke-direct {v7, v6, v0}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;-><init>(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    .line 683
    .local v7, descriptorWithMimeType:Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 684
    .local v3, parameters:Landroid/os/Bundle;
    const-string v0, "file"

    invoke-virtual {v3, v0, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 686
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/staging_resources"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method public static newUploadVideoRequest(Lcom/facebook/Session;Ljava/io/File;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;
    .locals 7
    .parameter "session"
    .parameter "file"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 377
    const/high16 v0, 0x1000

    invoke-static {p1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    .line 378
    .local v6, descriptor:Landroid/os/ParcelFileDescriptor;
    new-instance v3, Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Landroid/os/Bundle;-><init>(I)V

    .line 379
    .local v3, parameters:Landroid/os/Bundle;
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 381
    new-instance v0, Lcom/facebook/Request;

    const-string v2, "me/videos"

    sget-object v4, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/Request;-><init>(Lcom/facebook/Session;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/Request$Callback;)V

    return-object v0
.end method

.method private static parameterToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "value"

    .prologue
    .line 2224
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2225
    check-cast p0, Ljava/lang/String;

    .end local p0
    move-object v1, p0

    .line 2230
    :goto_0
    return-object v1

    .line 2226
    .restart local p0
    :cond_0
    instance-of v1, p0, Ljava/lang/Boolean;

    if-nez v1, :cond_1

    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_2

    .line 2227
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2228
    :cond_2
    instance-of v1, p0, Ljava/util/Date;

    if-eqz v1, :cond_3

    .line 2229
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2230
    .local v0, iso8601DateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2232
    .end local v0           #iso8601DateFormat:Ljava/text/SimpleDateFormat;
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported parameter type."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V
    .locals 10
    .parameter "graphObject"
    .parameter "path"
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2071
    const/4 v3, 0x0

    .line 2072
    .local v3, isOGAction:Z
    const-string v6, "me/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "/me/"

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2073
    :cond_0
    const-string v6, ":"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 2074
    .local v0, colonLocation:I
    const-string v6, "?"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2075
    .local v5, questionMarkLocation:I
    const/4 v6, 0x3

    if-le v0, v6, :cond_3

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1

    if-ge v0, v5, :cond_3

    :cond_1
    move v3, v9

    .line 2078
    .end local v0           #colonLocation:I
    .end local v5           #questionMarkLocation:I
    :cond_2
    :goto_0
    invoke-interface {p0}, Lcom/facebook/model/GraphObject;->asMap()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 2079
    .local v1, entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local p0
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2083
    return-void

    .end local v1           #entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v0       #colonLocation:I
    .restart local v5       #questionMarkLocation:I
    .restart local p0
    :cond_3
    move v3, v8

    .line 2075
    goto :goto_0

    .line 2079
    .end local v0           #colonLocation:I
    .end local v5           #questionMarkLocation:I
    .end local p0
    .restart local v1       #entries:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2080
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v7, "image"

    invoke-virtual {p0, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v4, v9

    .line 2081
    .local v4, passByValue:Z
    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    invoke-static {p0, v7, p2, v4}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_1

    .end local v4           #passByValue:Z
    :cond_5
    move v4, v8

    .line 2080
    goto :goto_2
.end method

.method private static processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V
    .locals 7
    .parameter "key"
    .parameter "value"
    .parameter "serializer"
    .parameter "passByValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2087
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2088
    .local v1, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v2, Lcom/facebook/model/GraphObject;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2089
    check-cast p1, Lcom/facebook/model/GraphObject;

    .end local p1
    invoke-interface {p1}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object p1

    .line 2090
    .local p1, value:Lorg/json/JSONObject;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 2096
    .end local p1           #value:Lorg/json/JSONObject;
    :cond_0
    :goto_0
    const-class v2, Lorg/json/JSONObject;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2097
    check-cast p1, Lorg/json/JSONObject;

    .line 2098
    .local p1, jsonObject:Lorg/json/JSONObject;
    if-eqz p3, :cond_4

    .line 2101
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 2102
    .local v1, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2137
    .end local v1           #keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local p1           #jsonObject:Lorg/json/JSONObject;
    .end local p3
    :cond_1
    :goto_2
    return-void

    .line 2091
    .local v1, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .local p1, value:Ljava/lang/Object;
    .restart local p3
    :cond_2
    const-class v2, Lcom/facebook/model/GraphObjectList;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2092
    check-cast p1, Lcom/facebook/model/GraphObjectList;

    .end local p1           #value:Ljava/lang/Object;
    invoke-interface {p1}, Lcom/facebook/model/GraphObjectList;->getInnerJSONArray()Lorg/json/JSONArray;

    move-result-object p1

    .line 2093
    .local p1, value:Lorg/json/JSONArray;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 2103
    .local v1, keys:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .local p1, jsonObject:Lorg/json/JSONObject;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2104
    .local v2, propertyName:Ljava/lang/String;
    const-string v3, "%s[%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2105
    .local v3, subKey:Ljava/lang/String;
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #propertyName:Ljava/lang/String;
    invoke-static {v3, v2, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_1

    .line 2110
    .end local v3           #subKey:Ljava/lang/String;
    .local v1, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_4
    const-string v1, "id"

    .end local v1           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2111
    const-string v1, "id"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #jsonObject:Lorg/json/JSONObject;
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_2

    .line 2112
    .restart local p1       #jsonObject:Lorg/json/JSONObject;
    :cond_5
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2113
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #jsonObject:Lorg/json/JSONObject;
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    goto :goto_2

    .line 2116
    .restart local v1       #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_6
    const-class v2, Lorg/json/JSONArray;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 2117
    move-object v0, p1

    check-cast v0, Lorg/json/JSONArray;

    move-object v1, v0

    .line 2118
    .local v1, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 2119
    .local v2, length:I
    const/4 p1, 0x0

    .local p1, i:I
    :goto_3
    if-ge p1, v2, :cond_1

    .line 2120
    const-string v3, "%s[%d]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2121
    .restart local v3       #subKey:Ljava/lang/String;
    invoke-virtual {v1, p1}, Lorg/json/JSONArray;->opt(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4, p2, p3}, Lcom/facebook/Request;->processGraphObjectProperty(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request$KeyValueSerializer;Z)V

    .line 2119
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 2123
    .end local v2           #length:I
    .end local v3           #subKey:Ljava/lang/String;
    .end local p1           #i:I
    .local v1, valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_7
    const-class p3, Ljava/lang/String;

    .end local p3
    invoke-virtual {p3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 2124
    const-class p3, Ljava/lang/Number;

    invoke-virtual {p3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-nez p3, :cond_8

    .line 2125
    const-class p3, Ljava/lang/Boolean;

    invoke-virtual {p3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 2126
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p0, p1}, Lcom/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2127
    :cond_9
    const-class p3, Ljava/util/Date;

    invoke-virtual {p3, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 2128
    check-cast p1, Ljava/util/Date;

    .line 2134
    .local p1, date:Ljava/util/Date;
    new-instance p3, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    .end local v1           #valueClass:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {p3, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2135
    .local p3, iso8601DateFormat:Ljava/text/SimpleDateFormat;
    invoke-virtual {p3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .end local p1           #date:Ljava/util/Date;
    invoke-interface {p2, p0, p1}, Lcom/facebook/Request$KeyValueSerializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private static processRequest(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;)V
    .locals 9
    .parameter "requests"
    .parameter "logger"
    .parameter "numRequests"
    .parameter "url"
    .parameter "outputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-string v8, "  Attachments:\n"

    .line 2016
    new-instance v4, Lcom/facebook/Request$Serializer;

    invoke-direct {v4, p4, p1}, Lcom/facebook/Request$Serializer;-><init>(Ljava/io/OutputStream;Lcom/facebook/internal/Logger;)V

    .line 2018
    .local v4, serializer:Lcom/facebook/Request$Serializer;
    const/4 v6, 0x1

    if-ne p2, v6, :cond_5

    .line 2019
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v3

    .line 2021
    .local v3, request:Lcom/facebook/Request;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2022
    .local v0, attachments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/facebook/Request$Attachment;>;"
    iget-object v6, v3, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v6}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    .line 2029
    if-eqz p1, :cond_1

    .line 2030
    const-string v6, "  Parameters:\n"

    invoke-virtual {p1, v6}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 2032
    :cond_1
    iget-object v6, v3, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-static {v6, v4, v3}, Lcom/facebook/Request;->serializeParameters(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;Lcom/facebook/Request;)V

    .line 2034
    if-eqz p1, :cond_2

    .line 2035
    const-string v6, "  Attachments:\n"

    invoke-virtual {p1, v8}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 2037
    :cond_2
    invoke-static {v0, v4}, Lcom/facebook/Request;->serializeAttachments(Ljava/util/Map;Lcom/facebook/Request$Serializer;)V

    .line 2039
    iget-object v6, v3, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    if-eqz v6, :cond_3

    .line 2040
    iget-object v6, v3, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {p3}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v4}, Lcom/facebook/Request;->processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V

    .line 2061
    .end local v3           #request:Lcom/facebook/Request;
    :cond_3
    :goto_1
    return-void

    .line 2022
    .restart local v3       #request:Lcom/facebook/Request;
    :cond_4
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2023
    .local v2, key:Ljava/lang/String;
    iget-object v7, v3, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 2024
    .local v5, value:Ljava/lang/Object;
    invoke-static {v5}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2025
    new-instance v7, Lcom/facebook/Request$Attachment;

    invoke-direct {v7, v3, v5}, Lcom/facebook/Request$Attachment;-><init>(Lcom/facebook/Request;Ljava/lang/Object;)V

    invoke-interface {v0, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2043
    .end local v0           #attachments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/facebook/Request$Attachment;>;"
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #request:Lcom/facebook/Request;
    .end local v5           #value:Ljava/lang/Object;
    :cond_5
    invoke-static {p0}, Lcom/facebook/Request;->getBatchAppId(Lcom/facebook/RequestBatch;)Ljava/lang/String;

    move-result-object v1

    .line 2044
    .local v1, batchAppID:Ljava/lang/String;
    invoke-static {v1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2045
    new-instance v6, Lcom/facebook/FacebookException;

    const-string v7, "At least one request in a batch must have an open Session, or a default app ID must be specified."

    invoke-direct {v6, v7}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2049
    :cond_6
    const-string v6, "batch_app_id"

    invoke-virtual {v4, v6, v1}, Lcom/facebook/Request$Serializer;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2053
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2054
    .restart local v0       #attachments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/facebook/Request$Attachment;>;"
    invoke-static {v4, p0, v0}, Lcom/facebook/Request;->serializeRequestsAsJSON(Lcom/facebook/Request$Serializer;Ljava/util/Collection;Ljava/util/Map;)V

    .line 2056
    if-eqz p1, :cond_7

    .line 2057
    const-string v6, "  Attachments:\n"

    invoke-virtual {p1, v8}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 2059
    :cond_7
    invoke-static {v0, v4}, Lcom/facebook/Request;->serializeAttachments(Ljava/util/Map;Lcom/facebook/Request$Serializer;)V

    goto :goto_1
.end method

.method static runCallbacks(Lcom/facebook/RequestBatch;Ljava/util/List;)V
    .locals 9
    .parameter "requests"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/RequestBatch;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/Response;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1710
    .local p1, responses:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/Response;>;"
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    move-result v3

    .line 1713
    .local v3, numRequests:I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1714
    .local v1, callbacks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/util/Pair<Lcom/facebook/Request$Callback;Lcom/facebook/Response;>;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 1721
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1722
    new-instance v5, Lcom/facebook/Request$4;

    invoke-direct {v5, v1, p0}, Lcom/facebook/Request$4;-><init>(Ljava/util/ArrayList;Lcom/facebook/RequestBatch;)V

    .line 1735
    .local v5, runnable:Ljava/lang/Runnable;
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1736
    .local v0, callbackHandler:Landroid/os/Handler;
    if-nez v0, :cond_3

    .line 1738
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    .line 1744
    .end local v0           #callbackHandler:Landroid/os/Handler;
    .end local v5           #runnable:Ljava/lang/Runnable;
    :cond_0
    :goto_1
    return-void

    .line 1715
    :cond_1
    invoke-virtual {p0, v2}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v4

    .line 1716
    .local v4, request:Lcom/facebook/Request;
    iget-object v6, v4, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    if-eqz v6, :cond_2

    .line 1717
    new-instance v7, Landroid/util/Pair;

    iget-object v8, v4, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/Response;

    invoke-direct {v7, v8, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1714
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1741
    .end local v4           #request:Lcom/facebook/Request;
    .restart local v0       #callbackHandler:Landroid/os/Handler;
    .restart local v5       #runnable:Ljava/lang/Runnable;
    :cond_3
    invoke-virtual {v0, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method

.method private static serializeAttachments(Ljava/util/Map;Lcom/facebook/Request$Serializer;)V
    .locals 6
    .parameter
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/Request$Attachment;",
            ">;",
            "Lcom/facebook/Request$Serializer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2151
    .local p0, attachments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/facebook/Request$Attachment;>;"
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 2153
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2159
    return-void

    .line 2153
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2154
    .local v1, key:Ljava/lang/String;
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/Request$Attachment;

    .line 2155
    .local v0, attachment:Lcom/facebook/Request$Attachment;
    invoke-virtual {v0}, Lcom/facebook/Request$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v4}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2156
    invoke-virtual {v0}, Lcom/facebook/Request$Attachment;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Lcom/facebook/Request$Attachment;->getRequest()Lcom/facebook/Request;

    move-result-object v5

    invoke-virtual {p1, v1, v4, v5}, Lcom/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V

    goto :goto_0
.end method

.method private static serializeParameters(Landroid/os/Bundle;Lcom/facebook/Request$Serializer;Lcom/facebook/Request;)V
    .locals 5
    .parameter "bundle"
    .parameter "serializer"
    .parameter "request"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2140
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 2142
    .local v1, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2148
    return-void

    .line 2142
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2143
    .local v0, key:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 2144
    .local v2, value:Ljava/lang/Object;
    invoke-static {v2}, Lcom/facebook/Request;->isSupportedParameterType(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2145
    invoke-virtual {p1, v0, v2, p2}, Lcom/facebook/Request$Serializer;->writeObject(Ljava/lang/String;Ljava/lang/Object;Lcom/facebook/Request;)V

    goto :goto_0
.end method

.method private static serializeRequestsAsJSON(Lcom/facebook/Request$Serializer;Ljava/util/Collection;Ljava/util/Map;)V
    .locals 4
    .parameter "serializer"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/Request$Serializer;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/Request$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2163
    .local p1, requests:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/facebook/Request;>;"
    .local p2, attachments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/facebook/Request$Attachment;>;"
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 2164
    .local v0, batch:Lorg/json/JSONArray;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2168
    const-string v2, "batch"

    invoke-virtual {p0, v2, v0, p1}, Lcom/facebook/Request$Serializer;->writeRequestsAsJson(Ljava/lang/String;Lorg/json/JSONArray;Ljava/util/Collection;)V

    .line 2169
    return-void

    .line 2164
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/Request;

    .line 2165
    .local v1, request:Lcom/facebook/Request;
    invoke-direct {v1, v0, p2}, Lcom/facebook/Request;->serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V

    goto :goto_0
.end method

.method private serializeToBatch(Lorg/json/JSONArray;Ljava/util/Map;)V
    .locals 19
    .parameter "batch"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/Request$Attachment;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1883
    .local p2, attachments:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/facebook/Request$Attachment;>;"
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 1885
    .local v6, batchEntry:Lorg/json/JSONObject;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_0

    .line 1886
    const-string v14, "name"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1887
    const-string v14, "omit_response_on_success"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    move v15, v0

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1889
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    move-object v14, v0

    if-eqz v14, :cond_1

    .line 1890
    const-string v14, "depends_on"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    move-object v15, v0

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1893
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/Request;->getUrlForBatchedRequest()Ljava/lang/String;

    move-result-object v12

    .line 1894
    .local v12, relativeURL:Ljava/lang/String;
    const-string v14, "relative_url"

    invoke-virtual {v6, v14, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1895
    const-string v14, "method"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    move-object v15, v0

    invoke-virtual {v6, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1896
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    move-object v14, v0

    if-eqz v14, :cond_2

    .line 1897
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    move-object v14, v0

    invoke-virtual {v14}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    .line 1898
    .local v3, accessToken:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/internal/Logger;->registerAccessToken(Ljava/lang/String;)V

    .line 1902
    .end local v3           #accessToken:Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1903
    .local v4, attachmentNames:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v9

    .line 1904
    .local v9, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_6

    .line 1914
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_4

    .line 1915
    const-string v14, ","

    invoke-static {v14, v4}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v5

    .line 1916
    .local v5, attachmentNamesString:Ljava/lang/String;
    const-string v14, "attached_files"

    invoke-virtual {v6, v14, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1919
    .end local v5           #attachmentNamesString:Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    move-object v14, v0

    if-eqz v14, :cond_5

    .line 1921
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 1922
    .local v10, keysAndValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    move-object v14, v0

    new-instance v15, Lcom/facebook/Request$5;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/facebook/Request$5;-><init>(Lcom/facebook/Request;Ljava/util/ArrayList;)V

    invoke-static {v14, v12, v15}, Lcom/facebook/Request;->processGraphObject(Lcom/facebook/model/GraphObject;Ljava/lang/String;Lcom/facebook/Request$KeyValueSerializer;)V

    .line 1928
    const-string v14, "&"

    invoke-static {v14, v10}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v7

    .line 1929
    .local v7, bodyValue:Ljava/lang/String;
    const-string v14, "body"

    invoke-virtual {v6, v14, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1932
    .end local v7           #bodyValue:Ljava/lang/String;
    .end local v10           #keysAndValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1933
    return-void

    .line 1904
    :cond_6
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1905
    .local v8, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    move-object v15, v0

    invoke-virtual {v15, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    .line 1906
    .local v13, value:Ljava/lang/Object;
    invoke-static {v13}, Lcom/facebook/Request;->isSupportedAttachmentType(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1908
    const-string v15, "%s%d"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const-string v18, "file"

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->size()I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1909
    .local v11, name:Ljava/lang/String;
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1910
    new-instance v15, Lcom/facebook/Request$Attachment;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/facebook/Request$Attachment;-><init>(Lcom/facebook/Request;Ljava/lang/Object;)V

    move-object/from16 v0, p2

    move-object v1, v11

    move-object v2, v15

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method static final serializeToUrlConnection(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
    .locals 10
    .parameter "requests"
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1959
    new-instance v6, Lcom/facebook/internal/Logger;

    sget-object v0, Lcom/facebook/LoggingBehavior;->REQUESTS:Lcom/facebook/LoggingBehavior;

    const-string v1, "Request"

    invoke-direct {v6, v0, v1}, Lcom/facebook/internal/Logger;-><init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V

    .line 1961
    .local v6, logger:Lcom/facebook/internal/Logger;
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    move-result v7

    .line 1963
    .local v7, numRequests:I
    const/4 v0, 0x1

    if-ne v7, v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v0

    iget-object v0, v0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    .line 1964
    .local v0, connectionHttpMethod:Lcom/facebook/HttpMethod;
    :goto_0
    invoke-virtual {v0}, Lcom/facebook/HttpMethod;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 1966
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v9

    .line 1967
    .local v9, url:Ljava/net/URL;
    const-string v1, "Request:\n"

    invoke-virtual {v6, v1}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;)V

    .line 1968
    const-string v1, "Id"

    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1969
    const-string v1, "URL"

    invoke-virtual {v6, v1, v9}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1970
    const-string v1, "Method"

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getRequestMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1971
    const-string v1, "User-Agent"

    const-string v2, "User-Agent"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1972
    const-string v1, "Content-Type"

    const-string v2, "Content-Type"

    invoke-virtual {p1, v2}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Lcom/facebook/internal/Logger;->appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1974
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getTimeout()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 1975
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getTimeout()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 1979
    sget-object v1, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 1980
    .local v0, isPost:Z
    :goto_1
    if-nez v0, :cond_2

    .line 1981
    invoke-virtual {v6}, Lcom/facebook/internal/Logger;->log()V

    .line 2011
    .end local v0           #isPost:Z
    .end local p1
    :goto_2
    return-void

    .line 1963
    .end local v9           #url:Ljava/net/URL;
    .restart local p1
    :cond_0
    sget-object v0, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    goto :goto_0

    .line 1979
    .local v0, connectionHttpMethod:Lcom/facebook/HttpMethod;
    .restart local v9       #url:Ljava/net/URL;
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 1985
    .local v0, isPost:Z
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 1987
    .end local v0           #isPost:Z
    const/4 v8, 0x0

    .line 1989
    .local v8, outputStream:Ljava/io/OutputStream;
    :try_start_0
    invoke-static {p0}, Lcom/facebook/Request;->hasOnProgressCallbacks(Lcom/facebook/RequestBatch;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1990
    const/4 v0, 0x0

    .line 1991
    .local v0, countingStream:Lcom/facebook/ProgressNoopOutputStream;
    new-instance v0, Lcom/facebook/ProgressNoopOutputStream;

    .end local v0           #countingStream:Lcom/facebook/ProgressNoopOutputStream;
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->getCallbackHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/ProgressNoopOutputStream;-><init>(Landroid/os/Handler;)V

    .line 1992
    .restart local v0       #countingStream:Lcom/facebook/ProgressNoopOutputStream;
    const/4 v1, 0x0

    invoke-static {p0, v1, v7, v9, v0}, Lcom/facebook/Request;->processRequest(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;)V

    .line 1994
    invoke-virtual {v0}, Lcom/facebook/ProgressNoopOutputStream;->getMaxProgress()I

    move-result v2

    .line 1995
    .local v2, max:I
    invoke-virtual {v0}, Lcom/facebook/ProgressNoopOutputStream;->getProgressMap()Ljava/util/Map;

    move-result-object v3

    .line 1997
    .local v3, progressMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/facebook/Request;Lcom/facebook/RequestProgress;>;"
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .end local p1
    invoke-direct {v1, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1998
    .local v1, buffered:Ljava/io/BufferedOutputStream;
    new-instance v0, Lcom/facebook/ProgressOutputStream;

    .end local v0           #countingStream:Lcom/facebook/ProgressNoopOutputStream;
    int-to-long v4, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ProgressOutputStream;-><init>(Ljava/io/OutputStream;Lcom/facebook/RequestBatch;Ljava/util/Map;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2004
    .end local v1           #buffered:Ljava/io/BufferedOutputStream;
    .end local v2           #max:I
    .end local v3           #progressMap:Ljava/util/Map;,"Ljava/util/Map<Lcom/facebook/Request;Lcom/facebook/RequestProgress;>;"
    .end local v8           #outputStream:Ljava/io/OutputStream;
    .local v0, outputStream:Ljava/io/OutputStream;
    :goto_3
    :try_start_1
    invoke-static {p0, v6, v7, v9, v0}, Lcom/facebook/Request;->processRequest(Lcom/facebook/RequestBatch;Lcom/facebook/internal/Logger;ILjava/net/URL;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2007
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 2010
    invoke-virtual {v6}, Lcom/facebook/internal/Logger;->log()V

    goto :goto_2

    .line 2001
    .end local v0           #outputStream:Ljava/io/OutputStream;
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    .restart local p1
    :cond_3
    :try_start_2
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    .end local p1
    invoke-direct {v0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v8           #outputStream:Ljava/io/OutputStream;
    .restart local v0       #outputStream:Ljava/io/OutputStream;
    goto :goto_3

    .line 2006
    .end local v0           #outputStream:Ljava/io/OutputStream;
    .restart local v8       #outputStream:Ljava/io/OutputStream;
    :catchall_0
    move-exception p0

    move-object v0, v8

    .line 2007
    .end local v8           #outputStream:Ljava/io/OutputStream;
    .end local p0
    .restart local v0       #outputStream:Ljava/io/OutputStream;
    :goto_4
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 2008
    throw p0

    .line 2006
    .restart local p0
    :catchall_1
    move-exception p0

    goto :goto_4
.end method

.method public static final setDefaultBatchApplicationId(Ljava/lang/String;)V
    .locals 0
    .parameter "applicationId"

    .prologue
    .line 1075
    sput-object p0, Lcom/facebook/Request;->defaultBatchApplicationId:Ljava/lang/String;

    .line 1076
    return-void
.end method

.method public static toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;
    .locals 7
    .parameter "requests"

    .prologue
    const-string v6, "could not construct request body"

    .line 1394
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1398
    const/4 v3, 0x0

    .line 1400
    .local v3, url:Ljava/net/URL;
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/RequestBatch;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1402
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/facebook/RequestBatch;->get(I)Lcom/facebook/Request;

    move-result-object v2

    .line 1404
    .local v2, request:Lcom/facebook/Request;
    new-instance v3, Ljava/net/URL;

    .end local v3           #url:Ljava/net/URL;
    invoke-virtual {v2}, Lcom/facebook/Request;->getUrlForSingleRequest()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    .end local v2           #request:Lcom/facebook/Request;
    .restart local v3       #url:Ljava/net/URL;
    :goto_1
    :try_start_1
    invoke-static {v3}, Lcom/facebook/Request;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v0

    .line 1418
    .local v0, connection:Ljava/net/HttpURLConnection;
    invoke-static {p0, v0}, Lcom/facebook/Request;->serializeToUrlConnection(Lcom/facebook/RequestBatch;Ljava/net/HttpURLConnection;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1425
    return-object v0

    .line 1394
    .end local v0           #connection:Ljava/net/HttpURLConnection;
    .end local v3           #url:Ljava/net/URL;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/Request;

    .line 1395
    .restart local v2       #request:Lcom/facebook/Request;
    invoke-direct {v2}, Lcom/facebook/Request;->validate()V

    goto :goto_0

    .line 1408
    .end local v2           #request:Lcom/facebook/Request;
    .restart local v3       #url:Ljava/net/URL;
    :cond_1
    :try_start_2
    new-instance v3, Ljava/net/URL;

    .end local v3           #url:Ljava/net/URL;
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_0

    .restart local v3       #url:Ljava/net/URL;
    goto :goto_1

    .line 1410
    .end local v3           #url:Ljava/net/URL;
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1411
    .local v1, e:Ljava/net/MalformedURLException;
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "could not construct URL for request"

    invoke-direct {v4, v5, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1419
    .end local v1           #e:Ljava/net/MalformedURLException;
    .restart local v3       #url:Ljava/net/URL;
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 1420
    .local v1, e:Ljava/io/IOException;
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "could not construct request body"

    invoke-direct {v4, v6, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1421
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 1422
    .local v1, e:Lorg/json/JSONException;
    new-instance v4, Lcom/facebook/FacebookException;

    const-string v5, "could not construct request body"

    invoke-direct {v4, v6, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/Request;",
            ">;)",
            "Ljava/net/HttpURLConnection;"
        }
    .end annotation

    .prologue
    .line 1373
    .local p0, requests:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/facebook/Request;>;"
    const-string v0, "requests"

    invoke-static {p0, v0}, Lcom/facebook/internal/Validate;->notEmptyAndContainsNoNulls(Ljava/util/Collection;Ljava/lang/String;)V

    .line 1375
    new-instance v0, Lcom/facebook/RequestBatch;

    invoke-direct {v0, p0}, Lcom/facebook/RequestBatch;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Lcom/facebook/Request;->toHttpConnection(Lcom/facebook/RequestBatch;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toHttpConnection([Lcom/facebook/Request;)Ljava/net/HttpURLConnection;
    .locals 1
    .parameter "requests"

    .prologue
    .line 1355
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Request;->toHttpConnection(Ljava/util/Collection;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method private static typedListFromResponse(Lcom/facebook/Response;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .parameter "response"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/model/GraphObject;",
            ">(",
            "Lcom/facebook/Response;",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v3, 0x0

    .line 2200
    const-class v2, Lcom/facebook/model/GraphMultiResult;

    invoke-virtual {p0, v2}, Lcom/facebook/Response;->getGraphObjectAs(Ljava/lang/Class;)Lcom/facebook/model/GraphObject;

    move-result-object v1

    check-cast v1, Lcom/facebook/model/GraphMultiResult;

    .line 2201
    .local v1, multiResult:Lcom/facebook/model/GraphMultiResult;
    if-nez v1, :cond_0

    move-object v2, v3

    .line 2210
    :goto_0
    return-object v2

    .line 2205
    :cond_0
    invoke-interface {v1}, Lcom/facebook/model/GraphMultiResult;->getData()Lcom/facebook/model/GraphObjectList;

    move-result-object v0

    .line 2206
    .local v0, data:Lcom/facebook/model/GraphObjectList;,"Lcom/facebook/model/GraphObjectList<Lcom/facebook/model/GraphObject;>;"
    if-nez v0, :cond_1

    move-object v2, v3

    .line 2207
    goto :goto_0

    .line 2210
    :cond_1
    invoke-interface {v0, p1}, Lcom/facebook/model/GraphObjectList;->castToListOf(Ljava/lang/Class;)Lcom/facebook/model/GraphObjectList;

    move-result-object v2

    goto :goto_0
.end method

.method private validate()V
    .locals 2

    .prologue
    .line 1936
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1937
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only one of a graph path or REST method may be specified per request."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1939
    :cond_0
    return-void
.end method


# virtual methods
.method public final executeAndWait()Lcom/facebook/Response;
    .locals 1

    .prologue
    .line 1324
    invoke-static {p0}, Lcom/facebook/Request;->executeAndWait(Lcom/facebook/Request;)Lcom/facebook/Response;

    move-result-object v0

    return-object v0
.end method

.method public final executeAsync()Lcom/facebook/RequestAsyncTask;
    .locals 2

    .prologue
    .line 1337
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/facebook/Request;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/facebook/Request;->executeBatchAsync([Lcom/facebook/Request;)Lcom/facebook/RequestAsyncTask;

    move-result-object v0

    return-object v0
.end method

.method public final getBatchEntryDependsOn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBatchEntryOmitResultOnSuccess()Z
    .locals 1

    .prologue
    .line 1039
    iget-boolean v0, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    return v0
.end method

.method public final getCallback()Lcom/facebook/Request$Callback;
    .locals 1

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    return-object v0
.end method

.method public final getGraphObject()Lcom/facebook/model/GraphObject;
    .locals 1

    .prologue
    .line 854
    iget-object v0, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    return-object v0
.end method

.method public final getGraphPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 873
    iget-object v0, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    return-object v0
.end method

.method public final getHttpMethod()Lcom/facebook/HttpMethod;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    return-object v0
.end method

.method public final getParameters()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    return-object v0
.end method

.method public final getRestMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 953
    iget-object v0, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    return-object v0
.end method

.method public final getSession()Lcom/facebook/Session;
    .locals 1

    .prologue
    .line 972
    iget-object v0, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    return-object v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1114
    iget-object v0, p0, Lcom/facebook/Request;->tag:Ljava/lang/Object;

    return-object v0
.end method

.method final getUrlForBatchedRequest()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1811
    iget-object v1, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1812
    new-instance v1, Lcom/facebook/FacebookException;

    const-string v2, "Can\'t override URL for a batch request"

    invoke-direct {v1, v2}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1816
    :cond_0
    iget-object v1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1817
    invoke-direct {p0}, Lcom/facebook/Request;->getRestPathWithVersion()Ljava/lang/String;

    move-result-object v0

    .line 1822
    .local v0, baseUrl:Ljava/lang/String;
    :goto_0
    invoke-direct {p0}, Lcom/facebook/Request;->addCommonParameters()V

    .line 1823
    invoke-direct {p0, v0}, Lcom/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1819
    .end local v0           #baseUrl:Ljava/lang/String;
    :cond_1
    invoke-direct {p0}, Lcom/facebook/Request;->getGraphPathWithVersion()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #baseUrl:Ljava/lang/String;
    goto :goto_0
.end method

.method final getUrlForSingleRequest()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "%s/%s"

    .line 1827
    iget-object v2, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1828
    iget-object v2, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1845
    :goto_0
    return-object v2

    .line 1832
    :cond_0
    iget-object v2, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1833
    const-string v2, "%s/%s"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getRestUrlBase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-direct {p0}, Lcom/facebook/Request;->getRestPathWithVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1844
    .local v0, baseUrl:Ljava/lang/String;
    :goto_1
    invoke-direct {p0}, Lcom/facebook/Request;->addCommonParameters()V

    .line 1845
    invoke-direct {p0, v0}, Lcom/facebook/Request;->appendParametersToBaseUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1836
    .end local v0           #baseUrl:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/Request;->getHttpMethod()Lcom/facebook/HttpMethod;

    move-result-object v2

    sget-object v3, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    const-string v3, "/videos"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1837
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphVideoUrlBase()Ljava/lang/String;

    move-result-object v1

    .line 1841
    .local v1, graphBaseUrlBase:Ljava/lang/String;
    :goto_2
    const-string v2, "%s/%s"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v4

    invoke-direct {p0}, Lcom/facebook/Request;->getGraphPathWithVersion()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v7, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0       #baseUrl:Ljava/lang/String;
    goto :goto_1

    .line 1839
    .end local v0           #baseUrl:Ljava/lang/String;
    .end local v1           #graphBaseUrlBase:Ljava/lang/String;
    :cond_2
    invoke-static {}, Lcom/facebook/internal/ServerProtocol;->getGraphUrlBase()Ljava/lang/String;

    move-result-object v1

    .restart local v1       #graphBaseUrlBase:Ljava/lang/String;
    goto :goto_2
.end method

.method public final getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 915
    iget-object v0, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    return-object v0
.end method

.method public final setBatchEntryDependsOn(Ljava/lang/String;)V
    .locals 0
    .parameter "batchEntryDependsOn"

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/facebook/Request;->batchEntryDependsOn:Ljava/lang/String;

    .line 1029
    return-void
.end method

.method public final setBatchEntryName(Ljava/lang/String;)V
    .locals 0
    .parameter "batchEntryName"

    .prologue
    .line 1006
    iput-object p1, p0, Lcom/facebook/Request;->batchEntryName:Ljava/lang/String;

    .line 1007
    return-void
.end method

.method public final setBatchEntryOmitResultOnSuccess(Z)V
    .locals 0
    .parameter "batchEntryOmitResultOnSuccess"

    .prologue
    .line 1052
    iput-boolean p1, p0, Lcom/facebook/Request;->batchEntryOmitResultOnSuccess:Z

    .line 1053
    return-void
.end method

.method public final setCallback(Lcom/facebook/Request$Callback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1094
    iput-object p1, p0, Lcom/facebook/Request;->callback:Lcom/facebook/Request$Callback;

    .line 1095
    return-void
.end method

.method public final setGraphObject(Lcom/facebook/model/GraphObject;)V
    .locals 0
    .parameter "graphObject"

    .prologue
    .line 864
    iput-object p1, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    .line 865
    return-void
.end method

.method public final setGraphPath(Ljava/lang/String;)V
    .locals 0
    .parameter "graphPath"

    .prologue
    .line 883
    iput-object p1, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    .line 884
    return-void
.end method

.method public final setHttpMethod(Lcom/facebook/HttpMethod;)V
    .locals 2
    .parameter "httpMethod"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/facebook/Request;->overriddenURL:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    if-eq p1, v0, :cond_0

    .line 903
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Can\'t change HTTP method on request with overridden URL."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 905
    :cond_0
    if-eqz p1, :cond_1

    move-object v0, p1

    :goto_0
    iput-object v0, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    .line 906
    return-void

    .line 905
    :cond_1
    sget-object v0, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    goto :goto_0
.end method

.method public final setParameters(Landroid/os/Bundle;)V
    .locals 0
    .parameter "parameters"

    .prologue
    .line 944
    iput-object p1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    .line 945
    return-void
.end method

.method public final setRestMethod(Ljava/lang/String;)V
    .locals 0
    .parameter "restMethod"

    .prologue
    .line 963
    iput-object p1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    .line 964
    return-void
.end method

.method public final setSession(Lcom/facebook/Session;)V
    .locals 0
    .parameter "session"

    .prologue
    .line 983
    iput-object p1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    .line 984
    return-void
.end method

.method public final setTag(Ljava/lang/Object;)V
    .locals 0
    .parameter "tag"

    .prologue
    .line 1104
    iput-object p1, p0, Lcom/facebook/Request;->tag:Ljava/lang/Object;

    .line 1105
    return-void
.end method

.method public final setVersion(Ljava/lang/String;)V
    .locals 0
    .parameter "version"

    .prologue
    .line 925
    iput-object p1, p0, Lcom/facebook/Request;->version:Ljava/lang/String;

    .line 926
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{Request: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " session: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->session:Lcom/facebook/Session;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphPath: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1704
    iget-object v1, p0, Lcom/facebook/Request;->graphPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", graphObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->graphObject:Lcom/facebook/model/GraphObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", restMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1705
    iget-object v1, p0, Lcom/facebook/Request;->restMethod:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpMethod: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/Request;->httpMethod:Lcom/facebook/HttpMethod;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", parameters: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1706
    iget-object v1, p0, Lcom/facebook/Request;->parameters:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1703
    return-object v0
.end method
