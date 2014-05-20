.class abstract Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
.super Lcom/facebook/widget/FacebookDialog$Builder;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ShareDialogBuilderBase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase",
        "<*>;>",
        "Lcom/facebook/widget/FacebookDialog$Builder",
        "<TCONCRETE;>;"
    }
.end annotation


# instance fields
.field private caption:Ljava/lang/String;

.field private dataErrorsFatal:Z

.field private description:Ljava/lang/String;

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

.field protected link:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private picture:Ljava/lang/String;

.field private place:Ljava/lang/String;

.field private ref:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 681
    .local p0, this:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase<TCONCRETE;>;"
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$Builder;-><init>(Landroid/app/Activity;)V

    .line 682
    return-void
.end method


# virtual methods
.method setBundleExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 3
    .parameter "extras"

    .prologue
    .local p0, this:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase<TCONCRETE;>;"
    const-string v2, "com.facebook.platform.extra.TITLE"

    .line 804
    const-string v0, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->applicationId:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 805
    const-string v0, "com.facebook.platform.extra.APPLICATION_NAME"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->applicationName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    const-string v0, "com.facebook.platform.extra.TITLE"

    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v0}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v0, "com.facebook.platform.extra.SUBTITLE"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->caption:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    const-string v0, "com.facebook.platform.extra.DESCRIPTION"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->description:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    const-string v0, "com.facebook.platform.extra.LINK"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->link:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    const-string v0, "com.facebook.platform.extra.IMAGE"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->picture:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    const-string v0, "com.facebook.platform.extra.PLACE"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->place:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    const-string v0, "com.facebook.platform.extra.TITLE"

    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->name:Ljava/lang/String;

    invoke-virtual {p0, p1, v2, v0}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    const-string v0, "com.facebook.platform.extra.REF"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->ref:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    const-string v0, "com.facebook.platform.extra.DATA_FAILURES_FATAL"

    iget-boolean v1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->dataErrorsFatal:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 816
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->friends:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 817
    const-string v0, "com.facebook.platform.extra.FRIENDS"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->friends:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 819
    :cond_0
    return-object p1
.end method

.method public setCaption(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter "caption"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 704
    .local p0, this:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->caption:Ljava/lang/String;

    .line 706
    move-object v0, p0

    .line 707
    .local v0, result:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"TCONCRETE;"
    return-object v0
.end method

.method public setDataErrorsFatal(Z)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter "dataErrorsFatal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 796
    .local p0, this:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase<TCONCRETE;>;"
    iput-boolean p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->dataErrorsFatal:Z

    .line 798
    move-object v0, p0

    .line 799
    .local v0, result:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"TCONCRETE;"
    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter "description"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 717
    .local p0, this:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->description:Ljava/lang/String;

    .line 719
    move-object v0, p0

    .line 720
    .local v0, result:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"TCONCRETE;"
    return-object v0
.end method

.method public setFriends(Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
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
    .line 769
    .local p0, this:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase<TCONCRETE;>;"
    .local p1, friends:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->friends:Ljava/util/ArrayList;

    .line 771
    move-object v0, p0

    .line 772
    .local v0, result:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"TCONCRETE;"
    return-object v0
.end method

.method public setLink(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter "link"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 730
    .local p0, this:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->link:Ljava/lang/String;

    .line 732
    move-object v0, p0

    .line 733
    .local v0, result:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"TCONCRETE;"
    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter "name"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 691
    .local p0, this:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->name:Ljava/lang/String;

    .line 693
    move-object v0, p0

    .line 694
    .local v0, result:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"TCONCRETE;"
    return-object v0
.end method

.method public setPicture(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter "picture"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 743
    .local p0, this:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->picture:Ljava/lang/String;

    .line 745
    move-object v0, p0

    .line 746
    .local v0, result:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"TCONCRETE;"
    return-object v0
.end method

.method public setPlace(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
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
    .line 756
    .local p0, this:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->place:Ljava/lang/String;

    .line 758
    move-object v0, p0

    .line 759
    .local v0, result:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"TCONCRETE;"
    return-object v0
.end method

.method public setRef(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter "ref"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 782
    .local p0, this:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->ref:Ljava/lang/String;

    .line 784
    move-object v0, p0

    .line 785
    .local v0, result:Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;,"TCONCRETE;"
    return-object v0
.end method
