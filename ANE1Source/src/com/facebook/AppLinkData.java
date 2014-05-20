// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.util.Log;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphObject;
import java.util.Iterator;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            FacebookException, Settings, Request, Response

public class AppLinkData
{
    public static interface CompletionHandler
    {

        public abstract void onDeferredAppLinkDataFetched(AppLinkData applinkdata);
    }


    private static final String APPLINK_BRIDGE_ARGS_KEY = "bridge_args";
    private static final String APPLINK_METHOD_ARGS_KEY = "method_args";
    private static final String APPLINK_VERSION_KEY = "version";
    public static final String ARGUMENTS_NATIVE_CLASS_KEY = "com.facebook.platform.APPLINK_NATIVE_CLASS";
    public static final String ARGUMENTS_NATIVE_URL = "com.facebook.platform.APPLINK_NATIVE_URL";
    public static final String ARGUMENTS_REFERER_DATA_KEY = "referer_data";
    public static final String ARGUMENTS_TAPTIME_KEY = "com.facebook.platform.APPLINK_TAP_TIME_UTC";
    private static final String BRIDGE_ARGS_METHOD_KEY = "method";
    private static final String BUNDLE_AL_APPLINK_DATA_KEY = "al_applink_data";
    static final String BUNDLE_APPLINK_ARGS_KEY = "com.facebook.platform.APPLINK_ARGS";
    private static final String DEFERRED_APP_LINK_ARGS_FIELD = "applink_args";
    private static final String DEFERRED_APP_LINK_CLASS_FIELD = "applink_class";
    private static final String DEFERRED_APP_LINK_CLICK_TIME_FIELD = "click_time";
    private static final String DEFERRED_APP_LINK_EVENT = "DEFERRED_APP_LINK";
    private static final String DEFERRED_APP_LINK_PATH = "%s/activities";
    private static final String DEFERRED_APP_LINK_URL_FIELD = "applink_url";
    private static final String METHOD_ARGS_REF_KEY = "ref";
    private static final String METHOD_ARGS_TARGET_URL_KEY = "target_url";
    private static final String REFERER_DATA_REF_KEY = "fb_ref";
    private static final String TAG = com/facebook/AppLinkData.getCanonicalName();
    private Bundle argumentBundle;
    private JSONObject arguments;
    private String ref;
    private Uri targetUri;

    private AppLinkData()
    {
    }

    public static AppLinkData createFromActivity(Activity activity)
    {
        Validate.notNull(activity, "activity");
        Intent intent = activity.getIntent();
        if (intent == null)
        {
            return null;
        }
        AppLinkData applinkdata = createFromAlApplinkData(intent);
        if (applinkdata == null)
        {
            applinkdata = createFromJson(intent.getStringExtra("com.facebook.platform.APPLINK_ARGS"));
        }
        if (applinkdata == null)
        {
            applinkdata = createFromUri(intent.getData());
        }
        return applinkdata;
    }

    private static AppLinkData createFromAlApplinkData(Intent intent)
    {
        Bundle bundle = intent.getBundleExtra("al_applink_data");
        if (bundle == null)
        {
            return null;
        }
        AppLinkData applinkdata = new AppLinkData();
        applinkdata.targetUri = intent.getData();
        if (applinkdata.targetUri == null)
        {
            String s = bundle.getString("target_url");
            if (s != null)
            {
                applinkdata.targetUri = Uri.parse(s);
            }
        }
        applinkdata.argumentBundle = bundle;
        applinkdata.arguments = null;
        Bundle bundle1 = bundle.getBundle("referer_data");
        if (bundle1 != null)
        {
            applinkdata.ref = bundle1.getString("fb_ref");
        }
        return applinkdata;
    }

