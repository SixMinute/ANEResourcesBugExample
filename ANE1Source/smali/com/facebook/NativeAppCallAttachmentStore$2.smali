.class Lcom/facebook/NativeAppCallAttachmentStore$2;
.super Ljava/lang/Object;
.source "NativeAppCallAttachmentStore.java"

# interfaces
.implements Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/NativeAppCallAttachmentStore;->addAttachmentFilesForCall(Landroid/content/Context;Ljava/util/UUID;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/NativeAppCallAttachmentStore$ProcessAttachment",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/NativeAppCallAttachmentStore;


# direct methods
.method constructor <init>(Lcom/facebook/NativeAppCallAttachmentStore;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/NativeAppCallAttachmentStore$2;->this$0:Lcom/facebook/NativeAppCallAttachmentStore;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processAttachment(Ljava/io/File;Ljava/io/File;)V
    .locals 6
    .parameter "attachment"
    .parameter "outputFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 94
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 95
    .local v4, outputStream:Ljava/io/FileOutputStream;
    const/4 v1, 0x0

    .line 97
    .local v1, inputStream:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 99
    .end local v1           #inputStream:Ljava/io/FileInputStream;
    .local v2, inputStream:Ljava/io/FileInputStream;
    const/16 v5, 0x400

    :try_start_1
    new-array v0, v5, [B

    .line 101
    .local v0, buffer:[B
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .local v3, len:I
    if-gtz v3, :cond_0

    .line 105
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 106
    invoke-static {v2}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 108
    return-void

    .line 102
    :cond_0
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v4, v0, v5, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 104
    .end local v0           #buffer:[B
    .end local v3           #len:I
    :catchall_0
    move-exception v5

    move-object v1, v2

    .line 105
    .end local v2           #inputStream:Ljava/io/FileInputStream;
    .restart local v1       #inputStream:Ljava/io/FileInputStream;
    :goto_1
    invoke-static {v4}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 106
    invoke-static {v1}, Lcom/facebook/internal/Utility;->closeQuietly(Ljava/io/Closeable;)V

    .line 107
    throw v5

    .line 104
    :catchall_1
    move-exception v5

    goto :goto_1
.end method

.method public bridge synthetic processAttachment(Ljava/lang/Object;Ljava/io/File;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/facebook/NativeAppCallAttachmentStore$2;->processAttachment(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method
