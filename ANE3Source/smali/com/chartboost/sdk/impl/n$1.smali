.class Lcom/chartboost/sdk/impl/n$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/n;->a(Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/n;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/n;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/n$1;->a:Lcom/chartboost/sdk/impl/n;

    iput-object p2, p0, Lcom/chartboost/sdk/impl/n$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/chartboost/sdk/impl/n$1;->c:Landroid/app/Activity;

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/n$1;)Lcom/chartboost/sdk/impl/n;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/chartboost/sdk/impl/n$1;->a:Lcom/chartboost/sdk/impl/n;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    new-instance v0, Lcom/chartboost/sdk/impl/n$1$1;

    iget-object v1, p0, Lcom/chartboost/sdk/impl/n$1;->c:Landroid/app/Activity;

    invoke-direct {v0, p0, p1, v1}, Lcom/chartboost/sdk/impl/n$1$1;-><init>(Lcom/chartboost/sdk/impl/n$1;Ljava/lang/String;Landroid/app/Activity;)V

    .line 88
    iget-object v1, p0, Lcom/chartboost/sdk/impl/n$1;->c:Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcom/chartboost/sdk/impl/n$1;->c:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 92
    :goto_0
    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 56
    iget-object v1, p0, Lcom/chartboost/sdk/impl/n$1;->b:Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/chartboost/sdk/impl/m;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    const/4 v2, 0x0

    .line 61
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v3

    .line 62
    new-instance v0, Ljava/net/URL;

    iget-object v4, p0, Lcom/chartboost/sdk/impl/n$1;->b:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 65
    invoke-virtual {v3}, Lcom/chartboost/sdk/Chartboost;->getTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 66
    invoke-virtual {v3}, Lcom/chartboost/sdk/Chartboost;->getTimeout()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 67
    const-string v2, "Location"

    invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 68
    if-eqz v2, :cond_0

    move-object v1, v2

    .line 74
    :cond_0
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    move-object v0, v1

    .line 79
    :goto_0
    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/impl/n$1;->a(Ljava/lang/String;)V

    .line 80
    return-void

    .line 70
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 74
    :goto_1
    if-eqz v0, :cond_1

    .line 75
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    move-object v0, v1

    goto :goto_0

    .line 73
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 74
    :goto_2
    if-eqz v1, :cond_2

    .line 75
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 76
    :cond_2
    throw v0

    .line 73
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 70
    :catch_1
    move-exception v2

    goto :goto_1
.end method
