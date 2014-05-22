// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.sixminute.ane2;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.chartboost.sdk.Chartboost;

// Referenced classes of package com.sixminute.ane2:
//            ANE2Extension, ANE2ExtensionContext

public static class 
    implements FREFunction
{

    public FREObject call(FREContext frecontext, FREObject afreobject[])
    {
        ANE2Extension.DLog("FREContext.Initialise");
        ANE2Extension.DLog("test resource");
        try
        {
            ANE2Extension.DLog((new StringBuilder()).append("id: '").append(com.chartboost.android.).append("'").toString());
        }
        catch (Exception exception)
        {
            ANE2Extension.DLog((new StringBuilder()).append(exception).append(" - ").append(exception.getLocalizedMessage()).toString());
        }
        ANE2Extension.DLog("test resource over");
        Chartboost _tmp = ANE2ExtensionContext.access$002(Chartboost.sharedChartboost());
        ANE2ExtensionContext.access$000().setFramework("air");
        ANE2ExtensionContext.access$000().setImpressionsUseActivities(true);
        ANE2ExtensionContext.access$000().onStart(frecontext.getActivity());
        return null;
    }

    public ()
    {
    }
}
