// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;


// Referenced classes of package com.chartboost.sdk:
//            ChartboostDelegate

public abstract class ChartboostDefaultDelegate
    implements ChartboostDelegate
{

    public ChartboostDefaultDelegate()
    {
    }

    public void didCacheInterstitial(String s)
    {
    }

    public void didCacheMoreApps()
    {
    }

    public void didClickInterstitial(String s)
    {
    }

    public void didClickMoreApps()
    {
    }

    public void didCloseInterstitial(String s)
    {
    }

    public void didCloseMoreApps()
    {
    }

    public void didDismissInterstitial(String s)
    {
    }

    public void didDismissMoreApps()
    {
    }

    public void didFailToLoadInterstitial(String s)
    {
    }

    public void didFailToLoadMoreApps()
    {
    }

    public void didFailToLoadUrl(String s)
    {
    }

    public void didShowInterstitial(String s)
    {
    }

    public void didShowMoreApps()
    {
    }

    public boolean shouldDisplayInterstitial(String s)
    {
        return true;
    }

    public boolean shouldDisplayLoadingViewForMoreApps()
    {
        return true;
    }

    public boolean shouldDisplayMoreApps()
    {
        return true;
    }

    public boolean shouldRequestInterstitial(String s)
    {
        return true;
    }

    public boolean shouldRequestInterstitialsInFirstSession()
    {
        return true;
    }

    public boolean shouldRequestMoreApps()
    {
        return true;
    }
}
