.class public Lcom/adobe/air/AndroidAlertDialog;
.super Ljava/lang/Object;
.source "AndroidAlertDialog.java"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 9
    iput-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 13
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 14
    return-void
.end method


# virtual methods
.method public GetAlertDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method public dismiss()V
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 31
    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 24
    iget-object v0, p0, Lcom/adobe/air/AndroidAlertDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 25
    return-void
.end method
