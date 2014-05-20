// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.net.Uri;
import bolts.AppLink;
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
//            FacebookAppLinkResolver, Response, FacebookRequestError

class val.urisToRequest
    implements val.urisToRequest
{

    final FacebookAppLinkResolver this$0;
    private final Map val$appLinkResults;
    private final bolts.lver val$taskCompletionSource;
    private final HashSet val$urisToRequest;

    public void onCompleted(Response response)
    {
        JSONObject jsonobject;
        Iterator iterator;
        FacebookRequestError facebookrequesterror = response.getError();
        if (facebookrequesterror != null)
        {
            val$taskCompletionSource.setError(facebookrequesterror.getException());
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
            val$taskCompletionSource.setResult(val$appLinkResults);
            return;
        }
        iterator = val$urisToRequest.iterator();
_L4:
        Uri uri;
        do
        {
            if (!iterator.hasNext())
            {
                val$taskCompletionSource.setResult(val$appLinkResults);
                return;
            }
            uri = (Uri)iterator.next();
        } while (!jsonobject.has(uri.toString()));
        JSONObject jsonobject1;
        JSONArray jsonarray;
        int i;
        ArrayList arraylist;
        String s = uri.toString();
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
        AppLink applink;
        applink = new AppLink(uri, arraylist, FacebookAppLinkResolver.access$1(uri, jsonobject1));
        val$appLinkResults.put(uri, applink);
        synchronized (FacebookAppLinkResolver.access$2(FacebookAppLinkResolver.this))
        {
            FacebookAppLinkResolver.access$2(FacebookAppLinkResolver.this).put(uri, applink);
        }
        continue; /* Loop/switch isn't completed */
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
        bolts.lver lver = FacebookAppLinkResolver.access$0(jsonarray.getJSONObject(j));
        if (lver == null)
        {
            break MISSING_BLOCK_LABEL_272;
        }
        arraylist.add(lver);
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        JSONException jsonexception;
        jsonexception;
        if (true) goto _L4; else goto _L3
_L3:
    }

    ()
    {
        this$0 = final_facebookapplinkresolver;
        val$taskCompletionSource = lver;
        val$appLinkResults = map;
        val$urisToRequest = HashSet.this;
        super();
    }
}
