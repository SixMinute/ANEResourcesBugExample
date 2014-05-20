.class public Lcom/adobe/air/wand/message/json/JSONMessageManager;
.super Lcom/adobe/air/wand/message/MessageManager;
.source "JSONMessageManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/message/json/JSONMessageManager$1;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/adobe/air/wand/message/MessageManager;-><init>()V

    .line 210
    return-void
.end method

.method private static createJSONMessage(Lcom/adobe/air/wand/message/Message;)Lorg/json/JSONObject;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v0, "taskID"

    .line 166
    monitor-enter p0

    .line 168
    :try_start_0
    invoke-virtual {p0}, Lcom/adobe/air/wand/message/Message;->getHeader()Lcom/adobe/air/wand/message/Message$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Message$Header;->getType()Lcom/adobe/air/wand/message/Message$Type;

    move-result-object v0

    .line 170
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 171
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 175
    sget-object v1, Lcom/adobe/air/wand/message/json/JSONMessageManager$1;->$SwitchMap$com$adobe$air$wand$message$Message$Type:[I

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Message$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 210
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unsupported message type"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 177
    :pswitch_0
    :try_start_1
    invoke-virtual {p0}, Lcom/adobe/air/wand/message/Message;->getHeader()Lcom/adobe/air/wand/message/Message$Header;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/Request$Header;

    .line 178
    invoke-virtual {p0}, Lcom/adobe/air/wand/message/Message;->getData()Lcom/adobe/air/wand/message/Message$Data;

    move-result-object v1

    check-cast v1, Lcom/adobe/air/wand/message/Request$Data;

    .line 182
    const-string v4, "taskID"

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Request$Header;->getTaskID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v4, "arguments"

    invoke-virtual {v1}, Lcom/adobe/air/wand/message/Request$Data;->getArguments()Lcom/adobe/air/wand/message/MessageDataArray;

    move-result-object v1

    check-cast v1, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;

    iget-object v1, v1, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;->mJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 213
    :goto_0
    const-string v1, "title"

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Message$Header;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 214
    const-string v1, "type"

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Message$Header;->getType()Lcom/adobe/air/wand/message/Message$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/adobe/air/wand/message/Message$Type;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 215
    const-string v1, "timestamp"

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Message$Header;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v2, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 217
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 218
    const-string v1, "header"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 219
    const-string v1, "data"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 221
    monitor-exit p0

    return-object v0

    .line 188
    :pswitch_1
    invoke-virtual {p0}, Lcom/adobe/air/wand/message/Message;->getHeader()Lcom/adobe/air/wand/message/Message$Header;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/Response$Header;

    .line 189
    invoke-virtual {p0}, Lcom/adobe/air/wand/message/Message;->getData()Lcom/adobe/air/wand/message/Message$Data;

    move-result-object v1

    check-cast v1, Lcom/adobe/air/wand/message/Response$Data;

    .line 193
    const-string v4, "status"

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Response$Header;->getStatus()Lcom/adobe/air/wand/message/Response$Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/adobe/air/wand/message/Response$Status;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 194
    const-string v4, "taskID"

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Response$Header;->getTaskID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 195
    const-string v4, "result"

    invoke-virtual {v1}, Lcom/adobe/air/wand/message/Response$Data;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    iget-object v1, v1, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 200
    :pswitch_2
    invoke-virtual {p0}, Lcom/adobe/air/wand/message/Message;->getHeader()Lcom/adobe/air/wand/message/Message$Header;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/Notification$Header;

    .line 201
    invoke-virtual {p0}, Lcom/adobe/air/wand/message/Message;->getData()Lcom/adobe/air/wand/message/Message$Data;

    move-result-object v1

    check-cast v1, Lcom/adobe/air/wand/message/Notification$Data;

    .line 205
    const-string v4, "notification"

    invoke-virtual {v1}, Lcom/adobe/air/wand/message/Notification$Data;->getNotification()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    iget-object v1, v1, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;->mJSONObject:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 175
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static createWandMessage(Lorg/json/JSONObject;)Lcom/adobe/air/wand/message/Message;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const-string v0, "taskID"

    .line 106
    monitor-enter p0

    .line 108
    :try_start_0
    const-string v0, "header"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 109
    const-string v1, "data"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 111
    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 112
    const-string v2, "type"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    const-string v3, "timestamp"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 115
    const/4 v5, 0x0

    .line 117
    sget-object v7, Lcom/adobe/air/wand/message/Message$Type;->REQUEST:Lcom/adobe/air/wand/message/Message$Type;

    invoke-virtual {v7}, Lcom/adobe/air/wand/message/Message$Type;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 119
    const-string v2, "taskID"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    const-string v2, "arguments"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 122
    new-instance v5, Lcom/adobe/air/wand/message/Request$Header;

    invoke-direct {v5, v1, v0, v3, v4}, Lcom/adobe/air/wand/message/Request$Header;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 123
    new-instance v0, Lcom/adobe/air/wand/message/Request$Data;

    new-instance v1, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;

    invoke-direct {v1, v2}, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;-><init>(Lorg/json/JSONArray;)V

    invoke-direct {v0, v1}, Lcom/adobe/air/wand/message/Request$Data;-><init>(Lcom/adobe/air/wand/message/MessageDataArray;)V

    .line 125
    new-instance v1, Lcom/adobe/air/wand/message/Request;

    invoke-direct {v1, v5, v0}, Lcom/adobe/air/wand/message/Request;-><init>(Lcom/adobe/air/wand/message/Request$Header;Lcom/adobe/air/wand/message/Request$Data;)V

    move-object v0, v1

    .line 160
    :goto_0
    monitor-exit p0

    return-object v0

    .line 127
    :cond_0
    sget-object v7, Lcom/adobe/air/wand/message/Message$Type;->RESPONSE:Lcom/adobe/air/wand/message/Message$Type;

    invoke-virtual {v7}, Lcom/adobe/air/wand/message/Message$Type;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 129
    const-string v2, "taskID"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    const-string v5, "status"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    sget-object v5, Lcom/adobe/air/wand/message/Response$Status;->SUCCESS:Lcom/adobe/air/wand/message/Response$Status;

    invoke-virtual {v5}, Lcom/adobe/air/wand/message/Response$Status;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 135
    sget-object v0, Lcom/adobe/air/wand/message/Response$Status;->SUCCESS:Lcom/adobe/air/wand/message/Response$Status;

    move-object v5, v0

    .line 142
    :goto_1
    const-string v0, "result"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 144
    new-instance v0, Lcom/adobe/air/wand/message/Response$Header;

    invoke-direct/range {v0 .. v5}, Lcom/adobe/air/wand/message/Response$Header;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/adobe/air/wand/message/Response$Status;)V

    .line 145
    new-instance v1, Lcom/adobe/air/wand/message/Response$Data;

    new-instance v2, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    invoke-direct {v2, v6}, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v1, v2}, Lcom/adobe/air/wand/message/Response$Data;-><init>(Lcom/adobe/air/wand/message/MessageDataObject;)V

    .line 147
    new-instance v2, Lcom/adobe/air/wand/message/Response;

    invoke-direct {v2, v0, v1}, Lcom/adobe/air/wand/message/Response;-><init>(Lcom/adobe/air/wand/message/Response$Header;Lcom/adobe/air/wand/message/Response$Data;)V

    move-object v0, v2

    .line 149
    goto :goto_0

    .line 136
    :cond_1
    sget-object v5, Lcom/adobe/air/wand/message/Response$Status;->ERROR:Lcom/adobe/air/wand/message/Response$Status;

    invoke-virtual {v5}, Lcom/adobe/air/wand/message/Response$Status;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    sget-object v0, Lcom/adobe/air/wand/message/Response$Status;->ERROR:Lcom/adobe/air/wand/message/Response$Status;

    move-object v5, v0

    goto :goto_1

    .line 139
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to fetch Response status"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 149
    :cond_3
    :try_start_1
    sget-object v0, Lcom/adobe/air/wand/message/Message$Type;->NOTIFICATION:Lcom/adobe/air/wand/message/Message$Type;

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Message$Type;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 151
    const-string v0, "notification"

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 153
    new-instance v2, Lcom/adobe/air/wand/message/Notification$Header;

    invoke-direct {v2, v1, v3, v4}, Lcom/adobe/air/wand/message/Notification$Header;-><init>(Ljava/lang/String;J)V

    .line 154
    new-instance v1, Lcom/adobe/air/wand/message/Notification$Data;

    new-instance v3, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    invoke-direct {v3, v0}, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;-><init>(Lorg/json/JSONObject;)V

    invoke-direct {v1, v3}, Lcom/adobe/air/wand/message/Notification$Data;-><init>(Lcom/adobe/air/wand/message/MessageDataObject;)V

    .line 156
    new-instance v0, Lcom/adobe/air/wand/message/Notification;

    invoke-direct {v0, v2, v1}, Lcom/adobe/air/wand/message/Notification;-><init>(Lcom/adobe/air/wand/message/Notification$Header;Lcom/adobe/air/wand/message/Notification$Data;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_4
    move-object v0, v5

    goto/16 :goto_0
.end method


# virtual methods
.method public createDataArray()Lcom/adobe/air/wand/message/MessageDataArray;
    .locals 1

    .prologue
    .line 49
    new-instance v0, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;

    invoke-direct {v0}, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;-><init>()V

    return-object v0
.end method

.method public createDataObject()Lcom/adobe/air/wand/message/MessageDataObject;
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    invoke-direct {v0}, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;-><init>()V

    return-object v0
.end method

.method public createWandNotification(Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataObject;)Lcom/adobe/air/wand/message/Notification;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v0, Lcom/adobe/air/wand/message/Notification$Header;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p1, v1, v2}, Lcom/adobe/air/wand/message/Notification$Header;-><init>(Ljava/lang/String;J)V

    .line 95
    if-nez p2, :cond_0

    .line 96
    new-instance v1, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    invoke-direct {v1}, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;-><init>()V

    .line 99
    :goto_0
    new-instance v2, Lcom/adobe/air/wand/message/Notification$Data;

    invoke-direct {v2, v1}, Lcom/adobe/air/wand/message/Notification$Data;-><init>(Lcom/adobe/air/wand/message/MessageDataObject;)V

    .line 101
    new-instance v1, Lcom/adobe/air/wand/message/Notification;

    invoke-direct {v1, v0, v2}, Lcom/adobe/air/wand/message/Notification;-><init>(Lcom/adobe/air/wand/message/Notification$Header;Lcom/adobe/air/wand/message/Notification$Data;)V

    return-object v1

    :cond_0
    move-object v1, p2

    goto :goto_0
