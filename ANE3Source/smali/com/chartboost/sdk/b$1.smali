.class Lcom/chartboost/sdk/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/impl/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/b;->c(Lcom/chartboost/sdk/impl/a;)Lcom/chartboost/sdk/impl/p$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/b;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/b;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/b$1;->a:Lcom/chartboost/sdk/b;

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/chartboost/sdk/impl/a;)V
    .locals 4
    .parameter

    .prologue
    .line 260
    iget-object v0, p0, Lcom/chartboost/sdk/b$1;->a:Lcom/chartboost/sdk/b;

    invoke-static {v0}, Lcom/chartboost/sdk/b;->a(Lcom/chartboost/sdk/b;)Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    iget-object v0, v0, Lcom/chartboost/sdk/Chartboost;->c:Landroid/os/Handler;

    .line 261
    new-instance v1, Lcom/chartboost/sdk/b$b;

    iget-object v2, p0, Lcom/chartboost/sdk/b$1;->a:Lcom/chartboost/sdk/b;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/chartboost/sdk/b$b;-><init>(Lcom/chartboost/sdk/b;Lcom/chartboost/sdk/impl/a;Z)V

    .line 260
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method
