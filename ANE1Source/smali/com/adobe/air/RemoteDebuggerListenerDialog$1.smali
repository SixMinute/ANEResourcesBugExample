.class Lcom/adobe/air/RemoteDebuggerListenerDialog$1;
.super Landroid/content/BroadcastReceiver;
.source "RemoteDebuggerListenerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/RemoteDebuggerListenerDialog;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;


# direct methods
.method constructor <init>(Lcom/adobe/air/RemoteDebuggerListenerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    iput-object p1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$1;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/adobe/air/RemoteDebuggerListenerDialog$1;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$1;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    invoke-virtual {v0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 79
    if-eqz v0, :cond_1

    const-string v1, "debuggerPort"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    :goto_0
    iget-object v1, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$1;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    #getter for: Lcom/adobe/air/RemoteDebuggerListenerDialog;->debuggerPort:I
    invoke-static {v1}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$000(Lcom/adobe/air/RemoteDebuggerListenerDialog;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/adobe/air/RemoteDebuggerListenerDialog$1;->this$0:Lcom/adobe/air/RemoteDebuggerListenerDialog;

    #calls: Lcom/adobe/air/RemoteDebuggerListenerDialog;->dismissDialog()V
    invoke-static {v0}, Lcom/adobe/air/RemoteDebuggerListenerDialog;->access$100(Lcom/adobe/air/RemoteDebuggerListenerDialog;)V

    .line 84
    :cond_0
    return-void

    .line 79
    :cond_1
    const/16 v0, 0x1f00

    goto :goto_0
.end method
