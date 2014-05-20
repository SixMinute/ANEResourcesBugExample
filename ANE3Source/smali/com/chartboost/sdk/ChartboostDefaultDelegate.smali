.class public abstract Lcom/chartboost/sdk/ChartboostDefaultDelegate;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/chartboost/sdk/ChartboostDelegate;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didCacheInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 33
    return-void
.end method

.method public didCacheMoreApps()V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method public didClickInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 53
    return-void
.end method

.method public didClickMoreApps()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method public didCloseInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 48
    return-void
.end method

.method public didCloseMoreApps()V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public didDismissInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 43
    return-void
.end method

.method public didDismissMoreApps()V
    .locals 0

    .prologue
    .line 104
    return-void
.end method

.method public didFailToLoadInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 38
    return-void
.end method

.method public didFailToLoadMoreApps()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method public didFailToLoadUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 134
    return-void
.end method

.method public didShowInterstitial(Ljava/lang/String;)V
    .locals 0
    .parameter "location"

    .prologue
    .line 58
    return-void
.end method

.method public didShowMoreApps()V
    .locals 0

    .prologue
    .line 119
    return-void
.end method

.method public shouldDisplayInterstitial(Ljava/lang/String;)Z
    .locals 1
    .parameter "location"

    .prologue
    .line 27
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayLoadingViewForMoreApps()Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDisplayMoreApps()Z
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitial(Ljava/lang/String;)Z
    .locals 1
    .parameter "location"

    .prologue
    .line 17
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestInterstitialsInFirstSession()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x1

    return v0
.end method

.method public shouldRequestMoreApps()Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    return v0
.end method
