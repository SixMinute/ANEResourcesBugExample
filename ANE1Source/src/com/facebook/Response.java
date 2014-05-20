// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import com.facebook.internal.CacheableRequestBatch;
import com.facebook.internal.FileLruCache;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.facebook:
//            Request, FacebookRequestError, Session, FacebookException, 
//            LoggingBehavior, RequestBatch

public class Response
{
    static interface PagedResults
        extends GraphObject
    {

        public abstract GraphObjectList getData();

        public abstract PagingInfo getPaging();
    }

    public static final class PagingDirection extends Enum
    {

        private static final PagingDirection ENUM$VALUES[];
        public static final PagingDirection NEXT;
        public static final PagingDirection PREVIOUS;

        public static PagingDirection valueOf(String s)
        {
            return (PagingDirection)Enum.valueOf(com/facebook/Response$PagingDirection, s);
        }

        public static PagingDirection[] values()
        {
            PagingDirection apagingdirection[] = ENUM$VALUES;
            int i = apagingdirection.length;
            PagingDirection apagingdirection1[] = new PagingDirection[i];
            System.arraycopy(apagingdirection, 0, apagingdirection1, 0, i);
            return apagingdirection1;
        }

        static 
        {
            NEXT = new PagingDirection("NEXT", 0);
            PREVIOUS = new PagingDirection("PREVIOUS", 1);
            PagingDirection apagingdirection[] = new PagingDirection[2];
            apagingdirection[0] = NEXT;
            apagingdirection[1] = PREVIOUS;
            ENUM$VALUES = apagingdirection;
        }

        private PagingDirection(String s, int i)
        {
            super(s, i);
        }
    }

    static interface PagingInfo
        extends GraphObject
    {

        public abstract String getNext();

        public abstract String getPrevious();
    }


    static final boolean $assertionsDisabled = false;
    private static final String BODY_KEY = "body";
    private static final String CODE_KEY = "code";
    private static final int INVALID_SESSION_FACEBOOK_ERROR_CODE = 190;
    public static final String NON_JSON_RESPONSE_PROPERTY = "FACEBOOK_NON_JSON_RESULT";
    private static final String RESPONSE_CACHE_TAG = "ResponseCache";
    private static final String RESPONSE_LOG_TAG = "Response";
    private static FileLruCache responseCache;
    private final HttpURLConnection connection;
    private final FacebookRequestError error;
    private final GraphObject graphObject;
    private final GraphObjectList graphObjectList;
    private final boolean isFromCache;
    private final String rawResponse;
    private final Request request;

    Response(Request request1, HttpURLConnection httpurlconnection, FacebookRequestError facebookrequesterror)
    {
        this(request1, httpurlconnection, null, null, null, false, facebookrequesterror);
    }

    Response(Request request1, HttpURLConnection httpurlconnection, String s, GraphObject graphobject, GraphObjectList graphobjectlist, boolean flag, FacebookRequestError facebookrequesterror)
    {
        request = request1;
        connection = httpurlconnection;
        rawResponse = s;
        graphObject = graphobject;
        graphObjectList = graphobjectlist;
        isFromCache = flag;
        error = facebookrequesterror;
    }

    Response(Request request1, HttpURLConnection httpurlconnection, String s, GraphObject graphobject, boolean flag)
    {
        this(request1, httpurlconnection, s, graphobject, null, flag, null);
    }

    Response(Request request1, HttpURLConnection httpurlconnection, String s, GraphObjectList graphobjectlist, boolean flag)
    {
        this(request1, httpurlconnection, s, null, graphobjectlist, flag, null);
    }

    static List constructErrorResponses(List list, HttpURLConnection httpurlconnection, FacebookException facebookexception)
    {
        int i = list.size();
        ArrayList arraylist = new ArrayList(i);
        int j = 0;
        do
        {
            if (j >= i)
            {
                return arraylist;
            }
            arraylist.add(new Response((Request)list.get(j), httpurlconnection, new FacebookRequestError(httpurlconnection, facebookexception)));
            j++;
        } while (true);
    }

