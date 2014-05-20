// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.android;

import android.app.Activity;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.facebook.AccessTokenSource;
import com.facebook.FacebookAuthorizationException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.LegacyHelper;
import com.facebook.Session;
import com.facebook.SessionLoginBehavior;
import com.facebook.SessionState;
import com.facebook.Settings;
import com.facebook.TokenCachingStrategy;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.MalformedURLException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.facebook.android:
//            DialogError, FacebookError, Util, FbDialog

public class Facebook
{
    public static interface DialogListener
    {

        public abstract void onCancel();

        public abstract void onComplete(Bundle bundle);

        public abstract void onError(DialogError dialogerror);

        public abstract void onFacebookError(FacebookError facebookerror);
    }

    public static interface ServiceListener
    {

        public abstract void onComplete(Bundle bundle);

        public abstract void onError(Error error);

        public abstract void onFacebookError(FacebookError facebookerror);
    }

    private class SetterTokenCachingStrategy extends TokenCachingStrategy
    {

        final Facebook this$0;

        public void clear()
        {
            accessToken = null;
        }

        public Bundle load()
        {
            Bundle bundle = new Bundle();
            if (accessToken != null)
            {
                TokenCachingStrategy.putToken(bundle, accessToken);
                TokenCachingStrategy.putExpirationMilliseconds(bundle, accessExpiresMillisecondsAfterEpoch);
                TokenCachingStrategy.putPermissions(bundle, Facebook.stringList(pendingAuthorizationPermissions));
                TokenCachingStrategy.putSource(bundle, AccessTokenSource.WEB_VIEW);
                TokenCachingStrategy.putLastRefreshMilliseconds(bundle, lastAccessUpdateMillisecondsAfterEpoch);
            }
            return bundle;
        }

        public void save(Bundle bundle)
        {
            accessToken = TokenCachingStrategy.getToken(bundle);
            accessExpiresMillisecondsAfterEpoch = TokenCachingStrategy.getExpirationMilliseconds(bundle);
            pendingAuthorizationPermissions = Facebook.stringArray(TokenCachingStrategy.getPermissions(bundle));
            lastAccessUpdateMillisecondsAfterEpoch = TokenCachingStrategy.getLastRefreshMilliseconds(bundle);
        }

        private SetterTokenCachingStrategy()
        {
            this$0 = Facebook.this;
            super();
        }

        SetterTokenCachingStrategy(SetterTokenCachingStrategy settertokencachingstrategy)
        {
            this();
        }
    }

    private static class TokenRefreshConnectionHandler extends Handler
    {

        WeakReference connectionWeakReference;
        WeakReference facebookWeakReference;

