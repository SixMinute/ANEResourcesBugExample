.class public abstract Lcom/chartboost/sdk/ChartboostActivity;
.super Landroid/app/Activity;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/ChartboostDelegate;


# instance fields
.field private a:Lcom/chartboost/sdk/Chartboost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 75
    return-void
.end method

.method public didCacheMoreApps()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 95
    return-void
.end method

.method public didClickMoreApps()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 90
    return-void
.end method

.method public didCloseMoreApps()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 85
    return-void
.end method

.method public didDismissMoreApps()V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 80
    return-void
.end method

.method public didFailToLoadMoreApps()V
    .locals 0

    .prologue
    .line 125
    return-void
.end method

.method public didFailToLoadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 155
    return-void
.end method

.method public didShowInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 100
    return-void
.end method

.method public didShowMoreApps()V
    .locals 0

    .prologue
    .line 145
    return-void
.end method

.method protected abstract getChartboostAppID()Ljava/lang/String;
.end method

.method protected abstract getChartboostAppSignature()Ljava/lang/String;
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 21
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/ChartboostActivity;->a:Lcom/chartboost/sdk/Chartboost;

    .line 25
    invoke-virtual {p0}, Lcom/chartboost/sdk/ChartboostActivity;->getChartboostAppID()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/chartboost/sdk/ChartboostActivity;->getChartboostAppSignature()Ljava/lang/String;

    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/chartboost/sdk/ChartboostActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v2, p0, v0, v1, p0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 28
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 52
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Chartboost;->onDestroy(Landroid/app/Activity;)V

    .line 53
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 39
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 40
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->startSession()V

    .line 41
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 46
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Chartboost;->onStop(Landroid/app/Activity;)V

    .line 47
    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 1
    .parameter "location"

    .prologue
    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayLoadingViewForMoreApps()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayMoreApps()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .locals 1
    .parameter "location"

    .prologue
    .line 64
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitialsInFirstSession()Z
    .locals 1

    .prologue
    .line 149
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestMoreApps()Z
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x1

    return v0
.end method
