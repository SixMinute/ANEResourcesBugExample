.class public Lcom/adobe/air/AndroidMediaManager;
.super Ljava/lang/Object;
.source "AndroidMediaManager.java"


# static fields
.field public static final ERROR_ACTIVITY_DESTROYED:I = 0x2

.field public static final ERROR_IMAGE_PICKER_NOT_FOUND:I = 0x1

.field private static MediaManagerObjectPointer:J = 0x0L

.field private static final PHONE_STORAGE:Ljava/lang/String; = "phoneStorage"


# instance fields
.field private mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

.field private mCallbacksRegistered:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adobe/air/AndroidMediaManager;->mCallbacksRegistered:Z

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    .line 69
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    .line 70
    return-void
.end method

.method public static AddImage(Landroid/app/Application;Landroid/graphics/Bitmap;Z)Z
    .locals 7
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v0, "_data"

    .line 146
    .line 147
    if-eqz p0, :cond_2

    .line 149
    invoke-virtual {p0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 155
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {v0, p1, v1, v2}, Landroid/provider/MediaStore$Images$Media;->insertImage(Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 164
    :goto_0
    if-nez v1, :cond_0

    .line 165
    const-string v1, "phoneStorage"

    invoke-static {v1, v0, p1, p2}, Lcom/adobe/air/AndroidMediaManager;->SaveImage(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Z)Ljava/lang/String;

    move-result-object v1

    .line 167
    :cond_0
    if-eqz v1, :cond_2

    .line 170
    const/4 v2, 0x1

    :try_start_1
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_data"

    aput-object v4, v2, v3

    .line 171
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 174
    if-eqz v0, :cond_1

    .line 176
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 177
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 178
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 179
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidActivityWrapper;->getDefaultContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    move v0, v6

    .line 191
    :goto_2
    return v0

    .line 157
    :catch_0
    move-exception v1

    move-object v1, v3

    .line 160
    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_2
.end method

.method private static SaveImage(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;Z)Ljava/lang/String;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x0

    const-string v0, "mime_type"

    .line 199
    .line 204
    :try_start_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 205
    if-eqz p3, :cond_1

    .line 206
    const-string v1, "mime_type"

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 211
    const-string v2, "datetaken"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 212
    const-string v2, "date_added"

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 215
    invoke-static {p0}, Landroid/provider/MediaStore$Images$Media;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 218
    if-eqz v8, :cond_4

    .line 220
    :try_start_1
    invoke-virtual {p1, v8}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v9

    .line 223
    :try_start_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v1, 0x5a

    invoke-virtual {p2, v0, v1, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 226
    invoke-static {v8}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 227
    const/high16 v5, 0x43a0

    const/high16 v6, 0x4370

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v7}, Lcom/adobe/air/AndroidMediaManager;->SaveThumbnail(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 228
    const/high16 v5, 0x4248

    const/high16 v6, 0x4248

    const/4 v7, 0x3

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v7}, Lcom/adobe/air/AndroidMediaManager;->SaveThumbnail(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 241
    :try_start_3
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object v0, v8

    .line 257
    :cond_0
    :goto_1
    if-eqz v0, :cond_2

    .line 258
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_2
    return-object v0

    .line 208
    :cond_1
    :try_start_4
    const-string v1, "mime_type"

    const-string v2, "image/png"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    move-object v0, v10

    .line 250
    :goto_3
    if-eqz v0, :cond_0

    .line 252
    invoke-virtual {p1, v0, v10, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v0, v10

    .line 253
    goto :goto_1

    .line 230
    :catch_1
    move-exception v0

    .line 233
    if-eqz v8, :cond_3

    .line 235
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_5
    invoke-virtual {p1, v8, v0, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v10

    .line 241
    :goto_4
    :try_start_6
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_1

    .line 247
    :catch_2
    move-exception v1

    goto :goto_3

    .line 241
    :catchall_0
    move-exception v0

    :try_start_7
    invoke-virtual {v9}, Ljava/io/OutputStream;->close()V

    throw v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    .line 247
    :catch_3
    move-exception v0

    move-object v0, v8

    goto :goto_3

    :cond_2
    move-object v0, v10

    goto :goto_2

    :cond_3
    move-object v0, v8

    goto :goto_4

    :cond_4
    move-object v0, v8

    goto :goto_1
.end method

.method private static final SaveThumbnail(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/graphics/Bitmap;JFFI)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 265
    if-nez p2, :cond_1

    move-object v0, v7

    .line 318
    :cond_0
    :goto_0
    return-object v0

    .line 268
    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 273
    :try_start_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p5, v0

    .line 274
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p6, v1

    .line 276
    invoke-virtual {v5, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 278
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p2

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 289
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 290
    const-string v2, "kind"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 291
    const-string v2, "image_id"

    long-to-int v3, p3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 292
    const-string v2, "height"

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 293
    const-string v2, "width"

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 298
    :try_start_1
    invoke-static {p0}, Landroid/provider/MediaStore$Images$Thumbnails;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    .line 299
    if-eqz v1, :cond_2

    .line 301
    :try_start_2
    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    .line 302
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 303
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 315
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    move-object v0, v7

    .line 318
    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 286
    goto :goto_0

    .line 306
    :catch_1
    move-exception v1

    move-object v1, v7

    .line 309
    :goto_2
    if-eqz v1, :cond_2

    .line 311
    invoke-virtual {p1, v1, v7, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-object v1, v7

    .line 312
    goto :goto_1

    .line 306
    :catch_2
    move-exception v2

    goto :goto_2
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 35
    sget-wide v0, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/adobe/air/AndroidMediaManager;)Z
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/adobe/air/AndroidMediaManager;->mCallbacksRegistered:Z

    return v0
.end method

.method private doCallbackRegistration(Z)V
    .locals 2
    .parameter

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/adobe/air/AndroidMediaManager;->mCallbacksRegistered:Z

    .line 92
    if-eqz p1, :cond_2

    .line 94
    iget-object v0, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    if-nez v0, :cond_0

    .line 96
    new-instance v0, Lcom/adobe/air/AndroidMediaManager$1;

    invoke-direct {v0, p0}, Lcom/adobe/air/AndroidMediaManager$1;-><init>(Lcom/adobe/air/AndroidMediaManager;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    .line 131
    :cond_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->addActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 141
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    if-eqz v0, :cond_1

    .line 136
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->removeActivityResultListener(Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/AndroidMediaManager;->mActivityResultCB:Lcom/adobe/air/AndroidActivityWrapper$ActivityResultCallback;

    goto :goto_0
.end method


# virtual methods
.method public BrowseImage(J)I
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x2

    .line 328
    const/4 v0, 0x0

    .line 330
    :try_start_0
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    .line 331
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 332
    const-string v3, "image/*"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 333
    const-string v3, "android.intent.action.PICK"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 334
    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 335
    invoke-virtual {v1}, Lcom/adobe/air/AndroidActivityWrapper;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    :goto_0
    if-nez v0, :cond_0

    .line 346
    invoke-virtual {p0}, Lcom/adobe/air/AndroidMediaManager;->registerCallbacks()V

    .line 347
    sput-wide p1, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    .line 349
    :cond_0
    return v0

    :cond_1
    move v0, v4

    .line 337
    goto :goto_0

    .line 339
    :catch_0
    move-exception v0

    .line 341
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBrowseImageResult(ILandroid/content/Intent;Landroid/app/Activity;)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    .line 360
    if-nez p1, :cond_1

    .line 363
    sget-wide v1, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/air/AndroidMediaManager;->useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 372
    const/4 v0, 0x3

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "mime_type"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "_display_name"

    aput-object v1, v2, v0

    .line 375
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/Activity;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 377
    if-nez v0, :cond_2

    .line 380
    sget-wide v1, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/air/AndroidMediaManager;->useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 391
    sget-wide v1, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/air/AndroidMediaManager;->useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 384
    :cond_2
    :try_start_1
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 385
    const-string v2, "_display_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 386
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 400
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 401
    const-string v6, "image"

    .line 402
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 404
    sget-wide v1, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v3, 0x1

    const/4 v4, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/air/AndroidMediaManager;->useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 393
    :catch_1
    move-exception v0

    .line 396
    sget-wide v1, Lcom/adobe/air/AndroidMediaManager;->MediaManagerObjectPointer:J

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/adobe/air/AndroidMediaManager;->useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public registerCallbacks()V
    .locals 1

    .prologue
    .line 77
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidMediaManager;->doCallbackRegistration(Z)V

    .line 78
    return-void
.end method

.method public unregisterCallbacks()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/adobe/air/AndroidMediaManager;->doCallbackRegistration(Z)V

    .line 86
    return-void
.end method

.method public native useImagePickerData(JZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method
