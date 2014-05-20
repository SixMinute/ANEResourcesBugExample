.class public Lcom/chartboost/sdk/impl/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/chartboost/sdk/impl/o$a;,
        Lcom/chartboost/sdk/impl/o$b;,
        Lcom/chartboost/sdk/impl/o$c;,
        Lcom/chartboost/sdk/impl/o$d;,
        Lcom/chartboost/sdk/impl/o$e;
    }
.end annotation


# static fields
.field private static a:Lcom/chartboost/sdk/impl/o;


# instance fields
.field private b:Lcom/chartboost/sdk/impl/o$d;

.field private c:Lcom/chartboost/sdk/Libraries/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/chartboost/sdk/impl/o;->a:Lcom/chartboost/sdk/impl/o;

    .line 36
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Lcom/chartboost/sdk/impl/o$d;

    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v1

    invoke-virtual {v1}, Lcom/chartboost/sdk/Chartboost;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/chartboost/sdk/impl/o$d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->b:Lcom/chartboost/sdk/impl/o$d;

    .line 62
    new-instance v0, Lcom/chartboost/sdk/Libraries/a;

    invoke-direct {v0}, Lcom/chartboost/sdk/Libraries/a;-><init>()V

    iput-object v0, p0, Lcom/chartboost/sdk/impl/o;->c:Lcom/chartboost/sdk/Libraries/a;

    .line 63
    return-void
.end method

.method static synthetic a(Lcom/chartboost/sdk/impl/o;)Lcom/chartboost/sdk/Libraries/a;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->c:Lcom/chartboost/sdk/Libraries/a;

    return-object v0
.end method

