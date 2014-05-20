.class Lcom/adobe/air/AIRExpandableFileChooser$4;
.super Ljava/lang/Object;
.source "AIRExpandableFileChooser.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AIRExpandableFileChooser;->createInvisibleMultipleFileSelectionView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AIRExpandableFileChooser;


# direct methods
.method constructor <init>(Lcom/adobe/air/AIRExpandableFileChooser;)V
    .locals 0
    .parameter

    .prologue
    .line 508
    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    .line 511
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    #getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$800(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 512
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    #getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mGroupData:Ljava/util/List;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$500(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    move v2, v7

    .line 513
    :goto_0
    if-ge v2, v1, :cond_2

    .line 515
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    #getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mChildData:Ljava/util/List;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$400(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    move v4, v7

    .line 516
    :goto_1
    if-ge v4, v3, :cond_1

    .line 518
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    #calls: Lcom/adobe/air/AIRExpandableFileChooser;->expandableListPositionToFlatPosition(II)I
    invoke-static {v0, v2, v4}, Lcom/adobe/air/AIRExpandableFileChooser;->access$100(Lcom/adobe/air/AIRExpandableFileChooser;II)I

    move-result v0

    .line 519
    iget-object v5, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    #getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mCheckedFiles:Landroid/util/SparseBooleanArray;
    invoke-static {v5}, Lcom/adobe/air/AIRExpandableFileChooser;->access$300(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/util/SparseBooleanArray;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    #getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mAdapter:Landroid/widget/ExpandableListAdapter;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$1100(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/widget/ExpandableListAdapter;

    move-result-object v0

    invoke-interface {v0, v2, v4}, Landroid/widget/ExpandableListAdapter;->getChild(II)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 522
    iget-object v5, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    #getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/adobe/air/AIRExpandableFileChooser;->access$800(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/ArrayList;

    move-result-object v5

    const-string v6, "FILEINFO"

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;

    iget-object v0, v0, Lcom/adobe/air/AIRExpandableFileChooser$FileInfo;->mFilePath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 516
    :cond_0
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 513
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 527
    :cond_2
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$4;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    #getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$600(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/FileChooserStub;

    move-result-object v0

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/adobe/air/FileChooserStub;->SetUserAction(Ljava/lang/String;)V

    .line 528
    return-void
.end method
