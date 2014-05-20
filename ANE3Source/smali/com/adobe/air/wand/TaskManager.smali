.class public Lcom/adobe/air/wand/TaskManager;
.super Ljava/lang/Object;
.source "TaskManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/wand/TaskManager$3;,
        Lcom/adobe/air/wand/TaskManager$Listener;,
        Lcom/adobe/air/wand/TaskManager$MessageTitle;
    }
.end annotation


# static fields
.field protected static final GESTURE_PHASE_ALL:Ljava/lang/String; = "ALL"

.field protected static final GESTURE_PHASE_BEGIN:Ljava/lang/String; = "BEGIN"

.field protected static final GESTURE_PHASE_END:Ljava/lang/String; = "END"

.field protected static final GESTURE_PHASE_UPDATE:Ljava/lang/String; = "UPDATE"

.field protected static final GESTURE_TYPE_PAN:Ljava/lang/String; = "GESTURE_PAN"

.field protected static final GESTURE_TYPE_ROTATE:Ljava/lang/String; = "GESTURE_ROTATE"

.field protected static final GESTURE_TYPE_SWIPE:Ljava/lang/String; = "GESTURE_SWIPE"

.field protected static final GESTURE_TYPE_TWO_FINGER_TAP:Ljava/lang/String; = "GESTURE_TWO_FINGER_TAP"

.field protected static final GESTURE_TYPE_ZOOM:Ljava/lang/String; = "GESTURE_ZOOM"

.field private static final LOG_TAG:Ljava/lang/String; = "TaskManager"

.field protected static final MOTION_SENSOR_MINIMUM_INTERVAL:I = 0x10

.field protected static final NAME_NOTIFICATION_ACCELEROMETER:Ljava/lang/String; = "accelerometer"

.field protected static final NAME_NOTIFICATION_ACCELEROMETER_DATA:Ljava/lang/String; = "acc"

.field protected static final NAME_NOTIFICATION_DURATION:Ljava/lang/String; = "duration"

.field protected static final NAME_NOTIFICATION_INTERVAL:Ljava/lang/String; = "interval"

.field protected static final NAME_NOTIFICATION_IS_PRIMARY_TOUCH_POINT:Ljava/lang/String; = "isPrimaryTouchPoint"

.field protected static final NAME_NOTIFICATION_IS_TRANSFORM:Ljava/lang/String; = "isTransform"

.field protected static final NAME_NOTIFICATION_LOCAL_X:Ljava/lang/String; = "localX"

.field protected static final NAME_NOTIFICATION_LOCAL_Y:Ljava/lang/String; = "localY"

.field protected static final NAME_NOTIFICATION_OFFSET_X:Ljava/lang/String; = "offsetX"

.field protected static final NAME_NOTIFICATION_OFFSET_Y:Ljava/lang/String; = "offsetY"

.field protected static final NAME_NOTIFICATION_PHASE:Ljava/lang/String; = "phase"

.field protected static final NAME_NOTIFICATION_PRESSURE:Ljava/lang/String; = "pressure"

.field protected static final NAME_NOTIFICATION_ROTATION:Ljava/lang/String; = "rotation"

.field protected static final NAME_NOTIFICATION_SCALE_X:Ljava/lang/String; = "scaleX"

.field protected static final NAME_NOTIFICATION_SCALE_Y:Ljava/lang/String; = "scaleY"

.field protected static final NAME_NOTIFICATION_SCREEN_DIMENSIONS:Ljava/lang/String; = "screenDimensions"

.field protected static final NAME_NOTIFICATION_SIZE_X:Ljava/lang/String; = "sizeX"

.field protected static final NAME_NOTIFICATION_SIZE_Y:Ljava/lang/String; = "sizeY"

.field protected static final NAME_NOTIFICATION_START:Ljava/lang/String; = "start"

.field protected static final NAME_NOTIFICATION_TIMESTAMP:Ljava/lang/String; = "timestamp"

