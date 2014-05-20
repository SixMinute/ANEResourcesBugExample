.class Lcom/adobe/air/GamePreviewAppEntry$4;
.super Ljava/lang/Object;
.source "GamePreviewAppEntry.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adobe/air/GamePreviewAppEntry;->launchAIRService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/adobe/air/GamePreviewAppEntry;


# direct methods
.method constructor <init>(Lcom/adobe/air/GamePreviewAppEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 269
    iput-object p1, p0, Lcom/adobe/air/GamePreviewAppEntry$4;->this$0:Lcom/adobe/air/GamePreviewAppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 275
    iget-object v0, p0, Lcom/adobe/air/GamePreviewAppEntry$4;->this$0:Lcom/adobe/air/GamePreviewAppEntry;

    invoke-virtual {v0, p0}, Lcom/adobe/air/GamePreviewAppEntry;->unbindService(Landroid/content/ServiceConnection;)V

    .line 278
    iget-object v0, p0, Lcom/adobe/air/GamePreviewAppEntry$4;->this$0:Lcom/adobe/air/GamePreviewAppEntry;

    #calls: Lcom/adobe/air/GamePreviewAppEntry;->loadSharedRuntimeDex()V
    invoke-static {v0}, Lcom/adobe/air/GamePreviewAppEntry;->access$100(Lcom/adobe/air/GamePreviewAppEntry;)V

    .line 279
    iget-object v0, p0, Lcom/adobe/air/GamePreviewAppEntry$4;->this$0:Lcom/adobe/air/GamePreviewAppEntry;

    const/4 v1, 0x0

    #calls: Lcom/adobe/air/GamePreviewAppEntry;->createActivityWrapper(Z)V
    invoke-static {v0, v1}, Lcom/adobe/air/GamePreviewAppEntry;->access$200(Lcom/adobe/air/GamePreviewAppEntry;Z)V

    .line 281
    invoke-static {}, Lcom/adobe/air/GamePreviewAppEntry;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/adobe/air/GamePreviewAppEntry$4;->this$0:Lcom/adobe/air/GamePreviewAppEntry;

    #calls: Lcom/adobe/air/GamePreviewAppEntry;->InvokeWrapperOnCreate()V
    invoke-static {v0}, Lcom/adobe/air/GamePreviewAppEntry;->access$400(Lcom/adobe/air/GamePreviewAppEntry;)V

    .line 290
    :goto_0
    return-void

    .line 288
    :cond_0
    #calls: Lcom/adobe/air/GamePreviewAppEntry;->KillSelf()V
    invoke-static {}, Lcom/adobe/air/GamePreviewAppEntry;->access$500()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter

    .prologue
    .line 295
    return-void
.end method
