.class Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/AppEventsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessTokenAppIdPair"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final accessToken:Ljava/lang/String;

.field private final applicationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/Session;)V
    .locals 2
    .parameter "session"

    .prologue
    .line 194
    invoke-virtual {p1}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "accessToken"
    .parameter "applicationId"

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    invoke-static {p1}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->accessToken:Ljava/lang/String;

    .line 199
    iput-object p2, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;

    .line 200
    return-void

    :cond_0
    move-object v0, p1

    .line 198
    goto :goto_0
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 242
    new-instance v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1;

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->accessToken:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair$SerializationProxyV1;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 218
    instance-of v2, p1, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    if-nez v2, :cond_0

    move v2, v4

    .line 222
    :goto_0
    return v2

    .line 221
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;

    move-object v1, v0

    .line 222
    .local v1, p:Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;
    iget-object v2, v1, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->accessToken:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->accessToken:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    iget-object v2, v1, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 222
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->accessToken:Ljava/lang/String;

    return-object v0
.end method

.method getApplicationId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 212
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->accessToken:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v2

    .line 213
    :goto_0
    iget-object v1, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    .line 212
    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->accessToken:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/facebook/AppEventsLogger$AccessTokenAppIdPair;->applicationId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1
.end method
