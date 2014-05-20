.class Lcom/adobe/air/AndroidNetworkDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "AndroidNetworkDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/AndroidNetworkDetector;->RegisterForNetworkChange(Landroid/content/Context;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/AndroidNetworkDetector;


# direct methods
.method constructor <init>(Lcom/adobe/air/AndroidNetworkDetector;)V
    .locals 0
    .parameter

    .prologue
    .line 29
    iput-object p1, p0, Lcom/adobe/air/AndroidNetworkDetector$1;->this$0:Lcom/adobe/air/AndroidNetworkDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-virtual {p0}, Lcom/adobe/air/AndroidNetworkDetector$1;->isInitialStickyBroadcast()Z

    move-result v0

    if-nez v0, :cond_1

    .line 39
    const-string v0, "networkInfo"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .line 40
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/adobe/air/AndroidNetworkDetector$1;->this$0:Lcom/adobe/air/AndroidNetworkDetector;

    iget-object v1, p0, Lcom/adobe/air/AndroidNetworkDetector$1;->this$0:Lcom/adobe/air/AndroidNetworkDetector;

    #getter for: Lcom/adobe/air/AndroidNetworkDetector;->objReference:J
    invoke-static {v1}, Lcom/adobe/air/AndroidNetworkDetector;->access$000(Lcom/adobe/air/AndroidNetworkDetector;)J

    move-result-wide v1

    #calls: Lcom/adobe/air/AndroidNetworkDetector;->callOnNetworkChange(J)V
    invoke-static {v0, v1, v2}, Lcom/adobe/air/AndroidNetworkDetector;->access$100(Lcom/adobe/air/AndroidNetworkDetector;J)V

    .line 47
    :cond_1
    return-void
.end method
