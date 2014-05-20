package com.sixminute.ane1;

import android.util.Log;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREExtension;

public class ANE1Extension implements FREExtension {

	/**
	 * Create the context (AS to Java).
	 */
	public FREContext createContext(String extId) {
		DLog("createContext extId: " + extId);
		
		return new ANE1ExtensionContext();
	}

	/**
	 * Dispose the context.
	 */
	public void dispose() {
		DLog("dispose");
	}

	/**
	 * Initialize the context. Doesn't do anything for now.
	 */
	public void initialize() {
		DLog("initialize");
	}
	
	public static void DLog(String msg) {
		Log.i("ANE1", msg);
	}
}
