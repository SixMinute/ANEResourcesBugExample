package com.sixminute.ane1;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import com.adobe.fre.FREContext;
import com.adobe.fre.FREFunction;
import com.adobe.fre.FREObject;
import com.facebook.Session;
import com.facebook.Session.Builder;
import com.facebook.Session.StatusCallback;
import com.facebook.SessionState;


public class ANE1ExtensionContext extends FREContext {
	public static final String LOGIN = "login";
	
	private static SessionStatusCallback sCallback;

    public ANE1ExtensionContext()
    {
    	ANE1Extension.DLog("FREContext<constructor>");
    }
	
	@Override
	public void dispose() {
    	ANE1Extension.DLog("FREContext.dispose");
	}

	@Override
	public Map<String, FREFunction> getFunctions() {
		ANE1Extension.DLog("FREContext.getFunctions");
		Map<String, FREFunction> functionMap = new HashMap<String, FREFunction>();

		functionMap.put(LOGIN, new Login());
		
		return functionMap;
	}
	
	public static class Login implements FREFunction {
		@Override
		public FREObject call(FREContext context, FREObject[] args) {
			ANE1Extension.DLog("Login.call");
			if(null == sCallback)
			{
				sCallback = new SessionStatusCallback();
			}
			
			ArrayList<String> permissions = new ArrayList<String>();

	        Session.setActiveSession(null);
			Session session = 
					new Builder( context.getActivity() ).
					setApplicationId("245225925648849").
					build();
			Session.setActiveSession(session);
			ANE1Extension.DLog( "open: " + session.isOpened() + ", closed: " + session.isClosed() );

			if( !session.isOpened() && !session.isClosed() ) {
				session.openForRead(
					new Session.OpenRequest( context.getActivity() )
						.setCallback(sCallback)
						.setPermissions(permissions)
				);
			}
			else if( !session.isClosed() )
			{
				Session.openActiveSession(context.getActivity(), true, sCallback);
			}
			
			return null;
		}
	}

    public static final class SessionStatusCallback implements StatusCallback {
        @Override
        public void call(Session session, SessionState state, Exception exception) {
        	ANE1Extension.DLog("---------- ENTERING CheckSession ----------");
        	
    		boolean isOpened = session.isOpened();
    		boolean isClosed = session.isClosed();
    		
    		StringBuilder sb = new StringBuilder();
    		sb.append("\tsession: ").append(session).
    			append("\n\tstate: ").append(state).
    			append("\n\tisOpened: ").append(isOpened).
    			append("\n\tisClosed: ").append(isClosed);
    		
    		ANE1Extension.DLog(sb.toString());
    		
    		
    		if(isOpened) 
    		{
    			ANE1Extension.DLog(session.getAccessToken());
    		}
        }
    }
}