        public void handleMessage(Message message)
        {
            Facebook facebook;
            TokenRefreshServiceConnection tokenrefreshserviceconnection;
            String s;
            long l;
            facebook = (Facebook)facebookWeakReference.get();
            tokenrefreshserviceconnection = (TokenRefreshServiceConnection)connectionWeakReference.get();
            if (facebook == null || tokenrefreshserviceconnection == null)
            {
                return;
            }
            s = message.getData().getString("access_token");
            l = 1000L * message.getData().getLong("expires_in");
            if (s == null) goto _L2; else goto _L1
_L1:
            facebook.setAccessToken(s);
            facebook.setAccessExpires(l);
            Session session1 = facebook.session;
            if (session1 != null)
            {
                LegacyHelper.extendTokenCompleted(session1, message.getData());
            }
            if (tokenrefreshserviceconnection.serviceListener != null)
            {
                Bundle bundle = (Bundle)message.getData().clone();
                bundle.putLong("expires_in", l);
                tokenrefreshserviceconnection.serviceListener.onComplete(bundle);
            }
_L4:
            tokenrefreshserviceconnection.applicationsContext.unbindService(tokenrefreshserviceconnection);
            return;
_L2:
            if (tokenrefreshserviceconnection.serviceListener != null)
            {
                String s1 = message.getData().getString("error");
                if (message.getData().containsKey("error_code"))
                {
                    int i = message.getData().getInt("error_code");
                    tokenrefreshserviceconnection.serviceListener.onFacebookError(new FacebookError(s1, null, i));
                } else
                {
                    ServiceListener servicelistener = tokenrefreshserviceconnection.serviceListener;
                    String s2;
                    if (s1 != null)
                    {
                        s2 = s1;
                    } else
                    {
                        s2 = "Unknown service error";
                    }
                    servicelistener.onError(new Error(s2));
                }
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        TokenRefreshConnectionHandler(Facebook facebook, TokenRefreshServiceConnection tokenrefreshserviceconnection)
        {
            facebookWeakReference = new WeakReference(facebook);
            connectionWeakReference = new WeakReference(tokenrefreshserviceconnection);
        }
    }

    private class TokenRefreshServiceConnection
        implements ServiceConnection
    {

        final Context applicationsContext;
        final Messenger messageReceiver;
        Messenger messageSender;
        final ServiceListener serviceListener;
        final Facebook this$0;

        private void refreshToken()
        {
            Bundle bundle = new Bundle();
            bundle.putString("access_token", accessToken);
            Message message = Message.obtain();
            message.setData(bundle);
            message.replyTo = messageReceiver;
            try
            {
                messageSender.send(message);
                return;
            }
            catch (RemoteException remoteexception)
            {
                serviceListener.onError(new Error("Service connection error"));
            }
        }

        public void onServiceConnected(ComponentName componentname, IBinder ibinder)
        {
            messageSender = new Messenger(ibinder);
            refreshToken();
        }

        public void onServiceDisconnected(ComponentName componentname)
        {
            serviceListener.onError(new Error("Service disconnected"));
            applicationsContext.unbindService(this);
        }

        public TokenRefreshServiceConnection(Context context, ServiceListener servicelistener)
        {
            this$0 = Facebook.this;
            super();
            messageReceiver = new Messenger(new TokenRefreshConnectionHandler(Facebook.this, this));
            messageSender = null;
            applicationsContext = context;
            serviceListener = servicelistener;
        }
    }


    public static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    public static final Uri ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    public static final String CANCEL_URI = "fbconnect://cancel";
    private static final int DEFAULT_AUTH_ACTIVITY_CODE = 32665;
    protected static String DIALOG_BASE_URL = "https://m.facebook.com/dialog/";
    public static final String EXPIRES = "expires_in";
    public static final String FB_APP_SIGNATURE = "30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2";
    public static final int FORCE_DIALOG_AUTH = -1;
    protected static String GRAPH_BASE_URL = "https://graph.facebook.com/";
    private static final String LOGIN = "oauth";
    public static final String REDIRECT_URI = "fbconnect://success";
    private static final long REFRESH_TOKEN_BARRIER = 0x5265c00L;
    protected static String RESTSERVER_URL = "https://api.facebook.com/restserver.php";
    public static final String SINGLE_SIGN_ON_DISABLED = "service_disabled";
    public static final String TOKEN = "access_token";
    private long accessExpiresMillisecondsAfterEpoch;
    private String accessToken;
    private long lastAccessUpdateMillisecondsAfterEpoch;
    private final Object lock = new Object();
    private String mAppId;
    private Activity pendingAuthorizationActivity;
    private String pendingAuthorizationPermissions[];
    private Session pendingOpeningSession;
    private volatile Session session;
    private boolean sessionInvalidated;
    private SetterTokenCachingStrategy tokenCache;
    private volatile Session userSetSession;

    public Facebook(String s)
    {
        accessToken = null;
        accessExpiresMillisecondsAfterEpoch = 0L;
        lastAccessUpdateMillisecondsAfterEpoch = 0L;
        if (s == null)
        {
            throw new IllegalArgumentException("You must specify your application ID when instantiating a Facebook object. See README for details.");
        } else
        {
            mAppId = s;
            return;
        }
    }

    private void authorize(Activity activity, String as[], int i, SessionLoginBehavior sessionloginbehavior, final DialogListener listener)
    {
        checkUserSession("authorize");
        pendingOpeningSession = (new com.facebook.Session.Builder(activity)).setApplicationId(mAppId).setTokenCachingStrategy(getTokenCache()).build();
        pendingAuthorizationActivity = activity;
        String as1[];
        com.facebook.Session.StatusCallback statuscallback;
        com.facebook.Session.OpenRequest openrequest;
        Session session1;
        boolean flag;
        if (as != null)
        {
            as1 = as;
        } else
        {
            as1 = new String[0];
        }
        pendingAuthorizationPermissions = as1;
        statuscallback = new com.facebook.Session.StatusCallback() {

            final Facebook this$0;
            private final DialogListener val$listener;

            public void call(Session session2, SessionState sessionstate, Exception exception)
            {
                onSessionCallback(session2, sessionstate, exception, listener);
            }

            
            {
                this$0 = Facebook.this;
                listener = dialoglistener;
                super();
            }
        };
        openrequest = (new com.facebook.Session.OpenRequest(activity)).setCallback(statuscallback).setLoginBehavior(sessionloginbehavior).setRequestCode(i).setPermissions(Arrays.asList(pendingAuthorizationPermissions));
        session1 = pendingOpeningSession;
        if (pendingAuthorizationPermissions.length > 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        openSession(session1, openrequest, flag);
    }

    private void checkUserSession(String s)
    {
        if (userSetSession != null)
        {
            throw new UnsupportedOperationException(String.format("Cannot call %s after setSession has been called.", new Object[] {
                s
            }));
        } else
        {
            return;
        }
    }

    public static String getAttributionId(ContentResolver contentresolver)
    {
        return Settings.getAttributionId(contentresolver);
    }

    private TokenCachingStrategy getTokenCache()
    {
        if (tokenCache == null)
        {
            tokenCache = new SetterTokenCachingStrategy(null);
        }
        return tokenCache;
    }

    private void onSessionCallback(Session session1, SessionState sessionstate, Exception exception, DialogListener dialoglistener)
    {
        Bundle bundle = session1.getAuthorizationBundle();
        if (sessionstate != SessionState.OPENED) goto _L2; else goto _L1
_L1:
        Object obj = lock;
        obj;
        JVM INSTR monitorenter ;
        Session session2 = session;
        Session session3;
        session3 = null;
        if (session1 == session2)
        {
            break MISSING_BLOCK_LABEL_53;
        }
        session3 = session;
        session = session1;
        sessionInvalidated = false;
        obj;
        JVM INSTR monitorexit ;
        if (session3 != null)
        {
            session3.close();
        }
        dialoglistener.onComplete(bundle);
_L4:
        return;
        Exception exception1;
        exception1;
        obj;
        JVM INSTR monitorexit ;
        throw exception1;
_L2:
        if (exception != null)
        {
            if (exception instanceof FacebookOperationCanceledException)
            {
                dialoglistener.onCancel();
                return;
            }
            if ((exception instanceof FacebookAuthorizationException) && bundle != null && bundle.containsKey("com.facebook.sdk.WebViewErrorCode") && bundle.containsKey("com.facebook.sdk.FailingUrl"))
            {
                dialoglistener.onError(new DialogError(exception.getMessage(), bundle.getInt("com.facebook.sdk.WebViewErrorCode"), bundle.getString("com.facebook.sdk.FailingUrl")));
                return;
            } else
            {
                dialoglistener.onFacebookError(new FacebookError(exception.getMessage()));
                return;
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void openSession(Session session1, com.facebook.Session.OpenRequest openrequest, boolean flag)
    {
        openrequest.setIsLegacy(true);
        if (flag)
        {
            session1.openForPublish(openrequest);
            return;
        } else
        {
            session1.openForRead(openrequest);
            return;
        }
    }

    private static String[] stringArray(List list)
    {
        String as[];
        int j;
        int i;
        if (list != null)
        {
            i = list.size();
        } else
        {
            i = 0;
        }
        as = new String[i];
        if (list == null) goto _L2; else goto _L1
_L1:
        j = 0;
_L5:
        if (j < as.length) goto _L3; else goto _L2
_L2:
        return as;
_L3:
        as[j] = (String)list.get(j);
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static List stringList(String as[])
    {
        if (as != null)
        {
            return Arrays.asList(as);
        } else
        {
            return Collections.emptyList();
        }
    }

    private boolean validateAppSignatureForPackage(Context context, String s)
    {
        PackageInfo packageinfo;
        Signature asignature[];
        int i;
        int j;
        try
        {
            packageinfo = context.getPackageManager().getPackageInfo(s, 64);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return false;
        }
        asignature = packageinfo.signatures;
        i = asignature.length;
        j = 0;
        do
        {
            if (j >= i)
            {
                return false;
            }
            if (asignature[j].toCharsString().equals("30820268308201d102044a9c4610300d06092a864886f70d0101040500307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e3020170d3039303833313231353231365a180f32303530303932353231353231365a307a310b3009060355040613025553310b3009060355040813024341311230100603550407130950616c6f20416c746f31183016060355040a130f46616365626f6f6b204d6f62696c653111300f060355040b130846616365626f6f6b311d301b0603550403131446616365626f6f6b20436f72706f726174696f6e30819f300d06092a864886f70d010101050003818d0030818902818100c207d51df8eb8c97d93ba0c8c1002c928fab00dc1b42fca5e66e99cc3023ed2d214d822bc59e8e35ddcf5f44c7ae8ade50d7e0c434f500e6c131f4a2834f987fc46406115de2018ebbb0d5a3c261bd97581ccfef76afc7135a6d59e8855ecd7eacc8f8737e794c60a761c536b72b11fac8e603f5da1a2d54aa103b8a13c0dbc10203010001300d06092a864886f70d0101040500038181005ee9be8bcbb250648d3b741290a82a1c9dc2e76a0af2f2228f1d9f9c4007529c446a70175c5a900d5141812866db46be6559e2141616483998211f4a673149fb2232a10d247663b26a9031e15f84bc1c74d141ff98a02d76f85b2c8ab2571b6469b232d8e768a7f7ca04f7abe4a775615916c07940656b58717457b42bd928a2"))
            {
                return true;
            }
            j++;
        } while (true);
    }

    private boolean validateServiceIntent(Context context, Intent intent)
    {
        ResolveInfo resolveinfo = context.getPackageManager().resolveService(intent, 0);
        if (resolveinfo == null)
        {
            return false;
        } else
        {
            return validateAppSignatureForPackage(context, resolveinfo.serviceInfo.packageName);
        }
    }

    public void authorize(Activity activity, DialogListener dialoglistener)
    {
        authorize(activity, new String[0], 32665, SessionLoginBehavior.SSO_WITH_FALLBACK, dialoglistener);
    }

    public void authorize(Activity activity, String as[], int i, DialogListener dialoglistener)
    {
        SessionLoginBehavior sessionloginbehavior;
        if (i >= 0)
        {
            sessionloginbehavior = SessionLoginBehavior.SSO_WITH_FALLBACK;
        } else
        {
            sessionloginbehavior = SessionLoginBehavior.SUPPRESS_SSO;
        }
        authorize(activity, as, i, sessionloginbehavior, dialoglistener);
    }

    public void authorize(Activity activity, String as[], DialogListener dialoglistener)
    {
        authorize(activity, as, 32665, SessionLoginBehavior.SSO_WITH_FALLBACK, dialoglistener);
    }

    public void authorizeCallback(int i, int j, Intent intent)
    {
        checkUserSession("authorizeCallback");
        Session session1 = pendingOpeningSession;
        if (session1 != null && session1.onActivityResult(pendingAuthorizationActivity, i, j, intent))
        {
            pendingOpeningSession = null;
            pendingAuthorizationActivity = null;
            pendingAuthorizationPermissions = null;
        }
    }

    public void dialog(Context context, String s, Bundle bundle, DialogListener dialoglistener)
    {
        bundle.putString("display", "touch");
        bundle.putString("redirect_uri", "fbconnect://success");
        if (s.equals("oauth"))
        {
            bundle.putString("type", "user_agent");
            bundle.putString("client_id", mAppId);
        } else
        {
            bundle.putString("app_id", mAppId);
            if (isSessionValid())
            {
                bundle.putString("access_token", getAccessToken());
            }
        }
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") != 0)
        {
            Util.showAlert(context, "Error", "Application requires permission to access the Internet");
            return;
        } else
        {
            (new FbDialog(context, s, bundle, dialoglistener)).show();
            return;
        }
    }

    public void dialog(Context context, String s, DialogListener dialoglistener)
    {
        dialog(context, s, new Bundle(), dialoglistener);
    }

    public boolean extendAccessToken(Context context, ServiceListener servicelistener)
    {
        checkUserSession("extendAccessToken");
        Intent intent = new Intent();
        intent.setClassName("com.facebook.katana", "com.facebook.katana.platform.TokenRefreshService");
        if (!validateServiceIntent(context, intent))
        {
            return false;
        } else
        {
            return context.bindService(intent, new TokenRefreshServiceConnection(context, servicelistener), 1);
        }
    }

    public boolean extendAccessTokenIfNeeded(Context context, ServiceListener servicelistener)
    {
        checkUserSession("extendAccessTokenIfNeeded");
        if (shouldExtendAccessToken())
        {
            return extendAccessToken(context, servicelistener);
        } else
        {
            return true;
        }
    }

    public long getAccessExpires()
    {
        Session session1 = getSession();
        if (session1 != null)
        {
            return session1.getExpirationDate().getTime();
        } else
        {
            return accessExpiresMillisecondsAfterEpoch;
        }
    }

    public String getAccessToken()
    {
        Session session1 = getSession();
        if (session1 != null)
        {
            return session1.getAccessToken();
        } else
        {
            return null;
        }
    }

    public String getAppId()
    {
        return mAppId;
    }

    public long getLastAccessUpdate()
    {
        return lastAccessUpdateMillisecondsAfterEpoch;
    }

    public final Session getSession()
    {
_L2:
label0:
        {
            Session session7;
            synchronized (lock)
            {
                if (userSetSession == null)
                {
                    break label0;
                }
                session7 = userSetSession;
            }
            return session7;
        }
        Session session1;
        if (session == null && sessionInvalidated)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        session1 = session;
        obj;
        JVM INSTR monitorexit ;
        return session1;
        String s;
        Session session2;
        s = accessToken;
        session2 = session;
        obj;
        JVM INSTR monitorexit ;
        if (s == null)
        {
            return null;
        }
        break MISSING_BLOCK_LABEL_74;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        Object obj1;
        List list;
        Session session3;
        if (session2 != null)
        {
            list = session2.getPermissions();
        } else
        if (pendingAuthorizationPermissions != null)
        {
            list = Arrays.asList(pendingAuthorizationPermissions);
        } else
        {
            list = Collections.emptyList();
        }
        session3 = (new com.facebook.Session.Builder(pendingAuthorizationActivity)).setApplicationId(mAppId).setTokenCachingStrategy(getTokenCache()).build();
        if (session3.getState() != SessionState.CREATED_TOKEN_LOADED)
        {
            return null;
        }
        com.facebook.Session.OpenRequest openrequest = (new com.facebook.Session.OpenRequest(pendingAuthorizationActivity)).setPermissions(list);
        boolean flag;
        Session session4;
        Session session5;
        Session session6;
        if (list.isEmpty())
        {
            flag = false;
        } else
        {
            flag = true;
        }
        openSession(session3, openrequest, flag);
        obj1 = lock;
        obj1;
        JVM INSTR monitorenter ;
        if (sessionInvalidated)
        {
            break MISSING_BLOCK_LABEL_230;
        }
        session6 = session;
        session4 = null;
        session5 = null;
        if (session6 != null)
        {
            break MISSING_BLOCK_LABEL_251;
        }
        session4 = session;
        session = session3;
        session5 = session3;
        sessionInvalidated = false;
        obj1;
        JVM INSTR monitorexit ;
        if (session4 != null)
        {
            session4.close();
        }
        if (session5 == null) goto _L2; else goto _L1
_L1:
        return session5;
        Exception exception1;
        exception1;
        obj1;
        JVM INSTR monitorexit ;
        throw exception1;
    }

    public boolean getShouldAutoPublishInstall()
    {
        return Settings.getShouldAutoPublishInstall();
    }

    public boolean isSessionValid()
    {
        return getAccessToken() != null && (getAccessExpires() == 0L || System.currentTimeMillis() < getAccessExpires());
    }

    public String logout(Context context)
        throws MalformedURLException, IOException
    {
        return logoutImpl(context);
    }

    String logoutImpl(Context context)
        throws MalformedURLException, IOException
    {
        checkUserSession("logout");
        Bundle bundle = new Bundle();
        bundle.putString("method", "auth.expireSession");
        String s = request(bundle);
        long l = System.currentTimeMillis();
        Session session1;
        synchronized (lock)
        {
            session1 = session;
            session = null;
            accessToken = null;
            accessExpiresMillisecondsAfterEpoch = 0L;
            lastAccessUpdateMillisecondsAfterEpoch = l;
            sessionInvalidated = false;
        }
        if (session1 != null)
        {
            session1.closeAndClearTokenInformation();
        }
        return s;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean publishInstall(Context context)
    {
        Settings.publishInstallAsync(context, mAppId);
        return false;
    }

    public String request(Bundle bundle)
        throws MalformedURLException, IOException
    {
        if (!bundle.containsKey("method"))
        {
            throw new IllegalArgumentException("API method must be specified. (parameters must contain key \"method\" and value). See http://developers.facebook.com/docs/reference/rest/");
        } else
        {
            return requestImpl(null, bundle, "GET");
        }
    }

    public String request(String s)
        throws MalformedURLException, IOException
    {
        return requestImpl(s, new Bundle(), "GET");
    }

    public String request(String s, Bundle bundle)
        throws MalformedURLException, IOException
    {
        return requestImpl(s, bundle, "GET");
    }

    public String request(String s, Bundle bundle, String s1)
        throws FileNotFoundException, MalformedURLException, IOException
    {
        return requestImpl(s, bundle, s1);
    }

    String requestImpl(String s, Bundle bundle, String s1)
        throws FileNotFoundException, MalformedURLException, IOException
    {
        bundle.putString("format", "json");
        if (isSessionValid())
        {
            bundle.putString("access_token", getAccessToken());
        }
        String s2;
        if (s != null)
        {
            s2 = (new StringBuilder(String.valueOf(GRAPH_BASE_URL))).append(s).toString();
        } else
        {
            s2 = RESTSERVER_URL;
        }
        return Util.openUrl(s2, s1, bundle);
    }

    public void setAccessExpires(long l)
    {
        checkUserSession("setAccessExpires");
        synchronized (lock)
        {
            accessExpiresMillisecondsAfterEpoch = l;
            lastAccessUpdateMillisecondsAfterEpoch = System.currentTimeMillis();
            sessionInvalidated = true;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setAccessExpiresIn(String s)
    {
        checkUserSession("setAccessExpiresIn");
        if (s != null)
        {
            long l;
            if (s.equals("0"))
            {
                l = 0L;
            } else
            {
                l = System.currentTimeMillis() + 1000L * Long.parseLong(s);
            }
            setAccessExpires(l);
        }
    }

    public void setAccessToken(String s)
    {
        checkUserSession("setAccessToken");
        synchronized (lock)
        {
            accessToken = s;
            lastAccessUpdateMillisecondsAfterEpoch = System.currentTimeMillis();
            sessionInvalidated = true;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setAppId(String s)
    {
        checkUserSession("setAppId");
        synchronized (lock)
        {
            mAppId = s;
            sessionInvalidated = true;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setSession(Session session1)
    {
        if (session1 == null)
        {
            throw new IllegalArgumentException("session cannot be null");
        }
        synchronized (lock)
        {
            userSetSession = session1;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void setShouldAutoPublishInstall(boolean flag)
    {
        Settings.setShouldAutoPublishInstall(flag);
    }

    public void setTokenFromCache(String s, long l, long l1)
    {
        checkUserSession("setTokenFromCache");
        synchronized (lock)
        {
            accessToken = s;
            accessExpiresMillisecondsAfterEpoch = l;
            lastAccessUpdateMillisecondsAfterEpoch = l1;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public boolean shouldExtendAccessToken()
    {
        checkUserSession("shouldExtendAccessToken");
        return isSessionValid() && System.currentTimeMillis() - lastAccessUpdateMillisecondsAfterEpoch >= 0x5265c00L;
    }













}
