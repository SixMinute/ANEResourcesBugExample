// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphObject;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            LoggingBehavior, Response, FacebookRequestError, Request, 
//            RequestBatch, FacebookException

public final class Settings
{

    private static final String ANALYTICS_EVENT = "event";
    public static final String APPLICATION_ID_PROPERTY = "com.facebook.sdk.ApplicationId";
    private static final String APP_EVENT_PREFERENCES = "com.facebook.sdk.appEventPreferences";
    private static final String ATTRIBUTION_ID_COLUMN_NAME = "aid";
    private static final Uri ATTRIBUTION_ID_CONTENT_URI = Uri.parse("content://com.facebook.katana.provider.AttributionIdProvider");
    private static final String ATTRIBUTION_PREFERENCES = "com.facebook.sdk.attributionTracking";
    private static final String AUTO_PUBLISH = "auto_publish";
    public static final String CLIENT_TOKEN_PROPERTY = "com.facebook.sdk.ClientToken";
    private static final int DEFAULT_CORE_POOL_SIZE = 5;
    private static final int DEFAULT_KEEP_ALIVE = 1;
    private static final int DEFAULT_MAXIMUM_POOL_SIZE = 128;
    private static final ThreadFactory DEFAULT_THREAD_FACTORY = new ThreadFactory() {

        private final AtomicInteger counter = new AtomicInteger(0);

        public Thread newThread(Runnable runnable)
        {
            return new Thread(runnable, (new StringBuilder("FacebookSdk #")).append(counter.incrementAndGet()).toString());
        }

    };
    private static final BlockingQueue DEFAULT_WORK_QUEUE = new LinkedBlockingQueue(10);
    private static final String FACEBOOK_COM = "facebook.com";
    private static final Object LOCK = new Object();
    private static final String MOBILE_INSTALL_EVENT = "MOBILE_APP_INSTALL";
    private static final String PUBLISH_ACTIVITY_PATH = "%s/activities";
    private static final String TAG = com/facebook/Settings.getCanonicalName();
    private static volatile String appClientToken;
    private static volatile String appVersion;
    private static volatile String applicationId;
    private static volatile boolean defaultsLoaded = false;
    private static volatile Executor executor;
    private static volatile String facebookDomain = "facebook.com";
    private static final HashSet loggingBehaviors;
    private static AtomicLong onProgressThreshold = new AtomicLong(0x10000L);
    private static volatile boolean platformCompatibilityEnabled;
    private static volatile boolean shouldAutoPublishInstall;

    public Settings()
    {
    }