    private static Response createResponseFromObject(Request request1, HttpURLConnection httpurlconnection, Object obj, boolean flag, Object obj1)
        throws JSONException
    {
        if (obj instanceof JSONObject)
        {
            JSONObject jsonobject = (JSONObject)obj;
            FacebookRequestError facebookrequesterror = FacebookRequestError.checkResponseAndCreateError(jsonobject, obj1, httpurlconnection);
            if (facebookrequesterror != null)
            {
                if (facebookrequesterror.getErrorCode() == 190)
                {
                    Session session = request1.getSession();
                    if (session != null)
                    {
                        session.closeAndClearTokenInformation();
                    }
                }
                Response response = new Response(request1, httpurlconnection, facebookrequesterror);
                return response;
            }
            Object obj3 = Utility.getStringPropertyAsJSON(jsonobject, "body", "FACEBOOK_NON_JSON_RESULT");
            if (obj3 instanceof JSONObject)
            {
                GraphObject graphobject = com.facebook.model.GraphObject.Factory.create((JSONObject)obj3);
                return new Response(request1, httpurlconnection, obj3.toString(), graphobject, flag);
            }
            if (obj3 instanceof JSONArray)
            {
                GraphObjectList graphobjectlist = com.facebook.model.GraphObject.Factory.createList((JSONArray)obj3, com/facebook/model/GraphObject);
                return new Response(request1, httpurlconnection, obj3.toString(), graphobjectlist, flag);
            }
            obj = JSONObject.NULL;
        }
        Object obj2 = JSONObject.NULL;
        if (obj == obj2)
        {
            return new Response(request1, httpurlconnection, obj.toString(), ((GraphObject) (null)), flag);
        } else
        {
            StringBuilder stringbuilder = new StringBuilder("Got unexpected object type in response, class: ");
            throw new FacebookException(stringbuilder.append(obj.getClass().getSimpleName()).toString());
        }
    }

    private static List createResponsesFromObject(HttpURLConnection httpurlconnection, List list, Object obj, boolean flag)
        throws FacebookException, JSONException
    {
        int i;
        ArrayList arraylist;
        Object obj1;
        if (!$assertionsDisabled && httpurlconnection == null && !flag)
        {
            throw new AssertionError();
        }
        i = list.size();
        arraylist = new ArrayList(i);
        obj1 = obj;
        if (i != 1) goto _L2; else goto _L1
_L1:
        Request request2 = (Request)list.get(0);
        JSONObject jsonobject;
        jsonobject = new JSONObject();
        jsonobject.put("body", obj);
        if (httpurlconnection == null) goto _L4; else goto _L3
_L3:
        int k = httpurlconnection.getResponseCode();
_L7:
        JSONArray jsonarray1;
        jsonobject.put("code", k);
        jsonarray1 = new JSONArray();
        jsonarray1.put(jsonobject);
        obj = jsonarray1;
_L2:
        if (!(obj instanceof JSONArray) || ((JSONArray)obj).length() != i)
        {
            throw new FacebookException("Unexpected number of results");
        }
        break; /* Loop/switch isn't completed */
_L4:
        k = 200;
        continue; /* Loop/switch isn't completed */
        JSONException jsonexception1;
        jsonexception1;
        arraylist.add(new Response(request2, httpurlconnection, new FacebookRequestError(httpurlconnection, jsonexception1)));
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        arraylist.add(new Response(request2, httpurlconnection, new FacebookRequestError(httpurlconnection, ioexception)));
        if (true) goto _L2; else goto _L5
_L5:
        JSONArray jsonarray = (JSONArray)obj;
        int j = 0;
        do
        {
            if (j >= jsonarray.length())
            {
                return arraylist;
            }
            Request request1 = (Request)list.get(j);
            try
            {
                arraylist.add(createResponseFromObject(request1, httpurlconnection, jsonarray.get(j), flag, obj1));
            }
            catch (JSONException jsonexception)
            {
                arraylist.add(new Response(request1, httpurlconnection, new FacebookRequestError(httpurlconnection, jsonexception)));
            }
            catch (FacebookException facebookexception)
            {
                arraylist.add(new Response(request1, httpurlconnection, new FacebookRequestError(httpurlconnection, facebookexception)));
            }
            j++;
        } while (true);
        if (true) goto _L7; else goto _L6
_L6:
    }

