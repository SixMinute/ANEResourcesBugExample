.class Lcom/adobe/air/AIRUpdateDialog$1;
.super Ljava/lang/Object;
.source "AIRUpdateDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AIRUpdateDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AIRUpdateDialog;


# direct methods
.method constructor <init>(Lcom/adobe/air/AIRUpdateDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/adobe/air/AIRUpdateDialog$1;->this$0:Lcom/adobe/air/AIRUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 28
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog$1;->this$0:Lcom/adobe/air/AIRUpdateDialog;

    invoke-virtual {v0}, Lcom/adobe/air/AIRUpdateDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "airDownloadURL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 29
    iget-object v1, p0, Lcom/adobe/air/AIRUpdateDialog$1;->this$0:Lcom/adobe/air/AIRUpdateDialog;

    #getter for: Lcom/adobe/air/AIRUpdateDialog;->actWrapper:Lcom/adobe/air/AndroidActivityWrapper;
    invoke-static {v1}, Lcom/adobe/air/AIRUpdateDialog;->access$000(Lcom/adobe/air/AIRUpdateDialog;)Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/adobe/air/AndroidActivityWrapper;->LaunchMarketPlaceForAIR(Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog$1;->this$0:Lcom/adobe/air/AIRUpdateDialog;

    invoke-virtual {v0}, Lcom/adobe/air/AIRUpdateDialog;->finish()V

    .line 31
    return-void
.end method
