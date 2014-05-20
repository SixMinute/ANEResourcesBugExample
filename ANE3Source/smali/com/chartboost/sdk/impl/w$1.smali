.class Lcom/chartboost/sdk/impl/w$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/chartboost/sdk/impl/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/chartboost/sdk/impl/w;


# direct methods
.method constructor <init>(Lcom/chartboost/sdk/impl/w;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/chartboost/sdk/impl/w$1;->a:Lcom/chartboost/sdk/impl/w;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 40
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->getForcedOrientationDifference()Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;

    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/chartboost/sdk/impl/w$1;->a:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {v1}, Lcom/chartboost/sdk/impl/w;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 42
    iget-object v2, p0, Lcom/chartboost/sdk/impl/w$1;->a:Lcom/chartboost/sdk/impl/w;

    invoke-static {v2}, Lcom/chartboost/sdk/impl/w;->a(Lcom/chartboost/sdk/impl/w;)F

    move-result v3

    const/high16 v4, 0x3f80

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    invoke-static {v2, v3}, Lcom/chartboost/sdk/impl/w;->a(Lcom/chartboost/sdk/impl/w;F)V

    .line 44
    invoke-virtual {v0}, Lcom/chartboost/sdk/Libraries/CBOrientation$Difference;->isOdd()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/chartboost/sdk/impl/w$1;->a:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w;->getWidth()I

    move-result v0

    :goto_0
    int-to-float v0, v0

    .line 45
    const/high16 v2, 0x4110

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 47
    iget-object v1, p0, Lcom/chartboost/sdk/impl/w$1;->a:Lcom/chartboost/sdk/impl/w;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/w;->a(Lcom/chartboost/sdk/impl/w;)F

    move-result v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    .line 48
    iget-object v1, p0, Lcom/chartboost/sdk/impl/w$1;->a:Lcom/chartboost/sdk/impl/w;

    invoke-static {v1}, Lcom/chartboost/sdk/impl/w;->a(Lcom/chartboost/sdk/impl/w;)F

    move-result v2

    const/high16 v3, 0x4000

    mul-float/2addr v0, v3

    sub-float v0, v2, v0

    invoke-static {v1, v0}, Lcom/chartboost/sdk/impl/w;->a(Lcom/chartboost/sdk/impl/w;F)V

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w$1;->a:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w$1;->a:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w;->invalidate()V

    .line 52
    :cond_1
    return-void

    .line 44
    :cond_2
    iget-object v0, p0, Lcom/chartboost/sdk/impl/w$1;->a:Lcom/chartboost/sdk/impl/w;

    invoke-virtual {v0}, Lcom/chartboost/sdk/impl/w;->getHeight()I

    move-result v0

    goto :goto_0
.end method
