.class Lcom/facebook/widget/PickerFragment$1;
.super Ljava/lang/Object;
.source "PickerFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/widget/PickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/PickerFragment;


# direct methods
.method constructor <init>(Lcom/facebook/widget/PickerFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/widget/PickerFragment$1;->this$0:Lcom/facebook/widget/PickerFragment;

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .parameter "view"
    .parameter "firstVisibleItem"
    .parameter "visibleItemCount"
    .parameter "totalItemCount"

    .prologue
    .line 769
    iget-object v0, p0, Lcom/facebook/widget/PickerFragment$1;->this$0:Lcom/facebook/widget/PickerFragment;

    #calls: Lcom/facebook/widget/PickerFragment;->reprioritizeDownloads()V
    invoke-static {v0}, Lcom/facebook/widget/PickerFragment;->access$0(Lcom/facebook/widget/PickerFragment;)V

    .line 770
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 765
    return-void
.end method
