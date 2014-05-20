.class Lcom/adobe/air/AIRExpandableFileChooser$3;
.super Ljava/lang/Object;
.source "AIRExpandableFileChooser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AIRExpandableFileChooser;-><init>(Ljava/util/ArrayList;ZZLjava/lang/String;Lcom/adobe/air/FileChooserStub;)V
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
    .line 374
    iput-object p1, p0, Lcom/adobe/air/AIRExpandableFileChooser$3;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 377
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$3;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    #getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$700(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 378
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 380
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser$3;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    #getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$800(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 381
    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser$3;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    #getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mFilenames:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$800(Lcom/adobe/air/AIRExpandableFileChooser;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$3;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    #getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserStub:Lcom/adobe/air/FileChooserStub;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$600(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/FileChooserStub;

    move-result-object v0

    const-string v1, "done"

    invoke-virtual {v0, v1}, Lcom/adobe/air/FileChooserStub;->SetUserAction(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$3;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    iget-object v1, p0, Lcom/adobe/air/AIRExpandableFileChooser$3;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    #getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mFileSaveName:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$700(Lcom/adobe/air/AIRExpandableFileChooser;)Landroid/widget/EditText;

    move-result-object v1

    #calls: Lcom/adobe/air/AIRExpandableFileChooser;->HideVirtualKeyboard(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/adobe/air/AIRExpandableFileChooser;->access$900(Lcom/adobe/air/AIRExpandableFileChooser;Landroid/view/View;)V

    .line 388
    iget-object v0, p0, Lcom/adobe/air/AIRExpandableFileChooser$3;->this$0:Lcom/adobe/air/AIRExpandableFileChooser;

    #getter for: Lcom/adobe/air/AIRExpandableFileChooser;->mFileChooserDialog:Lcom/adobe/air/AndroidAlertDialog;
    invoke-static {v0}, Lcom/adobe/air/AIRExpandableFileChooser;->access$1000(Lcom/adobe/air/AIRExpandableFileChooser;)Lcom/adobe/air/AndroidAlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adobe/air/AndroidAlertDialog;->dismiss()V

    .line 390
    :cond_0
    return-void
.end method
