.class Lcom/chartboost/sdk/impl/j$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/j;

.field private b:Lcom/chartboost/sdk/impl/j$a;


# direct methods
.method public constructor <init>(Lcom/chartboost/sdk/impl/j;Lcom/chartboost/sdk/impl/j$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 236
    iput-object p1, p0, Lcom/chartboost/sdk/impl/j$d;->a:Lcom/chartboost/sdk/impl/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    iput-object p2, p0, Lcom/chartboost/sdk/impl/j$d;->b:Lcom/chartboost/sdk/impl/j$a;

    .line 238
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/j$d;)Lcom/chartboost/sdk/impl/j$a;
    .locals 1
    .parameter

    .prologue
    .line 234
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j$d;->b:Lcom/chartboost/sdk/impl/j$a;

    return-object v0
.end method

.method private a(ZLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 349
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j$d;->a:Lcom/chartboost/sdk/impl/j;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/j;->d(Lcom/chartboost/sdk/impl/j;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/chartboost/sdk/impl/j$d$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/chartboost/sdk/impl/j$d$1;-><init>(Lcom/chartboost/sdk/impl/j$d;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 360
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v7, 0x0

    const-string v5, "application/json; charset=UTF-8"

    const-string v0, "Request failed. Response code: "

    const-string v4, "Content-Type"

    const-string v0, "Chartboost"

    .line 243
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j$d;->b:Lcom/chartboost/sdk/impl/j$a;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/j$a;->a(Lcom/chartboost/sdk/impl/j$a;)Lcom/chartboost/sdk/impl/k;

    move-result-object v2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/j$d;->a:Lcom/chartboost/sdk/impl/j;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/j;->b(Lcom/chartboost/sdk/impl/j;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/k;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 251
    const-string v0, "Content-Type"

    const-string v0, "application/json; charset=UTF-8"

    invoke-virtual {v3, v4, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v0, "Accept"

    const-string v1, "application/json; charset=UTF-8"

    invoke-virtual {v3, v0, v5}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v0, "X-Chartboost-Client"

    const-string v1, "Chartboost-Android-SDK 3.4.0"

    invoke-virtual {v3, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v0, "X-Chartboost-API"

    const-string v1, "3.3.0"

    invoke-virtual {v3, v0, v1}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/k;->e()Ljava/util/Map;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_0

    .line 261
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/j$d;->a:Lcom/chartboost/sdk/impl/j;

    monitor-enter v0

    .line 268
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/impl/j;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/chartboost/sdk/impl/j;->a(I)V

    .line 267
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :try_start_1
    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/k;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 275
    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/k;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 279
    new-instance v1, Lorg/apache/http/entity/StringEntity;

    invoke-direct {v1, v0}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;)V

    .line 281
    new-instance v0, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    const-string v4, "application/json"

    invoke-direct {v0, v2, v4}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lorg/apache/http/entity/StringEntity;->setContentType(Lorg/apache/http/Header;)V

    .line 282
    invoke-virtual {v3, v1}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 287
    :goto_1
    invoke-static {}, Lcom/chartboost/sdk/impl/l;->b()Lorg/apache/http/client/HttpClient;

    move-result-object v0

    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    .line 289
    :try_start_2
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    .line 290
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    .line 294
    :try_start_3
    invoke-interface {v2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 296
    new-instance v4, Ljava/io/BufferedReader;

    .line 297
    new-instance v5, Ljava/io/InputStreamReader;

    const-string v6, "UTF-8"

    invoke-direct {v5, v3, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v6, 0x800

    .line 296
    invoke-direct {v4, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 298
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v3

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 299
    :goto_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 302
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    .line 303
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v3

    .line 308
    :goto_3
    const/16 v4, 0x12c

    if-ge v1, v4, :cond_6

    const/16 v4, 0xc8

    if-lt v1, v4, :cond_6

    .line 309
    if-eqz v3, :cond_5

    .line 313
    :try_start_4
    new-instance v1, Lorg/json/JSONTokener;

    invoke-direct {v1, v3}, Lorg/json/JSONTokener;-><init>(Ljava/lang/String;)V

    .line 314
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Lorg/json/JSONTokener;)V

    .line 315
    iget-object v1, p0, Lcom/chartboost/sdk/impl/j$d;->b:Lcom/chartboost/sdk/impl/j$a;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/j$a;->a(Lcom/chartboost/sdk/impl/j$a;)Lcom/chartboost/sdk/impl/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/k;->g()Lcom/chartboost/sdk/Libraries/e$a;

    move-result-object v1

    .line 316
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    if-eqz v1, :cond_4

    invoke-virtual {v1, v3, v4}, Lcom/chartboost/sdk/Libraries/e$a;->a(Ljava/lang/Object;Ljava/lang/StringBuilder;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Json response failed validation: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 326
    :goto_4
    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/apache/http/HttpEntity;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object v0, v1

    .line 342
    :goto_5
    iget-object v1, p0, Lcom/chartboost/sdk/impl/j$d;->a:Lcom/chartboost/sdk/impl/j;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/j;->c(Lcom/chartboost/sdk/impl/j;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/j$d;->b:Lcom/chartboost/sdk/impl/j$a;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/j$a;->b(Lcom/chartboost/sdk/impl/j$a;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 345
    :goto_6
    iget-object v1, p0, Lcom/chartboost/sdk/impl/j$d;->b:Lcom/chartboost/sdk/impl/j$a;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/j$a;->c(Lcom/chartboost/sdk/impl/j$a;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_7
    invoke-direct {p0, v1, v0}, Lcom/chartboost/sdk/impl/j$d;->a(ZLjava/lang/String;)V

    .line 346
    return-void

    .line 261
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 262
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 267
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    .line 284
    :cond_2
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "HTTP Request Body "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Lcom/chartboost/sdk/impl/k;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "<empty>"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_1

    .line 333
    :catch_0
    move-exception v0

    move-object v1, v7

    .line 334
    :goto_8
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception on http request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 335
    const-string v2, "Chartboost"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {v1}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/apache/http/HttpResponse;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 342
    iget-object v1, p0, Lcom/chartboost/sdk/impl/j$d;->a:Lcom/chartboost/sdk/impl/j;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/j;->c(Lcom/chartboost/sdk/impl/j;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/j$d;->b:Lcom/chartboost/sdk/impl/j$a;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/j$a;->b(Lcom/chartboost/sdk/impl/j$a;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_6

    .line 300
    :cond_3
    :try_start_8
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_2

    .line 304
    :catch_1
    move-exception v3

    .line 305
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 320
    :cond_4
    iget-object v1, p0, Lcom/chartboost/sdk/impl/j$d;->b:Lcom/chartboost/sdk/impl/j$a;

    invoke-static {v1, v3}, Lcom/chartboost/sdk/impl/j$a;->a(Lcom/chartboost/sdk/impl/j$a;Lorg/json/JSONObject;)V

    move-object v1, v7

    goto/16 :goto_4

    .line 323
    :cond_5
    const-string v1, "Response is not a valid json object"

    goto/16 :goto_4

    .line 328
    :cond_6
    const-string v4, "Chartboost"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Request failed. Response code: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", body: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-static {v2}, Lcom/chartboost/sdk/Libraries/d;->a(Lorg/apache/http/HttpEntity;)V

    .line 330
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Request failed. Response code: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not valid (>=200 and <300)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    move-result-object v0

    goto/16 :goto_5

    .line 341
    :catchall_1
    move-exception v0

    .line 342
    iget-object v1, p0, Lcom/chartboost/sdk/impl/j$d;->a:Lcom/chartboost/sdk/impl/j;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/j;->c(Lcom/chartboost/sdk/impl/j;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/chartboost/sdk/impl/j$d;->b:Lcom/chartboost/sdk/impl/j$a;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/j$a;->b(Lcom/chartboost/sdk/impl/j$a;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 343
    throw v0

    .line 345
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_7

    .line 333
    :catch_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto/16 :goto_8
.end method
