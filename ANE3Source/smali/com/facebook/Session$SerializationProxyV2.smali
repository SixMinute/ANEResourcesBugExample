.class Lcom/facebook/Session$SerializationProxyV2;
.super Ljava/lang/Object;
.source "Session.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializationProxyV2"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6a59fe98cd935b00L


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final lastAttemptedTokenExtendDate:Ljava/util/Date;

.field private final pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

.field private final requestedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldAutoPublish:Z

.field private final state:Lcom/facebook/SessionState;

.field private final tokenInfo:Lcom/facebook/AccessToken;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;)V
    .locals 0
    .parameter "applicationId"
    .parameter "state"
    .parameter "tokenInfo"
    .parameter "lastAttemptedTokenExtendDate"
    .parameter "shouldAutoPublish"
    .parameter "pendingAuthorizationRequest"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/SessionState;",
            "Lcom/facebook/AccessToken;",
            "Ljava/util/Date;",
            "Z",
            "Lcom/facebook/Session$AuthorizationRequest;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p7, requestedPermissions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/facebook/Session$SerializationProxyV2;->applicationId:Ljava/lang/String;

    .line 210
    iput-object p2, p0, Lcom/facebook/Session$SerializationProxyV2;->state:Lcom/facebook/SessionState;

    .line 211
    iput-object p3, p0, Lcom/facebook/Session$SerializationProxyV2;->tokenInfo:Lcom/facebook/AccessToken;

    .line 212
    iput-object p4, p0, Lcom/facebook/Session$SerializationProxyV2;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    .line 213
    iput-boolean p5, p0, Lcom/facebook/Session$SerializationProxyV2;->shouldAutoPublish:Z

    .line 214
    iput-object p6, p0, Lcom/facebook/Session$SerializationProxyV2;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    .line 215
    iput-object p7, p0, Lcom/facebook/Session$SerializationProxyV2;->requestedPermissions:Ljava/util/Set;

    .line 216
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 219
    new-instance v0, Lcom/facebook/Session;

    iget-object v1, p0, Lcom/facebook/Session$SerializationProxyV2;->applicationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/Session$SerializationProxyV2;->state:Lcom/facebook/SessionState;

    iget-object v3, p0, Lcom/facebook/Session$SerializationProxyV2;->tokenInfo:Lcom/facebook/AccessToken;

    .line 220
    iget-object v4, p0, Lcom/facebook/Session$SerializationProxyV2;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    iget-boolean v5, p0, Lcom/facebook/Session$SerializationProxyV2;->shouldAutoPublish:Z

    iget-object v6, p0, Lcom/facebook/Session$SerializationProxyV2;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    iget-object v7, p0, Lcom/facebook/Session$SerializationProxyV2;->requestedPermissions:Ljava/util/Set;

    .line 219
    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;Lcom/facebook/Session;)V

    return-object v0
.end method