.field protected static final NAME_NOTIFICATION_TOUCH_POINT_ID:Ljava/lang/String; = "touchPointID"

.field protected static final NAME_NOTIFICATION_TYPE:Ljava/lang/String; = "type"

.field protected static final NAME_NOTIFICATION_VIBRATOR:Ljava/lang/String; = "vibrator"

.field protected static final SCREEN_DIMENSIONS_HEIGHT:Ljava/lang/String; = "height"

.field protected static final SCREEN_DIMENSIONS_WIDTH:Ljava/lang/String; = "width"

.field protected static final TOUCH_TYPE_BEGIN:Ljava/lang/String; = "TOUCH_BEGIN"

.field protected static final TOUCH_TYPE_END:Ljava/lang/String; = "TOUCH_END"

.field protected static final TOUCH_TYPE_MOVE:Ljava/lang/String; = "TOUCH_MOVE"


# instance fields
.field private final mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

.field private final mDisplay:Landroid/view/Display;

.field private mListener:Lcom/adobe/air/wand/TaskManager$Listener;

.field private final mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

.field private final mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

.field private final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Lcom/adobe/air/wand/message/MessageManager;Landroid/view/Display;Lcom/adobe/air/wand/view/TouchSensor;Lcom/adobe/air/wand/motionsensor/Accelerometer;Landroid/os/Vibrator;)V
    .locals 2
    .parameter
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
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    .line 162
    if-nez p1, :cond_0

    .line 164
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid MessageManager"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_0
    iput-object p1, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    .line 168
    if-nez p4, :cond_1

    .line 170
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Accelerometer"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_1
    iput-object p4, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    .line 175
    iput-object p5, p0, Lcom/adobe/air/wand/TaskManager;->mVibrator:Landroid/os/Vibrator;

    .line 177
    if-nez p2, :cond_2

    .line 179
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid Display"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_2
    iput-object p2, p0, Lcom/adobe/air/wand/TaskManager;->mDisplay:Landroid/view/Display;

    .line 183
    if-nez p3, :cond_3

    .line 185
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid TouchSensor"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_3
    iput-object p3, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    .line 189
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    new-instance v1, Lcom/adobe/air/wand/TaskManager$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/wand/TaskManager$1;-><init>(Lcom/adobe/air/wand/TaskManager;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/view/TouchSensor;->setListener(Lcom/adobe/air/wand/view/TouchSensor$Listener;)V

    .line 204
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    new-instance v1, Lcom/adobe/air/wand/TaskManager$2;

    invoke-direct {v1, p0}, Lcom/adobe/air/wand/TaskManager$2;-><init>(Lcom/adobe/air/wand/TaskManager;)V

    invoke-virtual {v0, v1}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->setListener(Lcom/adobe/air/wand/motionsensor/MotionSensor$Listener;)V

    .line 212
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/wand/TaskManager;Lcom/adobe/air/TouchEventData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->sendTouchEventData(Lcom/adobe/air/TouchEventData;)V

    return-void
.end method

.method static synthetic access$100(Lcom/adobe/air/wand/TaskManager;Lcom/adobe/air/wand/view/GestureEventData;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->sendGestureEventData(Lcom/adobe/air/wand/view/GestureEventData;)V

    return-void
.end method

.method static synthetic access$200(Lcom/adobe/air/wand/TaskManager;[FJ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/wand/TaskManager;->sendAccelerometerData([FJ)V

    return-void
.end method

.method private getGesturePhases(I)[Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 220
    const-string v1, "BEGIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 225
    const-string v1, "UPDATE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 230
    const-string v1, "END"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_2
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_3

    .line 235
    const-string v1, "ALL"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_3
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private getTouchTypes(I)[Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 295
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_0

    .line 299
    const-string v1, "TOUCH_BEGIN"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 302
    :cond_0
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_1

    .line 304
    const-string v1, "TOUCH_MOVE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_1
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_2

    .line 309
    const-string v1, "TOUCH_END"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_2
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private handleDrawImageRequest(Lcom/adobe/air/wand/message/Request;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, -0x1

    .line 598
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Request;->getData()Lcom/adobe/air/wand/message/Request$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Request$Data;->getArguments()Lcom/adobe/air/wand/message/MessageDataArray;

    move-result-object v0

    .line 601
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/message/MessageDataArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 603
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 606
    array-length v1, v0

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    aget-byte v1, v0, v1

    const/16 v2, -0x28

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget-byte v1, v0, v1

    if-eq v1, v3, :cond_2

    .line 611
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unsupported image format"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :catch_0
    move-exception v0

    .line 630
    :try_start_1
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/adobe/air/wand/message/MessageManager;->createSerializedErrorResponse(Lcom/adobe/air/wand/message/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 632
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v1, v0}, Lcom/adobe/air/wand/TaskManager$Listener;->sendConnectionMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 639
    :cond_1
    :goto_0
    return-void

    .line 614
    :cond_2
    const/4 v1, 0x0

    :try_start_2
    array-length v2, v0

    invoke-static {v0, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 616
    if-nez v0, :cond_3

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Unable to decode the image"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 621
    :cond_3
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v1, v0}, Lcom/adobe/air/wand/TaskManager$Listener;->drawImage(Landroid/graphics/Bitmap;)V

    .line 623
    :cond_4
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/wand/message/MessageManager;->createSerializedSuccessResponse(Lcom/adobe/air/wand/message/Request;)Ljava/lang/String;

    move-result-object v0

    .line 625
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v1, v0}, Lcom/adobe/air/wand/TaskManager$Listener;->sendConnectionMessage(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 634
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private handleHardwareSpecsRequest(Lcom/adobe/air/wand/message/Request;)V
    .locals 7
    .parameter

    .prologue
    .line 541
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/MessageManager;->createDataObject()Lcom/adobe/air/wand/message/MessageDataObject;

    move-result-object v0

    .line 545
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v1

    .line 548
    :goto_0
    iget-object v2, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v2}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->available()Z

    move-result v2

    .line 550
    iget-object v3, p0, Lcom/adobe/air/wand/TaskManager;->mDisplay:Landroid/view/Display;

    .line 552
    iget-object v4, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v4}, Lcom/adobe/air/wand/message/MessageManager;->createDataObject()Lcom/adobe/air/wand/message/MessageDataObject;

    move-result-object v4

    .line 553
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v5

    .line 554
    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    move-result v3

    .line 556
    const-string v6, "width"

    invoke-interface {v4, v6, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;I)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 557
    const-string v5, "height"

    invoke-interface {v4, v5, v3}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;I)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 559
    const-string v3, "screenDimensions"

    invoke-interface {v0, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataObject;)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 560
    const-string v3, "accelerometer"

    invoke-interface {v0, v3, v2}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Z)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 561
    const-string v2, "vibrator"

    invoke-interface {v0, v2, v1}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Z)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 563
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    sget-object v2, Lcom/adobe/air/wand/message/Response$Status;->SUCCESS:Lcom/adobe/air/wand/message/Response$Status;

    invoke-virtual {v1, p1, v2, v0}, Lcom/adobe/air/wand/message/MessageManager;->createSerializedResponse(Lcom/adobe/air/wand/message/Request;Lcom/adobe/air/wand/message/Response$Status;Lcom/adobe/air/wand/message/MessageDataObject;)Ljava/lang/String;

    move-result-object v0

    .line 565
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v1, v0}, Lcom/adobe/air/wand/TaskManager$Listener;->sendConnectionMessage(Ljava/lang/String;)V

    .line 579
    :cond_0
    :goto_1
    return-void

    .line 546
    :cond_1
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mVibrator:Landroid/os/Vibrator;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 567
    :catch_0
    move-exception v0

    .line 570
    :try_start_1
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lcom/adobe/air/wand/message/MessageManager;->createSerializedErrorResponse(Lcom/adobe/air/wand/message/Request;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 572
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v1, v0}, Lcom/adobe/air/wand/TaskManager$Listener;->sendConnectionMessage(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 574
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private handleRemoteAccelerometerUpdateNotification(Lcom/adobe/air/wand/message/Notification;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x10

    .line 477
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Notification;->getData()Lcom/adobe/air/wand/message/Notification$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Notification$Data;->getNotification()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/MessageDataObject;

    .line 479
    const-string v1, "start"

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/message/MessageDataObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 481
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v1}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->active()Z

    move-result v1

    if-nez v1, :cond_1

    .line 483
    const-string v1, "interval"

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/message/MessageDataObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 484
    if-ge v0, v2, :cond_0

    move v0, v2

    .line 486
    :cond_0
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v1, v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->start(I)V

    .line 498
    :cond_1
    :goto_0
    return-void

    .line 491
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->active()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 494
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleRemoteGestureNotification(Lcom/adobe/air/wand/message/Notification;)V
    .locals 2
    .parameter

    .prologue
    .line 522
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Notification;->getData()Lcom/adobe/air/wand/message/Notification$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Notification$Data;->getNotification()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/MessageDataObject;

    .line 524
    const-string v1, "start"

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/message/MessageDataObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 526
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->activeGestureListening()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->startGestureEventListening()V

    .line 536
    :cond_0
    :goto_0
    return-void

    .line 530
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->activeGestureListening()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->stopGestureEventListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 532
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleRemoteNotification(Lcom/adobe/air/wand/message/Notification;)V
    .locals 2
    .parameter

    .prologue
    .line 434
    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Notification;->getHeader()Lcom/adobe/air/wand/message/Notification$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Notification$Header;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 436
    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->VIBRATE:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v1}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->handleRemoteVibrateNotification(Lcom/adobe/air/wand/message/Notification;)V

    .line 452
    :cond_0
    :goto_0
    return-void

    .line 440
    :cond_1
    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->ACCELEROMETER_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v1}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 442
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->handleRemoteAccelerometerUpdateNotification(Lcom/adobe/air/wand/message/Notification;)V

    goto :goto_0

    .line 444
    :cond_2
    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->TOUCH_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v1}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 446
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->handleRemoteTouchNotification(Lcom/adobe/air/wand/message/Notification;)V

    goto :goto_0

    .line 448
    :cond_3
    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->GESTURE_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v1}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->handleRemoteGestureNotification(Lcom/adobe/air/wand/message/Notification;)V

    goto :goto_0
