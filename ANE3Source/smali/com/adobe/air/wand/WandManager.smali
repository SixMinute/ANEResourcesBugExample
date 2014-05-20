.class public Lcom/adobe/air/wand/WandManager;
.super Ljava/lang/Object;
.source "WandManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/WandManager$1;,
        Lcom/adobe/air/wand/WandManager$TaskListener;,
        Lcom/adobe/air/wand/WandManager$ViewListener;,
        Lcom/adobe/air/wand/WandManager$ConnectionListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WandManager"


# instance fields
.field private mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

.field private mDisplay:Landroid/view/Display;

.field private mHasFocus:Z

.field private mIsDisposed:Z

.field private mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

.field private mTaskManager:Lcom/adobe/air/wand/TaskManager;

.field private mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWandConnection:Lcom/adobe/air/wand/connection/Connection;

.field private mWandView:Lcom/adobe/air/wand/view/WandView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/adobe/air/wand/view/WandView;Lcom/adobe/air/wand/connection/Connection;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object v6, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    .line 204
    iput-object v6, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    .line 205
    iput-object v6, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    .line 207
    iput-object v6, p0, Lcom/adobe/air/wand/WandManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    .line 208
    iput-object v6, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    .line 209
    iput-object v6, p0, Lcom/adobe/air/wand/WandManager;->mVibrator:Landroid/os/Vibrator;

    .line 210
    iput-object v6, p0, Lcom/adobe/air/wand/WandManager;->mDisplay:Landroid/view/Display;

    .line 211
    iput-object v6, p0, Lcom/adobe/air/wand/WandManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 213
    iput-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mIsDisposed:Z

    .line 214
    iput-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mHasFocus:Z

    .line 225
    invoke-static {p3}, Lcom/adobe/air/wand/ConnectionChangeReceiver;->resisterWandConnection(Lcom/adobe/air/wand/connection/Connection;)V

    .line 227
    iput-object p3, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    .line 228
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    new-instance v1, Lcom/adobe/air/wand/WandManager$ConnectionListener;

    invoke-direct {v1, p0, v6}, Lcom/adobe/air/wand/WandManager$ConnectionListener;-><init>(Lcom/adobe/air/wand/WandManager;Lcom/adobe/air/wand/WandManager$1;)V

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/connection/Connection;->registerListener(Lcom/adobe/air/wand/connection/Connection$Listener;)V

    .line 230
    iput-object p2, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    .line 231
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    new-instance v1, Lcom/adobe/air/wand/WandManager$ViewListener;

    invoke-direct {v1, p0, v6}, Lcom/adobe/air/wand/WandManager$ViewListener;-><init>(Lcom/adobe/air/wand/WandManager;Lcom/adobe/air/wand/WandManager$1;)V

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/view/WandView;->registerListener(Lcom/adobe/air/wand/view/WandView$Listener;)V

    .line 243
    new-instance v0, Lcom/adobe/air/wand/message/json/JSONMessageManager;

    invoke-direct {v0}, Lcom/adobe/air/wand/message/json/JSONMessageManager;-><init>()V

    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    .line 245
    invoke-interface {p2}, Lcom/adobe/air/wand/view/WandView;->getTouchSensor()Lcom/adobe/air/wand/view/TouchSensor;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 247
    new-instance v0, Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-direct {v0, p1}, Lcom/adobe/air/wand/motionsensor/Accelerometer;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    .line 251
    if-nez p1, :cond_0

    .line 252
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Cannot find application context while initializing."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_0
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mVibrator:Landroid/os/Vibrator;

    .line 257
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 258
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mDisplay:Landroid/view/Display;

    .line 260
    new-instance v0, Lcom/adobe/air/wand/TaskManager;

    iget-object v1, p0, Lcom/adobe/air/wand/WandManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    iget-object v2, p0, Lcom/adobe/air/wand/WandManager;->mDisplay:Landroid/view/Display;

    iget-object v3, p0, Lcom/adobe/air/wand/WandManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    iget-object v4, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    iget-object v5, p0, Lcom/adobe/air/wand/WandManager;->mVibrator:Landroid/os/Vibrator;

    invoke-direct/range {v0 .. v5}, Lcom/adobe/air/wand/TaskManager;-><init>(Lcom/adobe/air/wand/message/MessageManager;Landroid/view/Display;Lcom/adobe/air/wand/view/TouchSensor;Lcom/adobe/air/wand/motionsensor/Accelerometer;Landroid/os/Vibrator;)V

    iput-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    .line 261
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    new-instance v1, Lcom/adobe/air/wand/WandManager$TaskListener;

    invoke-direct {v1, p0, v6}, Lcom/adobe/air/wand/WandManager$TaskListener;-><init>(Lcom/adobe/air/wand/WandManager;Lcom/adobe/air/wand/WandManager$1;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/TaskManager;->registerListener(Lcom/adobe/air/wand/TaskManager$Listener;)V

    .line 262
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/view/WandView;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/adobe/air/wand/WandManager;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/adobe/air/wand/WandManager;->loadDefaultView()V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/TaskManager;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/adobe/air/wand/WandManager;)Lcom/adobe/air/wand/connection/Connection;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    return-object v0
.end method