.method static synthetic a(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/o$a;
    .locals 1
    .parameter

    .prologue
    .line 253
    invoke-static {p0}, Lcom/chartboost/sdk/impl/o;->b(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/o$a;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized a()Lcom/chartboost/sdk/impl/o;
    .locals 2

    .prologue
    .line 51
    const-class v0, Lcom/chartboost/sdk/impl/o;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/chartboost/sdk/impl/o;->a:Lcom/chartboost/sdk/impl/o;

    if-nez v1, :cond_0

    .line 52
    new-instance v1, Lcom/chartboost/sdk/impl/o;

    invoke-direct {v1}, Lcom/chartboost/sdk/impl/o;-><init>()V

    sput-object v1, Lcom/chartboost/sdk/impl/o;->a:Lcom/chartboost/sdk/impl/o;

    .line 54
    :cond_0
    sget-object v1, Lcom/chartboost/sdk/impl/o;->a:Lcom/chartboost/sdk/impl/o;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 51
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static b(Landroid/widget/ImageView;)Lcom/chartboost/sdk/impl/o$a;
    .locals 1
    .parameter

    .prologue
    .line 254
    if-eqz p0, :cond_0

    .line 255
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 256
    instance-of v0, p0, Lcom/chartboost/sdk/impl/o$c;

    if-eqz v0, :cond_0

    .line 257
    check-cast p0, Lcom/chartboost/sdk/impl/o$c;

    .line 258
    invoke-virtual {p0}, Lcom/chartboost/sdk/impl/o$c;->a()Lcom/chartboost/sdk/impl/o$a;

    move-result-object v0

    .line 261
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a(Ljava/lang/String;F)Lcom/chartboost/sdk/Libraries/a$a;
    .locals 9
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 279
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->b:Lcom/chartboost/sdk/impl/o$d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/o$d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 280
    if-nez v0, :cond_0

    move-object v0, v7

    .line 338
    :goto_0
    return-object v0

    .line 282
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 283
    if-nez v1, :cond_1

    move-object v0, v7

    .line 284
    goto :goto_0

    .line 287
    :cond_1
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 288
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 289
    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 291
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 295
    :goto_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Cannot read files larger than 2147483647 bytes"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 298
    :cond_2
    long-to-int v0, v2

    .line 300
    new-array v2, v0, [B

    .line 301
    invoke-virtual {v1, v2, v6, v0}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 302
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V

    .line 304
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 305
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 306
    array-length v1, v2

    invoke-static {v2, v6, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 308
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 309
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 310
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inDither:Z

    .line 311
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 312
    iput-boolean v8, v0, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 313
    const v1, 0x8000

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B

    .line 316
    iput v8, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_2
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v3, 0x20

    if-lt v1, v3, :cond_3

    move-object v1, v7

    .line 332
    :goto_3
    if-nez v1, :cond_4

    move-object v0, v7

    .line 333
    goto :goto_0

    .line 319
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    array-length v3, v2

    invoke-static {v2, v1, v3, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_3

    .line 324
    :catch_0
    move-exception v0

    move-object v0, v7

    .line 327
    goto :goto_0

    .line 320
    :catch_1
    move-exception v1

    .line 317
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_2

    .line 335
    :cond_4
    new-instance v2, Lcom/chartboost/sdk/Libraries/a$a;

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-direct {v2, v1, v0, p2}, Lcom/chartboost/sdk/Libraries/a$a;-><init>(Landroid/graphics/Bitmap;IF)V

    move-object v0, v2

    .line 338
    goto :goto_0

    .line 292
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/impl/o$b;Landroid/widget/ImageView;Landroid/os/Bundle;)V
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 73
    const/4 v0, 0x0

    .line 74
    if-eqz p5, :cond_4

    const-string v1, "paramNoMemoryCache"

    invoke-virtual {p5, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 75
    :goto_0
    if-eqz p5, :cond_5

    const-string v2, "paramAssetScale"

    invoke-virtual {p5, v2, v3}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v2

    .line 77
    :goto_1
    if-nez v1, :cond_0

    .line 78
    :try_start_0
    iget-object v3, p0, Lcom/chartboost/sdk/impl/o;->c:Lcom/chartboost/sdk/Libraries/a;

    invoke-virtual {v3, p2}, Lcom/chartboost/sdk/Libraries/a;->a(Ljava/lang/String;)Lcom/chartboost/sdk/Libraries/a$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 79
    :cond_0
    if-nez v0, :cond_1

    .line 80
    :try_start_1
    invoke-virtual {p0, p2, v2}, Lcom/chartboost/sdk/impl/o;->a(Ljava/lang/String;F)Lcom/chartboost/sdk/Libraries/a$a;

    move-result-object v0

    .line 81
    if-eqz v0, :cond_1

    .line 82
    if-eqz v1, :cond_6

    move v2, v4

    :goto_2
    invoke-virtual {v0, v2}, Lcom/chartboost/sdk/Libraries/a$a;->a(Z)V

    .line 83
    if-nez v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/chartboost/sdk/impl/o;->c:Lcom/chartboost/sdk/Libraries/a;

    invoke-virtual {v1, p2, v0}, Lcom/chartboost/sdk/Libraries/a;->a(Ljava/lang/String;Lcom/chartboost/sdk/Libraries/a$a;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 92
    :cond_1
    :goto_3
    if-eqz v0, :cond_7

    .line 93
    if-eqz p4, :cond_2

    .line 94
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/a$a;->b()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 95
    :cond_2
    if-eqz p3, :cond_3

    .line 96
    invoke-interface {p3, v0, p5}, Lcom/chartboost/sdk/impl/o$b;->a(Lcom/chartboost/sdk/Libraries/a$a;Landroid/os/Bundle;)V

    .line 103
    :cond_3
    :goto_4
    return-void

    :cond_4
    move v1, v4

    .line 74
    goto :goto_0

    :cond_5
    move v2, v3

    .line 75
    goto :goto_1

    .line 82
    :cond_6
    const/4 v2, 0x1

    goto :goto_2

    .line 87
    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 90
    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_3

    .line 100
    :cond_7
    new-instance v0, Lcom/chartboost/sdk/impl/o$a;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/chartboost/sdk/impl/o$a;-><init>(Lcom/chartboost/sdk/impl/o;Landroid/widget/ImageView;Lcom/chartboost/sdk/impl/o$b;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 102
    invoke-static {}, Lcom/chartboost/sdk/impl/l;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_4

    .line 87
    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_5
.end method

.method protected a(Ljava/lang/String;Lcom/chartboost/sdk/impl/o$e;)Z
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 343
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->b:Lcom/chartboost/sdk/impl/o$d;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/impl/o$d;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 344
    if-nez v0, :cond_0

    move v0, v4

    .line 366
    :goto_0
    return v0

    .line 347
    :cond_0
    const/4 v1, 0x0

    .line 349
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    .line 350
    const/16 v0, 0x1000

    :try_start_1
    new-array v0, v0, [B

    .line 352
    :goto_1
    invoke-virtual {p2, v0}, Lcom/chartboost/sdk/impl/o$e;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    .line 360
    if-eqz v2, :cond_1

    .line 361
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 355
    :cond_1
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 353
    :cond_2
    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {v2, v0, v3, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 356
    :catch_0
    move-exception v0

    move-object v0, v2

    .line 360
    :goto_3
    if-eqz v0, :cond_3

    .line 361
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :cond_3
    :goto_4
    move v0, v4

    .line 366
    goto :goto_0

    .line 358
    :catchall_0
    move-exception v0

    .line 360
    :goto_5
    if-eqz v1, :cond_4

    .line 361
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 365
    :cond_4
    :goto_6
    throw v0

    .line 362
    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_6

    .line 358
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 356
    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_3
.end method

.method public b()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->b:Lcom/chartboost/sdk/impl/o$d;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/o$d;->a()V

    .line 67
    iget-object v0, p0, Lcom/chartboost/sdk/impl/o;->c:Lcom/chartboost/sdk/Libraries/a;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/a;->a()V

    .line 68
    return-void
.end method
