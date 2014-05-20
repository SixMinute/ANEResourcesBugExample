.class public Lcom/facebook/AppEventsLogger;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;,
        Lcom/facebook/AppEventsLogger$AppEvent;,
        Lcom/facebook/AppEventsLogger$EventSuppression;,
        Lcom/facebook/AppEventsLogger$FlushBehavior;,
        Lcom/facebook/AppEventsLogger$FlushReason;,
        Lcom/facebook/AppEventsLogger$FlushResult;,
        Lcom/facebook/AppEventsLogger$FlushStatistics;,
        Lcom/facebook/AppEventsLogger$PersistedEvents;,
        Lcom/facebook/AppEventsLogger$SessionEventsState;,
        Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;
    }
.end annotation


# static fields
.field public static final ACTION_APP_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSHED"

.field private static final APP_ACTIVATE_SUPPRESSION_PERIOD_IN_SECONDS:I = 0x12c

.field public static final APP_EVENTS_EXTRA_FLUSH_RESULT:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

.field public static final APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED:Ljava/lang/String; = "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

.field private static final APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS:I = 0x15180

.field private static final FLUSH_PERIOD_IN_SECONDS:I = 0x3c

.field private static final NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER:I = 0x64

.field private static final TAG:Ljava/lang/String;

.field private static applicationContext:Landroid/content/Context;

.field private static flushBehavior:Lcom/facebook/AppEventsLogger$FlushBehavior;

.field private static flushTimer:Ljava/util/Timer;

.field private static hashedDeviceAndAppId:Ljava/lang/String;

.field private static mapEventNameToSuppress:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/AppEventsLogger$EventSuppression;",
            ">;"
        }
    .end annotation
.end field

.field private static mapEventsToSuppressionTime:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation
.end field

.field private static requestInFlight:Z

.field private static stateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;",
            "Lcom/facebook/AppEventsLogger$SessionEventsState;",
            ">;"
        }
    .end annotation
.end field

.field private static staticLock:Ljava/lang/Object;

.field private static supportsAttributionRecheckTimer:Ljava/util/Timer;


# instance fields
.field private final accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 154
    const-class v0, Lcom/facebook/AppEventsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 165
    sput-object v0, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    .line 169
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushBehavior;->AUTO:Lcom/facebook/AppEventsLogger$FlushBehavior;

    sput-object v0, Lcom/facebook/AppEventsLogger;->flushBehavior:Lcom/facebook/AppEventsLogger$FlushBehavior;

    .line 172
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/AppEventsLogger;->mapEventsToSuppressionTime:Ljava/util/Map;

    .line 176
    new-instance v0, Lcom/facebook/AppEventsLogger$1;

    invoke-direct {v0}, Lcom/facebook/AppEventsLogger$1;-><init>()V

    sput-object v0, Lcom/facebook/AppEventsLogger;->mapEventNameToSuppress:Ljava/util/Map;

    .line 363
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V
    .locals 2
    .parameter "context"
    .parameter "applicationId"
    .parameter "session"

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 561
    const-string v0, "context"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 562
    iput-object p1, p0, Lcom/facebook/AppEventsLogger;->context:Landroid/content/Context;

    .line 564
    if-nez p3, :cond_0

    .line 565
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object p3

    .line 568
    :cond_0
    if-eqz p3, :cond_3

    .line 569
    new-instance v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    invoke-direct {v0, p3}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;-><init>(Lcom/facebook/Session;)V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    .line 577
    :goto_0
    sget-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 579
    :try_start_0
    sget-object v1, Lcom/facebook/AppEventsLogger;->hashedDeviceAndAppId:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 580
    invoke-static {p1, p2}, Lcom/facebook/internal/Utility;->getHashedDeviceAndAppID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/facebook/AppEventsLogger;->hashedDeviceAndAppId:Ljava/lang/String;

    .line 583
    :cond_1
    sget-object v1, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    if-nez v1, :cond_2

    .line 584
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    .line 577
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    invoke-static {}, Lcom/facebook/AppEventsLogger;->initializeTimersIfNeeded()V

    .line 589
    return-void

    .line 571
    :cond_3
    if-nez p2, :cond_4

    .line 572
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 574
    :cond_4
    new-instance v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    goto :goto_0

    .line 577
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/AppEventsLogger$FlushReason;)V
    .locals 0
    .parameter

    .prologue
    .line 733
    invoke-static {p0}, Lcom/facebook/AppEventsLogger;->flushAndWait(Lcom/facebook/AppEventsLogger$FlushReason;)V

    return-void
.end method

