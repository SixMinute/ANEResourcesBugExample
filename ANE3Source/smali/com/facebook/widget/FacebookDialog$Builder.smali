.class abstract Lcom/facebook/widget/FacebookDialog$Builder;
.super Ljava/lang/Object;
.source "FacebookDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FacebookDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<CONCRETE:",
        "Lcom/facebook/widget/FacebookDialog$Builder",
        "<*>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final activity:Landroid/app/Activity;

.field protected final appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

.field protected final applicationId:Ljava/lang/String;

.field protected applicationName:Ljava/lang/String;

.field protected fragment:Landroid/support/v4/app/Fragment;

.field protected imageAttachmentFiles:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field protected imageAttachments:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 492
    .local p0, this:Lcom/facebook/widget/FacebookDialog$Builder;,"Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    .line 490
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachmentFiles:Ljava/util/HashMap;

    .line 493
    const-string v0, "activity"

    invoke-static {p1, v0}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    .line 496
    invoke-static {p1}, Lcom/facebook/internal/Utility;->getMetadataApplicationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    .line 497
    new-instance v0, Lcom/facebook/widget/FacebookDialog$PendingCall;

    const v1, 0xfacf

    invoke-direct {v0, v1}, Lcom/facebook/widget/FacebookDialog$PendingCall;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    .line 498
    return-void
.end method


