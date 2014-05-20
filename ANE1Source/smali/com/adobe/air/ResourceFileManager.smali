.class public final Lcom/adobe/air/ResourceFileManager;
.super Ljava/lang/Object;
.source "ResourceFileManager.java"


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mAppResources:Landroid/content/res/Resources;

.field private mResourceIdMap:Lcom/adobe/air/ResourceIdMap;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mResourceIdMap:Lcom/adobe/air/ResourceIdMap;

    .line 45
    iput-object p1, p0, Lcom/adobe/air/ResourceFileManager;->mAppContext:Landroid/content/Context;

    .line 46
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mAppResources:Landroid/content/res/Resources;

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/adobe/air/ResourceFileManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".R"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    new-instance v1, Lcom/adobe/air/ResourceIdMap;

    invoke-direct {v1, v0}, Lcom/adobe/air/ResourceIdMap;-><init>(Ljava/lang/Class;)V

    iput-object v1, p0, Lcom/adobe/air/ResourceFileManager;->mResourceIdMap:Lcom/adobe/air/ResourceIdMap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-void

    .line 54
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private remapSpecialFileNames(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 131
    const-string v0, "ss.cfg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ss.sgn"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "mms.cfg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 133
    :cond_0
    const/16 v0, 0x2e

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 135
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private resExists(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1}, Lcom/adobe/air/ResourceFileManager;->remapSpecialFileNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 146
    if-eqz v1, :cond_0

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "raw."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/adobe/air/ResourceFileManager;->lookupResId(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/adobe/air/ResourceFileManager;->resExists(I)Z

    move-result v0

    .line 153
    :cond_0
    return v0
.end method


# virtual methods
.method public GetAssetFileDescriptor(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .parameter

    .prologue
    .line 163
    const/4 v0, 0x0

    .line 169
    :try_start_0
    invoke-direct {p0, p1}, Lcom/adobe/air/ResourceFileManager;->remapSpecialFileNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 170
    if-eqz v1, :cond_0

    .line 172
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.resource://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/adobe/air/ResourceFileManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/raw/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 174
    iget-object v2, p0, Lcom/adobe/air/ResourceFileManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "r"

    invoke-virtual {v2, v1, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 181
    :goto_1
    return-object v0

    :cond_0
    move-object v1, p1

    .line 170
    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public extractResource(ILjava/io/File;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-virtual {p0, p1}, Lcom/adobe/air/ResourceFileManager;->getStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 102
    invoke-static {v0, p2}, Lcom/adobe/air/utils/Utils;->writeOut(Ljava/io/InputStream;Ljava/io/File;)V

    .line 103
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 104
    return-void
.end method

.method public getFileStreamFromRawRes(I)Ljava/io/InputStream;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 65
    if-nez v0, :cond_0

    .line 70
    :cond_0
    return-object v0
.end method

.method public getResourceEntryName(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 196
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 198
    :goto_0
    return-object v0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    const-string v0, "null"

    goto :goto_0
.end method

.method public getResourceName(I)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 187
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 189
    :goto_0
    return-object v0

    .line 188
    :catch_0
    move-exception v0

    .line 189
    const-string v0, "null"

    goto :goto_0
.end method

.method public getStream(I)Ljava/io/InputStream;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    .line 95
    return-object v0
.end method

.method public lookupResId(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mResourceIdMap:Lcom/adobe/air/ResourceIdMap;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mResourceIdMap:Lcom/adobe/air/ResourceIdMap;

    invoke-virtual {v0, p1}, Lcom/adobe/air/ResourceIdMap;->getId(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 126
    :goto_0
    return v0

    .line 124
    :catch_0
    move-exception v0

    .line 126
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public readFileFromRawRes(I)Ljava/lang/String;
    .locals 4
    .parameter

    .prologue
    .line 76
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 79
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/adobe/air/ResourceFileManager;->getFileStreamFromRawRes(I)Ljava/io/InputStream;

    move-result-object v1

    .line 80
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 81
    invoke-static {v1, v2}, Lcom/adobe/air/utils/Utils;->writeThrough(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 82
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 89
    :goto_0
    return-object v0

    .line 84
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public resExists(I)Z
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 110
    if-gtz p1, :cond_0

    move v0, v1

    .line 114
    :goto_0
    return v0

    .line 111
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/adobe/air/ResourceFileManager;->mAppResources:Landroid/content/res/Resources;

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 112
    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 113
    :catch_0
    move-exception v0

    move v0, v1

    .line 114
    goto :goto_0
.end method