    public static final void addLoggingBehavior(LoggingBehavior loggingbehavior)
    {
        synchronized (loggingBehaviors)
        {
            loggingBehaviors.add(loggingbehavior);
        }
        return;
        exception;
        hashset;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static final void clearLoggingBehaviors()
    {
        synchronized (loggingBehaviors)
        {
            loggingBehaviors.clear();
        }
        return;
        exception;
        hashset;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static String getAppVersion()
    {
        return appVersion;
    }

    public static String getApplicationId()
    {
        return applicationId;
    }

    private static Executor getAsyncTaskExecutor()
    {
        Field field;
        Object obj;
        try
        {
            field = android/os/AsyncTask.getField("THREAD_POOL_EXECUTOR");
        }
        catch (NoSuchFieldException nosuchfieldexception)
        {
            return null;
        }
        try
        {
            obj = field.get(null);
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            return null;
        }
        if (obj == null)
        {
            return null;
        }
        if (!(obj instanceof Executor))
        {
            return null;
        } else
        {
            return (Executor)obj;
        }
    }

    public static String getAttributionId(ContentResolver contentresolver)
    {
        Cursor cursor;
        String s;
        try
        {
            String as[] = {
                "aid"
            };
            cursor = contentresolver.query(ATTRIBUTION_ID_CONTENT_URI, as, null, null, null);
        }
        catch (Exception exception)
        {
            Log.d(TAG, (new StringBuilder("Caught unexpected exception in getAttributionId(): ")).append(exception.toString()).toString());
            return null;
        }
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        if (!cursor.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_98;
        }
        s = cursor.getString(cursor.getColumnIndex("aid"));
        cursor.close();
        return s;
        return null;
    }

    public static String getClientToken()
    {
        return appClientToken;
    }

    public static Executor getExecutor()
    {
        Object obj = LOCK;
        obj;
        JVM INSTR monitorenter ;
        Object obj1;
        if (executor != null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        obj1 = getAsyncTaskExecutor();
        if (obj1 != null)
        {
            break MISSING_BLOCK_LABEL_42;
        }
        obj1 = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, DEFAULT_WORK_QUEUE, DEFAULT_THREAD_FACTORY);
        executor = ((Executor) (obj1));
        obj;
        JVM INSTR monitorexit ;
        return executor;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static String getFacebookDomain()
    {
        return facebookDomain;
    }

    public static boolean getLimitEventAndDataUsage(Context context)
    {
        return context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getBoolean("limitEventUsage", false);
    }

    public static final Set getLoggingBehaviors()
    {
        Set set;
        synchronized (loggingBehaviors)
        {
            set = Collections.unmodifiableSet(new HashSet(loggingBehaviors));
        }
        return set;
        exception;
        hashset;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static long getOnProgressThreshold()
    {
        return onProgressThreshold.get();
    }

    public static boolean getPlatformCompatibilityEnabled()
    {
        return platformCompatibilityEnabled;
    }

    public static String getSdkVersion()
    {
        return "3.14.1";
    }

    public static boolean getShouldAutoPublishInstall()
    {
        return shouldAutoPublishInstall;
    }

    public static final boolean isLoggingBehaviorEnabled(LoggingBehavior loggingbehavior)
    {
        HashSet hashset = loggingBehaviors;
        hashset;
        JVM INSTR monitorenter ;
        Exception exception;
        boolean flag;
        if (loggingBehaviors.contains(loggingbehavior))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        hashset;
        JVM INSTR monitorexit ;
        return flag;
        exception;
        hashset;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void loadDefaultsFromMetadata(Context context)
    {
        defaultsLoaded = true;
        if (context != null)
        {
            ApplicationInfo applicationinfo;
            try
            {
                applicationinfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                return;
            }
            if (applicationinfo != null && applicationinfo.metaData != null)
            {
                if (applicationId == null)
                {
                    applicationId = applicationinfo.metaData.getString("com.facebook.sdk.ApplicationId");
                }
                if (appClientToken == null)
                {
                    appClientToken = applicationinfo.metaData.getString("com.facebook.sdk.ClientToken");
                    return;
                }
            }
        }
    }

    static void loadDefaultsFromMetadataIfNeeded(Context context)
    {
        if (!defaultsLoaded)
        {
            loadDefaultsFromMetadata(context);
        }
    }

    public static boolean publishInstallAndWait(Context context, String s)
    {
        Response response = publishInstallAndWaitForResponse(context, s);
        return response != null && response.getError() == null;
    }

    public static Response publishInstallAndWaitForResponse(Context context, String s)
    {
        return publishInstallAndWaitForResponse(context, s, false);
    }

    static Response publishInstallAndWaitForResponse(Context context, String s, boolean flag)
    {
        if (context == null || s == null)
        {
            try
            {
                throw new IllegalArgumentException("Both context and applicationId must be non-null");
            }
            catch (Exception exception)
            {
                Utility.logd("Facebook-publish", exception);
                return new Response(null, null, new FacebookRequestError(null, exception));
            }
        }
        AttributionIdentifiers attributionidentifiers;
        SharedPreferences sharedpreferences;
        String s1;
        String s2;
        long l;
        String s3;
        attributionidentifiers = AttributionIdentifiers.getAttributionIdentifiers(context);
        sharedpreferences = context.getSharedPreferences("com.facebook.sdk.attributionTracking", 0);
        s1 = (new StringBuilder(String.valueOf(s))).append("ping").toString();
        s2 = (new StringBuilder(String.valueOf(s))).append("json").toString();
        l = sharedpreferences.getLong(s1, 0L);
        s3 = sharedpreferences.getString(s2, null);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_137;
        }
        setShouldAutoPublishInstall(false);
        Request request;
        GraphObject graphobject = com.facebook.model.GraphObject.Factory.create();
        graphobject.setProperty("event", "MOBILE_APP_INSTALL");
        Utility.setAppEventAttributionParameters(graphobject, attributionidentifiers, Utility.getHashedDeviceAndAppID(context, s), getLimitEventAndDataUsage(context));
        graphobject.setProperty("auto_publish", Boolean.valueOf(flag));
        graphobject.setProperty("application_package_name", context.getPackageName());
        request = Request.newPostRequest(null, String.format("%s/activities", new Object[] {
            s
        }), graphobject, null);
        if (l == 0L) goto _L2; else goto _L1
_L1:
        GraphObject graphobject1;
        graphobject1 = null;
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_251;
        }
        GraphObject graphobject2 = com.facebook.model.GraphObject.Factory.create(new JSONObject(s3));
        graphobject1 = graphobject2;
_L4:
        if (graphobject1 != null)
        {
            break MISSING_BLOCK_LABEL_290;
        }
        return (Response)Response.createResponsesFromString("true", null, new RequestBatch(new Request[] {
            request
        }), true).get(0);
        return new Response(null, null, null, graphobject1, true);
_L2:
        Response response;
        if (attributionidentifiers.getAndroidAdvertiserId() == null && attributionidentifiers.getAttributionId() == null)
        {
            throw new FacebookException("No attribution id available to send to server.");
        }
        if (!Utility.queryAppSettings(s, false).supportsAttribution())
        {
            throw new FacebookException("Install attribution has been disabled on the server.");
        }
        response = request.executeAndWait();
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putLong(s1, System.currentTimeMillis());
        if (response.getGraphObject() != null && response.getGraphObject().getInnerJSONObject() != null)
        {
            editor.putString(s2, response.getGraphObject().getInnerJSONObject().toString());
        }
        editor.commit();
        return response;
        JSONException jsonexception;
        jsonexception;
        graphobject1 = null;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public static void publishInstallAsync(Context context, String s)
    {
        publishInstallAsync(context, s, null);
    }

    public static void publishInstallAsync(Context context, final String applicationId, final Request.Callback callback)
    {
        final Context applicationContext = context.getApplicationContext();
        getExecutor().execute(new Runnable() {

            private final Context val$applicationContext;
            private final String val$applicationId;
            private final Request.Callback val$callback;

            public void run()
            {
                Response response = Settings.publishInstallAndWaitForResponse(applicationContext, applicationId);
                if (callback != null)
                {
                    (new Handler(Looper.getMainLooper())).post(response. new Runnable() {

                        final _cls2 this$1;
                        private final Request.Callback val$callback;
                        private final Response val$response;

                        public void run()
                        {
                            callback.onCompleted(response);
                        }

            
            {
                this$1 = final__pcls2;
                callback = callback1;
                response = Response.this;
                super();
            }
                    });
                }
            }

            
            {
                applicationContext = context;
                applicationId = s;
                callback = callback1;
                super();
            }
        });
    }

    public static final void removeLoggingBehavior(LoggingBehavior loggingbehavior)
    {
        synchronized (loggingBehaviors)
        {
            loggingBehaviors.remove(loggingbehavior);
        }
        return;
        exception;
        hashset;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void setAppVersion(String s)
    {
        appVersion = s;
    }

    public static void setApplicationId(String s)
    {
        applicationId = s;
    }

    public static void setClientToken(String s)
    {
        appClientToken = s;
    }

    public static void setExecutor(Executor executor1)
    {
        Validate.notNull(executor1, "executor");
        synchronized (LOCK)
        {
            executor = executor1;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void setFacebookDomain(String s)
    {
        facebookDomain = s;
    }

    public static void setLimitEventAndDataUsage(Context context, boolean flag)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit();
        editor.putBoolean("limitEventUsage", flag);
        editor.commit();
    }

    public static void setOnProgressThreshold(long l)
    {
        onProgressThreshold.set(l);
    }

    public static void setPlatformCompatibilityEnabled(boolean flag)
    {
        platformCompatibilityEnabled = flag;
    }

    public static void setShouldAutoPublishInstall(boolean flag)
    {
        shouldAutoPublishInstall = flag;
    }

    static 
    {
        LoggingBehavior aloggingbehavior[] = new LoggingBehavior[1];
        aloggingbehavior[0] = LoggingBehavior.DEVELOPER_ERRORS;
        loggingBehaviors = new HashSet(Arrays.asList(aloggingbehavior));
    }
}
