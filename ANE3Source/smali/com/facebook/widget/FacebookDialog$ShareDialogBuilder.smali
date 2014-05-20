.class public Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;
.super Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ShareDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase",
        "<",
        "Lcom/facebook/widget/FacebookDialog$ShareDialogBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 837
    invoke-direct {p0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;-><init>(Landroid/app/Activity;)V

    .line 838
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/facebook/widget/FacebookDialog;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic canPresent()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->canPresent()Z

    move-result v0

    return v0
.end method

.method getDialogFeatures()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;"
        }
    .end annotation

    .prologue
    .line 842
    sget-object v0, Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;->SHARE_DIALOG:Lcom/facebook/widget/FacebookDialog$ShareDialogFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setCaption(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->setCaption(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDataErrorsFatal(Z)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->setDataErrorsFatal(Z)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDescription(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->setDescription(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setFragment(Landroid/support/v4/app/Fragment;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->setFragment(Landroid/support/v4/app/Fragment;)Lcom/facebook/widget/FacebookDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setFriends(Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->setFriends(Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setLink(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->setLink(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->setName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPicture(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->setPicture(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPlace(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->setPlace(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRef(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->setRef(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$ShareDialogBuilderBase;->setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;

    move-result-object v0

    return-object v0
.end method
