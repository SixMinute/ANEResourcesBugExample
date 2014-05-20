// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Window;
import android.widget.RelativeLayout;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost

public final class CBImpressionActivity extends Activity
{

    public static final String PARAM_FULLSCREEN = "paramFullscreen";
    protected Chartboost a;

    public CBImpressionActivity()
    {
    }

    public void onBackPressed()
    {
        if (a.b())
        {
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        if (getIntent().getBooleanExtra("paramFullscreen", false))
        {
            getWindow().addFlags(1024);
        }
        getWindow().setWindowAnimations(0);
        setContentView(new RelativeLayout(this));
        a = Chartboost.sharedChartboost();
        a.a(this);
    }

    protected void onDestroy()
    {
        super.onDestroy();
        a.c(this);
    }

    protected void onStart()
    {
        super.onStart();
        a.a(this);
    }

    protected void onStop()
    {
        super.onStop();
        a.b(this);
    }
}
