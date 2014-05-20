.class Lcom/chartboost/sdk/impl/u$1;
.super Landroid/view/OrientationEventListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/chartboost/sdk/impl/u;-><init>(Landroid/content/Context;Lcom/chartboost/sdk/impl/u$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/u;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/u;Landroid/content/Context;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    .line 34
    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 2
    .parameter "orientation"

    .prologue
    .line 36
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v0

    .line 37
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/u;->a(Lcom/chartboost/sdk/impl/u;)Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v1

    if-ne v1, v0, :cond_0

    .line 41
    :goto_0
    return-void

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/u;->a(Lcom/chartboost/sdk/impl/u;Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;)V

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    invoke-static {v0}, Lcom/chartboost/sdk/impl/u;->b(Lcom/chartboost/sdk/impl/u;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/chartboost/sdk/impl/u$a;

    invoke-interface {v0}, Lcom/chartboost/sdk/impl/u$a;->a()V

    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/impl/u$1;->a:Lcom/chartboost/sdk/impl/u;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/u;->invalidate()V

    goto :goto_0
.end method
