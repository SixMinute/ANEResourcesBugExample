.class public Lcom/chartboost/sdk/Libraries/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/Libraries/c;->a:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->c()[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->f()[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->a([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/chartboost/sdk/Libraries/b;->b([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static c()[B
    .locals 4

    .prologue
    .line 35
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->d()Ljava/lang/String;

    move-result-object v0

    .line 36
    if-eqz v0, :cond_0

    const-string v1, "9774d56d682e549c"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->e()Ljava/lang/String;

    move-result-object v0

    .line 38
    :cond_1
    invoke-static {}, Lcom/chartboost/sdk/Libraries/c;->b()Ljava/lang/String;

    move-result-object v1

    .line 42
    new-instance v2, Lcom/chartboost/sdk/impl/ao;

    invoke-direct {v2}, Lcom/chartboost/sdk/impl/ao;-><init>()V

    .line 43
    const-string v3, "uuid"

    invoke-virtual {v2, v3, v0}, Lcom/chartboost/sdk/impl/ao;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const-string v0, "macid"

    invoke-virtual {v2, v0, v1}, Lcom/chartboost/sdk/impl/ao;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v0, Lcom/chartboost/sdk/impl/an;

    invoke-direct {v0}, Lcom/chartboost/sdk/impl/an;-><init>()V

    .line 48
    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/impl/an;->a(Lcom/chartboost/sdk/impl/al;)[B

    move-result-object v0

    return-object v0
.end method

.method private static d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 54
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x0

    .line 57
    :goto_0
    return-object v0

    .line 56
    :cond_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static e()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "cbUUID"

    .line 63
    sget-object v0, Lcom/chartboost/sdk/Libraries/c;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 64
    invoke-static {}, Lcom/chartboost/sdk/Libraries/d;->a()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 65
    const-string v1, "cbUUID"

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/chartboost/sdk/Libraries/c;->a:Ljava/lang/String;

    .line 66
    sget-object v1, Lcom/chartboost/sdk/Libraries/c;->a:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 67
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/chartboost/sdk/Libraries/c;->a:Ljava/lang/String;

    .line 68
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 69
    const-string v1, "cbUUID"

    sget-object v1, Lcom/chartboost/sdk/Libraries/c;->a:Ljava/lang/String;

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 70
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 73
    :cond_0
    sget-object v0, Lcom/chartboost/sdk/Libraries/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private static f()[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 78
    :try_start_0
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 80
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object v0, v5

    .line 93
    :goto_0
    return-object v0

    .line 84
    :cond_1
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 85
    const/4 v1, 0x6

    new-array v1, v1, [B

    .line 86
    const/4 v2, 0x0

    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_2

    move-object v0, v1

    .line 90
    goto :goto_0

    .line 87
    :cond_2
    aget-object v3, v0, v2

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 88
    invoke-virtual {v3}, Ljava/lang/Integer;->byteValue()B

    move-result v3

    aput-byte v3, v1, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 91
    :catch_0
    move-exception v0

    move-object v0, v5

    .line 93
    goto :goto_0
.end method
