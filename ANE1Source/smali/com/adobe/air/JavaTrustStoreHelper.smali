.class public final Lcom/adobe/air/JavaTrustStoreHelper;
.super Ljava/lang/Object;
.source "JavaTrustStoreHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adobe/air/JavaTrustStoreHelper$1;,
        Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;,
        Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_sysprop;,
        Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_stub;,
        Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "JavaTrustStoreHelper"

.field private static mSystemKeyStoreMgr:Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper;->initSystemKeyStoreMgr()Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;

    move-result-object v0

    sput-object v0, Lcom/adobe/air/JavaTrustStoreHelper;->mSystemKeyStoreMgr:Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    return-void
.end method

.method public static copyTimestamp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 304
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 305
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/io/File;->setLastModified(J)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 310
    :catch_0
    move-exception v0

    goto :goto_0

    .line 307
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static dumpAcceptedIssuersToFile(Ljavax/net/ssl/X509TrustManager;Ljava/io/RandomAccessFile;)I
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;,
            Ljava/io/IOException;,
            Ljava/io/SyncFailedException;
        }
    .end annotation

    .prologue
    .line 318
    invoke-interface {p0}, Ljavax/net/ssl/X509TrustManager;->getAcceptedIssuers()[Ljava/security/cert/X509Certificate;

    move-result-object v0

    .line 320
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 324
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v2

    .line 325
    array-length v3, v2

    invoke-virtual {p1, v3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 326
    invoke-virtual {p1, v2}, Ljava/io/RandomAccessFile;->write([B)V

    .line 320
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    :cond_0
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 330
    array-length v0, v0

    return v0
.end method

.method public static enumerateRootCAs(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 351
    .line 354
    invoke-static {p0}, Lcom/adobe/air/JavaTrustStoreHelper;->isAirCertBundleStale(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v5

    .line 397
    :goto_0
    return v0

    .line 359
    :cond_0
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper;->getX509TrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v5

    .line 362
    goto :goto_0

    .line 367
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "rw"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 371
    const-wide/16 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 373
    invoke-static {v0, v2}, Lcom/adobe/air/JavaTrustStoreHelper;->dumpAcceptedIssuersToFile(Ljavax/net/ssl/X509TrustManager;Ljava/io/RandomAccessFile;)I

    .line 377
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper;->getTrustStoreTimestamp()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/io/File;->setLastModified(J)Z

    .line 378
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/cert/CertificateEncodingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_4

    .line 379
    const/4 v0, 0x1

    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    move v0, v5

    .line 395
    goto :goto_0

    .line 383
    :catch_1
    move-exception v0

    move v0, v5

    .line 395
    goto :goto_0

    .line 386
    :catch_2
    move-exception v0

    move v0, v5

    .line 395
    goto :goto_0

    .line 389
    :catch_3
    move-exception v0

    move v0, v5

    .line 395
    goto :goto_0

    .line 392
    :catch_4
    move-exception v0

    move v0, v5

    goto :goto_0
.end method

.method private static getTrustStoreTimestamp()J
    .locals 2

    .prologue
    .line 248
    sget-object v0, Lcom/adobe/air/JavaTrustStoreHelper;->mSystemKeyStoreMgr:Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;

    invoke-interface {v0}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;->getTimestamp()J

    move-result-wide v0

    return-wide v0
.end method

.method private static getX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .locals 4

    .prologue
    .line 274
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper;->getX509TrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 275
    const/4 v1, 0x0

    .line 277
    if-eqz v0, :cond_1

    .line 279
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 281
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 283
    aget-object v3, v0, v2

    instance-of v3, v3, Ljavax/net/ssl/X509TrustManager;

    if-eqz v3, :cond_0

    .line 285
    aget-object v0, v0, v2

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    .line 292
    :goto_1
    return-object v0

    .line 281
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method private static getX509TrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;
    .locals 2

    .prologue
    .line 257
    :try_start_0
    const-string v0, "X509"

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 259
    sget-object v1, Lcom/adobe/air/JavaTrustStoreHelper;->mSystemKeyStoreMgr:Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;

    invoke-interface {v1}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;->getKeyStore()Ljava/security/KeyStore;

    move-result-object v1

    .line 261
    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :goto_0
    return-object v0

    .line 263
    :catch_0
    move-exception v0

    .line 266
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static initSystemKeyStoreMgr()Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 228
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_sysprop;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    new-instance v0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_sysprop;

    invoke-direct {v0, v1}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_sysprop;-><init>(Lcom/adobe/air/JavaTrustStoreHelper$1;)V

    .line 242
    :goto_0
    return-object v0

    .line 234
    :cond_0
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 237
    new-instance v0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;

    invoke-direct {v0, v1}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;-><init>(Lcom/adobe/air/JavaTrustStoreHelper$1;)V

    goto :goto_0

    .line 242
    :cond_1
    new-instance v0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_stub;

    invoke-direct {v0, v1}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_stub;-><init>(Lcom/adobe/air/JavaTrustStoreHelper$1;)V

    goto :goto_0
.end method

.method private static isAirCertBundleStale(Ljava/lang/String;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 214
    .line 215
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 219
    sget-object v1, Lcom/adobe/air/JavaTrustStoreHelper;->mSystemKeyStoreMgr:Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;

    invoke-interface {v1}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;->getTimestamp()J

    move-result-wide v1

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    move v0, v5

    .line 223
    :goto_0
    return v0

    .line 219
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v5

    goto :goto_0
.end method
