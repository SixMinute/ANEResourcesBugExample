.class public Lcom/adobe/air/AndroidCamera;
.super Ljava/lang/Object;
.source "AndroidCamera.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;
    }
.end annotation


# static fields
.field private static final CAMERA_POSITION_UNKNOWN:I = -0x1

.field private static final LOG_TAG:Ljava/lang/String; = "AndroidCamera"

.field private static sAreMultipleCamerasSupportedInitialized:Z

.field private static sAreMultipleCamerasSupportedOnDevice:Z

.field private static sCameraInfoClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static sMIDGetCameraInfo:Ljava/lang/reflect/Method;

.field private static sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;

.field private static sMIDOpen:Ljava/lang/reflect/Method;

.field private static sMIDOpenWithCameraID:Ljava/lang/reflect/Method;


# instance fields
.field private mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

.field private mBuffer1:[B

.field private mBuffer2:[B

.field private mCallbackBuffer:[B

.field private mCallbacksRegistered:Z

.field private mCamera:Landroid/hardware/Camera;

.field private mCameraId:I

.field private mCapturing:Z

.field private mClientId:J

.field private mInitialized:Z

.field private mPreviewSurfaceValid:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 98
    sput-object v0, Lcom/adobe/air/AndroidCamera;->sCameraInfoClass:Ljava/lang/Class;

    .line 99
    sput-object v0, Lcom/adobe/air/AndroidCamera;->sMIDOpen:Ljava/lang/reflect/Method;

    .line 100
    sput-object v0, Lcom/adobe/air/AndroidCamera;->sMIDOpenWithCameraID:Ljava/lang/reflect/Method;

    .line 101
    sput-object v0, Lcom/adobe/air/AndroidCamera;->sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;

    .line 102
    sput-object v0, Lcom/adobe/air/AndroidCamera;->sMIDGetCameraInfo:Ljava/lang/reflect/Method;

    .line 103
    sput-boolean v1, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    .line 104
    sput-boolean v1, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedInitialized:Z

    return-void
.end method

.method public constructor <init>(J)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/AndroidCamera;->mClientId:J

    .line 80
    iput v3, p0, Lcom/adobe/air/AndroidCamera;->mCameraId:I

    .line 81
    iput-boolean v3, p0, Lcom/adobe/air/AndroidCamera;->mInitialized:Z

    .line 82
    iput-boolean v3, p0, Lcom/adobe/air/AndroidCamera;->mCallbacksRegistered:Z

    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adobe/air/AndroidCamera;->mPreviewSurfaceValid:Z

    .line 84
    iput-boolean v3, p0, Lcom/adobe/air/AndroidCamera;->mCapturing:Z

    .line 85
    iput-object v2, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    .line 86
    iput-object v2, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    .line 87
    iput-object v2, p0, Lcom/adobe/air/AndroidCamera;->mBuffer1:[B

    .line 88
    iput-object v2, p0, Lcom/adobe/air/AndroidCamera;->mBuffer2:[B

    .line 112
    iput-wide p1, p0, Lcom/adobe/air/AndroidCamera;->mClientId:J

    .line 114
    invoke-static {}, Lcom/adobe/air/AndroidCamera;->areMultipleCamerasSupportedOnDevice()Z

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/adobe/air/AndroidCamera;)J
    .locals 2
    .parameter

    .prologue
    .line 73
    iget-wide v0, p0, Lcom/adobe/air/AndroidCamera;->mClientId:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidCamera;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/adobe/air/AndroidCamera;->mCallbacksRegistered:Z

    return v0
.end method

.method static synthetic access$200(Lcom/adobe/air/AndroidCamera;J[B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/adobe/air/AndroidCamera;->nativeOnFrameCaptured(J[B)V

    return-void
.end method

.method static synthetic access$300(Lcom/adobe/air/AndroidCamera;)[B
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    return-object v0
.end method

.method static synthetic access$302(Lcom/adobe/air/AndroidCamera;[B)[B
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-object p1, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    return-object p1
.end method

.method static synthetic access$400(Lcom/adobe/air/AndroidCamera;)[B
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mBuffer1:[B

    return-object v0
.end method

.method static synthetic access$500(Lcom/adobe/air/AndroidCamera;)[B
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mBuffer2:[B

    return-object v0
.end method

.method static synthetic access$600(Lcom/adobe/air/AndroidCamera;)Landroid/hardware/Camera;
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$700(Lcom/adobe/air/AndroidCamera;)Z
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/adobe/air/AndroidCamera;->mPreviewSurfaceValid:Z

    return v0
.end method

.method static synthetic access$702(Lcom/adobe/air/AndroidCamera;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    iput-boolean p1, p0, Lcom/adobe/air/AndroidCamera;->mPreviewSurfaceValid:Z

    return p1
.end method

.method static synthetic access$800(Lcom/adobe/air/AndroidCamera;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidCamera;->nativeOnCanOpenCamera(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/adobe/air/AndroidCamera;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/adobe/air/AndroidCamera;->nativeOnShouldCloseCamera(J)V

    return-void
.end method

.method public static areMultipleCamerasSupportedOnDevice()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-class v0, Landroid/hardware/Camera;

    .line 121
    sget-boolean v0, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedInitialized:Z

    if-eqz v0, :cond_0

    .line 122
    sget-boolean v0, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    .line 154
    :goto_0
    return v0

    .line 124
    :cond_0
    sput-boolean v6, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedInitialized:Z

    .line 128
    :try_start_0
    const-class v0, Landroid/hardware/Camera;

    const-string v1, "open"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AndroidCamera;->sMIDOpenWithCameraID:Ljava/lang/reflect/Method;

    .line 131
    const-class v1, Landroid/hardware/Camera;

    const-string v2, "getNumberOfCameras"

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AndroidCamera;->sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :try_start_1
    const-string v0, "android.hardware.Camera$CameraInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AndroidCamera;->sCameraInfoClass:Ljava/lang/Class;

    .line 141
    const-class v0, Landroid/hardware/Camera;

    const-string v1, "getCameraInfo"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/adobe/air/AndroidCamera;->sCameraInfoClass:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/AndroidCamera;->sMIDGetCameraInfo:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 148
    sget-object v0, Lcom/adobe/air/AndroidCamera;->sMIDOpenWithCameraID:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/air/AndroidCamera;->sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/adobe/air/AndroidCamera;->sMIDGetCameraInfo:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 150
    sput-boolean v6, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    .line 154
    :cond_1
    sget-boolean v0, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    move v0, v5

    .line 135
    goto :goto_0

    .line 143
    :catch_1
    move-exception v0

    move v0, v5

    .line 145
    goto :goto_0
.end method

.method public static getNumberOfCameras()I
    .locals 3

    .prologue
    .line 289
    invoke-static {}, Lcom/adobe/air/AndroidCamera;->areMultipleCamerasSupportedOnDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    :try_start_0
    sget-object v1, Lcom/adobe/air/AndroidCamera;->sMIDGetNumberOfCameras:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 297
    :goto_0
    return v0

    .line 293
    :catch_0
    move-exception v0

    .line 297
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private native nativeOnCanOpenCamera(J)V
.end method

.method private native nativeOnFrameCaptured(J[B)V
.end method

.method private native nativeOnShouldCloseCamera(J)V
.end method


# virtual methods
.method public autoFocus()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 436
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/adobe/air/AndroidCamera;->mCapturing:Z

    if-nez v0, :cond_1

    :cond_0
    move v0, v2

    .line 460
    :goto_0
    return v0

    .line 443
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 444
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getFocusMode()Ljava/lang/String;

    move-result-object v0

    .line 447
    const-string v1, "fixed"

    if-eq v0, v1, :cond_2

    const-string v1, "infinity"

    if-eq v0, v1, :cond_2

    .line 449
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->autoFocus(Landroid/hardware/Camera$AutoFocusCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    const/4 v0, 0x1

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    move v0, v2

    .line 457
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    .line 551
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 553
    invoke-virtual {p0}, Lcom/adobe/air/AndroidCamera;->stopCapture()V

    .line 554
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 555
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    .line 557
    :cond_0
    return-void
.end method

.method public getCamera()Landroid/hardware/Camera;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method public getCameraPosition()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 242
    const/4 v0, -0x1

    .line 244
    sget-boolean v1, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    if-eqz v1, :cond_0

    .line 249
    sget-object v1, Lcom/adobe/air/AndroidCamera;->sCameraInfoClass:Ljava/lang/Class;

    if-eqz v1, :cond_2

    .line 251
    :try_start_0
    sget-object v1, Lcom/adobe/air/AndroidCamera;->sCameraInfoClass:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 260
    :goto_0
    :try_start_1
    sget-object v2, Lcom/adobe/air/AndroidCamera;->sMIDGetCameraInfo:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p0, Lcom/adobe/air/AndroidCamera;->mCameraId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 266
    if-eqz v1, :cond_1

    .line 268
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "facing"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .line 276
    :goto_1
    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result v0

    .line 282
    :cond_0
    :goto_2
    return v0

    .line 277
    :catch_0
    move-exception v1

    goto :goto_2

    .line 269
    :catch_1
    move-exception v1

    goto :goto_2

    .line 261
    :catch_2
    move-exception v1

    goto :goto_2

    .line 252
    :catch_3
    move-exception v1

    goto :goto_2

    :cond_1
    move-object v2, v7

    goto :goto_1

    :cond_2
    move-object v1, v7

    goto :goto_0
.end method

.method public getCaptureFormat()I
    .locals 1

    .prologue
    .line 386
    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 390
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 396
    :goto_0
    return v0

    .line 392
    :catch_0
    move-exception v0

    .line 394
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCaptureHeight()I
    .locals 1

    .prologue
    .line 370
    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 375
    iget v0, v0, Landroid/hardware/Camera$Size;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 381
    :goto_0
    return v0

    .line 377
    :catch_0
    move-exception v0

    .line 379
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCaptureWidth()I
    .locals 1

    .prologue
    .line 354
    .line 357
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 358
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 359
    iget v0, v0, Landroid/hardware/Camera$Size;->width:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :goto_0
    return v0

    .line 361
    :catch_0
    move-exception v0

    .line 363
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSupportedFormats()[I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 304
    new-array v0, v3, [I

    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 308
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFormats()Ljava/util/List;

    move-result-object v1

    .line 309
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    .line 311
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 314
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    .line 317
    :catch_0
    move-exception v1

    .line 322
    :cond_0
    return-object v0
.end method

.method public getSupportedFps()[I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 218
    new-array v0, v3, [I

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v1

    .line 223
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v0, v2, [I

    .line 225
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 227
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aput v4, v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 235
    :cond_0
    return-object v0
.end method

.method public getSupportedVideoSizes()[I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 329
    new-array v0, v3, [I

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 335
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    new-array v0, v2, [I

    .line 337
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/Camera$Size;

    .line 339
    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Landroid/hardware/Camera$Size;->width:I

    aput v4, v0, v2

    .line 340
    add-int/lit8 v2, v3, 0x1

    iget v4, p0, Landroid/hardware/Camera$Size;->height:I

    aput v4, v0, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 343
    :catch_0
    move-exception v1

    .line 348
    :cond_0
    return-object v0
.end method

.method public open(I)Z
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 162
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    move v0, v7

    .line 206
    :goto_0
    return v0

    .line 171
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getCameraView()Lcom/adobe/air/AndroidCameraView;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/adobe/air/AndroidCameraView;->getHolder()Landroid/view/SurfaceHolder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 175
    if-eqz v1, :cond_1

    :try_start_1
    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 177
    sget-boolean v0, Lcom/adobe/air/AndroidCamera;->sAreMultipleCamerasSupportedOnDevice:Z

    if-eqz v0, :cond_3

    .line 179
    sget-object v0, Lcom/adobe/air/AndroidCamera;->sMIDOpenWithCameraID:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera;

    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    .line 180
    iput p1, p0, Lcom/adobe/air/AndroidCamera;->mCameraId:I

    .line 187
    :goto_1
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    move-object v0, v1

    .line 200
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_4

    .line 202
    new-instance v1, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidCamera$PreviewSurfaceCallback;-><init>(Lcom/adobe/air/AndroidCamera;)V

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    move v0, v7

    .line 203
    goto :goto_0

    .line 183
    :cond_3
    :try_start_2
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    .line 184
    const/4 v0, 0x0

    iput v0, p0, Lcom/adobe/air/AndroidCamera;->mCameraId:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 190
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 193
    :goto_3
    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_2

    .line 195
    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 196
    iput-object v8, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    goto :goto_2

    .line 190
    :catch_1
    move-exception v0

    move-object v0, v8

    goto :goto_3

    :cond_4
    move v0, v6

    goto :goto_0
.end method

.method public registerCallbacks(Z)V
    .locals 2
    .parameter

    .prologue
    .line 561
    iput-boolean p1, p0, Lcom/adobe/air/AndroidCamera;->mCallbacksRegistered:Z

    .line 562
    if-eqz p1, :cond_1

    .line 564
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    if-nez v0, :cond_0

    .line 566
    new-instance v0, Lcom/adobe/air/AndroidCamera$2;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidCamera$2;-><init>(Lcom/adobe/air/AndroidCamera;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    .line 586
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 594
    :goto_0
    return-void

    .line 590
    :cond_1
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    if-eqz v0, :cond_2

    .line 591
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityStateChangeListner(Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;)V

    .line 592
    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mActivityStateCB:Lcom/adobe/air/AndroidActivityWrapper$StateChangeCallback;

    goto :goto_0
.end method

.method public setContinuousFocusMode()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v0, "edof"

    .line 403
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    move v0, v3

    .line 427
    :goto_0
    return v0

    .line 410
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 411
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedFocusModes()Ljava/util/List;

    move-result-object v1

    .line 413
    const-string v2, "edof"

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 415
    const-string v1, "edof"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    const/4 v0, 0x1

    goto :goto_0

    .line 421
    :catch_0
    move-exception v0

    move v0, v3

    .line 424
    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public startCapture(IIII)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 467
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_0

    move v0, v3

    .line 533
    :goto_0
    return v0

    .line 474
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 475
    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 476
    invoke-virtual {v0, p3}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 479
    invoke-virtual {v0, p4}, Landroid/hardware/Camera$Parameters;->setPreviewFormat(I)V

    .line 481
    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 483
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    new-instance v1, Lcom/adobe/air/AndroidCamera$1;

    invoke-direct {v1, p0}, Lcom/adobe/air/AndroidCamera$1;-><init>(Lcom/adobe/air/AndroidCamera;)V

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallbackWithBuffer(Landroid/hardware/Camera$PreviewCallback;)V

    .line 513
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 516
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 517
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewFormat()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v0

    mul-int/2addr v0, v1

    .line 520
    new-array v1, v0, [B

    iput-object v1, p0, Lcom/adobe/air/AndroidCamera;->mBuffer1:[B

    .line 521
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mBuffer2:[B

    .line 522
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mBuffer1:[B

    iput-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    .line 523
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->addCallbackBuffer([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/adobe/air/AndroidCamera;->mCapturing:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v0, v4

    .line 531
    goto :goto_0

    .line 528
    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0

    :catch_1
    move-exception v0

    move v0, v4

    goto :goto_0
.end method

.method public stopCapture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 538
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 541
    iget-object v0, p0, Lcom/adobe/air/AndroidCamera;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 542
    iput-object v1, p0, Lcom/adobe/air/AndroidCamera;->mCallbackBuffer:[B

    .line 543
    iput-object v1, p0, Lcom/adobe/air/AndroidCamera;->mBuffer1:[B

    .line 544
    iput-object v1, p0, Lcom/adobe/air/AndroidCamera;->mBuffer2:[B

    .line 546
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AndroidCamera;->mCapturing:Z

    .line 547
    return-void
.end method
