.class Lcom/facebook/widget/PickerFragment$2;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Lcom/facebook/widget/GraphObjectAdapter$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/PickerFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/widget/GraphObjectAdapter$Filter",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/PickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$2;->this$0:Lcom/facebook/widget/PickerFragment;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public includeItem(Lcom/facebook/model/GraphObject;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, graphObject:Lcom/facebook/model/GraphObject;,"TT;"
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$2;->this$0:Lcom/facebook/widget/PickerFragment;

    invoke-virtual {v0, p1}, Lcom/facebook/widget/PickerFragment;->filterIncludesItem(Lcom/facebook/model/GraphObject;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic includeItem(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lcom/facebook/model/GraphObject;

    invoke-virtual {p0, p1}, Lcom/facebook/widget/PickerFragment$2;->includeItem(Lcom/facebook/model/GraphObject;)Z

    move-result v0

    return v0
.end method
