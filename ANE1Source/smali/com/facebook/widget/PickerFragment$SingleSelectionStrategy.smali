.class Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;
.super Lcom/facebook/widget/PickerFragment$SelectionStrategy;
.source "PickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/PickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SingleSelectionStrategy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/widget/PickerFragment",
        "<TT;>.SelectionStrategy;"
    }
.end annotation


# instance fields
.field private selectedId:Ljava/lang/String;

.field final synthetic this$0:Lcom/facebook/widget/PickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 950
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-direct {p0, p1}, Lcom/facebook/widget/PickerFragment$SelectionStrategy;-><init>(Lcom/facebook/widget/PickerFragment;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 987
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    .line 988
    return-void
.end method

.method public getSelectedIds()Ljava/util/Collection;
    .locals 3
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
    .line 954
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method isEmpty()Z
    .locals 1

    .prologue
    .line 992
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isSelected(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 959
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    .locals 1
    .parameter "inBundle"
    .parameter "key"

    .prologue
    .line 980
    if-eqz p1, :cond_0

    .line 981
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    .line 983
    :cond_0
    return-void
.end method

.method saveSelectionToBundle(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .parameter "outBundle"
    .parameter "key"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 974
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 976
    :cond_0
    return-void
.end method

.method shouldShowCheckBoxIfUnselected()Z
    .locals 1

    .prologue
    .line 997
    const/4 v0, 0x0

    return v0
.end method

.method toggleSelection(Ljava/lang/String;)V
    .locals 1
    .parameter "id"

    .prologue
    .line 964
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    .line 969
    :goto_0
    return-void

    .line 967
    :cond_0
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$SingleSelectionStrategy;->selectedId:Ljava/lang/String;

    goto :goto_0
.end method
