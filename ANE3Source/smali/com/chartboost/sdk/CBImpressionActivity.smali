.class public final Lcom/chartboost/sdk/CBImpressionActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# static fields
.field public static final PARAM_FULLSCREEN:Ljava/lang/String; = "paramFullscreen"


# instance fields
.field protected a:Lcom/chartboost/sdk/Chartboost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBImpressionActivity;->requestWindowFeature(I)Z

    .line 29
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "paramFullscreen"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 33
    :cond_0
    invoke-virtual {p0}, Lcom/chartboost/sdk/CBImpressionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 34
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/chartboost/sdk/CBImpressionActivity;->setContentView(Landroid/view/View;)V

    .line 36
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Lcom/chartboost/sdk/Chartboost;

    .line 37
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Chartboost;->a(Lcom/chartboost/sdk/CBImpressionActivity;)V

    .line 38
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 55
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Chartboost;->c(Landroid/app/Activity;)V

    .line 56
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 43
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Chartboost;->a(Landroid/app/Activity;)V

    .line 44
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 49
    iget-object v0, p0, Lcom/chartboost/sdk/CBImpressionActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Chartboost;->b(Landroid/app/Activity;)V

    .line 50
    return-void
.end method
