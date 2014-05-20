.class public abstract Lcom/chartboost/sdk/ChartboostNativeActivity;
.super Landroid/app/NativeActivity;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/ChartboostDelegate;


# instance fields
.field private a:Lcom/chartboost/sdk/Chartboost;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/app/NativeActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 78
    return-void
.end method

.method public didCacheMoreApps()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 98
    return-void
.end method

.method public didClickMoreApps()V
    .locals 0

    .prologue
    .line 143
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 93
    return-void
.end method

.method public didCloseMoreApps()V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 88
    return-void
.end method

.method public didDismissMoreApps()V
    .locals 0

    .prologue
    .line 133
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 83
    return-void
.end method

.method public didFailToLoadMoreApps()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public didFailToLoadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 158
    return-void
.end method

.method public didShowInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 103
    return-void
.end method

.method public didShowMoreApps()V
    .locals 0

    .prologue
    .line 148
    return-void
.end method

.method protected abstract getChartboostAppID()Ljava/lang/String;
.end method

.method protected abstract getChartboostAppSignature()Ljava/lang/String;
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostNativeActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->onBackPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    :goto_0
    return-void

    .line 62
    :cond_0
    invoke-super {p0}, Landroid/app/NativeActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 23
    invoke-super {p0, p1}, Landroid/app/NativeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-static {}, Lcom/chartboost/sdk/Chartboost;->sharedChartboost()Lcom/chartboost/sdk/Chartboost;

    move-result-object v0

    iput-object v0, p0, Lcom/chartboost/sdk/ChartboostNativeActivity;->a:Lcom/chartboost/sdk/Chartboost;

    .line 27
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostNativeActivity;->a:Lcom/chartboost/sdk/Chartboost;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/chartboost/sdk/Chartboost;->setImpressionsUseActivities(Z)V

    .line 28
    invoke-virtual {p0}, Lcom/chartboost/sdk/ChartboostNativeActivity;->getChartboostAppID()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {p0}, Lcom/chartboost/sdk/ChartboostNativeActivity;->getChartboostAppSignature()Ljava/lang/String;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/chartboost/sdk/ChartboostNativeActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v2, p0, v0, v1, p0}, Lcom/chartboost/sdk/Chartboost;->onCreate(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/chartboost/sdk/ChartboostDelegate;)V

    .line 31
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 54
    invoke-super {p0}, Landroid/app/NativeActivity;->onDestroy()V

    .line 55
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostNativeActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Chartboost;->onDestroy(Landroid/app/Activity;)V

    .line 56
    return-void
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/NativeActivity;->onStart()V

    .line 42
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostNativeActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Chartboost;->onStart(Landroid/app/Activity;)V

    .line 43
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostNativeActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0}, Lcom/chartboost/sdk/Chartboost;->startSession()V

    .line 44
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 48
    invoke-super {p0}, Landroid/app/NativeActivity;->onStop()V

    .line 49
    iget-object v0, p0, Lcom/chartboost/sdk/ChartboostNativeActivity;->a:Lcom/chartboost/sdk/Chartboost;

    invoke-virtual {v0, p0}, Lcom/chartboost/sdk/Chartboost;->onStop(Landroid/app/Activity;)V

    .line 50
    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 1
    .parameter "location"

    .prologue
    .line 72
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayLoadingViewForMoreApps()Z
    .locals 1

    .prologue
    .line 107
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayMoreApps()Z
    .locals 1

    .prologue
    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .locals 1
    .parameter "location"

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitialsInFirstSession()Z
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestMoreApps()Z
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x1

    return v0
.end method
