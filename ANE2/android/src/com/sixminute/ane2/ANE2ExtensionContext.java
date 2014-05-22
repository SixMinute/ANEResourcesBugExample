package com.sixminute.ane2;

import java.util.HashMap;
import java.util.Map;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.chartboost.android.R;
import com.chartboost.sdk.Chartboost;


public class ANE2ExtensionContext extends FREContext {
	public static final String INITIALISE = "initialise";
	
	private static Chartboost sChartboost;
	
    public ANE2ExtensionContext()
    {
    	ANE2Extension.DLog("FREContext<constructor>");
    }
	
	@Override
	public void dispose() {
    	ANE2Extension.DLog("FREContext.dispose");
	}

	@Override
	public Map<String, FREFunction> getFunctions() {
		ANE2Extension.DLog("FREContext.getFunctions");
		Map<String, FREFunction> functionMap = new HashMap<String, FREFunction>();

		functionMap.put(INITIALISE, new Initialise());
		
		return functionMap;
	}
	
	public static class Initialise implements FREFunction {
		@Override
		public FREObject call(FREContext context, FREObject[] args) {
			ANE2Extension.DLog("FREContext.Initialise");
			ANE2Extension.DLog("test resource");
			try {
				ANE2Extension.DLog("id: '" + R.layout.com_chartboost_fragment + "'");
			} catch (Exception e) {
				ANE2Extension.DLog( e + " - " + e.getLocalizedMessage() );
			}
			ANE2Extension.DLog("test resource over");
			
	        sChartboost = Chartboost.sharedChartboost();
	        sChartboost.setFramework("air");
	        sChartboost.setImpressionsUseActivities(true);
	        sChartboost.onStart(context.getActivity());
			
			return null;
		}
    }
}
