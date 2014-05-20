// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.os.Bundle;

// Referenced classes of package com.chartboost.sdk:
//            ChartboostDelegate, Chartboost

public abstract class ChartboostActivity extends Activity
    implements ChartboostDelegate
{

    private Chartboost a;

    public ChartboostActivity()
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

    protected abstract String getChartboostAppID();

    protected abstract String getChartboostAppSignature();

    public void onBackPressed()
    {
        if (a.onBackPressed())
        {
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        a = Chartboost.sharedChartboost();
        String s = getChartboostAppID();
        String s1 = getChartboostAppSignature();
        a.onCreate(this, s, s1, this);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        a.onDestroy(this);
    }

    protected void onStart()
    {
        super.onStart();
        a.onStart(this);
        a.startSession();
    }

    protected void onStop()
    {
        super.onStop();
        a.onStop(this);
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
