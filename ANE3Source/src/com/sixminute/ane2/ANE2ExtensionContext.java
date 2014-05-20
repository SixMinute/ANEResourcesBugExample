// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sixminute.ane2;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.chartboost.sdk.Chartboost;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.sixminute.ane2:
//            ANE2Extension

public class ANE2ExtensionContext extends FREContext
{
    public static class Initialise
        implements FREFunction
    {

        public FREObject call(FREContext frecontext, FREObject afreobject[])
        {
            ANE2Extension.DLog("FREContext.Initialise");
            ANE2ExtensionContext.sChartboost = Chartboost.sharedChartboost();
            ANE2ExtensionContext.sChartboost.setFramework("air");
            ANE2ExtensionContext.sChartboost.setImpressionsUseActivities(true);
            ANE2ExtensionContext.sChartboost.onStart(frecontext.getActivity());
            return null;
        }

        public Initialise()
        {
        }
    }


    public static final String INITIALISE = "initialise";
    private static Chartboost sChartboost;

    public ANE2ExtensionContext()
    {
        ANE2Extension.DLog("FREContext<constructor>");
    }

    public void dispose()
    {
        ANE2Extension.DLog("FREContext.dispose");
    }

    public Map getFunctions()
    {
        ANE2Extension.DLog("FREContext.getFunctions");
        HashMap hashmap = new HashMap();
        hashmap.put("initialise", new Initialise());
        return hashmap;
    }



/*
    static Chartboost access$002(Chartboost chartboost)
    {
        sChartboost = chartboost;
        return chartboost;
    }

*/
}
