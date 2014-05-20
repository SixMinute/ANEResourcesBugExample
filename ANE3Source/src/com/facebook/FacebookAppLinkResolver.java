// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.net.Uri;
import android.os.Bundle;
import bolts.AppLink;
import bolts.AppLinkResolver;
import bolts.Continuation;
import bolts.Task;
import com.facebook.model.GraphObject;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            Request, Response, FacebookRequestError

public class FacebookAppLinkResolver
    implements AppLinkResolver
{

    private static final String APP_LINK_ANDROID_TARGET_KEY = "android";
    private static final String APP_LINK_TARGET_APP_NAME_KEY = "app_name";
    private static final String APP_LINK_TARGET_CLASS_KEY = "class";
    private static final String APP_LINK_TARGET_PACKAGE_KEY = "package";
    private static final String APP_LINK_TARGET_SHOULD_FALLBACK_KEY = "should_fallback";
    private static final String APP_LINK_TARGET_URL_KEY = "url";
    private static final String APP_LINK_WEB_TARGET_KEY = "web";
    private final HashMap cachedAppLinks = new HashMap();

    public FacebookAppLinkResolver()
    {
    }

    private static bolts.AppLink.Target getAndroidTargetFromJson(JSONObject jsonobject)
    {
        String s = tryGetStringFromJson(jsonobject, "package", null);
        if (s == null)
        {
            return null;
        }
        String s1 = tryGetStringFromJson(jsonobject, "class", null);
        String s2 = tryGetStringFromJson(jsonobject, "app_name", null);
        String s3 = tryGetStringFromJson(jsonobject, "url", null);
        Uri uri = null;
        if (s3 != null)
        {
            uri = Uri.parse(s3);
        }
        return new bolts.AppLink.Target(s, s1, uri, s2);
    }

    private static Uri getWebFallbackUriFromJson(Uri uri, JSONObject jsonobject)
    {
        JSONObject jsonobject1 = jsonobject.getJSONObject("web");
        if (!tryGetBooleanFromJson(jsonobject1, "should_fallback", true))
        {
            return null;
        }
        String s;
        Uri uri1;
        Uri uri2;
        try
        {
            s = tryGetStringFromJson(jsonobject1, "url", null);
        }
        catch (JSONException jsonexception)
        {
            return uri;
        }
        uri1 = null;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_47;
        }
        uri2 = Uri.parse(s);
        uri1 = uri2;
        if (uri1 != null)
        {
            return uri1;
        } else
        {
            return uri;
        }
    }

    private static boolean tryGetBooleanFromJson(JSONObject jsonobject, String s, boolean flag)
    {
        boolean flag1;
        try
        {
            flag1 = jsonobject.getBoolean(s);
        }
        catch (JSONException jsonexception)
        {
            return flag;
        }
        return flag1;
    }

    private static String tryGetStringFromJson(JSONObject jsonobject, String s, String s1)
    {
        String s2;
        try
        {
            s2 = jsonobject.getString(s);
        }
        catch (JSONException jsonexception)
        {
            return s1;
        }
        return s2;
    }

    public Task getAppLinkFromUrlInBackground(final Uri uri)
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(uri);
        return getAppLinkFromUrlsInBackground(arraylist).onSuccess(new Continuation() {

            final FacebookAppLinkResolver this$0;
            private final Uri val$uri;

            public AppLink then(Task task)
                throws Exception
            {
                return (AppLink)((Map)task.getResult()).get(uri);
            }

            public volatile Object then(Task task)
                throws Exception
            {
                return then((Task)task);
            }

            
            {
                this$0 = FacebookAppLinkResolver.this;
                uri = uri1;
                super();
            }
        });
    }

    public Task getAppLinkFromUrlsInBackground(List list)
    {
        final HashMap appLinkResults = new HashMap();
        final HashSet urisToRequest = new HashSet();
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = list.iterator();
        do
        {
            Uri uri;
            AppLink applink;
            if (!iterator.hasNext())
            {
                if (urisToRequest.isEmpty())
                {
                    return Task.forResult(appLinkResults);
                } else
                {
                    final bolts.Task.TaskCompletionSource taskCompletionSource = Task.create();
                    Bundle bundle = new Bundle();
                    bundle.putString("type", "al");
                    bundle.putString("ids", stringbuilder.toString());
                    bundle.putString("fields", String.format("%s,%s", new Object[] {
                        "android", "web"
                    }));
                    (new Request(null, "", bundle, null, new Request.Callback() {

                        final FacebookAppLinkResolver this$0;
                        private final Map val$appLinkResults;
                        private final bolts.Task.TaskCompletionSource val$taskCompletionSource;
                        private final HashSet val$urisToRequest;

                        public void onCompleted(Response response)
                        {
                            JSONObject jsonobject;
                            Iterator iterator1;
                            FacebookRequestError facebookrequesterror = response.getError();
                            if (facebookrequesterror != null)
                            {
                                taskCompletionSource.setError(facebookrequesterror.getException());
                                return;
                            }
                            GraphObject graphobject = response.getGraphObject();
                            if (graphobject != null)
                            {
                                jsonobject = graphobject.getInnerJSONObject();
                            } else
                            {
                                jsonobject = null;
                            }
                            if (jsonobject == null)
                            {
                                taskCompletionSource.setResult(appLinkResults);
                                return;
                            }
                            iterator1 = urisToRequest.iterator();
_L4:
                            Uri uri1;
                            do
                            {
                                if (!iterator1.hasNext())
                                {
                                    taskCompletionSource.setResult(appLinkResults);
                                    return;
                                }
                                uri1 = (Uri)iterator1.next();
                            } while (!jsonobject.has(uri1.toString()));
                            JSONObject jsonobject1;
                            JSONArray jsonarray;
                            int i;
                            ArrayList arraylist;
                            String s = uri1.toString();
                            jsonobject1 = jsonobject.getJSONObject(s);
                            jsonarray = jsonobject1.getJSONArray("android");
                            i = jsonarray.length();
                            arraylist = new ArrayList(i);
                            int j = 0;
_L2:
                            if (j < i)
                            {
                                break MISSING_BLOCK_LABEL_245;
                            }
                            AppLink applink1;
                            applink1 = new AppLink(uri1, arraylist, FacebookAppLinkResolver.getWebFallbackUriFromJson(uri1, jsonobject1));
                            appLinkResults.put(uri1, applink1);
                            synchronized (cachedAppLinks)
                            {
                                cachedAppLinks.put(uri1, applink1);
                            }
                            continue; /* Loop/switch isn't completed */
                            exception1;
                            hashmap1;
                            JVM INSTR monitorexit ;
                            throw exception1;
                            bolts.AppLink.Target target = FacebookAppLinkResolver.getAndroidTargetFromJson(jsonarray.getJSONObject(j));
                            if (target == null)
                            {
                                break MISSING_BLOCK_LABEL_272;
                            }
                            arraylist.add(target);
                            j++;
                            if (true) goto _L2; else goto _L1
_L1:
                            JSONException jsonexception;
                            jsonexception;
                            if (true) goto _L4; else goto _L3
_L3:
                        }

            
            {
                this$0 = FacebookAppLinkResolver.this;
                taskCompletionSource = taskcompletionsource;
                appLinkResults = map;
                urisToRequest = hashset;
                super();
            }
                    })).executeAsync();
                    return taskCompletionSource.getTask();
                }
            }
            uri = (Uri)iterator.next();
            synchronized (cachedAppLinks)
            {
                applink = (AppLink)cachedAppLinks.get(uri);
            }
            if (applink != null)
            {
                appLinkResults.put(uri, applink);
            } else
            {
                if (!urisToRequest.isEmpty())
                {
                    stringbuilder.append(',');
                }
                stringbuilder.append(uri.toString());
                urisToRequest.add(uri);
            }
        } while (true);
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }



}