.method private loadDefaultView()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 311
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->stop()V

    .line 316
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/TaskManager;->terminateRunningTasks()V

    .line 318
    invoke-direct {p0}, Lcom/adobe/air/wand/WandManager;->setDefaultOrientation()V

    .line 323
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    invoke-interface {v0}, Lcom/adobe/air/wand/view/WandView;->loadDefaultView()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 330
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 328
    throw v0
.end method

.method private setDefaultOrientation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 337
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    sget-object v1, Lcom/adobe/air/wand/view/WandView$ScreenOrientation;->INHERIT:Lcom/adobe/air/wand/view/WandView$ScreenOrientation;

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/view/WandView;->setScreenOrientation(Lcom/adobe/air/wand/view/WandView$ScreenOrientation;)V

    .line 338
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 346
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mIsDisposed:Z

    .line 348
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/TaskManager;->terminateRunningTasks()V

    .line 349
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/TaskManager;->unregisterListener()V

    .line 350
    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mTaskManager:Lcom/adobe/air/wand/TaskManager;

    .line 352
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    invoke-interface {v0}, Lcom/adobe/air/wand/view/WandView;->unregisterListener()V

    .line 353
    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mWandView:Lcom/adobe/air/wand/view/WandView;

    .line 355
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->dispose()V

    .line 356
    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    .line 358
    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mDisplay:Landroid/view/Display;

    .line 360
    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    .line 362
    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 364
    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mVibrator:Landroid/os/Vibrator;

    .line 366
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection;->unregisterListener()V

    .line 367
    iput-object v1, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    .line 369
    invoke-static {}, Lcom/adobe/air/wand/ConnectionChangeReceiver;->unresisterWandConnection()V

    .line 370
    return-void
.end method

.method public focus(Z)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mIsDisposed:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "WandManager has been disposed"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_0
    if-eqz p1, :cond_1

    .line 273
    invoke-direct {p0}, Lcom/adobe/air/wand/WandManager;->setDefaultOrientation()V

    .line 278
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection;->connect()V

    .line 294
    :goto_0
    iput-boolean p1, p0, Lcom/adobe/air/wand/WandManager;->mHasFocus:Z

    .line 295
    return-void

    .line 285
    :cond_1
    invoke-direct {p0}, Lcom/adobe/air/wand/WandManager;->loadDefaultView()V

    .line 291
    iget-object v0, p0, Lcom/adobe/air/wand/WandManager;->mWandConnection:Lcom/adobe/air/wand/connection/Connection;

    invoke-interface {v0}, Lcom/adobe/air/wand/connection/Connection;->disconnect()V

    goto :goto_0
.end method

.method public hasFocus()Z
    .locals 1

    .prologue
    .line 299
    iget-boolean v0, p0, Lcom/adobe/air/wand/WandManager;->mHasFocus:Z

    return v0
.end method