.end method

.method public createWandRequest(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataArray;)Lcom/adobe/air/wand/message/Request;
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v0, Lcom/adobe/air/wand/message/Request$Header;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/adobe/air/wand/message/Request$Header;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    .line 68
    if-nez p3, :cond_0

    .line 69
    new-instance v1, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;

    invoke-direct {v1}, Lcom/adobe/air/wand/message/json/JSONMessageDataArray;-><init>()V

    .line 72
    :goto_0
    new-instance v2, Lcom/adobe/air/wand/message/Request$Data;

    invoke-direct {v2, v1}, Lcom/adobe/air/wand/message/Request$Data;-><init>(Lcom/adobe/air/wand/message/MessageDataArray;)V

    .line 74
    new-instance v1, Lcom/adobe/air/wand/message/Request;

    invoke-direct {v1, v0, v2}, Lcom/adobe/air/wand/message/Request;-><init>(Lcom/adobe/air/wand/message/Request$Header;Lcom/adobe/air/wand/message/Request$Data;)V

    return-object v1

    :cond_0
    move-object v1, p3

    goto :goto_0
.end method

.method public createWandResponse(Ljava/lang/String;Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataObject;Lcom/adobe/air/wand/message/Response$Status;)Lcom/adobe/air/wand/message/Response;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v0, Lcom/adobe/air/wand/message/Response$Header;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v1, p1

    move-object v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/adobe/air/wand/message/Response$Header;-><init>(Ljava/lang/String;Ljava/lang/String;JLcom/adobe/air/wand/message/Response$Status;)V

    .line 81
    if-nez p3, :cond_0

    .line 82
    new-instance v1, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;

    invoke-direct {v1}, Lcom/adobe/air/wand/message/json/JSONMessageDataObject;-><init>()V

    .line 85
    :goto_0
    new-instance v2, Lcom/adobe/air/wand/message/Response$Data;

    invoke-direct {v2, v1}, Lcom/adobe/air/wand/message/Response$Data;-><init>(Lcom/adobe/air/wand/message/MessageDataObject;)V

    .line 87
    new-instance v1, Lcom/adobe/air/wand/message/Response;

    invoke-direct {v1, v0, v2}, Lcom/adobe/air/wand/message/Response;-><init>(Lcom/adobe/air/wand/message/Response$Header;Lcom/adobe/air/wand/message/Response$Data;)V

    return-object v1

    :cond_0
    move-object v1, p3

    goto :goto_0
.end method

.method public deserializeWandMessage(Ljava/lang/String;)Lcom/adobe/air/wand/message/Message;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/adobe/air/wand/message/json/JSONMessageManager;->createWandMessage(Lorg/json/JSONObject;)Lcom/adobe/air/wand/message/Message;

    move-result-object v0

    return-object v0
.end method

.method public serializeMessage(Lcom/adobe/air/wand/message/Message;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    invoke-static {p1}, Lcom/adobe/air/wand/message/json/JSONMessageManager;->createJSONMessage(Lcom/adobe/air/wand/message/Message;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
