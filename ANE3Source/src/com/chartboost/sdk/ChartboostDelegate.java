// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;


public interface ChartboostDelegate
{

    public abstract void didCacheInterstitial(String s);

    public abstract void didCacheMoreApps();

    public abstract void didClickInterstitial(String s);

    public abstract void didClickMoreApps();

    public abstract void didCloseInterstitial(String s);

    public abstract void didCloseMoreApps();

    public abstract void didDismissInterstitial(String s);

    public abstract void didDismissMoreApps();

    public abstract void didFailToLoadInterstitial(String s);

    public abstract void didFailToLoadMoreApps();

    public abstract void didFailToLoadUrl(String s);

    public abstract void didShowInterstitial(String s);

    public abstract void didShowMoreApps();

    public abstract boolean shouldDisplayInterstitial(String s);

    public abstract boolean shouldDisplayLoadingViewForMoreApps();

    public abstract boolean shouldDisplayMoreApps();

    public abstract boolean shouldRequestInterstitial(String s);

    public abstract boolean shouldRequestInterstitialsInFirstSession();

    public abstract boolean shouldRequestMoreApps();
}
