.class Lcom/facebook/Request$ParcelFileDescriptorWithMimeType$1;
.super Ljava/lang/Object;
.source "Request.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 2504
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;
    .locals 2
    .parameter "in"

    .prologue
    .line 2506
    new-instance v0, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;-><init>(Landroid/os/Parcel;Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType$1;->createFromParcel(Landroid/os/Parcel;)Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;
    .locals 1
    .parameter "size"

    .prologue
    .line 2510
    new-array v0, p1, [Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/facebook/Request$ParcelFileDescriptorWithMimeType$1;->newArray(I)[Lcom/facebook/Request$ParcelFileDescriptorWithMimeType;

    move-result-object v0

    return-object v0
.end method
