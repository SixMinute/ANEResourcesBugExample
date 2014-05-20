.class public Lcom/adobe/air/AndroidGcmIntentService;
.super Landroid/app/IntentService;
.source "AndroidGcmIntentService.java"


# static fields
.field private static final CLOUDFRONT:Ljava/lang/String; = "cloudfront"

.field private static final GAMESPACE:Ljava/lang/String; = "gamespace"

.field private static final GAME_URL:Ljava/lang/String; = "gameUrl"

.field private static final MSG_ID:Ljava/lang/String; = "msgId"

.field private static final PROPERTY_NOTIFICATION_TIMESTAMP:Ljava/lang/String; = "notficationTimestamp"

.field private static final TAG:Ljava/lang/String; = "AndroidGcmIntentService"

.field private static sUniqueId:I


# instance fields
.field private mGameDesc:Ljava/lang/String;

.field private mGameIconUrl:Ljava/lang/String;

.field private mGameTitle:Ljava/lang/String;

.field private mGameUrl:Ljava/lang/String;

.field private mGameUrlPrefix:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private mMsgId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 231
    const/4 v0, 0x0

    sput v0, Lcom/adobe/air/AndroidGcmIntentService;->sUniqueId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    const-string v0, "AndroidGcmIntentService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 224
    iput-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameTitle:Ljava/lang/String;

    .line 225
    iput-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameDesc:Ljava/lang/String;

    .line 226
    iput-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameIconUrl:Ljava/lang/String;

    .line 227
    iput-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrl:Ljava/lang/String;

    .line 228
    iput-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrlPrefix:Ljava/lang/String;

    .line 229
    iput-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mMsgId:Ljava/lang/String;

    .line 230
    iput-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mHost:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter

    .prologue
    .line 209
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    .line 211
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 212
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->connect()V

    .line 213
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 214
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 220
    :goto_0
    return-object v0

    .line 217
    :catch_0
    move-exception v0

    .line 220
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleNotification(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    const-string v0, "/"

    .line 91
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmIntentService;->isNotificationValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 98
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    const-string v1, "gameTitle"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameTitle:Ljava/lang/String;

    .line 104
    const-string v1, "gameDesc"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameDesc:Ljava/lang/String;

    .line 107
    const-string v1, "gameIconUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameIconUrl:Ljava/lang/String;

    .line 110
    const-string v1, "gameUrl"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrl:Ljava/lang/String;

    .line 113
    const-string v1, "gameUrlPrefix"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrlPrefix:Ljava/lang/String;

    .line 116
    const-string v1, "msgId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mMsgId:Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameTitle:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameDesc:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameIconUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrlPrefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mMsgId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrlPrefix:Ljava/lang/String;

    const-string v1, "gamespace"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 127
    const-string v0, "http://gamespace.adobe.com"

    iput-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mHost:Ljava/lang/String;

    .line 136
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrl:Ljava/lang/String;

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameIconUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameIconUrl:Ljava/lang/String;

    .line 141
    invoke-direct {p0}, Lcom/adobe/air/AndroidGcmIntentService;->sendNotification()V

    goto/16 :goto_0

    .line 143
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 129
    :cond_3
    iget-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrlPrefix:Ljava/lang/String;

    const-string v1, "cloudfront"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 131
    const-string v0, "https://dh8vjmvwgc27o.cloudfront.net"

    iput-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mHost:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method private isNotificationValid()Z
    .locals 9

    .prologue
    const-wide/high16 v5, -0x8000

    const/4 v7, 0x0

    const-string v8, "notficationTimestamp"

    .line 187
    const-class v0, Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v7}, Lcom/adobe/air/AndroidGcmIntentService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 188
    const-string v1, "notficationTimestamp"

    invoke-interface {v0, v8, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 193
    cmp-long v5, v1, v5

    if-eqz v5, :cond_0

    sub-long v1, v3, v1

    sget-wide v5, Lcom/adobe/air/AdobeAIR;->RATE_LIMIT:J

    cmp-long v1, v1, v5

    if-lez v1, :cond_1

    .line 197
    :cond_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 198
    const-string v1, "notficationTimestamp"

    invoke-interface {v0, v8, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 199
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 200
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_1
    move v0, v7

    goto :goto_0
.end method

.method private sendNotification()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/adobe/air/AdobeAIR;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 155
    const-string v1, "gameUrl"

    iget-object v2, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const-string v1, "msgId"

    iget-object v2, p0, Lcom/adobe/air/AndroidGcmIntentService;->mMsgId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 158
    sget v1, Lcom/adobe/air/AndroidGcmIntentService;->sUniqueId:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/adobe/air/AndroidGcmIntentService;->sUniqueId:I

    const/high16 v2, 0x4000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 163
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 164
    const v2, 0x7f020057

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 165
    iget-object v2, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 166
    iget-object v2, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameDesc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 167
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 168
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 172
    iget-object v0, p0, Lcom/adobe/air/AndroidGcmIntentService;->mGameIconUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidGcmIntentService;->getBitmapFromURL(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 178
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/adobe/air/AndroidGcmIntentService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 179
    sget v0, Lcom/adobe/air/AndroidGcmIntentService;->sUniqueId:I

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 181
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter

    .prologue
    const-string v3, "message"

    .line 55
    const-string v0, ""

    .line 56
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 57
    if-eqz v1, :cond_0

    .line 59
    const-string v2, "message"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    const-string v0, "message"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 70
    invoke-static {p0}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/gcm/GoogleCloudMessaging;

    move-result-object v1

    .line 71
    invoke-virtual {v1, p1}, Lcom/google/android/gms/gcm/GoogleCloudMessaging;->getMessageType(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 73
    const-string v2, "gcm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 75
    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidGcmIntentService;->handleNotification(Ljava/lang/String;)V

    .line 84
    :cond_1
    invoke-static {p1}, Lcom/adobe/air/AndroidGcmBroadcastReceiver;->completeWakefulIntent(Landroid/content/Intent;)Z

    .line 85
    return-void
.end method
