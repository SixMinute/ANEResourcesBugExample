.class abstract Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;
.super Lcom/facebook/widget/FacebookDialog$Builder;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PhotoDialogBuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase",
        "<*>;>",
        "Lcom/facebook/widget/FacebookDialog$Builder",
        "<TCONCRETE;>;"
    }
.end annotation


# static fields
.field static MAXIMUM_PHOTO_COUNT:I


# instance fields
.field private friends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private imageAttachmentUrls:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private place:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 848
    const/4 v0, 0x6

    sput v0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->MAXIMUM_PHOTO_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1
    .parameter "activity"

    .prologue
    .line 859
    .local p0, this:Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase<TCONCRETE;>;"
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$Builder;-><init>(Landroid/app/Activity;)V

    .line 851
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->imageAttachmentUrls:Ljava/util/ArrayList;

    .line 860
    return-void
.end method


# virtual methods
.method public addPhotoFiles(Ljava/util/Collection;)Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 918
    .local p0, this:Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase<TCONCRETE;>;"
    .local p1, photos:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/io/File;>;"
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->imageAttachmentUrls:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->addImageAttachmentFiles(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 920
    move-object v0, p0

    .line 921
    .local v0, result:Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;,"TCONCRETE;"
    return-object v0
.end method

.method public addPhotos(Ljava/util/Collection;)Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 901
    .local p0, this:Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase<TCONCRETE;>;"
    .local p1, photos:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->imageAttachmentUrls:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->addImageAttachments(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 903
    move-object v0, p0

    .line 904
    .local v0, result:Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;,"TCONCRETE;"
    return-object v0
.end method

.method abstract getMaximumNumberOfPhotos()I
.end method

.method setBundleExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 2
    .parameter "extras"

    .prologue
    .line 941
    .local p0, this:Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase<TCONCRETE;>;"
    const-string v0, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->applicationId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 942
    const-string v0, "com.facebook.platform.extra.APPLICATION_NAME"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->applicationName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    const-string v0, "com.facebook.platform.extra.PLACE"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->place:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 944
    const-string v0, "com.facebook.platform.extra.PHOTOS"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->imageAttachmentUrls:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 946
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->friends:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 947
    const-string v0, "com.facebook.platform.extra.FRIENDS"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->friends:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 949
    :cond_0
    return-object p1
.end method

.method public setFriends(Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 882
    .local p0, this:Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase<TCONCRETE;>;"
    .local p1, friends:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->friends:Ljava/util/ArrayList;

    .line 884
    move-object v0, p0

    .line 885
    .local v0, result:Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;,"TCONCRETE;"
    return-object v0
.end method

.method public setPlace(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;
    .locals 1
    .parameter "place"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 869
    .local p0, this:Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->place:Ljava/lang/String;

    .line 871
    move-object v0, p0

    .line 872
    .local v0, result:Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;,"TCONCRETE;"
    return-object v0
.end method

.method validate()V
    .locals 5

    .prologue
    .line 928
    .local p0, this:Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase<TCONCRETE;>;"
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->validate()V

    .line 930
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->imageAttachmentUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 931
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Must specify at least one photo."

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 934
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->imageAttachmentUrls:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->getMaximumNumberOfPhotos()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 935
    new-instance v0, Lcom/facebook/FacebookException;

    const-string v1, "Cannot add more than %d photos."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$PhotoDialogBuilderBase;->getMaximumNumberOfPhotos()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 937
    :cond_1
    return-void
.end method
