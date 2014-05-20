.class Lcom/facebook/android/FbDialog$1;
.super Ljava/lang/Object;
.source "FbDialog.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/android/FbDialog;->setDialogListener(Lcom/facebook/android/Facebook$DialogListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/android/FbDialog;


# direct methods
.method constructor <init>(Lcom/facebook/android/FbDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/android/FbDialog$1;->this$0:Lcom/facebook/android/FbDialog;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 1
    .parameter "values"
    .parameter "error"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/facebook/android/FbDialog$1;->this$0:Lcom/facebook/android/FbDialog;

    #calls: Lcom/facebook/android/FbDialog;->callDialogListener(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    invoke-static {v0, p1, p2}, Lcom/facebook/android/FbDialog;->access$0(Lcom/facebook/android/FbDialog;Landroid/os/Bundle;Lcom/facebook/FacebookException;)V

    .line 58
    return-void
.end method
