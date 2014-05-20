.class Lcom/adobe/air/AIRUpdateDialog$2;
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
    .line 34
    iput-object p1, p0, Lcom/adobe/air/AIRUpdateDialog$2;->this$0:Lcom/adobe/air/AIRUpdateDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 38
    iget-object v0, p0, Lcom/adobe/air/AIRUpdateDialog$2;->this$0:Lcom/adobe/air/AIRUpdateDialog;

    invoke-virtual {v0}, Lcom/adobe/air/AIRUpdateDialog;->finish()V

    .line 39
    return-void
.end method