.method static synthetic access$2()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 172
    sget-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3()Ljava/util/Map;
    .locals 1

    .prologue
    .line 165
    sget-object v0, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/Response;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 843
    invoke-static {p0, p1, p2, p3, p4}, Lcom/facebook/AppEventsLogger;->handleResponse(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/Response;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V

    return-void
.end method

.method private static accumulatePersistedEvents()I
    .locals 7

    .prologue
    .line 900
    sget-object v5, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/facebook/AppEventsLogger$PersistedEvents;->readAndClearStore(Landroid/content/Context;)Lcom/facebook/AppEventsLogger$PersistedEvents;

    move-result-object v2

    .line 902
    .local v2, persistedEvents:Lcom/facebook/AppEventsLogger$PersistedEvents;
    const/4 v3, 0x0

    .line 903
    .local v3, result:I
    invoke-virtual {v2}, Lcom/facebook/AppEventsLogger$PersistedEvents;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .line 911
    return v3

    .line 903
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    .line 904
    .local v0, accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
    sget-object v6, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/facebook/AppEventsLogger;->getSessionEventsState(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;

    move-result-object v4

    .line 906
    .local v4, sessionEventsState:Lcom/facebook/AppEventsLogger$SessionEventsState;
    invoke-virtual {v2, v0}, Lcom/facebook/AppEventsLogger$PersistedEvents;->getEvents(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Ljava/util/List;

    move-result-object v1

    .line 907
    .local v1, events:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/AppEventsLogger$AppEvent;>;"
    invoke-virtual {v4, v1}, Lcom/facebook/AppEventsLogger$SessionEventsState;->accumulatePersistedEvents(Ljava/util/List;)V

    .line 908
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    add-int/2addr v3, v6

    goto :goto_0
.end method

.method public static activateApp(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 272
    invoke-static {p0}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/facebook/AppEventsLogger;->activateApp(Landroid/content/Context;Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public static activateApp(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "applicationId"

    .prologue
    .line 285
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 286
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Both context and applicationId must be non-null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 291
    :cond_1
    invoke-static {p0, p1}, Lcom/facebook/Settings;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;)V

    .line 293
    new-instance v0, Lcom/facebook/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    .line 294
    .local v0, logger:Lcom/facebook/AppEventsLogger;
    const-string v1, "fb_mobile_activate_app"

    invoke-virtual {v0, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;)V

    .line 295
    return-void
.end method

.method private static buildAndExecuteRequests(Lcom/facebook/AppEventsLogger$FlushReason;Ljava/util/Set;)Lcom/facebook/AppEventsLogger$FlushStatistics;
    .locals 12
    .parameter "reason"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/AppEventsLogger$FlushReason;",
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;",
            ">;)",
            "Lcom/facebook/AppEventsLogger$FlushStatistics;"
        }
    .end annotation

    .prologue
    .local p1, keysToFlush:Ljava/util/Set;,"Ljava/util/Set<Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;>;"
    const/4 v8, 0x0

    .line 766
    new-instance v1, Lcom/facebook/AppEventsLogger$FlushStatistics;

    invoke-direct {v1, v8}, Lcom/facebook/AppEventsLogger$FlushStatistics;-><init>(Lcom/facebook/AppEventsLogger$FlushStatistics;)V

    .line 768
    .local v1, flushResults:Lcom/facebook/AppEventsLogger$FlushStatistics;
    sget-object v6, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/facebook/Settings;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v2

    .line 770
    .local v2, limitEventUsage:Z
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 771
    .local v4, requestsToExecute:Ljava/util/List;,"Ljava/util/List<Lcom/facebook/Request;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .line 784
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 785
    sget-object v6, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v7, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    const-string v8, "Flushing %d events due to %s."

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 786
    iget v11, v1, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    .line 787
    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$FlushReason;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    .line 785
    invoke-static {v6, v7, v8, v9}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 789
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v6, v1

    .line 797
    :goto_2
    return-object v6

    .line 771
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    .line 772
    .local v0, accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->getSessionEventsState(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;

    move-result-object v5

    .line 773
    .local v5, sessionEventsState:Lcom/facebook/AppEventsLogger$SessionEventsState;
    if-eqz v5, :cond_0

    .line 777
    invoke-static {v0, v5, v2, v1}, Lcom/facebook/AppEventsLogger;->buildRequestForSession(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger$SessionEventsState;ZLcom/facebook/AppEventsLogger$FlushStatistics;)Lcom/facebook/Request;

    move-result-object v3

    .line 779
    .local v3, request:Lcom/facebook/Request;
    if-eqz v3, :cond_0

    .line 780
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 789
    .end local v0           #accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
    .end local v3           #request:Lcom/facebook/Request;
    .end local v5           #sessionEventsState:Lcom/facebook/AppEventsLogger$SessionEventsState;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/Request;

    .line 792
    .restart local v3       #request:Lcom/facebook/Request;
    invoke-virtual {v3}, Lcom/facebook/Request;->executeAndWait()Lcom/facebook/Response;

    goto :goto_1

    .end local v3           #request:Lcom/facebook/Request;
    :cond_3
    move-object v6, v8

    .line 797
    goto :goto_2
.end method

.method private static buildRequestForSession(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger$SessionEventsState;ZLcom/facebook/AppEventsLogger$FlushStatistics;)Lcom/facebook/Request;
    .locals 9
    .parameter "accessTokenAppId"
    .parameter "sessionEventsState"
    .parameter "limitEventUsage"
    .parameter "flushState"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 808
    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 810
    .local v0, applicationId:Ljava/lang/String;
    invoke-static {v0, v8}, Lcom/facebook/internal/Utility;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/Utility$FetchedAppSettings;

    move-result-object v1

    .line 814
    .local v1, fetchedAppSettings:Lcom/facebook/internal/Utility$FetchedAppSettings;
    const-string v5, "%s/activities"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 812
    invoke-static {v7, v5, v7, v7}, Lcom/facebook/Request;->newPostRequest(Lcom/facebook/Session;Ljava/lang/String;Lcom/facebook/model/GraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v3

    .line 818
    .local v3, postRequest:Lcom/facebook/Request;
    invoke-virtual {v3}, Lcom/facebook/Request;->getParameters()Landroid/os/Bundle;

    move-result-object v4

    .line 819
    .local v4, requestParameters:Landroid/os/Bundle;
    if-nez v4, :cond_0

    .line 820
    new-instance v4, Landroid/os/Bundle;

    .end local v4           #requestParameters:Landroid/os/Bundle;
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 822
    .restart local v4       #requestParameters:Landroid/os/Bundle;
    :cond_0
    const-string v5, "access_token"

    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-virtual {v3, v4}, Lcom/facebook/Request;->setParameters(Landroid/os/Bundle;)V

    .line 825
    invoke-virtual {v1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsImplicitLogging()Z

    move-result v5

    .line 826
    invoke-virtual {v1}, Lcom/facebook/internal/Utility$FetchedAppSettings;->supportsAttribution()Z

    move-result v6

    .line 825
    invoke-virtual {p1, v3, v5, v6, p2}, Lcom/facebook/AppEventsLogger$SessionEventsState;->populateRequest(Lcom/facebook/Request;ZZZ)I

    move-result v2

    .line 827
    .local v2, numEvents:I
    if-nez v2, :cond_1

    move-object v5, v7

    .line 840
    :goto_0
    return-object v5

    .line 831
    :cond_1
    iget v5, p3, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    add-int/2addr v5, v2

    iput v5, p3, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    .line 833
    new-instance v5, Lcom/facebook/AppEventsLogger$5;

    invoke-direct {v5, p0, v3, p1, p3}, Lcom/facebook/AppEventsLogger$5;-><init>(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V

    invoke-virtual {v3, v5}, Lcom/facebook/Request;->setCallback(Lcom/facebook/Request$Callback;)V

    move-object v5, v3

    .line 840
    goto :goto_0
.end method

.method static eagerFlush()V
    .locals 2

    .prologue
    .line 675
    invoke-static {}, Lcom/facebook/AppEventsLogger;->getFlushBehavior()Lcom/facebook/AppEventsLogger$FlushBehavior;

    move-result-object v0

    sget-object v1, Lcom/facebook/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/AppEventsLogger$FlushBehavior;

    if-eq v0, v1, :cond_0

    .line 676
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->EAGER_FLUSHING_EVENT:Lcom/facebook/AppEventsLogger$FlushReason;

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->flush(Lcom/facebook/AppEventsLogger$FlushReason;)V

    .line 678
    :cond_0
    return-void
.end method

.method private static flush(Lcom/facebook/AppEventsLogger$FlushReason;)V
    .locals 2
    .parameter "reason"

    .prologue
    .line 725
    invoke-static {}, Lcom/facebook/Settings;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/facebook/AppEventsLogger$4;

    invoke-direct {v1, p0}, Lcom/facebook/AppEventsLogger$4;-><init>(Lcom/facebook/AppEventsLogger$FlushReason;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 731
    return-void
.end method

.method private static flushAndWait(Lcom/facebook/AppEventsLogger$FlushReason;)V
    .locals 7
    .parameter "reason"

    .prologue
    .line 736
    sget-object v4, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v4

    .line 737
    :try_start_0
    sget-boolean v5, Lcom/facebook/AppEventsLogger;->requestInFlight:Z

    if-eqz v5, :cond_1

    .line 738
    monitor-exit v4

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 740
    :cond_1
    const/4 v5, 0x1

    sput-boolean v5, Lcom/facebook/AppEventsLogger;->requestInFlight:Z

    .line 741
    new-instance v3, Ljava/util/HashSet;

    sget-object v5, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 736
    .local v3, keysToFlush:Ljava/util/Set;,"Ljava/util/Set<Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;>;"
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 744
    invoke-static {}, Lcom/facebook/AppEventsLogger;->accumulatePersistedEvents()I

    .line 746
    const/4 v1, 0x0

    .line 748
    .local v1, flushResults:Lcom/facebook/AppEventsLogger$FlushStatistics;
    :try_start_1
    invoke-static {p0, v3}, Lcom/facebook/AppEventsLogger;->buildAndExecuteRequests(Lcom/facebook/AppEventsLogger$FlushReason;Ljava/util/Set;)Lcom/facebook/AppEventsLogger$FlushStatistics;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    .line 753
    :goto_1
    sget-object v4, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v4

    .line 754
    const/4 v5, 0x0

    :try_start_2
    sput-boolean v5, Lcom/facebook/AppEventsLogger;->requestInFlight:Z

    .line 753
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 757
    if-eqz v1, :cond_0

    .line 758
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.facebook.sdk.APP_EVENTS_FLUSHED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 759
    .local v2, intent:Landroid/content/Intent;
    const-string v4, "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED"

    iget v5, v1, Lcom/facebook/AppEventsLogger$FlushStatistics;->numEvents:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 760
    const-string v4, "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT"

    iget-object v5, v1, Lcom/facebook/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/AppEventsLogger$FlushResult;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 761
    sget-object v4, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    goto :goto_0

    .line 736
    .end local v1           #flushResults:Lcom/facebook/AppEventsLogger$FlushStatistics;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #keysToFlush:Ljava/util/Set;,"Ljava/util/Set<Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;>;"
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .line 749
    .restart local v1       #flushResults:Lcom/facebook/AppEventsLogger$FlushStatistics;
    .restart local v3       #keysToFlush:Ljava/util/Set;,"Ljava/util/Set<Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;>;"
    :catch_0
    move-exception v0

    .line 750
    .local v0, e:Ljava/lang/Exception;
    sget-object v4, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Caught unexpected exception while flushing: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 753
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v5

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v5
.end method

.method private static flushIfNecessary()V
    .locals 3

    .prologue
    .line 681
    sget-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_0
    invoke-static {}, Lcom/facebook/AppEventsLogger;->getFlushBehavior()Lcom/facebook/AppEventsLogger$FlushBehavior;

    move-result-object v1

    sget-object v2, Lcom/facebook/AppEventsLogger$FlushBehavior;->EXPLICIT_ONLY:Lcom/facebook/AppEventsLogger$FlushBehavior;

    if-eq v1, v2, :cond_0

    .line 683
    invoke-static {}, Lcom/facebook/AppEventsLogger;->getAccumulatedEventCount()I

    move-result v1

    const/16 v2, 0x64

    if-le v1, v2, :cond_0

    .line 684
    sget-object v1, Lcom/facebook/AppEventsLogger$FlushReason;->EVENT_THRESHOLD:Lcom/facebook/AppEventsLogger$FlushReason;

    invoke-static {v1}, Lcom/facebook/AppEventsLogger;->flush(Lcom/facebook/AppEventsLogger$FlushReason;)V

    .line 681
    :cond_0
    monitor-exit v0

    .line 688
    return-void

    .line 681
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static getAccumulatedEventCount()I
    .locals 5

    .prologue
    .line 691
    sget-object v2, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 693
    const/4 v0, 0x0

    .line 694
    .local v0, result:I
    :try_start_0
    sget-object v3, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 697
    monitor-exit v2

    return v0

    .line 694
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/AppEventsLogger$SessionEventsState;

    .line 695
    .local v1, state:Lcom/facebook/AppEventsLogger$SessionEventsState;
    invoke-virtual {v1}, Lcom/facebook/AppEventsLogger$SessionEventsState;->getAccumulatedEventCount()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 691
    .end local v1           #state:Lcom/facebook/AppEventsLogger$SessionEventsState;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static getFlushBehavior()Lcom/facebook/AppEventsLogger$FlushBehavior;
    .locals 2

    .prologue
    .line 371
    sget-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 372
    :try_start_0
    sget-object v1, Lcom/facebook/AppEventsLogger;->flushBehavior:Lcom/facebook/AppEventsLogger$FlushBehavior;

    monitor-exit v0

    return-object v1

    .line 371
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getLimitEventUsage(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 251
    invoke-static {p0}, Lcom/facebook/Settings;->getLimitEventAndDataUsage(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private static getSessionEventsState(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;
    .locals 5
    .parameter "context"
    .parameter "accessTokenAppId"

    .prologue
    .line 703
    sget-object v2, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v2

    .line 704
    :try_start_0
    sget-object v3, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/AppEventsLogger$SessionEventsState;

    .line 705
    .local v1, state:Lcom/facebook/AppEventsLogger$SessionEventsState;
    if-nez v1, :cond_0

    .line 708
    invoke-static {p0}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v0

    .line 710
    .local v0, attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;
    new-instance v1, Lcom/facebook/AppEventsLogger$SessionEventsState;

    .end local v1           #state:Lcom/facebook/AppEventsLogger$SessionEventsState;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/facebook/AppEventsLogger;->hashedDeviceAndAppId:Ljava/lang/String;

    invoke-direct {v1, v0, v3, v4}, Lcom/facebook/AppEventsLogger$SessionEventsState;-><init>(Lcom/facebook/internal/AttributionIdentifiers;Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    .restart local v1       #state:Lcom/facebook/AppEventsLogger$SessionEventsState;
    sget-object v3, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v3, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 713
    .end local v0           #attributionIdentifiers:Lcom/facebook/internal/AttributionIdentifiers;
    :cond_0
    monitor-exit v2

    return-object v1

    .line 703
    .end local v1           #state:Lcom/facebook/AppEventsLogger$SessionEventsState;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private static getSessionEventsState(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;
    .locals 2
    .parameter "accessTokenAppId"

    .prologue
    .line 718
    sget-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 719
    :try_start_0
    sget-object v1, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/facebook/AppEventsLogger$SessionEventsState;

    monitor-exit v0

    return-object p0

    .line 718
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static handleResponse(Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/Request;Lcom/facebook/Response;Lcom/facebook/AppEventsLogger$SessionEventsState;Lcom/facebook/AppEventsLogger$FlushStatistics;)V
    .locals 8
    .parameter "accessTokenAppId"
    .parameter "request"
    .parameter "response"
    .parameter "sessionEventsState"
    .parameter "flushState"

    .prologue
    .line 845
    invoke-virtual {p2}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v1

    .line 846
    .local v1, error:Lcom/facebook/FacebookRequestError;
    const-string v2, "Success"

    .line 848
    .local v2, resultDescription:Ljava/lang/String;
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

    .line 850
    .local v0, flushResult:Lcom/facebook/AppEventsLogger$FlushResult;
    if-eqz v1, :cond_5

    .line 851
    const/4 v0, -0x1

    .line 852
    .local v0, NO_CONNECTIVITY_ERROR_CODE:I
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v0

    .end local v0           #NO_CONNECTIVITY_ERROR_CODE:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 853
    .end local v2           #resultDescription:Ljava/lang/String;
    const-string v0, "Failed: No Connectivity"

    .line 854
    .local v0, resultDescription:Ljava/lang/String;
    sget-object p2, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    .local p2, flushResult:Lcom/facebook/AppEventsLogger$FlushResult;
    move-object v3, v0

    .end local v0           #resultDescription:Ljava/lang/String;
    .local v3, resultDescription:Ljava/lang/String;
    move-object v0, p2

    .line 863
    .end local p2           #flushResult:Lcom/facebook/AppEventsLogger$FlushResult;
    .local v0, flushResult:Lcom/facebook/AppEventsLogger$FlushResult;
    :goto_0
    sget-object p2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    invoke-static {p2}, Lcom/facebook/Settings;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 864
    invoke-virtual {p1}, Lcom/facebook/Request;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 868
    .local p2, eventsJsonString:Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 869
    .local v2, jsonArray:Lorg/json/JSONArray;
    const/4 p2, 0x2

    invoke-virtual {v2, p2}, Lorg/json/JSONArray;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p2           #eventsJsonString:Ljava/lang/String;
    move-result-object p2

    .line 874
    .end local v2           #jsonArray:Lorg/json/JSONArray;
    .local p2, prettyPrintedEvents:Ljava/lang/String;
    :goto_1
    sget-object v2, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    sget-object v4, Lcom/facebook/AppEventsLogger;->TAG:Ljava/lang/String;

    .line 875
    const-string v5, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 876
    invoke-virtual {p1}, Lcom/facebook/Request;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object p1

    .end local p1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v6, v7

    const/4 p1, 0x1

    .line 877
    aput-object v3, v6, p1

    const/4 p1, 0x2

    .line 878
    aput-object p2, v6, p1

    .line 874
    invoke-static {v2, v4, v5, v6}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 881
    .end local p2           #prettyPrintedEvents:Ljava/lang/String;
    :cond_0
    if-eqz v1, :cond_4

    const/4 p1, 0x1

    :goto_2
    invoke-virtual {p3, p1}, Lcom/facebook/AppEventsLogger$SessionEventsState;->clearInFlightAndStats(Z)V

    .line 883
    sget-object p1, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    if-ne v0, p1, :cond_1

    .line 888
    sget-object p1, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    invoke-static {p1, p0, p3}, Lcom/facebook/AppEventsLogger$PersistedEvents;->persistEvents(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;Lcom/facebook/AppEventsLogger$SessionEventsState;)V

    .line 891
    :cond_1
    sget-object p0, Lcom/facebook/AppEventsLogger$FlushResult;->SUCCESS:Lcom/facebook/AppEventsLogger$FlushResult;

    .end local p0
    if-eq v0, p0, :cond_2

    .line 893
    iget-object p0, p4, Lcom/facebook/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/AppEventsLogger$FlushResult;

    sget-object p1, Lcom/facebook/AppEventsLogger$FlushResult;->NO_CONNECTIVITY:Lcom/facebook/AppEventsLogger$FlushResult;

    if-eq p0, p1, :cond_2

    .line 894
    iput-object v0, p4, Lcom/facebook/AppEventsLogger$FlushStatistics;->result:Lcom/facebook/AppEventsLogger$FlushResult;

    .line 897
    :cond_2
    return-void

    .line 856
    .end local v0           #flushResult:Lcom/facebook/AppEventsLogger$FlushResult;
    .end local v3           #resultDescription:Ljava/lang/String;
    .restart local p0
    .restart local p1
    .local p2, response:Lcom/facebook/Response;
    :cond_3
    const-string v0, "Failed:\n  Response: %s\n  Error %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 857
    invoke-virtual {p2}, Lcom/facebook/Response;->toString()Ljava/lang/String;

    move-result-object p2

    .end local p2           #response:Lcom/facebook/Response;
    aput-object p2, v2, v3

    const/4 p2, 0x1

    .line 858
    invoke-virtual {v1}, Lcom/facebook/FacebookRequestError;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, p2

    .line 856
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 859
    .local v0, resultDescription:Ljava/lang/String;
    sget-object p2, Lcom/facebook/AppEventsLogger$FlushResult;->SERVER_ERROR:Lcom/facebook/AppEventsLogger$FlushResult;

    .local p2, flushResult:Lcom/facebook/AppEventsLogger$FlushResult;
    move-object v3, v0

    .end local v0           #resultDescription:Ljava/lang/String;
    .restart local v3       #resultDescription:Ljava/lang/String;
    move-object v0, p2

    .end local p2           #flushResult:Lcom/facebook/AppEventsLogger$FlushResult;
    .local v0, flushResult:Lcom/facebook/AppEventsLogger$FlushResult;
    goto :goto_0

    .line 870
    :catch_0
    move-exception p2

    .line 871
    .local p2, exc:Lorg/json/JSONException;
    const-string p2, "<Can\'t encode events for debug logging>"

    .local p2, prettyPrintedEvents:Ljava/lang/String;
    goto :goto_1

    .line 881
    .end local p1
    .end local p2           #prettyPrintedEvents:Ljava/lang/String;
    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    .end local v3           #resultDescription:Ljava/lang/String;
    .local v2, resultDescription:Ljava/lang/String;
    .restart local p1
    .local p2, response:Lcom/facebook/Response;
    :cond_5
    move-object v3, v2

    .end local v2           #resultDescription:Ljava/lang/String;
    .restart local v3       #resultDescription:Ljava/lang/String;
    goto :goto_0
.end method

.method private static initializeTimersIfNeeded()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 592
    sget-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 593
    :try_start_0
    sget-object v1, Lcom/facebook/AppEventsLogger;->flushTimer:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 594
    monitor-exit v0

    .line 629
    :goto_0
    return-void

    .line 596
    :cond_0
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/facebook/AppEventsLogger;->flushTimer:Ljava/util/Timer;

    .line 597
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    sput-object v1, Lcom/facebook/AppEventsLogger;->supportsAttributionRecheckTimer:Ljava/util/Timer;

    .line 592
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 600
    sget-object v0, Lcom/facebook/AppEventsLogger;->flushTimer:Ljava/util/Timer;

    .line 601
    new-instance v1, Lcom/facebook/AppEventsLogger$2;

    invoke-direct {v1}, Lcom/facebook/AppEventsLogger$2;-><init>()V

    .line 610
    const-wide/32 v4, 0xea60

    .line 600
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 612
    sget-object v0, Lcom/facebook/AppEventsLogger;->supportsAttributionRecheckTimer:Ljava/util/Timer;

    .line 613
    new-instance v1, Lcom/facebook/AppEventsLogger$3;

    invoke-direct {v1}, Lcom/facebook/AppEventsLogger$3;-><init>()V

    .line 628
    const-wide/32 v4, 0x5265c00

    .line 612
    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    goto :goto_0

    .line 592
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static logEvent(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AppEvent;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)V
    .locals 2
    .parameter "context"
    .parameter "event"
    .parameter "accessTokenAppId"

    .prologue
    .line 638
    invoke-static {p1}, Lcom/facebook/AppEventsLogger;->shouldSuppressEvent(Lcom/facebook/AppEventsLogger$AppEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 646
    :goto_0
    return-void

    .line 642
    :cond_0
    invoke-static {p0, p2}, Lcom/facebook/AppEventsLogger;->getSessionEventsState(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)Lcom/facebook/AppEventsLogger$SessionEventsState;

    move-result-object v0

    .line 643
    .local v0, state:Lcom/facebook/AppEventsLogger$SessionEventsState;
    invoke-virtual {v0, p1}, Lcom/facebook/AppEventsLogger$SessionEventsState;->addEvent(Lcom/facebook/AppEventsLogger$AppEvent;)V

    .line 645
    invoke-static {}, Lcom/facebook/AppEventsLogger;->flushIfNecessary()V

    goto :goto_0
.end method

.method private logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V
    .locals 3
    .parameter "eventName"
    .parameter "valueToSum"
    .parameter "parameters"
    .parameter "isImplicitlyLogged"

    .prologue
    .line 633
    new-instance v0, Lcom/facebook/AppEventsLogger$AppEvent;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/AppEventsLogger$AppEvent;-><init>(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 634
    .local v0, event:Lcom/facebook/AppEventsLogger$AppEvent;
    iget-object v1, p0, Lcom/facebook/AppEventsLogger;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    invoke-static {v1, v0, v2}, Lcom/facebook/AppEventsLogger;->logEvent(Landroid/content/Context;Lcom/facebook/AppEventsLogger$AppEvent;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;)V

    .line 635
    return-void
.end method

.method public static newLogger(Landroid/content/Context;)Lcom/facebook/AppEventsLogger;
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 307
    new-instance v0, Lcom/facebook/AppEventsLogger;

    invoke-direct {v0, p0, v1, v1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;
    .locals 2
    .parameter "context"
    .parameter "session"

    .prologue
    .line 321
    new-instance v0, Lcom/facebook/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/AppEventsLogger;
    .locals 2
    .parameter "context"
    .parameter "applicationId"

    .prologue
    .line 352
    new-instance v0, Lcom/facebook/AppEventsLogger;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method public static newLogger(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)Lcom/facebook/AppEventsLogger;
    .locals 1
    .parameter "context"
    .parameter "applicationId"
    .parameter "session"

    .prologue
    .line 337
    new-instance v0, Lcom/facebook/AppEventsLogger;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/AppEventsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Session;)V

    return-object v0
.end method

.method private static notifyDeveloperError(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 920
    sget-object v0, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    const-string v1, "AppEvents"

    invoke-static {v0, v1, p0}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    return-void
.end method

.method public static onContextStop()V
    .locals 2

    .prologue
    .line 513
    sget-object v0, Lcom/facebook/AppEventsLogger;->applicationContext:Landroid/content/Context;

    sget-object v1, Lcom/facebook/AppEventsLogger;->stateMap:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/facebook/AppEventsLogger$PersistedEvents;->persistEvents(Landroid/content/Context;Ljava/util/Map;)V

    .line 514
    return-void
.end method

.method public static setFlushBehavior(Lcom/facebook/AppEventsLogger$FlushBehavior;)V
    .locals 2
    .parameter "flushBehavior"

    .prologue
    .line 382
    sget-object v0, Lcom/facebook/AppEventsLogger;->staticLock:Ljava/lang/Object;

    monitor-enter v0

    .line 383
    :try_start_0
    sput-object p0, Lcom/facebook/AppEventsLogger;->flushBehavior:Lcom/facebook/AppEventsLogger$FlushBehavior;

    .line 382
    monitor-exit v0

    .line 385
    return-void

    .line 382
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static setLimitEventUsage(Landroid/content/Context;Z)V
    .locals 0
    .parameter "context"
    .parameter "limitEventUsage"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 259
    invoke-static {p0, p1}, Lcom/facebook/Settings;->setLimitEventAndDataUsage(Landroid/content/Context;Z)V

    .line 260
    return-void
.end method

.method private static shouldSuppressEvent(Lcom/facebook/AppEventsLogger$AppEvent;)Z
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    .line 650
    sget-object v5, Lcom/facebook/AppEventsLogger;->mapEventNameToSuppress:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$AppEvent;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/AppEventsLogger$EventSuppression;

    .line 651
    .local v3, suppressionInfo:Lcom/facebook/AppEventsLogger$EventSuppression;
    if-nez v3, :cond_0

    move v5, v9

    .line 671
    :goto_0
    return v5

    .line 655
    :cond_0
    sget-object v5, Lcom/facebook/AppEventsLogger;->mapEventsToSuppressionTime:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$AppEvent;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Date;

    .line 657
    .local v4, timestamp:Ljava/util/Date;
    if-nez v4, :cond_3

    .line 658
    const/4 v2, 0x0

    .line 666
    .local v2, suppressed:Z
    :goto_1
    if-eqz v2, :cond_1

    .line 667
    invoke-virtual {v3}, Lcom/facebook/AppEventsLogger$EventSuppression;->getBehavior()Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    move-result-object v5

    sget-object v6, Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;->RESET_TIMEOUT_WHEN_LOG_ATTEMPTED:Lcom/facebook/AppEventsLogger$SuppressionTimeoutBehavior;

    if-ne v5, v6, :cond_2

    .line 668
    :cond_1
    sget-object v5, Lcom/facebook/AppEventsLogger;->mapEventsToSuppressionTime:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/facebook/AppEventsLogger$AppEvent;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7}, Ljava/util/Date;-><init>()V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v5, v2

    .line 671
    goto :goto_0

    .line 660
    .end local v2           #suppressed:Z
    :cond_3
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v7

    sub-long v0, v5, v7

    .line 661
    .local v0, delta:J
    invoke-virtual {v3}, Lcom/facebook/AppEventsLogger$EventSuppression;->getTimeoutPeriod()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v5, v0, v5

    if-gez v5, :cond_4

    const/4 v5, 0x1

    move v2, v5

    .restart local v2       #suppressed:Z
    :goto_2
    goto :goto_1

    .end local v2           #suppressed:Z
    :cond_4
    move v2, v9

    goto :goto_2
.end method


# virtual methods
.method public flush()V
    .locals 1

    .prologue
    .line 501
    sget-object v0, Lcom/facebook/AppEventsLogger$FlushReason;->EXPLICIT:Lcom/facebook/AppEventsLogger$FlushReason;

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->flush(Lcom/facebook/AppEventsLogger$FlushReason;)V

    .line 502
    return-void
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    iget-object v0, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    invoke-virtual {v0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method isValidForSession(Lcom/facebook/Session;)Z
    .locals 2
    .parameter "session"

    .prologue
    .line 517
    new-instance v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    invoke-direct {v0, p1}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;-><init>(Lcom/facebook/Session;)V

    .line 518
    .local v0, other:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
    iget-object v1, p0, Lcom/facebook/AppEventsLogger;->accessTokenAppId:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    invoke-virtual {v1, v0}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public logEvent(Ljava/lang/String;)V
    .locals 1
    .parameter "eventName"

    .prologue
    .line 397
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 398
    return-void
.end method

.method public logEvent(Ljava/lang/String;D)V
    .locals 1
    .parameter "eventName"
    .parameter "valueToSum"

    .prologue
    .line 413
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 414
    return-void
.end method

.method public logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V
    .locals 2
    .parameter "eventName"
    .parameter "valueToSum"
    .parameter "parameters"

    .prologue
    .line 453
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p4, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 454
    return-void
.end method

.method public logEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "eventName"
    .parameter "parameters"

    .prologue
    .line 432
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 433
    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;)V
    .locals 1
    .parameter "purchaseAmount"
    .parameter "currency"

    .prologue
    .line 464
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/AppEventsLogger;->logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 465
    return-void
.end method

.method public logPurchase(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    .locals 3
    .parameter "purchaseAmount"
    .parameter "currency"
    .parameter "parameters"

    .prologue
    .line 479
    if-nez p1, :cond_0

    .line 480
    const-string v0, "purchaseAmount cannot be null"

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    .line 494
    :goto_0
    return-void

    .line 482
    :cond_0
    if-nez p2, :cond_1

    .line 483
    const-string v0, "currency cannot be null"

    invoke-static {v0}, Lcom/facebook/AppEventsLogger;->notifyDeveloperError(Ljava/lang/String;)V

    goto :goto_0

    .line 487
    :cond_1
    if-nez p3, :cond_2

    .line 488
    new-instance p3, Landroid/os/Bundle;

    .end local p3
    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 490
    .restart local p3
    :cond_2
    const-string v0, "fb_currency"

    invoke-virtual {p2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string v0, "fb_mobile_purchase"

    invoke-virtual {p1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 493
    invoke-static {}, Lcom/facebook/AppEventsLogger;->eagerFlush()V

    goto :goto_0
.end method

.method public logSdkEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;)V
    .locals 1
    .parameter "eventName"
    .parameter "valueToSum"
    .parameter "parameters"

    .prologue
    .line 525
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/facebook/AppEventsLogger;->logEvent(Ljava/lang/String;Ljava/lang/Double;Landroid/os/Bundle;Z)V

    .line 526
    return-void
.end method
