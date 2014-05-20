.class Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "HDMIUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adobe/flashplayer/HDMIUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HdmiBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/flashplayer/HDMIUtils;


# direct methods
.method constructor <init>(Lcom/adobe/flashplayer/HDMIUtils;)V
    .locals 0
    .parameter

    .prologue
    .line 174
    iput-object p1, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, "hdmi"

    .line 179
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 180
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 184
    :goto_0
    const-string v2, "com.motorola.intent.action.EXTDISP_STATUS_CONNECTION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 187
    if-eqz v1, :cond_0

    .line 189
    const-string v0, "hdmi"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    #getter for: Lcom/adobe/flashplayer/HDMIUtils;->mHdmiConnection:Z
    invoke-static {v1}, Lcom/adobe/flashplayer/HDMIUtils;->access$000(Lcom/adobe/flashplayer/HDMIUtils;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    #setter for: Lcom/adobe/flashplayer/HDMIUtils;->mHdmiConnection:Z
    invoke-static {v1, v0}, Lcom/adobe/flashplayer/HDMIUtils;->access$002(Lcom/adobe/flashplayer/HDMIUtils;Z)Z

    .line 195
    iget-object v0, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    #setter for: Lcom/adobe/flashplayer/HDMIUtils;->mHdmiStatusKnown:Z
    invoke-static {v0, v3}, Lcom/adobe/flashplayer/HDMIUtils;->access$102(Lcom/adobe/flashplayer/HDMIUtils;Z)Z

    .line 228
    :cond_0
    :goto_1
    return-void

    .line 180
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 199
    :cond_2
    const-string v2, "com.motorola.intent.action.EXTDISP_STATUS_DISPLAY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 202
    if-eqz v1, :cond_0

    .line 204
    const-string v0, "hdmi"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    #getter for: Lcom/adobe/flashplayer/HDMIUtils;->mHdmiOnOff:Z
    invoke-static {v1}, Lcom/adobe/flashplayer/HDMIUtils;->access$200(Lcom/adobe/flashplayer/HDMIUtils;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 209
    iget-object v1, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    #setter for: Lcom/adobe/flashplayer/HDMIUtils;->mHdmiOnOff:Z
    invoke-static {v1, v0}, Lcom/adobe/flashplayer/HDMIUtils;->access$202(Lcom/adobe/flashplayer/HDMIUtils;Z)Z

    .line 210
    iget-object v0, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    #setter for: Lcom/adobe/flashplayer/HDMIUtils;->mHdmiStatusKnown:Z
    invoke-static {v0, v3}, Lcom/adobe/flashplayer/HDMIUtils;->access$102(Lcom/adobe/flashplayer/HDMIUtils;Z)Z

    goto :goto_1

    .line 214
    :cond_3
    const-string v2, "com.motorola.intent.action.externaldisplaystate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    if-eqz v1, :cond_0

    .line 219
    iget-object v0, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    const-string v2, "hdmi"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v3, :cond_4

    move v2, v3

    :goto_2
    #setter for: Lcom/adobe/flashplayer/HDMIUtils;->mHdmiOnOff:Z
    invoke-static {v0, v2}, Lcom/adobe/flashplayer/HDMIUtils;->access$202(Lcom/adobe/flashplayer/HDMIUtils;Z)Z

    .line 220
    iget-object v0, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    const-string v2, "hdcp"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_5

    move v1, v3

    :goto_3
    #setter for: Lcom/adobe/flashplayer/HDMIUtils;->mHdcpOnOff:Z
    invoke-static {v0, v1}, Lcom/adobe/flashplayer/HDMIUtils;->access$302(Lcom/adobe/flashplayer/HDMIUtils;Z)Z

    .line 225
    iget-object v0, p0, Lcom/adobe/flashplayer/HDMIUtils$HdmiBroadcastReceiver;->this$0:Lcom/adobe/flashplayer/HDMIUtils;

    #setter for: Lcom/adobe/flashplayer/HDMIUtils;->mHdmiStatusKnown:Z
    invoke-static {v0, v3}, Lcom/adobe/flashplayer/HDMIUtils;->access$102(Lcom/adobe/flashplayer/HDMIUtils;Z)Z

    goto :goto_1

    :cond_4
    move v2, v5

    .line 219
    goto :goto_2

    :cond_5
    move v1, v5

    .line 220
    goto :goto_3
.end method
