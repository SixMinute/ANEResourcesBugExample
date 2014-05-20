.class public Lcom/facebook/NativeAppCallContentProvider;
.super Landroid/content/ContentProvider;
.source "NativeAppCallContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;
    }
.end annotation


# static fields
.field private static final ATTACHMENT_URL_BASE:Ljava/lang/String; = "content://com.facebook.app.NativeAppCallContentProvider"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final dataSource:Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/facebook/NativeAppCallContentProvider;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/NativeAppCallContentProvider;->TAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    new-instance v0, Lcom/facebook/NativeAppCallAttachmentStore;

    invoke-direct {v0}, Lcom/facebook/NativeAppCallAttachmentStore;-><init>()V

    invoke-direct {p0, v0}, Lcom/facebook/NativeAppCallContentProvider;-><init>(Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;)V

    .line 54
    return-void
.end method

.method constructor <init>(Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;)V
    .locals 0
    .parameter "dataSource"

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/facebook/NativeAppCallContentProvider;->dataSource:Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;

    .line 58
    return-void
.end method

.method public static getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "applicationId"
    .parameter "callId"
    .parameter "attachmentName"

    .prologue
    .line 70
    const-string v0, "%s%s/%s/%s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "content://com.facebook.app.NativeAppCallContentProvider"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "s"
    .parameter "strings"

    .prologue
    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "contentValues"

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 107
    invoke-virtual {p0, p1}, Lcom/facebook/NativeAppCallContentProvider;->parseCallIdAndAttachmentName(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v0

    .line 108
    .local v0, callIdAndAttachmentName:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/util/UUID;Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 109
    new-instance v3, Ljava/io/FileNotFoundException;

    invoke-direct {v3}, Ljava/io/FileNotFoundException;-><init>()V

    throw v3

    .line 113
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/facebook/NativeAppCallContentProvider;->dataSource:Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;

    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/util/UUID;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-interface {v4, p0, v3}, Lcom/facebook/NativeAppCallContentProvider$AttachmentDataSource;->openAttachment(Ljava/util/UUID;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 115
    .local v2, file:Ljava/io/File;
    const/high16 v3, 0x1000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 116
    .end local v2           #file:Ljava/io/File;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 117
    .local v1, exception:Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/facebook/NativeAppCallContentProvider;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Got unexpected exception:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    throw v1
.end method

.method parseCallIdAndAttachmentName(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 8
    .parameter "uri"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/UUID;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 128
    .local v2, callIdAndAttachmentName:Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v2, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, parts:[Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v3, v5, v6

    .line 131
    .local v3, callIdString:Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v0, v5, v6

    .line 132
    .local v0, attachmentName:Ljava/lang/String;
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    .line 134
    .local v1, callId:Ljava/util/UUID;
    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    .end local v0           #attachmentName:Ljava/lang/String;
    .end local v1           #callId:Ljava/util/UUID;
    .end local v2           #callIdAndAttachmentName:Ljava/lang/String;
    .end local v3           #callIdString:Ljava/lang/String;
    .end local v5           #parts:[Ljava/lang/String;
    :goto_0
    return-object v6

    .line 135
    :catch_0
    move-exception v6

    move-object v4, v6

    .line 136
    .local v4, exception:Ljava/lang/Exception;
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "uri"
    .parameter "strings"
    .parameter "s"
    .parameter "strings2"
    .parameter "s2"

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "uri"
    .parameter "contentValues"
    .parameter "s"
    .parameter "strings"

    .prologue
    .line 100
    const/4 v0, 0x0

    return v0
.end method
