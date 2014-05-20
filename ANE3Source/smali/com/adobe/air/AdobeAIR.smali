.class public Lcom/adobe/air/AdobeAIR;
.super Landroid/app/Activity;
.source "AdobeAIR.java"

# interfaces
.implements Lcom/adobe/air/AndroidGcmResultReceiver$Receiver;


# static fields
.field private static final ADOBE_GAME_SHOWCASE:Ljava/lang/String; = "gaming.adobe.com"

.field public static final ADOBE_HOST:Ljava/lang/String; = "www.adobe.com"

.field private static final ANALYTICS_URL:Ljava/lang/String; = "https://www.adobe.com/gamepreview/?game=notification/notificationClicked.html_"

.field public static final CLOUDFRONT_HOST:Ljava/lang/String; = "dh8vjmvwgc27o.cloudfront.net"

.field public static final DYNAMIC_URL_CLOUDFRONT:Ljava/lang/String; = "https://www.adobe.com/airgames2/"

.field public static final GAMESPACE_HOST:Ljava/lang/String; = "gamespace.adobe.com"

.field private static final GOOGLE_PLAY_HOST:Ljava/lang/String; = "play.google.com"

.field private static final MSG_ID:Ljava/lang/String; = "msgId"

.field private static final PLAY_SERVICES_RESOLUTION_REQUEST:I = 0x2328

.field private static final PROPERTY_INITIAL_LAUNCH:Ljava/lang/String; = "initialLaunch"

.field public static RATE_LIMIT:J = 0x0L

.field public static final RESULT_RECEIVER:Ljava/lang/String; = "resultReceiver"

.field private static final STATIC_URL:Ljava/lang/String; = "file:///android_res/raw/startga.html"

.field private static final TAG:Ljava/lang/String; = "Adobe AIR"


# instance fields
.field public DYNAMIC_URL:Ljava/lang/String;

.field private mAuxWebView:Landroid/webkit/WebView;

.field private mCtx:Landroid/content/Context;

.field private mFirstLoad:Z

.field private mHiddenWebView:Landroid/webkit/WebView;

.field private mOffline:Z

.field private mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

.field private mShakeListener:Lcom/adobe/air/ShakeListener;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 370
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/adobe/air/AdobeAIR;->RATE_LIMIT:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 348
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    .line 349
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mShakeListener:Lcom/adobe/air/ShakeListener;

    .line 350
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;

    .line 351
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mHiddenWebView:Landroid/webkit/WebView;

    .line 352
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIR;->mOffline:Z

    .line 353
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIR;->mFirstLoad:Z

    .line 355
    const-string v0, "https://www.adobe.com/airgames/"

    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    .line 372
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    .line 373
    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AdobeAIR;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AdobeAIR;)Z
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/adobe/air/AdobeAIR;->mFirstLoad:Z

    return v0
.end method

