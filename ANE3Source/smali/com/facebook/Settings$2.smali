.class Lcom/facebook/Settings$2;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/Settings;->publishInstallAsync(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$applicationContext:Landroid/content/Context;

.field private final synthetic val$applicationId:Ljava/lang/String;

.field private final synthetic val$callback:Lcom/facebook/Request$Callback;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/Request$Callback;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/Settings$2;->val$applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/facebook/Settings$2;->val$applicationId:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/Settings$2;->val$callback:Lcom/facebook/Request$Callback;

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 288
    iget-object v2, p0, Lcom/facebook/Settings$2;->val$applicationContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/Settings$2;->val$applicationId:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/Settings;->publishInstallAndWaitForResponse(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/Response;

    move-result-object v1

    .line 289
    .local v1, response:Lcom/facebook/Response;
    iget-object v2, p0, Lcom/facebook/Settings$2;->val$callback:Lcom/facebook/Request$Callback;

    if-eqz v2, :cond_0

    .line 291
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 292
    .local v0, handler:Landroid/os/Handler;
    new-instance v2, Lcom/facebook/Settings$2$1;

    iget-object v3, p0, Lcom/facebook/Settings$2;->val$callback:Lcom/facebook/Request$Callback;

    invoke-direct {v2, p0, v3, v1}, Lcom/facebook/Settings$2$1;-><init>(Lcom/facebook/Settings$2;Lcom/facebook/Request$Callback;Lcom/facebook/Response;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 299
    .end local v0           #handler:Landroid/os/Handler;
    :cond_0
    return-void
.end method
