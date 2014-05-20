.class Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;
.super Lcom/facebook/widget/PickerFragment$LoadingStrategy;
.source "FriendPickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/FriendPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ImmediateLoadingStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment",
        "<",
        "Lcom/facebook/model/GraphUser;",
        ">.",
        "LoadingStrategy;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/FriendPickerFragment;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/FriendPickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 284
    iput-object p1, p0, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;->this$0:Lcom/facebook/widget/FriendPickerFragment;

    invoke-direct {p0, p1}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/FriendPickerFragment;Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 284
    invoke-direct {p0, p1}, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;-><init>(Lcom/facebook/widget/FriendPickerFragment;)V

    return-void
.end method

.method private followNextLink()V
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;->this$0:Lcom/facebook/widget/FriendPickerFragment;

    invoke-virtual {v0}, Lcom/facebook/widget/FriendPickerFragment;->displayActivityCircle()V

    .line 315
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;->loader:Lcom/facebook/widget/GraphObjectPagingLoader;

    invoke-virtual {v0}, Lcom/facebook/widget/GraphObjectPagingLoader;->followNextLink()V

    .line 316
    return-void
.end method


# virtual methods
.method protected onLoadFinished(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/widget/SimpleGraphObjectCursor;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/widget/GraphObjectPagingLoader",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">;",
            "Lcom/facebook/widget/SimpleGraphObjectCursor",
            "<",
            "Lcom/facebook/model/GraphUser;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, loader:Lcom/facebook/widget/GraphObjectPagingLoader;,"Lcom/facebook/widget/GraphObjectPagingLoader<Lcom/facebook/model/GraphUser;>;"
    .local p2, data:Lcom/facebook/widget/SimpleGraphObjectCursor;,"Lcom/facebook/widget/SimpleGraphObjectCursor<Lcom/facebook/model/GraphUser;>;"
    invoke-super {p0, p1, p2}, Lcom/facebook/widget/PickerFragment$LoadingStrategy;->onLoadFinished(Lcom/facebook/widget/GraphObjectPagingLoader;Lcom/facebook/widget/SimpleGraphObjectCursor;)V

    .line 292
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/facebook/widget/GraphObjectPagingLoader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 309
    :cond_0
    :goto_0
    return-void

    .line 296
    :cond_1
    invoke-virtual {p2}, Lcom/facebook/widget/SimpleGraphObjectCursor;->areMoreObjectsAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 298
    invoke-direct {p0}, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;->followNextLink()V

    goto :goto_0

    .line 301
    :cond_2
    iget-object v0, p0, Lcom/facebook/widget/FriendPickerFragment$ImmediateLoadingStrategy;->this$0:Lcom/facebook/widget/FriendPickerFragment;

    invoke-virtual {v0}, Lcom/facebook/widget/FriendPickerFragment;->hideActivityCircle()V

    .line 305
    invoke-virtual {p2}, Lcom/facebook/widget/SimpleGraphObjectCursor;->isFromCache()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 306
    invoke-virtual {p2}, Lcom/facebook/widget/SimpleGraphObjectCursor;->getCount()I

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x7d0

    :goto_1
    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lcom/facebook/widget/GraphObjectPagingLoader;->refreshOriginalRequest(J)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method