# virtual methods
.method protected addImageAttachment(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 2
    .parameter "imageName"
    .parameter "bitmap"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 650
    .local p0, this:Lcom/facebook/widget/FacebookDialog$Builder;,"Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    move-object v0, p0

    .line 653
    .local v0, result:Lcom/facebook/widget/FacebookDialog$Builder;,"TCONCRETE;"
    return-object v0
.end method

.method protected addImageAttachment(Ljava/lang/String;Ljava/io/File;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 2
    .parameter "imageName"
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 657
    .local p0, this:Lcom/facebook/widget/FacebookDialog$Builder;,"Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachmentFiles:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    move-object v0, p0

    .line 660
    .local v0, result:Lcom/facebook/widget/FacebookDialog$Builder;,"TCONCRETE;"
    return-object v0
.end method

.method protected addImageAttachmentFiles(Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/io/File;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 621
    .local p0, this:Lcom/facebook/widget/FacebookDialog$Builder;,"Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    .local p1, bitmapFiles:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/io/File;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 622
    .local v1, attachmentUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 632
    return-object v1

    .line 622
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 623
    .local v2, bitmapFile:Ljava/io/File;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 625
    .local v0, attachmentName:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/facebook/widget/FacebookDialog$Builder;->addImageAttachment(Ljava/lang/String;Ljava/io/File;)Lcom/facebook/widget/FacebookDialog$Builder;

    .line 627
    iget-object v5, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v6}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/facebook/NativeAppCallContentProvider;->getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 629
    .local v3, url:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected addImageAttachments(Ljava/util/Collection;)Ljava/util/List;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 606
    .local p0, this:Lcom/facebook/widget/FacebookDialog$Builder;,"Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    .local p1, bitmaps:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/graphics/Bitmap;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 607
    .local v1, attachmentUrls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 617
    return-object v1

    .line 607
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    .line 608
    .local v2, bitmap:Landroid/graphics/Bitmap;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, attachmentName:Ljava/lang/String;
    invoke-virtual {p0, v0, v2}, Lcom/facebook/widget/FacebookDialog$Builder;->addImageAttachment(Ljava/lang/String;Landroid/graphics/Bitmap;)Lcom/facebook/widget/FacebookDialog$Builder;

    .line 612
    iget-object v5, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    iget-object v6, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {v6}, Lcom/facebook/widget/FacebookDialog$PendingCall;->getCallId()Ljava/util/UUID;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/facebook/NativeAppCallContentProvider;->getAttachmentUrl(Ljava/lang/String;Ljava/util/UUID;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 614
    .local v3, url:Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public build()Lcom/facebook/widget/FacebookDialog;
    .locals 10

    .prologue
    .line 550
    .local p0, this:Lcom/facebook/widget/FacebookDialog$Builder;,"Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->validate()V

    .line 552
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 553
    .local v7, extras:Landroid/os/Bundle;
    const-string v0, "com.facebook.platform.extra.APPLICATION_ID"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationId:Ljava/lang/String;

    invoke-virtual {p0, v7, v0, v1}, Lcom/facebook/widget/FacebookDialog$Builder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    const-string v0, "com.facebook.platform.extra.APPLICATION_NAME"

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationName:Ljava/lang/String;

    invoke-virtual {p0, v7, v0, v1}, Lcom/facebook/widget/FacebookDialog$Builder;->putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {p0, v7}, Lcom/facebook/widget/FacebookDialog$Builder;->setBundleExtras(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v7

    .line 557
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v0

    #calls: Lcom/facebook/widget/FacebookDialog;->getActionForFeatures(Ljava/lang/Iterable;)Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/widget/FacebookDialog;->access$0(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    .line 558
    .local v6, action:Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    .line 559
    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v1

    #calls: Lcom/facebook/widget/FacebookDialog;->getMinVersionForFeatures(Ljava/lang/Iterable;)I
    invoke-static {v1}, Lcom/facebook/widget/FacebookDialog;->access$1(Ljava/lang/Iterable;)I

    move-result v1

    .line 558
    #calls: Lcom/facebook/widget/FacebookDialog;->getProtocolVersionForNativeDialog(Landroid/content/Context;Ljava/lang/String;I)I
    invoke-static {v0, v6, v1}, Lcom/facebook/widget/FacebookDialog;->access$2(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v9

    .line 561
    .local v9, protocolVersion:I
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    invoke-static {v0, v6, v9, v7}, Lcom/facebook/internal/NativeProtocol;->createPlatformActivityIntent(Landroid/content/Context;Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v8

    .line 562
    .local v8, intent:Landroid/content/Intent;
    if-nez v8, :cond_0

    .line 563
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->fragment:Landroid/support/v4/app/Fragment;

    .line 564
    const-string v2, "com.facebook.platform.extra.PHOTOS"

    invoke-virtual {v7, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    #calls: Lcom/facebook/widget/FacebookDialog;->getEventName(Ljava/lang/String;Z)Ljava/lang/String;
    invoke-static {v6, v2}, Lcom/facebook/widget/FacebookDialog;->access$3(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 565
    const-string v3, "Failed"

    .line 563
    #calls: Lcom/facebook/widget/FacebookDialog;->logDialogActivity(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/widget/FacebookDialog;->access$4(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    new-instance v0, Lcom/facebook/FacebookException;

    .line 568
    const-string v1, "Unable to create Intent; this likely means the Facebook app is not installed."

    .line 567
    invoke-direct {v0, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    #calls: Lcom/facebook/widget/FacebookDialog$PendingCall;->setRequestIntent(Landroid/content/Intent;)V
    invoke-static {v0, v8}, Lcom/facebook/widget/FacebookDialog$PendingCall;->access$1(Lcom/facebook/widget/FacebookDialog$PendingCall;Landroid/content/Intent;)V

    .line 572
    new-instance v0, Lcom/facebook/widget/FacebookDialog;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/facebook/widget/FacebookDialog$Builder;->fragment:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/facebook/widget/FacebookDialog;-><init>(Landroid/app/Activity;Landroid/support/v4/app/Fragment;Lcom/facebook/widget/FacebookDialog$PendingCall;Lcom/facebook/widget/FacebookDialog$OnPresentCallback;Lcom/facebook/widget/FacebookDialog;)V

    return-object v0
.end method

.method public canPresent()Z
    .locals 2

    .prologue
    .line 583
    .local p0, this:Lcom/facebook/widget/FacebookDialog$Builder;,"Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iget-object v0, p0, Lcom/facebook/widget/FacebookDialog$Builder;->activity:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/facebook/widget/FacebookDialog$Builder;->getDialogFeatures()Ljava/util/EnumSet;

    move-result-object v1

    #calls: Lcom/facebook/widget/FacebookDialog;->handleCanPresent(Landroid/content/Context;Ljava/lang/Iterable;)Z
    invoke-static {v0, v1}, Lcom/facebook/widget/FacebookDialog;->access$6(Landroid/content/Context;Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method abstract getDialogFeatures()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<+",
            "Lcom/facebook/widget/FacebookDialog$DialogFeature;",
            ">;"
        }
    .end annotation
.end method

.method getImageAttachmentNames()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 636
    .local p0, this:Lcom/facebook/widget/FacebookDialog$Builder;,"Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->imageAttachments:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method getOnPresentCallback()Lcom/facebook/widget/FacebookDialog$OnPresentCallback;
    .locals 1

    .prologue
    .line 590
    .local p0, this:Lcom/facebook/widget/FacebookDialog$Builder;,"Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    new-instance v0, Lcom/facebook/widget/FacebookDialog$Builder$1;

    invoke-direct {v0, p0}, Lcom/facebook/widget/FacebookDialog$Builder$1;-><init>(Lcom/facebook/widget/FacebookDialog$Builder;)V

    return-object v0
.end method

.method putExtra(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "extras"
    .parameter "key"
    .parameter "value"

    .prologue
    .line 642
    .local p0, this:Lcom/facebook/widget/FacebookDialog$Builder;,"Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    if-eqz p3, :cond_0

    .line 643
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    :cond_0
    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .parameter "applicationName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 522
    .local p0, this:Lcom/facebook/widget/FacebookDialog$Builder;,"Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->applicationName:Ljava/lang/String;

    .line 524
    move-object v0, p0

    .line 525
    .local v0, result:Lcom/facebook/widget/FacebookDialog$Builder;,"TCONCRETE;"
    return-object v0
.end method

.method abstract setBundleExtras(Landroid/os/Bundle;)Landroid/os/Bundle;
.end method

.method public setFragment(Landroid/support/v4/app/Fragment;)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 1
    .parameter "fragment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/Fragment;",
            ")TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 537
    .local p0, this:Lcom/facebook/widget/FacebookDialog$Builder;,"Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iput-object p1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->fragment:Landroid/support/v4/app/Fragment;

    .line 539
    move-object v0, p0

    .line 540
    .local v0, result:Lcom/facebook/widget/FacebookDialog$Builder;,"TCONCRETE;"
    return-object v0
.end method

.method public setRequestCode(I)Lcom/facebook/widget/FacebookDialog$Builder;
    .locals 2
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TCONCRETE;"
        }
    .end annotation

    .prologue
    .line 508
    .local p0, this:Lcom/facebook/widget/FacebookDialog$Builder;,"Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    iget-object v1, p0, Lcom/facebook/widget/FacebookDialog$Builder;->appCall:Lcom/facebook/widget/FacebookDialog$PendingCall;

    #calls: Lcom/facebook/widget/FacebookDialog$PendingCall;->setRequestCode(I)V
    invoke-static {v1, p1}, Lcom/facebook/widget/FacebookDialog$PendingCall;->access$0(Lcom/facebook/widget/FacebookDialog$PendingCall;I)V

    .line 510
    move-object v0, p0

    .line 511
    .local v0, result:Lcom/facebook/widget/FacebookDialog$Builder;,"TCONCRETE;"
    return-object v0
.end method

.method validate()V
    .locals 0

    .prologue
    .line 587
    .local p0, this:Lcom/facebook/widget/FacebookDialog$Builder;,"Lcom/facebook/widget/FacebookDialog$Builder<TCONCRETE;>;"
    return-void
.end method
