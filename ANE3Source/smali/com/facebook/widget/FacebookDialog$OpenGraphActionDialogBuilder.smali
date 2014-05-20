.class public Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;
.super Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OpenGraphActionDialogBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase",
        "<",
        "Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/model/OpenGraphAction;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "action"
    .parameter "previewPropertyName"

    .prologue
    .line 1513
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;-><init>(Landroid/app/Activity;Lcom/facebook/model/OpenGraphAction;Ljava/lang/String;)V

    .line 1514
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/facebook/model/OpenGraphAction;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "activity"
    .parameter "action"
    .parameter "actionType"
    .parameter "previewPropertyName"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1498
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;-><init>(Landroid/app/Activity;Lcom/facebook/model/OpenGraphAction;Ljava/lang/String;Ljava/lang/String;)V

    .line 1499
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/facebook/widget/FacebookDialog;
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->build()Lcom/facebook/widget/FacebookDialog;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic canPresent()Z
    .locals 1

    .prologue
    .line 1
    invoke-super {p0}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->canPresent()Z

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
    .line 1518
    sget-object v0, Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;->OG_ACTION_DIALOG:Lcom/facebook/widget/FacebookDialog$OpenGraphActionDialogFeature;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDataErrorsFatal(Z)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->setDataErrorsFatal(Z)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setFragment(Landroid/support/v4/app/Fragment;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->setFragment(Landroid/support/v4/app/Fragment;)Lcom/facebook/widget/FacebookDialog$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setImageAttachmentFilesForAction(Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->setImageAttachmentFilesForAction(Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setImageAttachmentFilesForAction(Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->setImageAttachmentFilesForAction(Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setImageAttachmentFilesForObject(Ljava/lang/String;Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->setImageAttachmentFilesForObject(Ljava/lang/String;Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setImageAttachmentFilesForObject(Ljava/lang/String;Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->setImageAttachmentFilesForObject(Ljava/lang/String;Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setImageAttachmentsForAction(Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->setImageAttachmentsForAction(Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setImageAttachmentsForAction(Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->setImageAttachmentsForAction(Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setImageAttachmentsForObject(Ljava/lang/String;Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->setImageAttachmentsForObject(Ljava/lang/String;Ljava/util/List;)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setImageAttachmentsForObject(Ljava/lang/String;Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->setImageAttachmentsForObject(Ljava/lang/String;Ljava/util/List;Z)Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-super {p0, p1}, Lcom/facebook/widget/FacebookDialog$OpenGraphDialogBuilderBase;->setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;

    move-result-object v0

    return-object v0
.end method
