.class public Lcom/chartboost/sdk/impl/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/util/concurrent/ExecutorService;

.field private static b:Ljava/util/concurrent/ThreadFactory;

.field private static c:Lorg/apache/http/client/HttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 35
    sput-object v0, Lcom/chartboost/sdk/impl/l;->a:Ljava/util/concurrent/ExecutorService;

    .line 36
    sput-object v0, Lcom/chartboost/sdk/impl/l;->b:Ljava/util/concurrent/ThreadFactory;

    .line 37
    sput-object v0, Lcom/chartboost/sdk/impl/l;->c:Lorg/apache/http/client/HttpClient;

    .line 32
    return-void
.end method

.method static synthetic a(Landroid/app/Application;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 139
    invoke-static {p0, p1}, Lcom/chartboost/sdk/impl/l;->b(Landroid/app/Application;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a()Ljava/util/concurrent/ExecutorService;
    .locals 2

    .prologue
    .line 41
    sget-object v0, Lcom/chartboost/sdk/impl/l;->b:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/chartboost/sdk/impl/l$1;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/l$1;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/l;->b:Ljava/util/concurrent/ThreadFactory;

    .line 51
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/impl/l;->a:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 52
    const/4 v0, 0x5

    sget-object v1, Lcom/chartboost/sdk/impl/l;->b:Ljava/util/concurrent/ThreadFactory;

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/chartboost/sdk/impl/l;->a:Ljava/util/concurrent/ExecutorService;

    .line 53
    :cond_1
    sget-object v0, Lcom/chartboost/sdk/impl/l;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private static b(Landroid/app/Application;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter

    .prologue
    const-string v3, "; "

    .line 142
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 143
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 143
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-virtual {p0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v0, " ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v0, "Linux; U; Android "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v0, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string v0, "; "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v0, ")"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    if-eqz p1, :cond_0

    .line 160
    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static b()Lorg/apache/http/client/HttpClient;
    .locals 4

    .prologue
    .line 58
    sget-object v0, Lcom/chartboost/sdk/impl/l;->c:Lorg/apache/http/client/HttpClient;

    if-eqz v0, :cond_0

    .line 59
    sget-object v0, Lcom/chartboost/sdk/impl/l;->c:Lorg/apache/http/client/HttpClient;

    .line 133
    :goto_0
    return-object v0

    .line 62
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 63
    new-instance v1, Lcom/chartboost/sdk/impl/l$2;

    invoke-direct {v1, v0}, Lcom/chartboost/sdk/impl/l$2;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/chartboost/sdk/impl/l;->c:Lorg/apache/http/client/HttpClient;

    .line 113
    sget-object v0, Lcom/chartboost/sdk/impl/l;->c:Lorg/apache/http/client/HttpClient;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 121
    :try_start_1
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    .line 122
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    .line 123
    invoke-interface {v0}, Lorg/apache/http/client/HttpClient;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object v0

    .line 124
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v3, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 125
    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->getSchemeRegistry()Lorg/apache/http/conn/scheme/SchemeRegistry;

    move-result-object v1

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 124
    invoke-direct {v2, v3, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    sput-object v2, Lcom/chartboost/sdk/impl/l;->c:Lorg/apache/http/client/HttpClient;

    .line 126
    sget-object v0, Lcom/chartboost/sdk/impl/l;->c:Lorg/apache/http/client/HttpClient;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 127
    :catch_1
    move-exception v0

    .line 132
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    sput-object v0, Lcom/chartboost/sdk/impl/l;->c:Lorg/apache/http/client/HttpClient;

    .line 133
    sget-object v0, Lcom/chartboost/sdk/impl/l;->c:Lorg/apache/http/client/HttpClient;

    goto :goto_0
.end method
