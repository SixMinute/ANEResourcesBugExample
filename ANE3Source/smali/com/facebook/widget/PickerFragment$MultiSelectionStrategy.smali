.class Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;
.super Lcom/facebook/widget/PickerFragment$SelectionStrategy;
.source "PickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/PickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiSelectionStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment",
        "<TT;>.SelectionStrategy;"
    }
.end annotation


# instance fields
.field private selectedIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/widget/PickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment;)V
    .locals 1
    .parameter

    .prologue
    .line 1001
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-direct {p0, p1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    .line 1002
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 1046
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 1047
    return-void
.end method

.method public getSelectedIds()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method isSelected(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 1010
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method readSelectionFromBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .parameter "inBundle"
    .parameter "key"

    .prologue
    .line 1034
    if-eqz p1, :cond_0

    .line 1035
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, ids:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1037
    const-string v2, ","

    invoke-static {v0, v2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1038
    .local v1, splitIds:[Ljava/lang/String;
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->clear()V

    .line 1039
    iget-object v2, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-static {v2, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1042
    .end local v0           #ids:Ljava/lang/String;
    .end local v1           #splitIds:[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method saveSelectionToBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3
    .parameter "outBundle"
    .parameter "key"

    .prologue
    .line 1026
    iget-object v1, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1027
    const-string v1, ","

    iget-object v2, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 1028
    .local v0, ids:Ljava/lang/String;
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1030
    .end local v0           #ids:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method shouldShowCheckBoxIfUnselected()Z
    .locals 1

    .prologue
    .line 1056
    const/4 v0, 0x1

    return v0
.end method

.method toggleSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 1015
    if-eqz p1, :cond_0

    .line 1016
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1017
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1022
    :cond_0
    :goto_0
    return-void

    .line 1019
    :cond_1
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$MultiSelectionStrategy;->selectedIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
