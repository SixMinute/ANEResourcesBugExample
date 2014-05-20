.class public final Lcom/adobe/air/CameraUI;
.super Ljava/lang/Object;
.source "CameraUI.java"

# interfaces
.implements Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;


# static fields
.field public static final ERROR_ACTIVITY_DESTROYED:I = 0x4

.field public static final ERROR_CAMERA_BUSY:I = 0x1

.field public static final ERROR_CAMERA_ERROR:I = 0x2

.field public static final ERROR_CAMERA_UNAVAILABLE:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "CameraUI"

.field private static final PHONE_STORAGE:Ljava/lang/String; = "phoneStorage"

.field public static final REQUESTED_MEDIA_TYPE_IMAGE:I = 0x1

.field public static final REQUESTED_MEDIA_TYPE_INVALID:I = 0x0

.field public static final REQUESTED_MEDIA_TYPE_VIDEO:I = 0x2

.field private static sCameraRollPath:Ljava/lang/String;

.field private static sCameraUI:Lcom/adobe/air/CameraUI;


# instance fields
.field private mCameraBusy:Z

.field private mImagePath:Ljava/lang/String;

.field private mLastClientId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    sput-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    .line 84
    sput-object v0, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    .line 135
    return-void
.end method

.method private getCameraRollDirectory(Landroid/app/Activity;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 511
    sget-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 513
    sget-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    .line 579
    :goto_0
    return-object v0

    .line 522
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 533
    :goto_1
    if-nez v0, :cond_1

    .line 537
    :try_start_1
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "phoneStorage"

    invoke-static {v2}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    .line 547
    :cond_1
    :goto_2
    if-eqz v0, :cond_3

    .line 551
    :try_start_2
    invoke-direct {p0, v0, p1}, Lcom/adobe/air/CameraUI;->getFileFromUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/io/File;

    move-result-object v1

    .line 552
    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 561
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 579
    :cond_2
    :goto_3
    sget-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    move-object v0, v4

    goto :goto_1

    .line 553
    :catch_1
    move-exception v1

    .line 561
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    .line 556
    :catch_2
    move-exception v1

    .line 561
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 562
    throw v1

    .line 569
    :cond_3
    sget-object v0, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 571
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 573
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/CameraUI;->sCameraRollPath:Ljava/lang/String;

    goto :goto_3

    .line 541
    :catch_3
    move-exception v1

    goto :goto_2
.end method

.method public static declared-synchronized getCameraUI()Lcom/adobe/air/CameraUI;
    .locals 3

    .prologue
    .line 146
    const-class v0, Lcom/adobe/air/CameraUI;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;

    if-nez v1, :cond_0

    .line 149
    new-instance v1, Lcom/adobe/air/CameraUI;

    invoke-direct {v1}, Lcom/adobe/air/CameraUI;-><init>()V

    sput-object v1, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;

    .line 150
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    sget-object v2, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;

    invoke-virtual {v1, v2}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 153
    :cond_0
    sget-object v1, Lcom/adobe/air/CameraUI;->sCameraUI:Lcom/adobe/air/CameraUI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 146
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getCursorFromUri(Landroid/net/Uri;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 10
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 240
    .line 243
    :try_start_0
    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 245
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v1

    if-eqz v1, :cond_3

    .line 256
    if-eqz v0, :cond_1

    move v1, v7

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v7

    :goto_1
    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    .line 258
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return-object v0

    :cond_1
    move v1, v6

    .line 256
    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_1

    .line 250
    :cond_3
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 256
    if-eqz v0, :cond_5

    move v1, v7

    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v7

    :goto_4
    and-int/2addr v1, v2

    if-eqz v1, :cond_4

    .line 258
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v8

    goto :goto_2

    :cond_5
    move v1, v6

    .line 256
    goto :goto_3

    :cond_6
    move v2, v6

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v8

    :goto_5
    if-eqz v1, :cond_8

    move v2, v7

    :goto_6
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_9

    move v3, v7

    :goto_7
    and-int/2addr v2, v3

    if-eqz v2, :cond_7

    .line 258
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :cond_8
    move v2, v6

    .line 256
    goto :goto_6

    :cond_9
    move v3, v6

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_5
.end method

.method private getFileFromUri(Landroid/net/Uri;Landroid/app/Activity;)Ljava/io/File;
    .locals 5
    .parameter
    .parameter

    .prologue
    const-string v4, "_data"

    .line 213
    const/4 v0, 0x0

    .line 214
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "_data"

    aput-object v4, v1, v2

    .line 217
    invoke-direct {p0, p1, p2, v1}, Lcom/adobe/air/CameraUI;->getCursorFromUri(Landroid/net/Uri;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 218
    if-eqz v1, :cond_0

    .line 222
    :try_start_0
    const-string v2, "_data"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 223
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 224
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    move-object v0, v3

    .line 235
    :cond_0
    :goto_0
    return-object v0

    .line 225
    :catch_0
    move-exception v2

    .line 230
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 231
    throw v0
.end method

.method private native nativeOnCameraCancel(J)V
.end method

.method private native nativeOnCameraError(JI)V
.end method

.method private native nativeOnCameraResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private onCameraCancel()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 114
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 116
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    invoke-direct {p0, v0, v1}, Lcom/adobe/air/CameraUI;->nativeOnCameraCancel(J)V

    .line 118
    iput-wide v2, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 120
    :cond_0
    return-void
.end method

.method private onCameraError(I)V
    .locals 4
    .parameter

    .prologue
    const-wide/16 v2, 0x0

    .line 104
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 106
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    invoke-direct {p0, v0, v1, p1}, Lcom/adobe/air/CameraUI;->nativeOnCameraError(JI)V

    .line 108
    iput-wide v2, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 110
    :cond_0
    return-void
.end method

.method private onCameraResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const-wide/16 v6, 0x0

    .line 124
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v0, v0, v6

    if-eqz v0, :cond_0

    .line 126
    iget-wide v1, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/adobe/air/CameraUI;->nativeOnCameraResult(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iput-wide v6, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 130
    :cond_0
    return-void
.end method

.method private processImageSuccessResult()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 265
    new-instance v0, Ljava/lang/String;

    const-string v1, "image"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 266
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 268
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 269
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2, v5, v5}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 276
    iget-object v2, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/adobe/air/CameraUI;->onCameraResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method private processVideoSuccessResult(Landroid/content/Intent;)V
    .locals 9
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const-string v5, "mime_type"

    const-string v4, "_display_name"

    const-string v3, "_data"

    .line 281
    .line 285
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_data"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string v2, "mime_type"

    aput-object v5, v0, v1

    const-string v1, "_display_name"

    aput-object v4, v0, v7

    .line 290
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lcom/adobe/air/CameraUI;->getCursorFromUri(Landroid/net/Uri;Landroid/app/Activity;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_6

    .line 300
    :try_start_0
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 301
    const-string v2, "mime_type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 302
    const-string v3, "_display_name"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 303
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 305
    if-eqz v1, :cond_5

    .line 307
    :try_start_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 308
    invoke-direct {p0, v2}, Lcom/adobe/air/CameraUI;->toMediaType(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 311
    if-nez v2, :cond_0

    .line 313
    :try_start_2
    new-instance v4, Ljava/lang/String;

    const-string v5, "video"

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v2, v4

    .line 316
    :cond_0
    :try_start_3
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v3

    .line 317
    if-nez v3, :cond_1

    .line 319
    :try_start_4
    new-instance v4, Ljava/lang/String;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_4

    move-object v3, v4

    .line 327
    :cond_1
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v2

    move-object v2, v1

    move-object v1, v3

    .line 334
    :goto_1
    if-eqz v0, :cond_2

    const-string v3, "image"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const-string v3, "video"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 337
    :cond_3
    invoke-direct {p0, v2, v0, v1}, Lcom/adobe/air/CameraUI;->onCameraResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    :goto_2
    return-void

    .line 322
    :catch_0
    move-exception v1

    move-object v1, v6

    move-object v2, v6

    move-object v3, v6

    .line 327
    :goto_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    .line 329
    goto :goto_1

    .line 327
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 328
    throw v1

    .line 340
    :cond_4
    invoke-direct {p0, v7}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    goto :goto_2

    .line 322
    :catch_1
    move-exception v2

    move-object v2, v6

    move-object v3, v1

    move-object v1, v6

    goto :goto_3

    :catch_2
    move-exception v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_3

    :catch_3
    move-exception v3

    move-object v3, v1

    move-object v1, v2

    move-object v2, v6

    goto :goto_3

    :catch_4
    move-exception v4

    move-object v8, v2

    move-object v2, v3

    move-object v3, v1

    move-object v1, v8

    goto :goto_3

    :cond_5
    move-object v2, v6

    move-object v3, v6

    goto :goto_0

    :cond_6
    move-object v0, v6

    move-object v1, v6

    move-object v2, v6

    goto :goto_1
.end method

.method private stillPictureWork()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    .line 585
    const/4 v0, 0x0

    .line 586
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 588
    if-nez v1, :cond_0

    .line 590
    const/4 v0, 0x4

    .line 634
    :goto_0
    return v0

    .line 593
    :cond_0
    invoke-direct {p0, v1}, Lcom/adobe/air/CameraUI;->getCameraRollDirectory(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    move v0, v6

    .line 595
    goto :goto_0

    .line 601
    :cond_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "\'IMG\'_yyyyMMdd_HHmmss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 602
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 603
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v1}, Lcom/adobe/air/CameraUI;->getCameraRollDirectory(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v6

    .line 608
    goto :goto_0

    .line 616
    :cond_2
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 618
    const-string v5, "output"

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 620
    const/4 v3, 0x3

    invoke-virtual {v1, v4, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move v1, v0

    move-object v0, v2

    .line 632
    :goto_1
    iput-object v0, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    move v0, v1

    .line 634
    goto :goto_0

    .line 621
    :catch_0
    move-exception v0

    move-object v0, v8

    move v1, v7

    .line 630
    goto :goto_1

    .line 625
    :catch_1
    move-exception v0

    move-object v0, v8

    move v1, v6

    .line 628
    goto :goto_1
.end method

.method private toMediaType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 196
    const/4 v0, 0x0

    .line 198
    if-eqz p1, :cond_0

    .line 200
    const-string v1, "image/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 202
    new-instance v0, Ljava/lang/String;

    const-string v1, "image"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 208
    :cond_0
    :goto_0
    return-object v0

    .line 203
    :cond_1
    const-string v1, "video/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 205
    new-instance v0, Ljava/lang/String;

    const-string v1, "video"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private videoCaptureWork()I
    .locals 5

    .prologue
    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 482
    .line 485
    :try_start_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 487
    if-nez v0, :cond_0

    move v0, v1

    .line 506
    :goto_0
    return v0

    .line 494
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 496
    const-string v2, "android.intent.extra.videoQuality"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v4

    goto :goto_0

    .line 501
    :catch_0
    move-exception v0

    .line 503
    const/4 v0, 0x3

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Ljava/lang/CloneNotSupportedException;

    invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V

    throw v0
.end method

.method public launch(JI)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 428
    cmp-long v0, p1, v3

    if-nez v0, :cond_1

    .line 477
    :cond_0
    :goto_0
    return-void

    .line 435
    :cond_1
    iget-boolean v0, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    if-eqz v0, :cond_2

    .line 439
    invoke-direct {p0, p1, p2, v2}, Lcom/adobe/air/CameraUI;->nativeOnCameraError(JI)V

    goto :goto_0

    .line 445
    :cond_2
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    .line 448
    invoke-direct {p0, v2}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    .line 451
    :cond_3
    iput-wide p1, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 453
    iput-boolean v2, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    .line 456
    packed-switch p3, :pswitch_data_0

    .line 467
    const/4 v0, 0x3

    .line 471
    :goto_1
    if-eqz v0, :cond_0

    .line 474
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    .line 475
    invoke-direct {p0, v0}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    goto :goto_0

    .line 459
    :pswitch_0
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->stillPictureWork()I

    move-result v0

    goto :goto_1

    .line 462
    :pswitch_1
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->videoCaptureWork()I

    move-result v0

    goto :goto_1

    .line 456
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 356
    if-eq p1, v5, :cond_1

    if-eq p1, v6, :cond_1

    .line 410
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/CameraUI;->mCameraBusy:Z

    .line 368
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 375
    packed-switch p2, :pswitch_data_0

    .line 403
    iget-object v0, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 405
    iput-object v4, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    .line 407
    :cond_2
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/adobe/air/CameraUI;->onCameraError(I)V

    goto :goto_0

    .line 379
    :pswitch_0
    if-ne p1, v5, :cond_4

    .line 381
    iget-object v0, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 383
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->processImageSuccessResult()V

    .line 384
    iput-object v4, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    goto :goto_0

    .line 388
    :cond_3
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->onCameraCancel()V

    goto :goto_0

    .line 390
    :cond_4
    if-ne p1, v6, :cond_0

    .line 392
    invoke-direct {p0, p3}, Lcom/adobe/air/CameraUI;->processVideoSuccessResult(Landroid/content/Intent;)V

    goto :goto_0

    .line 396
    :pswitch_1
    iget-object v0, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 398
    iput-object v4, p0, Lcom/adobe/air/CameraUI;->mImagePath:Ljava/lang/String;

    .line 400
    :cond_5
    invoke-direct {p0}, Lcom/adobe/air/CameraUI;->onCameraCancel()V

    goto :goto_0

    .line 375
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public unregisterCallbacks(J)V
    .locals 2
    .parameter

    .prologue
    .line 184
    iget-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 186
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/adobe/air/CameraUI;->mLastClientId:J

    .line 192
    :cond_0
    return-void
.end method