    static List createResponsesFromStream(InputStream inputstream, HttpURLConnection httpurlconnection, RequestBatch requestbatch, boolean flag)
        throws FacebookException, JSONException, IOException
    {
        String s = Utility.readStreamToString(inputstream);
        LoggingBehavior loggingbehavior = LoggingBehavior.INCLUDE_RAW_RESPONSES;
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(s.length());
        aobj[1] = s;
        Logger.log(loggingbehavior, "Response", "Response (raw)\n  Size: %d\n  Response:\n%s\n", aobj);
        return createResponsesFromString(s, httpurlconnection, requestbatch, flag);
    }

    static List createResponsesFromString(String s, HttpURLConnection httpurlconnection, RequestBatch requestbatch, boolean flag)
        throws FacebookException, JSONException, IOException
    {
        List list = createResponsesFromObject(httpurlconnection, requestbatch, (new JSONTokener(s)).nextValue(), flag);
        LoggingBehavior loggingbehavior = LoggingBehavior.REQUESTS;
        Object aobj[] = new Object[3];
        aobj[0] = requestbatch.getId();
        aobj[1] = Integer.valueOf(s.length());
        aobj[2] = list;
        Logger.log(loggingbehavior, "Response", "Response\n  Id: %s\n  Size: %d\n  Responses:\n%s\n", aobj);
        return list;
    }

    static List fromHttpConnection(HttpURLConnection httpurlconnection, RequestBatch requestbatch)
    {
        boolean flag;
        FileLruCache filelrucache;
        String s;
        InputStream inputstream;
        flag = requestbatch instanceof CacheableRequestBatch;
        filelrucache = null;
        s = null;
        inputstream = null;
        if (!flag) goto _L2; else goto _L1
_L1:
        CacheableRequestBatch cacheablerequestbatch = (CacheableRequestBatch)requestbatch;
        filelrucache = getResponseCache();
        s = cacheablerequestbatch.getCacheKeyOverride();
        boolean flag1;
        boolean flag2;
        List list5;
        if (Utility.isNullOrEmpty(s))
        {
            if (requestbatch.size() == 1)
            {
                s = requestbatch.get(0).getUrlForSingleRequest();
            } else
            {
                Logger.log(LoggingBehavior.REQUESTS, "ResponseCache", "Not using cache for cacheable request because no key was specified");
            }
        }
        flag1 = cacheablerequestbatch.getForceRoundTrip();
        inputstream = null;
        if (flag1) goto _L2; else goto _L3
_L3:
        inputstream = null;
        if (filelrucache == null) goto _L2; else goto _L4
_L4:
        flag2 = Utility.isNullOrEmpty(s);
        inputstream = null;
        if (flag2) goto _L2; else goto _L5
_L5:
        inputstream = filelrucache.get(s);
        if (inputstream == null) goto _L7; else goto _L6
_L6:
        list5 = createResponsesFromStream(inputstream, null, requestbatch, true);
        Utility.closeQuietly(inputstream);
        return list5;
        FacebookException facebookexception1;
        facebookexception1;
        Utility.closeQuietly(inputstream);
_L2:
        if (httpurlconnection.getResponseCode() < 400) goto _L9; else goto _L8
_L8:
        inputstream = httpurlconnection.getErrorStream();
_L11:
        List list4 = createResponsesFromStream(inputstream, httpurlconnection, requestbatch, false);
        Utility.closeQuietly(inputstream);
        return list4;
        JSONException jsonexception1;
        jsonexception1;
        Utility.closeQuietly(inputstream);
        continue; /* Loop/switch isn't completed */
        IOException ioexception1;
        ioexception1;
        Utility.closeQuietly(inputstream);
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        Utility.closeQuietly(inputstream);
        throw exception1;
_L7:
        Utility.closeQuietly(inputstream);
        continue; /* Loop/switch isn't completed */
_L9:
        inputstream = httpurlconnection.getInputStream();
        if (filelrucache == null || s == null || inputstream == null) goto _L11; else goto _L10
_L10:
        InputStream inputstream1 = filelrucache.interceptAndPut(s, inputstream);
        if (inputstream1 != null)
        {
            inputstream = inputstream1;
        }
          goto _L11
        FacebookException facebookexception;
        facebookexception;
        List list3;
        Logger.log(LoggingBehavior.REQUESTS, "Response", "Response <Error>: %s", new Object[] {
            facebookexception
        });
        list3 = constructErrorResponses(requestbatch, httpurlconnection, facebookexception);
        Utility.closeQuietly(inputstream);
        return list3;
        JSONException jsonexception;
        jsonexception;
        List list2;
        Logger.log(LoggingBehavior.REQUESTS, "Response", "Response <Error>: %s", new Object[] {
            jsonexception
        });
        list2 = constructErrorResponses(requestbatch, httpurlconnection, new FacebookException(jsonexception));
        Utility.closeQuietly(inputstream);
        return list2;
        IOException ioexception;
        ioexception;
        List list1;
        Logger.log(LoggingBehavior.REQUESTS, "Response", "Response <Error>: %s", new Object[] {
            ioexception
        });
        list1 = constructErrorResponses(requestbatch, httpurlconnection, new FacebookException(ioexception));
        Utility.closeQuietly(inputstream);
        return list1;
        SecurityException securityexception;
        securityexception;
        List list;
        Logger.log(LoggingBehavior.REQUESTS, "Response", "Response <Error>: %s", new Object[] {
            securityexception
        });
        list = constructErrorResponses(requestbatch, httpurlconnection, new FacebookException(securityexception));
        Utility.closeQuietly(inputstream);
        return list;
        Exception exception;
        exception;
        Utility.closeQuietly(inputstream);
        throw exception;
        if (true) goto _L2; else goto _L12
_L12:
    }

