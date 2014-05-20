.class public Lcom/chartboost/sdk/Analytics/CBAnalytics;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "Chartboost Analytics"

.field private static a:Lcom/chartboost/sdk/Analytics/CBAnalytics;


# instance fields
.field private b:Lcom/chartboost/sdk/impl/j;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/Analytics/CBAnalytics;->a:Lcom/chartboost/sdk/Analytics/CBAnalytics;

    .line 11
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lcom/chartboost/sdk/impl/j;

    const/4 v1, 0x0

    const-string v2, "CBAnalytics"

    invoke-direct {v0, v1, v2}, Lcom/chartboost/sdk/impl/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/chartboost/sdk/Analytics/CBAnalytics;->b:Lcom/chartboost/sdk/impl/j;

    .line 30
    iget-object v0, p0, Lcom/chartboost/sdk/Analytics/CBAnalytics;->b:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/j;->a()V

    .line 31
    return-void
.end method

.method private a(DII)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1, p2}, Ljava/math/BigDecimal;-><init>(D)V

    .line 36
    invoke-virtual {v0, p3, p4}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized sharedAnalytics()Lcom/chartboost/sdk/Analytics/CBAnalytics;
    .locals 2

    .prologue
    .line 23
    const-class v0, Lcom/chartboost/sdk/Analytics/CBAnalytics;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/Analytics/CBAnalytics;->a:Lcom/chartboost/sdk/Analytics/CBAnalytics;

    if-nez v1, :cond_0

    .line 24
    new-instance v1, Lcom/chartboost/sdk/Analytics/CBAnalytics;

    invoke-direct {v1}, Lcom/chartboost/sdk/Analytics/CBAnalytics;-><init>()V

    sput-object v1, Lcom/chartboost/sdk/Analytics/CBAnalytics;->a:Lcom/chartboost/sdk/Analytics/CBAnalytics;

    .line 25
    :cond_0
    sget-object v1, Lcom/chartboost/sdk/Analytics/CBAnalytics;->a:Lcom/chartboost/sdk/Analytics/CBAnalytics;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 23
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public recordPaymentTransaction(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;ILjava/lang/Object;)Ljava/lang/Boolean;
    .locals 7
    .parameter "sku"
    .parameter "title"
    .parameter "price"
    .parameter "currency"
    .parameter "quantity"
    .parameter "meta"

    .prologue
    .line 43
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 45
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling recordPaymentTransaction()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_0
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getAppID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getAppSignature()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 48
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 50
    :cond_2
    new-instance v1, Lcom/chartboost/sdk/impl/k;

    const-string v2, "api/purchase"

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/impl/k;-><init>(Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/k;->a(Landroid/content/Context;)V

    .line 52
    const-string v2, "product_id"

    invoke-virtual {v1, v2, p1}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    const-string v2, "title"

    invoke-virtual {v1, v2, p2}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-string v2, "price"

    const/4 v3, 0x2

    const/4 v4, 0x4

    invoke-direct {p0, p3, p4, v3, v4}, Lcom/chartboost/sdk/Analytics/CBAnalytics;->a(DII)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    const-string v2, "currency"

    invoke-virtual {v1, v2, p5}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    const-string v2, "quantity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    const-string v2, "timestamp"

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    if-eqz p7, :cond_3

    .line 60
    const-string v2, "meta"

    invoke-static {p7}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 61
    :cond_3
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getAppSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/chartboost/sdk/Analytics/CBAnalytics;->b:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/k;)V

    .line 64
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method public trackEvent(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 3
    .parameter "eventIdentifier"

    .prologue
    .line 70
    const-wide/high16 v0, 0x3ff0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/chartboost/sdk/Analytics/CBAnalytics;->trackEvent(Ljava/lang/String;DLjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public trackEvent(Ljava/lang/String;D)Ljava/lang/Boolean;
    .locals 1
    .parameter "eventIdentifier"
    .parameter "value"

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/chartboost/sdk/Analytics/CBAnalytics;->trackEvent(Ljava/lang/String;DLjava/lang/Object;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public trackEvent(Ljava/lang/String;DLjava/lang/Object;)Ljava/lang/Boolean;
    .locals 9
    .parameter "eventIdentifier"
    .parameter "value"
    .parameter "meta"

    .prologue
    const/4 v8, 0x1

    .line 83
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The context must be set through the Chartboost method onCreate() before calling trackEvent()."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getAppID()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getAppSignature()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 88
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 103
    :goto_0
    return-object v0

    .line 90
    :cond_2
    new-instance v1, Lcom/chartboost/sdk/impl/k;

    const-string v2, "api/event"

    invoke-direct {v1, v2}, Lcom/chartboost/sdk/impl/k;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/chartboost/sdk/impl/k;->a(Landroid/content/Context;)V

    .line 92
    const-string v2, "key"

    invoke-virtual {v1, v2, p1}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 93
    const-string v2, "value"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 94
    const-string v2, "timestamp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 96
    if-eqz p4, :cond_3

    .line 97
    const-string v2, "meta"

    invoke-static {p4}, Lcom/chartboost/sdk/Libraries/d;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/chartboost/sdk/impl/k;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    :cond_3
    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getAppID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getAppSignature()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/chartboost/sdk/impl/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {v1, v8}, Lcom/chartboost/sdk/impl/k;->a(Z)V

    .line 101
    iget-object v0, p0, Lcom/chartboost/sdk/Analytics/CBAnalytics;->b:Lcom/chartboost/sdk/impl/j;

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/j;->a(Lcom/chartboost/sdk/impl/k;)V

    .line 103
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
