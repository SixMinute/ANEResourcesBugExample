.class Lcom/chartboost/sdk/Chartboost$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/Chartboost;->b()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/Chartboost;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/Chartboost;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/Chartboost$2;->a:Lcom/chartboost/sdk/Chartboost;

    .line 448
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 450
    iget-object v0, p0, Lcom/chartboost/sdk/Chartboost$2;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-static {v0}, Lcom/chartboost/sdk/Chartboost;->d(Lcom/chartboost/sdk/Chartboost;)Lcom/chartboost/sdk/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/a;->d()V

    .line 451
    return-void
.end method