    private static AppLinkData createFromJson(String s)
    {
        if (s == null)
        {
            return null;
        }
        AppLinkData applinkdata;
        JSONObject jsonobject = new JSONObject(s);
        String s1 = jsonobject.getString("version");
        if (!jsonobject.getJSONObject("bridge_args").getString("method").equals("applink") || !s1.equals("2"))
        {
            break MISSING_BLOCK_LABEL_210;
        }
        applinkdata = new AppLinkData();
        applinkdata.arguments = jsonobject.getJSONObject("method_args");
        if (!applinkdata.arguments.has("ref")) goto _L2; else goto _L1
_L1:
        applinkdata.ref = applinkdata.arguments.getString("ref");
_L4:
        if (applinkdata.arguments.has("target_url"))
        {
            applinkdata.targetUri = Uri.parse(applinkdata.arguments.getString("target_url"));
        }
        applinkdata.argumentBundle = toBundle(applinkdata.arguments);
        return applinkdata;
_L2:
        if (!applinkdata.arguments.has("referer_data")) goto _L4; else goto _L3
_L3:
        JSONObject jsonobject1 = applinkdata.arguments.getJSONObject("referer_data");
        if (jsonobject1.has("fb_ref"))
        {
            applinkdata.ref = jsonobject1.getString("fb_ref");
        }
          goto _L4
        JSONException jsonexception;
        jsonexception;
        Log.d(TAG, "Unable to parse AppLink JSON", jsonexception);
_L6:
        return null;
        FacebookException facebookexception;
        facebookexception;
        Log.d(TAG, "Unable to parse AppLink JSON", facebookexception);
        if (true) goto _L6; else goto _L5
_L5:
    }

    private static AppLinkData createFromUri(Uri uri)
    {
        if (uri == null)
        {
            return null;
        } else
        {
            AppLinkData applinkdata = new AppLinkData();
            applinkdata.targetUri = uri;
            return applinkdata;
        }
    }

    public static void fetchDeferredAppLinkData(Context context, CompletionHandler completionhandler)
    {
        fetchDeferredAppLinkData(context, null, completionhandler);
    }

    public static void fetchDeferredAppLinkData(Context context, String s, final CompletionHandler completionHandler)
    {
        Validate.notNull(context, "context");
        Validate.notNull(completionHandler, "completionHandler");
        if (s == null)
        {
            s = Utility.getMetadataApplicationId(context);
        }
        Validate.notNull(s, "applicationId");
        final Context applicationContext = context.getApplicationContext();
        final String applicationIdCopy = s;
        Settings.getExecutor().execute(new Runnable() {

            private final Context val$applicationContext;
            private final String val$applicationIdCopy;
            private final CompletionHandler val$completionHandler;

            public void run()
            {
                AppLinkData.fetchDeferredAppLinkFromServer(applicationContext, applicationIdCopy, completionHandler);
            }

            
            {
                applicationContext = context;
                applicationIdCopy = s;
                completionHandler = completionhandler;
                super();
            }
        });
    }