.method static synthetic access$102(Lcom/adobe/air/AdobeAIR;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/adobe/air/AdobeAIR;->mFirstLoad:Z

    return p1
.end method

.method static synthetic access$200(Lcom/adobe/air/AdobeAIR;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 45
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$302(Lcom/adobe/air/AdobeAIR;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/adobe/air/AdobeAIR;->mOffline:Z

    return p1
.end method

.method private createWebView()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "/databases/"

    .line 100
    new-instance v0, Lcom/adobe/air/AdobeAIR$2;

    invoke-direct {v0, p0}, Lcom/adobe/air/AdobeAIR$2;-><init>(Lcom/adobe/air/AdobeAIR;)V

    .line 194
    new-instance v1, Landroid/webkit/WebView;

    invoke-direct {v1, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    .line 195
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    .line 196
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 197
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 199
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 201
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 204
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;

    .line 205
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 206
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 207
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 208
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mAuxWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 211
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->mHiddenWebView:Landroid/webkit/WebView;

    .line 212
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mHiddenWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mHiddenWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 214
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mHiddenWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 215
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mHiddenWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/databases/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 217
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mHiddenWebView:Landroid/webkit/WebView;

    new-instance v1, Lcom/adobe/air/AdobeAIR$3;

    invoke-direct {v1, p0}, Lcom/adobe/air/AdobeAIR$3;-><init>(Lcom/adobe/air/AdobeAIR;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 237
    return-void
.end method

.method private isInitialLaunch()Z
    .locals 3

    .prologue
    .line 84
    const-class v0, Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/adobe/air/AdobeAIR;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 85
    const-string v1, "initialLaunch"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private registerForNotifications()V
    .locals 3

    .prologue
    .line 309
    new-instance v0, Lcom/adobe/air/AndroidGcmResultReceiver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1}, Lcom/adobe/air/AndroidGcmResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

    .line 310
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

    invoke-virtual {v0, p0}, Lcom/adobe/air/AndroidGcmResultReceiver;->setReceiver(Lcom/adobe/air/AndroidGcmResultReceiver$Receiver;)V

    .line 312
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    const-class v2, Lcom/adobe/air/AndroidGcmRegistrationService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 313
    const-string v1, "resultReceiver"

    iget-object v2, p0, Lcom/adobe/air/AdobeAIR;->mReceiver:Lcom/adobe/air/AndroidGcmResultReceiver;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 315
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 316
    return-void
.end method

.method private updateSharedPrefForInitialLaunch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 92
    const-class v0, Lcom/adobe/air/AdobeAIR;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/adobe/air/AdobeAIR;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 94
    const-string v1, "initialLaunch"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 95
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 96
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 257
    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 261
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    .line 262
    if-lez v1, :cond_1

    .line 264
    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 267
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    const/4 v0, 0x0

    .line 273
    :goto_0
    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 280
    :goto_1
    return-void

    .line 279
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 52
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 54
    iput-object p0, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    .line 56
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->isInitialLaunch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "https://www.adobe.com/airgames2/"

    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    .line 59
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->updateSharedPrefForInitialLaunch()V

    .line 62
    :cond_0
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->createWebView()V

    .line 65
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/adobe/air/AdobeAIR;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/air/AdobeAIR;->onNewIntent(Landroid/content/Intent;)V

    .line 68
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->registerForNotifications()V

    .line 70
    new-instance v0, Lcom/adobe/air/ShakeListener;

    invoke-direct {v0, p0}, Lcom/adobe/air/ShakeListener;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AdobeAIR;->mShakeListener:Lcom/adobe/air/ShakeListener;

    .line 71
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mShakeListener:Lcom/adobe/air/ShakeListener;

    new-instance v1, Lcom/adobe/air/AdobeAIR$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/AdobeAIR$1;-><init>(Lcom/adobe/air/AdobeAIR;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/ShakeListener;->registerListener(Lcom/adobe/air/ShakeListener$Listener;)V

    .line 80
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 5
    .parameter

    .prologue
    const-string v4, "msgId"

    const-string v2, "gameUrl"

    .line 286
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 288
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_1

    const-string v1, "gameUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    const-string v1, "gameUrl"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 293
    iget-object v2, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    .line 296
    invoke-direct {p0}, Lcom/adobe/air/AdobeAIR;->createWebView()V

    .line 300
    :cond_0
    iget-object v2, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 302
    const-string v1, "msgId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 303
    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->mHiddenWebView:Landroid/webkit/WebView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://www.adobe.com/gamepreview/?game=notification/notificationClicked.html_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "msgId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 305
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 343
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 345
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mShakeListener:Lcom/adobe/air/ShakeListener;

    invoke-virtual {v0}, Lcom/adobe/air/ShakeListener;->pause()V

    .line 346
    return-void
.end method

.method public onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 322
    iget-object p0, p0, Lcom/adobe/air/AdobeAIR;->mCtx:Landroid/content/Context;

    check-cast p0, Landroid/app/Activity;

    const/16 v0, 0x2328

    invoke-static {p1, p0, v0}, Lcom/google/android/gms/common/GooglePlayServicesUtil;->getErrorDialog(ILandroid/app/Activity;I)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 323
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 242
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 243
    iget-boolean v0, p0, Lcom/adobe/air/AdobeAIR;->mOffline:Z

    if-eqz v0, :cond_0

    .line 245
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AdobeAIR;->mOffline:Z

    .line 246
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/adobe/air/AdobeAIR;->DYNAMIC_URL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 248
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 335
    if-eqz p1, :cond_0

    .line 337
    iget-object v0, p0, Lcom/adobe/air/AdobeAIR;->mShakeListener:Lcom/adobe/air/ShakeListener;

    invoke-virtual {v0}, Lcom/adobe/air/ShakeListener;->resume()V

    .line 339
    :cond_0
    return-void
.end method
