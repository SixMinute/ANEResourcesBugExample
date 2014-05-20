.class Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;
.super Ljava/lang/Object;
.source "JavaTrustStoreHelper.java"

# interfaces
.implements Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/air/JavaTrustStoreHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemKeyStoreManager_files"
.end annotation


# static fields
.field private static final kDirectoryPath:Ljava/lang/String; = "/system/etc/security/cacerts"


# instance fields
.field private mNumFilesWhenCreated:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->mNumFilesWhenCreated:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/adobe/air/JavaTrustStoreHelper$1;)V
    .locals 0
    .parameter

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;-><init>()V

    return-void
.end method

.method private static getFileListing()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/cacerts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 166
    return-object v0
.end method

.method public static isValid()Z
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/security/cacerts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    .line 141
    return v0
.end method


# virtual methods
.method public getKeyStore()Ljava/security/KeyStore;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 171
    .line 175
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 176
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 178
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 180
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->getFileListing()[Ljava/lang/String;

    move-result-object v2

    .line 181
    array-length v3, v2

    iput v3, p0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->mNumFilesWhenCreated:I

    .line 184
    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 186
    aget-object v4, v2, v3

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/system/etc/security/cacerts/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 188
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 190
    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    .line 191
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 193
    invoke-virtual {v0, v5, v4}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 200
    const/4 v0, -0x1

    iput v0, p0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->mNumFilesWhenCreated:I

    move-object v0, v7

    .line 204
    :cond_0
    return-object v0
.end method

.method public getTimestamp()J
    .locals 9

    .prologue
    .line 146
    invoke-static {}, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->getFileListing()[Ljava/lang/String;

    move-result-object v0

    .line 147
    iget v1, p0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->mNumFilesWhenCreated:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    array-length v1, v0

    iget v2, p0, Lcom/adobe/air/JavaTrustStoreHelper$SystemKeyStoreManager_files;->mNumFilesWhenCreated:I

    if-eq v1, v2, :cond_0

    .line 148
    const-wide v0, 0x7fffffffffffffffL

    .line 159
    :goto_0
    return-wide v0

    .line 150
    :cond_0
    const-wide/16 v1, 0x0

    .line 151
    const/4 v3, 0x0

    move v6, v3

    move-wide v7, v1

    move-wide v2, v7

    move v1, v6

    :goto_1
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 153
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/system/etc/security/cacerts/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 154
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v5}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    .line 156
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 151
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    move-wide v0, v2

    .line 159
    goto :goto_0
.end method
