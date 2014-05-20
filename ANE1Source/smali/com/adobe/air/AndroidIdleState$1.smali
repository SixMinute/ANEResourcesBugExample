.class Lcom/adobe/air/AndroidIdleState$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidIdleState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidIdleState;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidIdleState;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidIdleState;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/adobe/air/AndroidIdleState$1;->this$0:Lcom/adobe/air/AndroidIdleState;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 47
    .line 49
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    const/4 v0, 0x0

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/adobe/air/AndroidIdleState$1;->this$0:Lcom/adobe/air/AndroidIdleState;

    #getter for: Lcom/adobe/air/AndroidIdleState;->sScreenOn:Z
    invoke-static {v1}, Lcom/adobe/air/AndroidIdleState;->access$000(Lcom/adobe/air/AndroidIdleState;)Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/adobe/air/AndroidIdleState$1;->this$0:Lcom/adobe/air/AndroidIdleState;

    #setter for: Lcom/adobe/air/AndroidIdleState;->sScreenOn:Z
    invoke-static {v1, v0}, Lcom/adobe/air/AndroidIdleState;->access$002(Lcom/adobe/air/AndroidIdleState;Z)Z

    .line 58
    invoke-static {}, Lcom/adobe/air/AndroidActivityWrapper;->GetAndroidActivityWrapper()Lcom/adobe/air/AndroidActivityWrapper;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/adobe/air/AndroidIdleState$1;->this$0:Lcom/adobe/air/AndroidIdleState;

    #getter for: Lcom/adobe/air/AndroidIdleState;->sScreenOn:Z
    invoke-static {v1}, Lcom/adobe/air/AndroidIdleState;->access$000(Lcom/adobe/air/AndroidIdleState;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adobe/air/AndroidActivityWrapper;->onScreenStateChanged(Z)V

    .line 61
    :cond_0
    return-void

    .line 51
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    .line 52
    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method