    private static void fetchDeferredAppLinkFromServer(Context context, String s, CompletionHandler completionhandler)
    {
        GraphObject graphobject;
        String s1;
        graphobject = com.facebook.model.GraphObject.Factory.create();
        graphobject.setProperty("event", "DEFERRED_APP_LINK");
        Utility.setAppEventAttributionParameters(graphobject, AttributionIdentifiers.getAttributionIdentifiers(context), Utility.getHashedDeviceAndAppID(context, s), Settings.getLimitEventAndDataUsage(context));
        graphobject.setProperty("application_package_name", context.getPackageName());
        s1 = String.format("%s/activities", new Object[] {
            s
        });
        GraphObject graphobject1 = Request.newPostRequest(null, s1, graphobject, null).executeAndWait().getGraphObject();
        if (graphobject1 == null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = graphobject1.getInnerJSONObject();
_L3:
        if (jsonobject == null)
        {
            break MISSING_BLOCK_LABEL_384;
        }
        String s2;
        long l;
        String s3;
        String s4;
        s2 = jsonobject.optString("applink_args");
        l = jsonobject.optLong("click_time", -1L);
        s3 = jsonobject.optString("applink_class");
        s4 = jsonobject.optString("applink_url");
        if (s2 == null || s2 == "")
        {
            break MISSING_BLOCK_LABEL_384;
        }
        AppLinkData applinkdata1 = createFromJson(s2);
        AppLinkData applinkdata;
        applinkdata = applinkdata1;
        if (l == -1L)
        {
            break MISSING_BLOCK_LABEL_210;
        }
        if (applinkdata.arguments != null)
        {
            applinkdata.arguments.put("com.facebook.platform.APPLINK_TAP_TIME_UTC", l);
        }
        if (applinkdata.argumentBundle != null)
        {
            applinkdata.argumentBundle.putString("com.facebook.platform.APPLINK_TAP_TIME_UTC", Long.toString(l));
        }
_L4:
        if (s3 == null)
        {
            break MISSING_BLOCK_LABEL_256;
        }
        if (applinkdata.arguments != null)
        {
            applinkdata.arguments.put("com.facebook.platform.APPLINK_NATIVE_CLASS", s3);
        }
        if (applinkdata.argumentBundle != null)
        {
            applinkdata.argumentBundle.putString("com.facebook.platform.APPLINK_NATIVE_CLASS", s3);
        }
_L6:
        if (s4 == null)
        {
            break MISSING_BLOCK_LABEL_302;
        }
        if (applinkdata.arguments != null)
        {
            applinkdata.arguments.put("com.facebook.platform.APPLINK_NATIVE_URL", s4);
        }
        if (applinkdata.argumentBundle != null)
        {
            applinkdata.argumentBundle.putString("com.facebook.platform.APPLINK_NATIVE_URL", s4);
        }
_L5:
        completionhandler.onDeferredAppLinkDataFetched(applinkdata);
        return;
_L2:
        jsonobject = null;
          goto _L3
        JSONException jsonexception2;
        jsonexception2;
        Log.d(TAG, "Unable to put tap time in AppLinkData.arguments");
          goto _L4
        Exception exception1;
        exception1;
_L7:
        Utility.logd(TAG, "Unable to fetch deferred applink from server");
          goto _L5
        JSONException jsonexception1;
        jsonexception1;
        Log.d(TAG, "Unable to put tap time in AppLinkData.arguments");
          goto _L6
        JSONException jsonexception;
        jsonexception;
        Log.d(TAG, "Unable to put tap time in AppLinkData.arguments");
          goto _L5
        Exception exception;
        exception;
        applinkdata = null;
          goto _L7
        applinkdata = null;
          goto _L5
    }

    private static Bundle toBundle(JSONObject jsonobject)
        throws JSONException
    {
        Bundle bundle = new Bundle();
        Iterator iterator = jsonobject.keys();
label0:
        do
        {
            if (!iterator.hasNext())
            {
                return bundle;
            }
            String s = (String)iterator.next();
            Object obj = jsonobject.get(s);
            if (obj instanceof JSONObject)
            {
                bundle.putBundle(s, toBundle((JSONObject)obj));
                continue;
            }
            if (obj instanceof JSONArray)
            {
                JSONArray jsonarray = (JSONArray)obj;
                if (jsonarray.length() == 0)
                {
                    bundle.putStringArray(s, new String[0]);
                    continue;
                }
                Object obj1 = jsonarray.get(0);
                if (obj1 instanceof JSONObject)
                {
                    Bundle abundle[] = new Bundle[jsonarray.length()];
                    int j = 0;
                    do
                    {
                        if (j >= jsonarray.length())
                        {
                            bundle.putParcelableArray(s, abundle);
                            continue label0;
                        }
                        abundle[j] = toBundle(jsonarray.getJSONObject(j));
                        j++;
                    } while (true);
                }
                if (obj1 instanceof JSONArray)
                {
                    throw new FacebookException("Nested arrays are not supported.");
                }
                String as[] = new String[jsonarray.length()];
                int i = 0;
                do
                {
                    if (i >= jsonarray.length())
                    {
                        bundle.putStringArray(s, as);
                        continue label0;
                    }
                    as[i] = jsonarray.get(i).toString();
                    i++;
                } while (true);
            }
            bundle.putString(s, obj.toString());
        } while (true);
    }

    public Bundle getArgumentBundle()
    {
        return argumentBundle;
    }

    public JSONObject getArguments()
    {
        return arguments;
    }

    public String getRef()
    {
        return ref;
    }

    public Bundle getRefererData()
    {
        if (argumentBundle != null)
        {
            return argumentBundle.getBundle("referer_data");
        } else
        {
            return null;
        }
    }

    public Uri getTargetUri()
    {
        return targetUri;
    }


}
