.class Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
.super Ljava/lang/Object;
.source "WandWebSocket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/wand/connection/WandWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Handshake"
.end annotation


# static fields
.field private static final DESTINATION_ID:Ljava/lang/String; = "destinationID"

.field private static final PROTOCOL:Ljava/lang/String; = "protocol"

.field private static final SOURCE_ID:Ljava/lang/String; = "sourceID"

.field private static final STATUS:Ljava/lang/String; = "status"

.field private static final STATUS_FAILURE:Ljava/lang/String; = "FAILURE"

.field private static final STATUS_SUCCESS:Ljava/lang/String; = "SUCCESS"

.field public static final TIMEOUT_MILLISECONDS:I = 0x7530

.field private static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private mDestinationID:Ljava/lang/String;

.field private mProtocol:Ljava/lang/String;

.field private mSourceID:Ljava/lang/String;

.field private mVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    const-string v0, "WEBSOCKET"

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mProtocol:Ljava/lang/String;

    .line 124
    const-string v0, "1.0.0"

    iput-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mVersion:Ljava/lang/String;

    .line 125
    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mSourceID:Ljava/lang/String;

    .line 126
    iput-object v1, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mDestinationID:Ljava/lang/String;

    .line 148
    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 158
    new-instance v1, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;

    invoke-direct {v1}, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;-><init>()V

    .line 159
    const-string v2, "protocol"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mProtocol:Ljava/lang/String;

    .line 160
    const-string v2, "version"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mVersion:Ljava/lang/String;

    .line 161
    const-string v2, "sourceID"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mSourceID:Ljava/lang/String;

    .line 162
    const-string v2, "destinationID"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mDestinationID:Ljava/lang/String;

    .line 164
    return-object v1
.end method


# virtual methods
.method public getDestinationID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mDestinationID:Ljava/lang/String;

    return-object v0
.end method

.method public getFailureResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 182
    const-string v1, "protocol"

    const-string v2, "WEBSOCKET"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v1, "version"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v1, "sourceID"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v1, "destinationID"

    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mSourceID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v1, "status"

    const-string v2, "FAILURE"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mProtocol:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mSourceID:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccessResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 170
    const-string v1, "protocol"

    const-string v2, "WEBSOCKET"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v1, "version"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v1, "sourceID"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v1, "destinationID"

    iget-object v2, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mSourceID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v1, "status"

    const-string v2, "SUCCESS"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/adobe/air/wand/connection/WandWebSocket$Handshake;->mVersion:Ljava/lang/String;

    return-object v0
.end method
