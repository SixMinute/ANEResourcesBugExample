.class Lair/com/sixminute/ANE3Test/debug/AppEntry$4;
.super Ljava/lang/Object;
.source "AppEntry.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lair/com/sixminute/ANE3Test/debug/AppEntry;->launchAIRService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lair/com/sixminute/ANE3Test/debug/AppEntry;


# direct methods
.method constructor <init>(Lair/com/sixminute/ANE3Test/debug/AppEntry;)V
    .locals 0
    .parameter

    .prologue
    .line 285
    iput-object p1, p0, Lair/com/sixminute/ANE3Test/debug/AppEntry$4;->this$0:Lair/com/sixminute/ANE3Test/debug/AppEntry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 291
    iget-object v0, p0, Lair/com/sixminute/ANE3Test/debug/AppEntry$4;->this$0:Lair/com/sixminute/ANE3Test/debug/AppEntry;

    invoke-virtual {v0, p0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->unbindService(Landroid/content/ServiceConnection;)V

    .line 294
    iget-object v0, p0, Lair/com/sixminute/ANE3Test/debug/AppEntry$4;->this$0:Lair/com/sixminute/ANE3Test/debug/AppEntry;

    #calls: Lair/com/sixminute/ANE3Test/debug/AppEntry;->loadSharedRuntimeDex()V
    invoke-static {v0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->access$100(Lair/com/sixminute/ANE3Test/debug/AppEntry;)V

    .line 295
    iget-object v0, p0, Lair/com/sixminute/ANE3Test/debug/AppEntry$4;->this$0:Lair/com/sixminute/ANE3Test/debug/AppEntry;

    const/4 v1, 0x0

    #calls: Lair/com/sixminute/ANE3Test/debug/AppEntry;->createActivityWrapper(Z)V
    invoke-static {v0, v1}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->access$200(Lair/com/sixminute/ANE3Test/debug/AppEntry;Z)V

    .line 297
    invoke-static {}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lair/com/sixminute/ANE3Test/debug/AppEntry$4;->this$0:Lair/com/sixminute/ANE3Test/debug/AppEntry;

    #calls: Lair/com/sixminute/ANE3Test/debug/AppEntry;->InvokeWrapperOnCreate()V
    invoke-static {v0}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->access$400(Lair/com/sixminute/ANE3Test/debug/AppEntry;)V

    .line 306
    :goto_0
    return-void

    .line 304
    :cond_0
    #calls: Lair/com/sixminute/ANE3Test/debug/AppEntry;->KillSelf()V
    invoke-static {}, Lair/com/sixminute/ANE3Test/debug/AppEntry;->access$500()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 311
    return-void
.end method