    static FileLruCache getResponseCache()
    {
        if (responseCache == null)
        {
            android.content.Context context = Session.getStaticContext();
            if (context != null)
            {
                responseCache = new FileLruCache(context, "ResponseCache", new com.facebook.internal.FileLruCache.Limits());
            }
        }
        return responseCache;
    }

    public final HttpURLConnection getConnection()
    {
        return connection;
    }

    public final FacebookRequestError getError()
    {
        return error;
    }

    public final GraphObject getGraphObject()
    {
        return graphObject;
    }

    public final GraphObject getGraphObjectAs(Class class1)
    {
        if (graphObject == null)
        {
            return null;
        }
        if (class1 == null)
        {
            throw new NullPointerException("Must pass in a valid interface that extends GraphObject");
        } else
        {
            return graphObject.cast(class1);
        }
    }

    public final GraphObjectList getGraphObjectList()
    {
        return graphObjectList;
    }

    public final GraphObjectList getGraphObjectListAs(Class class1)
    {
        if (graphObjectList == null)
        {
            return null;
        } else
        {
            return graphObjectList.castToListOf(class1);
        }
    }

    public final boolean getIsFromCache()
    {
        return isFromCache;
    }

    public String getRawResponse()
    {
        return rawResponse;
    }

    public Request getRequest()
    {
        return request;
    }

    public Request getRequestForPagedResults(PagingDirection pagingdirection)
    {
        GraphObject graphobject = graphObject;
        String s = null;
        if (graphobject != null)
        {
            PagingInfo paginginfo = ((PagedResults)graphObject.cast(com/facebook/Response$PagedResults)).getPaging();
            s = null;
            if (paginginfo != null)
            {
                if (pagingdirection == PagingDirection.NEXT)
                {
                    s = paginginfo.getNext();
                } else
                {
                    s = paginginfo.getPrevious();
                }
            }
        }
        if (Utility.isNullOrEmpty(s))
        {
            return null;
        }
        if (s != null && s.equals(request.getUrlForSingleRequest()))
        {
            return null;
        }
        Request request1;
        try
        {
            request1 = new Request(request.getSession(), new URL(s));
        }
        catch (MalformedURLException malformedurlexception)
        {
            return null;
        }
        return request1;
    }

    public String toString()
    {
        Object aobj[] = new Object[1];
        if (connection == null) goto _L2; else goto _L1
_L1:
        int i = connection.getResponseCode();
_L3:
        String s1;
        aobj[0] = Integer.valueOf(i);
        s1 = String.format("%d", aobj);
        String s = s1;
_L4:
        return (new StringBuilder()).append("{Response: ").append(" responseCode: ").append(s).append(", graphObject: ").append(graphObject).append(", error: ").append(error).append(", isFromCache:").append(isFromCache).append("}").toString();
_L2:
        i = 200;
          goto _L3
        IOException ioexception;
        ioexception;
        s = "unknown";
          goto _L4
    }

    static 
    {
        boolean flag;
        if (!com/facebook/Response.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