.end method

.method private handleRemoteRequest(Lcom/adobe/air/wand/message/Request;)V
    .locals 2
    .parameter

    .prologue
    .line 413
    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Request;->getHeader()Lcom/adobe/air/wand/message/Request$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Request$Header;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 415
    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->DRAW_IMAGE:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v1}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 417
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->handleDrawImageRequest(Lcom/adobe/air/wand/message/Request;)V

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    sget-object v1, Lcom/adobe/air/wand/TaskManager$MessageTitle;->HARDWARE_SPECIFICATIONS:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v1}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    invoke-direct {p0, p1}, Lcom/adobe/air/wand/TaskManager;->handleHardwareSpecsRequest(Lcom/adobe/air/wand/message/Request;)V

    goto :goto_0
.end method

.method private handleRemoteResponse(Lcom/adobe/air/wand/message/Response;)V
    .locals 1
    .parameter

    .prologue
    .line 428
    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Response;->getHeader()Lcom/adobe/air/wand/message/Response$Header;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Response$Header;->getTitle()Ljava/lang/String;

    .line 431
    return-void
.end method

.method private handleRemoteTouchNotification(Lcom/adobe/air/wand/message/Notification;)V
    .locals 2
    .parameter

    .prologue
    .line 503
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Notification;->getData()Lcom/adobe/air/wand/message/Notification$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Notification$Data;->getNotification()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/MessageDataObject;

    .line 505
    const-string v1, "start"

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/message/MessageDataObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->activeTouchListening()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->startTouchEventListening()V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->activeTouchListening()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->stopTouchEventListening()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 513
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private handleRemoteVibrateNotification(Lcom/adobe/air/wand/message/Notification;)V
    .locals 3
    .parameter

    .prologue
    .line 583
    :try_start_0
    invoke-virtual {p1}, Lcom/adobe/air/wand/message/Notification;->getData()Lcom/adobe/air/wand/message/Notification$Data;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Notification$Data;->getNotification()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/wand/message/MessageDataObject;

    .line 586
    const-string v1, "duration"

    invoke-interface {v0, v1}, Lcom/adobe/air/wand/message/MessageDataObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 588
    iget-object v2, p0, Lcom/adobe/air/wand/TaskManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/adobe/air/wand/TaskManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2, v0, v1}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 594
    :cond_0
    :goto_0
    return-void

    .line 590
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendAccelerometerData([FJ)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 350
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/MessageManager;->createDataObject()Lcom/adobe/air/wand/message/MessageDataObject;

    move-result-object v0

    .line 352
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    .line 354
    iget-object v3, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v3}, Lcom/adobe/air/wand/message/MessageManager;->createDataArray()Lcom/adobe/air/wand/message/MessageDataArray;

    move-result-object v3

    .line 355
    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, p1, v5

    float-to-double v5, v5

    invoke-interface {v3, v4, v5, v6}, Lcom/adobe/air/wand/message/MessageDataArray;->put(ID)Lcom/adobe/air/wand/message/MessageDataArray;

    .line 356
    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, p1, v5

    float-to-double v5, v5

    invoke-interface {v3, v4, v5, v6}, Lcom/adobe/air/wand/message/MessageDataArray;->put(ID)Lcom/adobe/air/wand/message/MessageDataArray;

    .line 357
    const/4 v4, 0x2

    const/4 v5, 0x2

    aget v5, p1, v5

    float-to-double v5, v5

    invoke-interface {v3, v4, v5, v6}, Lcom/adobe/air/wand/message/MessageDataArray;->put(ID)Lcom/adobe/air/wand/message/MessageDataArray;

    .line 358
    const/4 v4, 0x3

    const-wide/32 v5, 0xf4240

    div-long v5, p2, v5

    add-long/2addr v1, v5

    invoke-interface {v3, v4, v1, v2}, Lcom/adobe/air/wand/message/MessageDataArray;->put(IJ)Lcom/adobe/air/wand/message/MessageDataArray;

    .line 360
    const-string v1, "acc"

    invoke-interface {v0, v1, v3}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataArray;)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 362
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    sget-object v2, Lcom/adobe/air/wand/TaskManager$MessageTitle;->ACCELEROMETER_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v2}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/adobe/air/wand/message/MessageManager;->createSerializedNotification(Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataObject;)Ljava/lang/String;

    move-result-object v0

    .line 364
    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v1, v0}, Lcom/adobe/air/wand/TaskManager$Listener;->sendConnectionMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :cond_0
    :goto_0
    return-void

    .line 366
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private sendGestureEventData(Lcom/adobe/air/wand/view/GestureEventData;)V
    .locals 6
    .parameter

    .prologue
    const-string v0, "type"

    .line 243
    iget v0, p1, Lcom/adobe/air/wand/view/GestureEventData;->mPhase:I

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->getGesturePhases(I)[Ljava/lang/String;

    move-result-object v0

    .line 245
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 249
    :try_start_0
    iget-object v2, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v2}, Lcom/adobe/air/wand/message/MessageManager;->createDataObject()Lcom/adobe/air/wand/message/MessageDataObject;

    move-result-object v2

    .line 251
    const-string v3, "phase"

    aget-object v4, v0, v1

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 253
    iget v3, p1, Lcom/adobe/air/wand/view/GestureEventData;->mType:I

    packed-switch v3, :pswitch_data_0

    .line 271
    :goto_1
    const-string v3, "isTransform"

    iget-boolean v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mIsTransform:Z

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Z)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 272
    const-string v3, "localX"

    iget v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mXCoord:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 273
    const-string v3, "localY"

    iget v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mYCoord:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 274
    const-string v3, "scaleX"

    iget v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mScaleX:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 275
    const-string v3, "scaleY"

    iget v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mScaleY:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 276
    const-string v3, "rotation"

    iget v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mRotation:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 277
    const-string v3, "offsetX"

    iget v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mOffsetX:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 278
    const-string v3, "offsetY"

    iget v4, p1, Lcom/adobe/air/wand/view/GestureEventData;->mOffsetY:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 279
    const-string v3, "timestamp"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;J)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 281
    iget-object v3, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    sget-object v4, Lcom/adobe/air/wand/TaskManager$MessageTitle;->GESTURE_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v4}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/adobe/air/wand/message/MessageManager;->createSerializedNotification(Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataObject;)Ljava/lang/String;

    move-result-object v2

    .line 283
    iget-object v3, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v3, v2}, Lcom/adobe/air/wand/TaskManager$Listener;->sendConnectionMessage(Ljava/lang/String;)V

    .line 245
    :cond_0
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    :pswitch_0
    const-string v3, "type"

    const-string v4, "GESTURE_PAN"

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;

    goto :goto_1

    .line 285
    :catch_0
    move-exception v2

    goto :goto_2

    .line 258
    :pswitch_1
    const-string v3, "type"

    const-string v4, "GESTURE_ROTATE"

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;

    goto :goto_1

    .line 261
    :pswitch_2
    const-string v3, "type"

    const-string v4, "GESTURE_SWIPE"

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;

    goto :goto_1

    .line 264
    :pswitch_3
    const-string v3, "type"

    const-string v4, "GESTURE_TWO_FINGER_TAP"

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;

    goto/16 :goto_1

    .line 267
    :pswitch_4
    const-string v3, "type"

    const-string v4, "GESTURE_ZOOM"

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 291
    :cond_1
    return-void

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private sendTouchEventData(Lcom/adobe/air/TouchEventData;)V
    .locals 6
    .parameter

    .prologue
    .line 317
    iget v0, p1, Lcom/adobe/air/TouchEventData;->mTouchEventType:I

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->getTouchTypes(I)[Ljava/lang/String;

    move-result-object v0

    .line 319
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 323
    :try_start_0
    iget-object v2, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v2}, Lcom/adobe/air/wand/message/MessageManager;->createDataObject()Lcom/adobe/air/wand/message/MessageDataObject;

    move-result-object v2

    .line 325
    const-string v3, "type"

    aget-object v4, v0, v1

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 326
    const-string v3, "isPrimaryTouchPoint"

    iget-boolean v4, p1, Lcom/adobe/air/TouchEventData;->mIsPrimaryPoint:Z

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;Z)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 327
    const-string v3, "localX"

    iget v4, p1, Lcom/adobe/air/TouchEventData;->mXCoord:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 328
    const-string v3, "localY"

    iget v4, p1, Lcom/adobe/air/TouchEventData;->mYCoord:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 329
    const-string v3, "pressure"

    iget v4, p1, Lcom/adobe/air/TouchEventData;->mPressure:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 330
    const-string v3, "sizeX"

    iget v4, p1, Lcom/adobe/air/TouchEventData;->mContactX:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 331
    const-string v3, "sizeY"

    iget v4, p1, Lcom/adobe/air/TouchEventData;->mContactY:F

    float-to-double v4, v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;D)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 332
    const-string v3, "touchPointID"

    iget v4, p1, Lcom/adobe/air/TouchEventData;->mPointerID:I

    invoke-interface {v2, v3, v4}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;I)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 333
    const-string v3, "timestamp"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-interface {v2, v3, v4, v5}, Lcom/adobe/air/wand/message/MessageDataObject;->put(Ljava/lang/String;J)Lcom/adobe/air/wand/message/MessageDataObject;

    .line 335
    iget-object v3, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    sget-object v4, Lcom/adobe/air/wand/TaskManager$MessageTitle;->TOUCH_EVENT:Lcom/adobe/air/wand/TaskManager$MessageTitle;

    invoke-virtual {v4}, Lcom/adobe/air/wand/TaskManager$MessageTitle;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/adobe/air/wand/message/MessageManager;->createSerializedNotification(Ljava/lang/String;Lcom/adobe/air/wand/message/MessageDataObject;)Ljava/lang/String;

    move-result-object v2

    .line 337
    iget-object v3, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    invoke-interface {v3, v2}, Lcom/adobe/air/wand/TaskManager$Listener;->sendConnectionMessage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_1
    return-void

    .line 339
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public handleRemoteMessage(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mMessageManager:Lcom/adobe/air/wand/message/MessageManager;

    invoke-virtual {v0, p1}, Lcom/adobe/air/wand/message/MessageManager;->deserializeWandMessage(Ljava/lang/String;)Lcom/adobe/air/wand/message/Message;

    move-result-object v0

    .line 391
    sget-object v1, Lcom/adobe/air/wand/TaskManager$3;->$SwitchMap$com$adobe$air$wand$message$Message$Type:[I

    invoke-virtual {v0}, Lcom/adobe/air/wand/message/Message;->getHeader()Lcom/adobe/air/wand/message/Message$Header;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/air/wand/message/Message$Header;->getType()Lcom/adobe/air/wand/message/Message$Type;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/air/wand/message/Message$Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 409
    :goto_0
    return-void

    .line 394
    :pswitch_0
    check-cast v0, Lcom/adobe/air/wand/message/Request;

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->handleRemoteRequest(Lcom/adobe/air/wand/message/Request;)V

    goto :goto_0

    .line 406
    :catch_0
    move-exception v0

    goto :goto_0

    .line 398
    :pswitch_1
    check-cast v0, Lcom/adobe/air/wand/message/Response;

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->handleRemoteResponse(Lcom/adobe/air/wand/message/Response;)V

    goto :goto_0

    .line 402
    :pswitch_2
    check-cast v0, Lcom/adobe/air/wand/message/Notification;

    invoke-direct {p0, v0}, Lcom/adobe/air/wand/TaskManager;->handleRemoteNotification(Lcom/adobe/air/wand/message/Notification;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 391
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public registerListener(Lcom/adobe/air/wand/TaskManager$Listener;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 374
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Invalid listener"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/Exception;

    const-string v1, "A listener is already registered"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 378
    :cond_1
    iput-object p1, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    .line 379
    return-void
.end method

.method terminateRunningTasks()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->active()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mAccelerometer:Lcom/adobe/air/wand/motionsensor/Accelerometer;

    invoke-virtual {v0}, Lcom/adobe/air/wand/motionsensor/Accelerometer;->stop()V

    .line 461
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->activeTouchListening()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->stopTouchEventListening()V

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->activeGestureListening()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 468
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mTouchSensor:Lcom/adobe/air/wand/view/TouchSensor;

    invoke-virtual {v0}, Lcom/adobe/air/wand/view/TouchSensor;->stopGestureEventListening()V

    .line 471
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mVibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 472
    :cond_3
    return-void
.end method

.method public unregisterListener()V
    .locals 1

    .prologue
    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/wand/TaskManager;->mListener:Lcom/adobe/air/wand/TaskManager$Listener;

    .line 384
    return-void
.end method
