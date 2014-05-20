// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.graphics.Bitmap;
import android.location.Location;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Logger;
import com.facebook.internal.ServerProtocol;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphMultiResult;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;
import com.facebook.model.GraphPlace;
import com.facebook.model.GraphUser;
import com.facebook.model.OpenGraphAction;
import com.facebook.model.OpenGraphObject;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            HttpMethod, Session, FacebookException, Settings, 
//            Response, RequestBatch, RequestAsyncTask, LoggingBehavior, 
//            ProgressNoopOutputStream, ProgressOutputStream, RequestOutputStream

public class Request
{
    private static class Attachment
    {

        private final Request request;
        private final Object value;

        public Request getRequest()
        {
            return request;
        }

        public Object getValue()
        {
            return value;
        }

        public Attachment(Request request1, Object obj)
        {
            request = request1;
            value = obj;
        }
    }

    public static interface Callback
    {

        public abstract void onCompleted(Response response);
    }

    public static interface GraphPlaceListCallback
    {

        public abstract void onCompleted(List list, Response response);
    }

    public static interface GraphUserCallback
    {

        public abstract void onCompleted(GraphUser graphuser, Response response);
    }

    public static interface GraphUserListCallback
    {

        public abstract void onCompleted(List list, Response response);
    }

    private static interface KeyValueSerializer
    {

        public abstract void writeString(String s, String s1)
            throws IOException;
    }

    public static interface OnProgressCallback
        extends Callback
    {

        public abstract void onProgress(long l, long l1);
    }

    private static class ParcelFileDescriptorWithMimeType
        implements Parcelable
    {

        public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

            public ParcelFileDescriptorWithMimeType createFromParcel(Parcel parcel)
            {
                return new ParcelFileDescriptorWithMimeType(parcel, null);
            }

            public volatile Object createFromParcel(Parcel parcel)
            {
                return createFromParcel(parcel);
            }

            public ParcelFileDescriptorWithMimeType[] newArray(int i)
            {
                return new ParcelFileDescriptorWithMimeType[i];
            }

            public volatile Object[] newArray(int i)
            {
                return newArray(i);
            }

        };
        private final ParcelFileDescriptor fileDescriptor;
        private final String mimeType;

        public int describeContents()
        {
            return 1;
        }

        public ParcelFileDescriptor getFileDescriptor()
        {
            return fileDescriptor;
        }

        public String getMimeType()
        {
            return mimeType;
        }

        public void writeToParcel(Parcel parcel, int i)
        {
            parcel.writeString(mimeType);
            parcel.writeFileDescriptor(fileDescriptor.getFileDescriptor());
        }


        private ParcelFileDescriptorWithMimeType(Parcel parcel)
        {
            mimeType = parcel.readString();
            fileDescriptor = parcel.readFileDescriptor();
        }

        ParcelFileDescriptorWithMimeType(Parcel parcel, ParcelFileDescriptorWithMimeType parcelfiledescriptorwithmimetype)
        {
            this(parcel);
        }

        public ParcelFileDescriptorWithMimeType(ParcelFileDescriptor parcelfiledescriptor, String s)
        {
            mimeType = s;
            fileDescriptor = parcelfiledescriptor;
        }
    }

    private static class Serializer
        implements KeyValueSerializer
    {

        private boolean firstWrite;
        private final Logger logger;
        private final OutputStream outputStream;

        public transient void write(String s, Object aobj[])
            throws IOException
        {
            if (firstWrite)
            {
                outputStream.write("--".getBytes());
                outputStream.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
                outputStream.write("\r\n".getBytes());
                firstWrite = false;
            }
            outputStream.write(String.format(s, aobj).getBytes());
        }

        public void writeBitmap(String s, Bitmap bitmap)
            throws IOException
        {
            writeContentDisposition(s, s, "image/png");
            bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 100, outputStream);
            writeLine("", new Object[0]);
            writeRecordBoundary();
            if (logger != null)
            {
                logger.appendKeyValue((new StringBuilder("    ")).append(s).toString(), "<Image>");
            }
        }

        public void writeBytes(String s, byte abyte0[])
            throws IOException
        {
            writeContentDisposition(s, s, "content/unknown");
            outputStream.write(abyte0);
            writeLine("", new Object[0]);
            writeRecordBoundary();
            if (logger != null)
            {
                Logger logger1 = logger;
                String s1 = (new StringBuilder("    ")).append(s).toString();
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(abyte0.length);
                logger1.appendKeyValue(s1, String.format("<Data: %d>", aobj));
            }
        }

        public void writeContentDisposition(String s, String s1, String s2)
            throws IOException
        {
            write("Content-Disposition: form-data; name=\"%s\"", new Object[] {
                s
            });
            if (s1 != null)
            {
                write("; filename=\"%s\"", new Object[] {
                    s1
                });
            }
            writeLine("", new Object[0]);
            if (s2 != null)
            {
                writeLine("%s: %s", new Object[] {
                    "Content-Type", s2
                });
            }
            writeLine("", new Object[0]);
        }

        public void writeFile(String s, ParcelFileDescriptor parcelfiledescriptor, String s1)
            throws IOException
        {
            int i;
            if (s1 == null)
            {
                s1 = "content/unknown";
            }
            writeContentDisposition(s, s, s1);
            i = 0;
            if (!(outputStream instanceof ProgressNoopOutputStream)) goto _L2; else goto _L1
_L1:
            ((ProgressNoopOutputStream)outputStream).addProgress(parcelfiledescriptor.getStatSize());
_L7:
            writeLine("", new Object[0]);
            writeRecordBoundary();
            if (logger != null)
            {
                Logger logger1 = logger;
                String s2 = (new StringBuilder("    ")).append(s).toString();
                Object aobj[] = new Object[1];
                aobj[0] = Integer.valueOf(i);
                logger1.appendKeyValue(s2, String.format("<Data: %d>", aobj));
            }
            return;
_L2:
            android.os.ParcelFileDescriptor.AutoCloseInputStream autocloseinputstream;
            BufferedInputStream bufferedinputstream;
            autocloseinputstream = null;
            bufferedinputstream = null;
            android.os.ParcelFileDescriptor.AutoCloseInputStream autocloseinputstream1 = new android.os.ParcelFileDescriptor.AutoCloseInputStream(parcelfiledescriptor);
            BufferedInputStream bufferedinputstream1 = new BufferedInputStream(autocloseinputstream1);
            byte abyte0[] = new byte[8192];
_L3:
            int j = bufferedinputstream1.read(abyte0);
            if (j == -1)
            {
                if (bufferedinputstream1 != null)
                {
                    bufferedinputstream1.close();
                }
                if (autocloseinputstream1 != null)
                {
                    autocloseinputstream1.close();
                }
                continue; /* Loop/switch isn't completed */
            }
            outputStream.write(abyte0, 0, j);
            i += j;
              goto _L3
            Exception exception;
            exception;
_L5:
            if (bufferedinputstream != null)
            {
                bufferedinputstream.close();
            }
            if (autocloseinputstream != null)
            {
                autocloseinputstream.close();
            }
            throw exception;
            exception;
            autocloseinputstream = autocloseinputstream1;
            bufferedinputstream = null;
            continue; /* Loop/switch isn't completed */
            exception;
            bufferedinputstream = bufferedinputstream1;
            autocloseinputstream = autocloseinputstream1;
            if (true) goto _L5; else goto _L4
_L4:
            if (true) goto _L7; else goto _L6
_L6:
        }

        public void writeFile(String s, ParcelFileDescriptorWithMimeType parcelfiledescriptorwithmimetype)
            throws IOException
        {
            writeFile(s, parcelfiledescriptorwithmimetype.getFileDescriptor(), parcelfiledescriptorwithmimetype.getMimeType());
        }

        public transient void writeLine(String s, Object aobj[])
            throws IOException
        {
            write(s, aobj);
            write("\r\n", new Object[0]);
        }

        public void writeObject(String s, Object obj, Request request)
            throws IOException
        {
            if (outputStream instanceof RequestOutputStream)
            {
                ((RequestOutputStream)outputStream).setCurrentRequest(request);
            }
            if (Request.isSupportedParameterType(obj))
            {
                writeString(s, Request.parameterToString(obj));
                return;
            }
            if (obj instanceof Bitmap)
            {
                writeBitmap(s, (Bitmap)obj);
                return;
            }
            if (obj instanceof byte[])
            {
                writeBytes(s, (byte[])obj);
                return;
            }
            if (obj instanceof ParcelFileDescriptor)
            {
                writeFile(s, (ParcelFileDescriptor)obj, null);
                return;
            }
            if (obj instanceof ParcelFileDescriptorWithMimeType)
            {
                writeFile(s, (ParcelFileDescriptorWithMimeType)obj);
                return;
            } else
            {
                throw new IllegalArgumentException("value is not a supported type: String, Bitmap, byte[]");
            }
        }

        public void writeRecordBoundary()
            throws IOException
        {
            writeLine("--%s", new Object[] {
                "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
            });
        }

        public void writeRequestsAsJson(String s, JSONArray jsonarray, Collection collection)
            throws IOException, JSONException
        {
            if (outputStream instanceof RequestOutputStream) goto _L2; else goto _L1
_L1:
            writeString(s, jsonarray.toString());
_L4:
            return;
_L2:
            RequestOutputStream requestoutputstream = (RequestOutputStream)outputStream;
            writeContentDisposition(s, null, null);
            write("[", new Object[0]);
            int i = 0;
            Iterator iterator = collection.iterator();
            do
            {
label0:
                {
                    if (iterator.hasNext())
                    {
                        break label0;
                    }
                    write("]", new Object[0]);
                    if (logger != null)
                    {
                        logger.appendKeyValue((new StringBuilder("    ")).append(s).toString(), jsonarray.toString());
                        return;
                    }
                }
                if (true)
                {
                    continue;
                }
                Request request = (Request)iterator.next();
                JSONObject jsonobject = jsonarray.getJSONObject(i);
                requestoutputstream.setCurrentRequest(request);
                if (i > 0)
                {
                    Object aobj1[] = new Object[1];
                    aobj1[0] = jsonobject.toString();
                    write(",%s", aobj1);
                } else
                {
                    Object aobj[] = new Object[1];
                    aobj[0] = jsonobject.toString();
                    write("%s", aobj);
                }
                i++;
            } while (true);
            if (true) goto _L4; else goto _L3
_L3:
        }

        public void writeString(String s, String s1)
            throws IOException
        {
            writeContentDisposition(s, null, null);
            writeLine("%s", new Object[] {
                s1
            });
            writeRecordBoundary();
            if (logger != null)
            {
                logger.appendKeyValue((new StringBuilder("    ")).append(s).toString(), s1);
            }
        }

        public Serializer(OutputStream outputstream, Logger logger1)
        {
            firstWrite = true;
            outputStream = outputstream;
            logger = logger1;
        }
    }


    private static final String ACCEPT_LANGUAGE_HEADER = "Accept-Language";
    private static final String ACCESS_TOKEN_PARAM = "access_token";
    private static final String ATTACHED_FILES_PARAM = "attached_files";
    private static final String ATTACHMENT_FILENAME_PREFIX = "file";
    private static final String BATCH_APP_ID_PARAM = "batch_app_id";
    private static final String BATCH_BODY_PARAM = "body";
    private static final String BATCH_ENTRY_DEPENDS_ON_PARAM = "depends_on";
    private static final String BATCH_ENTRY_NAME_PARAM = "name";
    private static final String BATCH_ENTRY_OMIT_RESPONSE_ON_SUCCESS_PARAM = "omit_response_on_success";
    private static final String BATCH_METHOD_PARAM = "method";
    private static final String BATCH_PARAM = "batch";
    private static final String BATCH_RELATIVE_URL_PARAM = "relative_url";
    private static final String CONTENT_TYPE_HEADER = "Content-Type";
    private static final String FORMAT_JSON = "json";
    private static final String FORMAT_PARAM = "format";
    private static final String ISO_8601_FORMAT_STRING = "yyyy-MM-dd'T'HH:mm:ssZ";
    public static final int MAXIMUM_BATCH_SIZE = 50;
    private static final String ME = "me";
    private static final String MIME_BOUNDARY = "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f";
    private static final String MY_ACTION_FORMAT = "me/%s";
    private static final String MY_FEED = "me/feed";
    private static final String MY_FRIENDS = "me/friends";
    private static final String MY_OBJECTS_FORMAT = "me/objects/%s";
    private static final String MY_PHOTOS = "me/photos";
    private static final String MY_STAGING_RESOURCES = "me/staging_resources";
    private static final String MY_VIDEOS = "me/videos";
    private static final String OBJECT_PARAM = "object";
    private static final String PICTURE_PARAM = "picture";
    private static final String SDK_ANDROID = "android";
    private static final String SDK_PARAM = "sdk";
    private static final String SEARCH = "search";
    private static final String STAGING_PARAM = "file";
    public static final String TAG = com/facebook/Request.getSimpleName();
    private static final String USER_AGENT_BASE = "FBAndroidSDK";
    private static final String USER_AGENT_HEADER = "User-Agent";
    private static final String VIDEOS_SUFFIX = "/videos";
    private static String defaultBatchApplicationId;
    private static volatile String userAgent;
    private static Pattern versionPattern = Pattern.compile("^v\\d+\\.\\d+/.*");
    private String batchEntryDependsOn;
    private String batchEntryName;
    private boolean batchEntryOmitResultOnSuccess;
    private Callback callback;
    private GraphObject graphObject;
    private String graphPath;
    private HttpMethod httpMethod;
    private String overriddenURL;
    private Bundle parameters;
    private String restMethod;
    private Session session;
    private Object tag;
    private String version;

    public Request()
    {
        this(null, null, null, null, null);
    }

    public Request(Session session1, String s)
    {
        this(session1, s, null, null, null);
    }

    public Request(Session session1, String s, Bundle bundle, HttpMethod httpmethod)
    {
        this(session1, s, bundle, httpmethod, null);
    }

    public Request(Session session1, String s, Bundle bundle, HttpMethod httpmethod, Callback callback1)
    {
        this(session1, s, bundle, httpmethod, callback1, null);
    }

    public Request(Session session1, String s, Bundle bundle, HttpMethod httpmethod, Callback callback1, String s1)
    {
        batchEntryOmitResultOnSuccess = true;
        session = session1;
        graphPath = s;
        callback = callback1;
        version = s1;
        setHttpMethod(httpmethod);
        if (bundle != null)
        {
            parameters = new Bundle(bundle);
        } else
        {
            parameters = new Bundle();
        }
        if (version == null)
        {
            version = ServerProtocol.getAPIVersion();
        }
    }

    Request(Session session1, URL url)
    {
        batchEntryOmitResultOnSuccess = true;
        session = session1;
        overriddenURL = url.toString();
        setHttpMethod(HttpMethod.GET);
        parameters = new Bundle();
    }

    private void addCommonParameters()
    {
        if (session == null) goto _L2; else goto _L1
_L1:
        if (!session.isOpened())
        {
            throw new FacebookException("Session provided to a Request in un-opened state.");
        }
        if (!parameters.containsKey("access_token"))
        {
            String s3 = session.getAccessToken();
            Logger.registerAccessToken(s3);
            parameters.putString("access_token", s3);
        }
_L4:
        parameters.putString("sdk", "android");
        parameters.putString("format", "json");
        return;
_L2:
        if (!parameters.containsKey("access_token"))
        {
            String s = Settings.getApplicationId();
            String s1 = Settings.getClientToken();
            if (!Utility.isNullOrEmpty(s) && !Utility.isNullOrEmpty(s1))
            {
                String s2 = (new StringBuilder(String.valueOf(s))).append("|").append(s1).toString();
                parameters.putString("access_token", s2);
            } else
            {
                Log.d(TAG, "Warning: Sessionless Request needs token but missing either application ID or client token.");
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private String appendParametersToBaseUrl(String s)
    {
        android.net.Uri.Builder builder = (new android.net.Uri.Builder()).encodedPath(s);
        Iterator iterator = parameters.keySet().iterator();
        Object obj;
        do
        {
            do
            {
                if (!iterator.hasNext())
                {
                    return builder.toString();
                }
                String s1 = (String)iterator.next();
                obj = parameters.get(s1);
                if (obj == null)
                {
                    obj = "";
                }
                if (!isSupportedParameterType(obj))
                {
                    break;
                }
                builder.appendQueryParameter(s1, parameterToString(obj).toString());
            } while (true);
        } while (httpMethod != HttpMethod.GET);
        Object aobj[] = new Object[1];
        aobj[0] = obj.getClass().getSimpleName();
        throw new IllegalArgumentException(String.format("Unsupported parameter type for GET request: %s", aobj));
    }

    static HttpURLConnection createConnection(URL url)
        throws IOException
    {
        HttpURLConnection httpurlconnection = (HttpURLConnection)url.openConnection();
        httpurlconnection.setRequestProperty("User-Agent", getUserAgent());
        httpurlconnection.setRequestProperty("Content-Type", getMimeContentType());
        httpurlconnection.setRequestProperty("Accept-Language", Locale.getDefault().toString());
        httpurlconnection.setChunkedStreamingMode(0);
        return httpurlconnection;
    }

    public static Response executeAndWait(Request request)
    {
        List list = executeBatchAndWait(new Request[] {
            request
        });
        if (list == null || list.size() != 1)
        {
            throw new FacebookException("invalid state: expected a single response");
        } else
        {
            return (Response)list.get(0);
        }
    }

    public static List executeBatchAndWait(RequestBatch requestbatch)
    {
        Validate.notEmptyAndContainsNoNulls(requestbatch, "requests");
        HttpURLConnection httpurlconnection;
        try
        {
            httpurlconnection = toHttpConnection(requestbatch);
        }
        catch (Exception exception)
        {
            List list = Response.constructErrorResponses(requestbatch.getRequests(), null, new FacebookException(exception));
            runCallbacks(requestbatch, list);
            return list;
        }
        return executeConnectionAndWait(httpurlconnection, requestbatch);
    }

    public static List executeBatchAndWait(Collection collection)
    {
        return executeBatchAndWait(new RequestBatch(collection));
    }

    public static transient List executeBatchAndWait(Request arequest[])
    {
        Validate.notNull(arequest, "requests");
        return executeBatchAndWait(((Collection) (Arrays.asList(arequest))));
    }

    public static RequestAsyncTask executeBatchAsync(RequestBatch requestbatch)
    {
        Validate.notEmptyAndContainsNoNulls(requestbatch, "requests");
        RequestAsyncTask requestasynctask = new RequestAsyncTask(requestbatch);
        requestasynctask.executeOnSettingsExecutor();
        return requestasynctask;
    }

    public static RequestAsyncTask executeBatchAsync(Collection collection)
    {
        return executeBatchAsync(new RequestBatch(collection));
    }

    public static transient RequestAsyncTask executeBatchAsync(Request arequest[])
    {
        Validate.notNull(arequest, "requests");
        return executeBatchAsync(((Collection) (Arrays.asList(arequest))));
    }

    public static List executeConnectionAndWait(HttpURLConnection httpurlconnection, RequestBatch requestbatch)
    {
        List list;
        HashSet hashset;
        Iterator iterator;
        list = Response.fromHttpConnection(httpurlconnection, requestbatch);
        Utility.disconnectQuietly(httpurlconnection);
        int i = requestbatch.size();
        if (i != list.size())
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(list.size());
            aobj[1] = Integer.valueOf(i);
            throw new FacebookException(String.format("Received %d responses while expecting %d", aobj));
        }
        runCallbacks(requestbatch, list);
        hashset = new HashSet();
        iterator = requestbatch.iterator();
_L3:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Iterator iterator1 = hashset.iterator();
_L4:
        if (!iterator1.hasNext())
        {
            return list;
        }
        break MISSING_BLOCK_LABEL_151;
_L2:
        Request request = (Request)iterator.next();
        if (request.session != null)
        {
            hashset.add(request.session);
        }
          goto _L3
        ((Session)iterator1.next()).extendAccessTokenIfNeeded();
          goto _L4
    }

    public static List executeConnectionAndWait(HttpURLConnection httpurlconnection, Collection collection)
    {
        return executeConnectionAndWait(httpurlconnection, new RequestBatch(collection));
    }

    public static RequestAsyncTask executeConnectionAsync(Handler handler, HttpURLConnection httpurlconnection, RequestBatch requestbatch)
    {
        Validate.notNull(httpurlconnection, "connection");
        RequestAsyncTask requestasynctask = new RequestAsyncTask(httpurlconnection, requestbatch);
        requestbatch.setCallbackHandler(handler);
        requestasynctask.executeOnSettingsExecutor();
        return requestasynctask;
    }

    public static RequestAsyncTask executeConnectionAsync(HttpURLConnection httpurlconnection, RequestBatch requestbatch)
    {
        return executeConnectionAsync(null, httpurlconnection, requestbatch);
    }

    public static RequestAsyncTask executeGraphPathRequestAsync(Session session1, String s, Callback callback1)
    {
        return newGraphPathRequest(session1, s, callback1).executeAsync();
    }

    public static RequestAsyncTask executeMeRequestAsync(Session session1, GraphUserCallback graphusercallback)
    {
        return newMeRequest(session1, graphusercallback).executeAsync();
    }

    public static RequestAsyncTask executeMyFriendsRequestAsync(Session session1, GraphUserListCallback graphuserlistcallback)
    {
        return newMyFriendsRequest(session1, graphuserlistcallback).executeAsync();
    }

    public static RequestAsyncTask executePlacesSearchRequestAsync(Session session1, Location location, int i, int j, String s, GraphPlaceListCallback graphplacelistcallback)
    {
        return newPlacesSearchRequest(session1, location, i, j, s, graphplacelistcallback).executeAsync();
    }

    public static RequestAsyncTask executePostRequestAsync(Session session1, String s, GraphObject graphobject, Callback callback1)
    {
        return newPostRequest(session1, s, graphobject, callback1).executeAsync();
    }

    public static RequestAsyncTask executeRestRequestAsync(Session session1, String s, Bundle bundle, HttpMethod httpmethod)
    {
        return newRestRequest(session1, s, bundle, httpmethod).executeAsync();
    }

    public static RequestAsyncTask executeStatusUpdateRequestAsync(Session session1, String s, Callback callback1)
    {
        return newStatusUpdateRequest(session1, s, callback1).executeAsync();
    }

    public static RequestAsyncTask executeUploadPhotoRequestAsync(Session session1, Bitmap bitmap, Callback callback1)
    {
        return newUploadPhotoRequest(session1, bitmap, callback1).executeAsync();
    }

    public static RequestAsyncTask executeUploadPhotoRequestAsync(Session session1, File file, Callback callback1)
        throws FileNotFoundException
    {
        return newUploadPhotoRequest(session1, file, callback1).executeAsync();
    }

    private static String getBatchAppId(RequestBatch requestbatch)
    {
        if (!Utility.isNullOrEmpty(requestbatch.getBatchApplicationId()))
        {
            return requestbatch.getBatchApplicationId();
        }
        Iterator iterator = requestbatch.iterator();
        Session session1;
        do
        {
            if (!iterator.hasNext())
            {
                return defaultBatchApplicationId;
            }
            session1 = ((Request)iterator.next()).session;
        } while (session1 == null);
        return session1.getApplicationId();
    }

    public static final String getDefaultBatchApplicationId()
    {
        return defaultBatchApplicationId;
    }

    private String getGraphPathWithVersion()
    {
        if (versionPattern.matcher(graphPath).matches())
        {
            return graphPath;
        } else
        {
            Object aobj[] = new Object[2];
            aobj[0] = version;
            aobj[1] = graphPath;
            return String.format("%s/%s", aobj);
        }
    }

    private static String getMimeContentType()
    {
        return String.format("multipart/form-data; boundary=%s", new Object[] {
            "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
        });
    }

    private String getRestPathWithVersion()
    {
        if (versionPattern.matcher(restMethod).matches())
        {
            return restMethod;
        } else
        {
            Object aobj[] = new Object[3];
            aobj[0] = version;
            aobj[1] = "method";
            aobj[2] = restMethod;
            return String.format("%s/%s/%s", aobj);
        }
    }

    private static String getUserAgent()
    {
        if (userAgent == null)
        {
            userAgent = String.format("%s.%s", new Object[] {
                "FBAndroidSDK", "3.14.1"
            });
        }
        return userAgent;
    }

    private static boolean hasOnProgressCallbacks(RequestBatch requestbatch)
    {
        Iterator iterator = requestbatch.getCallbacks().iterator();
_L2:
        Iterator iterator1;
        if (iterator.hasNext())
        {
            continue; /* Loop/switch isn't completed */
        }
        iterator1 = requestbatch.iterator();
_L4:
        if (!iterator1.hasNext())
        {
            return false;
        }
        continue; /* Loop/switch isn't completed */
        if (!((RequestBatch.Callback)iterator.next() instanceof RequestBatch.OnProgressCallback)) goto _L2; else goto _L1
_L1:
        return true;
        if (!(((Request)iterator1.next()).getCallback() instanceof OnProgressCallback)) goto _L4; else goto _L3
_L3:
        return true;
    }

    private static boolean isSupportedAttachmentType(Object obj)
    {
        return (obj instanceof Bitmap) || (obj instanceof byte[]) || (obj instanceof ParcelFileDescriptor) || (obj instanceof ParcelFileDescriptorWithMimeType);
    }

    private static boolean isSupportedParameterType(Object obj)
    {
        return (obj instanceof String) || (obj instanceof Boolean) || (obj instanceof Number) || (obj instanceof Date);
    }

    public static Request newCustomAudienceThirdPartyIdRequest(Session session1, Context context, Callback callback1)
    {
        return newCustomAudienceThirdPartyIdRequest(session1, context, null, callback1);
    }

    public static Request newCustomAudienceThirdPartyIdRequest(Session session1, Context context, String s, Callback callback1)
    {
        if (session1 == null)
        {
            session1 = Session.getActiveSession();
        }
        if (session1 != null && !session1.isOpened())
        {
            session1 = null;
        }
        if (s == null)
        {
            if (session1 != null)
            {
                s = session1.getApplicationId();
            } else
            {
                s = Utility.getMetadataApplicationId(context);
            }
        }
        if (s == null)
        {
            throw new FacebookException("Facebook App ID cannot be determined");
        }
        String s1 = (new StringBuilder(String.valueOf(s))).append("/custom_audience_third_party_id").toString();
        AttributionIdentifiers attributionidentifiers = AttributionIdentifiers.getAttributionIdentifiers(context);
        Bundle bundle = new Bundle();
        if (session1 == null)
        {
            HttpMethod httpmethod;
            String s2;
            if (attributionidentifiers.getAttributionId() != null)
            {
                s2 = attributionidentifiers.getAttributionId();
            } else
            {
                s2 = attributionidentifiers.getAndroidAdvertiserId();
            }
            if (attributionidentifiers.getAttributionId() != null)
            {
                bundle.putString("udid", s2);
            }
        }
        if (Settings.getLimitEventAndDataUsage(context) || attributionidentifiers.isTrackingLimited())
        {
            bundle.putString("limit_event_usage", "1");
        }
        httpmethod = HttpMethod.GET;
        return new Request(session1, s1, bundle, httpmethod, callback1);
    }

    public static Request newDeleteObjectRequest(Session session1, String s, Callback callback1)
    {
        return new Request(session1, s, null, HttpMethod.DELETE, callback1);
    }

    public static Request newGraphPathRequest(Session session1, String s, Callback callback1)
    {
        return new Request(session1, s, null, null, callback1);
    }

    public static Request newMeRequest(Session session1, final GraphUserCallback callback)
    {
        return new Request(session1, "me", null, null, new Callback() {

            private final GraphUserCallback val$callback;

            public void onCompleted(Response response)
            {
                if (callback != null)
                {
                    callback.onCompleted((GraphUser)response.getGraphObjectAs(com/facebook/model/GraphUser), response);
                }
            }

            
            {
                callback = graphusercallback;
                super();
            }
        });
    }

    public static Request newMyFriendsRequest(Session session1, final GraphUserListCallback callback)
    {
        return new Request(session1, "me/friends", null, null, new Callback() {

            private final GraphUserListCallback val$callback;

            public void onCompleted(Response response)
            {
                if (callback != null)
                {
                    callback.onCompleted(Request.typedListFromResponse(response, com/facebook/model/GraphUser), response);
                }
            }

            
            {
                callback = graphuserlistcallback;
                super();
            }
        });
    }

    public static Request newPlacesSearchRequest(Session session1, Location location, int i, int j, String s, final GraphPlaceListCallback callback)
    {
        if (location == null && Utility.isNullOrEmpty(s))
        {
            throw new FacebookException("Either location or searchText must be specified.");
        }
        Bundle bundle = new Bundle(5);
        bundle.putString("type", "place");
        bundle.putInt("limit", j);
        if (location != null)
        {
            Locale locale = Locale.US;
            Object aobj[] = new Object[2];
            aobj[0] = Double.valueOf(location.getLatitude());
            aobj[1] = Double.valueOf(location.getLongitude());
            bundle.putString("center", String.format(locale, "%f,%f", aobj));
            bundle.putInt("distance", i);
        }
        if (!Utility.isNullOrEmpty(s))
        {
            bundle.putString("q", s);
        }
        Callback callback1 = new Callback() {

            private final GraphPlaceListCallback val$callback;

            public void onCompleted(Response response)
            {
                if (callback != null)
                {
                    callback.onCompleted(Request.typedListFromResponse(response, com/facebook/model/GraphPlace), response);
                }
            }

            
            {
                callback = graphplacelistcallback;
                super();
            }
        };
        return new Request(session1, "search", bundle, HttpMethod.GET, callback1);
    }

    public static Request newPostOpenGraphActionRequest(Session session1, OpenGraphAction opengraphaction, Callback callback1)
    {
        if (opengraphaction == null)
        {
            throw new FacebookException("openGraphAction cannot be null");
        }
        if (Utility.isNullOrEmpty(opengraphaction.getType()))
        {
            throw new FacebookException("openGraphAction must have non-null 'type' property");
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = opengraphaction.getType();
            return newPostRequest(session1, String.format("me/%s", aobj), opengraphaction, callback1);
        }
    }

    public static Request newPostOpenGraphObjectRequest(Session session1, OpenGraphObject opengraphobject, Callback callback1)
    {
        if (opengraphobject == null)
        {
            throw new FacebookException("openGraphObject cannot be null");
        }
        if (Utility.isNullOrEmpty(opengraphobject.getType()))
        {
            throw new FacebookException("openGraphObject must have non-null 'type' property");
        }
        if (Utility.isNullOrEmpty(opengraphobject.getTitle()))
        {
            throw new FacebookException("openGraphObject must have non-null 'title' property");
        } else
        {
            Object aobj[] = new Object[1];
            aobj[0] = opengraphobject.getType();
            String s = String.format("me/objects/%s", aobj);
            Bundle bundle = new Bundle();
            bundle.putString("object", opengraphobject.getInnerJSONObject().toString());
            return new Request(session1, s, bundle, HttpMethod.POST, callback1);
        }
    }

    public static Request newPostOpenGraphObjectRequest(Session session1, String s, String s1, String s2, String s3, String s4, GraphObject graphobject, Callback callback1)
    {
        OpenGraphObject opengraphobject = com.facebook.model.OpenGraphObject.Factory.createForPost(com/facebook/model/OpenGraphObject, s, s1, s2, s3, s4);
        if (graphobject != null)
        {
            opengraphobject.setData(graphobject);
        }
        return newPostOpenGraphObjectRequest(session1, opengraphobject, callback1);
    }

    public static Request newPostRequest(Session session1, String s, GraphObject graphobject, Callback callback1)
    {
        Request request = new Request(session1, s, null, HttpMethod.POST, callback1);
        request.setGraphObject(graphobject);
        return request;
    }

    public static Request newRestRequest(Session session1, String s, Bundle bundle, HttpMethod httpmethod)
    {
        Request request = new Request(session1, null, bundle, httpmethod);
        request.setRestMethod(s);
        return request;
    }

    public static Request newStatusUpdateRequest(Session session1, String s, Callback callback1)
    {
        return newStatusUpdateRequest(session1, s, ((String) (null)), null, callback1);
    }

    public static Request newStatusUpdateRequest(Session session1, String s, GraphPlace graphplace, List list, Callback callback1)
    {
        ArrayList arraylist = null;
        if (list == null) goto _L2; else goto _L1
_L1:
        Iterator iterator;
        arraylist = new ArrayList(list.size());
        iterator = list.iterator();
_L5:
        if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
        String s1;
        if (graphplace == null)
        {
            s1 = null;
        } else
        {
            s1 = graphplace.getId();
        }
        return newStatusUpdateRequest(session1, s, s1, ((List) (arraylist)), callback1);
_L3:
        arraylist.add(((GraphUser)iterator.next()).getId());
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static Request newStatusUpdateRequest(Session session1, String s, String s1, List list, Callback callback1)
    {
        Bundle bundle = new Bundle();
        bundle.putString("message", s);
        if (s1 != null)
        {
            bundle.putString("place", s1);
        }
        if (list != null && list.size() > 0)
        {
            bundle.putString("tags", TextUtils.join(",", list));
        }
        return new Request(session1, "me/feed", bundle, HttpMethod.POST, callback1);
    }

    public static Request newUpdateOpenGraphObjectRequest(Session session1, OpenGraphObject opengraphobject, Callback callback1)
    {
        if (opengraphobject == null)
        {
            throw new FacebookException("openGraphObject cannot be null");
        }
        String s = opengraphobject.getId();
        if (s == null)
        {
            throw new FacebookException("openGraphObject must have an id");
        } else
        {
            Bundle bundle = new Bundle();
            bundle.putString("object", opengraphobject.getInnerJSONObject().toString());
            return new Request(session1, s, bundle, HttpMethod.POST, callback1);
        }
    }

    public static Request newUpdateOpenGraphObjectRequest(Session session1, String s, String s1, String s2, String s3, String s4, GraphObject graphobject, Callback callback1)
    {
        OpenGraphObject opengraphobject = com.facebook.model.OpenGraphObject.Factory.createForPost(com/facebook/model/OpenGraphObject, null, s1, s2, s3, s4);
        opengraphobject.setId(s);
        opengraphobject.setData(graphobject);
        return newUpdateOpenGraphObjectRequest(session1, opengraphobject, callback1);
    }

    public static Request newUploadPhotoRequest(Session session1, Bitmap bitmap, Callback callback1)
    {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("picture", bitmap);
        return new Request(session1, "me/photos", bundle, HttpMethod.POST, callback1);
    }

    public static Request newUploadPhotoRequest(Session session1, File file, Callback callback1)
        throws FileNotFoundException
    {
        ParcelFileDescriptor parcelfiledescriptor = ParcelFileDescriptor.open(file, 0x10000000);
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("picture", parcelfiledescriptor);
        return new Request(session1, "me/photos", bundle, HttpMethod.POST, callback1);
    }

    public static Request newUploadStagingResourceWithImageRequest(Session session1, Bitmap bitmap, Callback callback1)
    {
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", bitmap);
        return new Request(session1, "me/staging_resources", bundle, HttpMethod.POST, callback1);
    }

    public static Request newUploadStagingResourceWithImageRequest(Session session1, File file, Callback callback1)
        throws FileNotFoundException
    {
        ParcelFileDescriptorWithMimeType parcelfiledescriptorwithmimetype = new ParcelFileDescriptorWithMimeType(ParcelFileDescriptor.open(file, 0x10000000), "image/png");
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("file", parcelfiledescriptorwithmimetype);
        return new Request(session1, "me/staging_resources", bundle, HttpMethod.POST, callback1);
    }

    public static Request newUploadVideoRequest(Session session1, File file, Callback callback1)
        throws FileNotFoundException
    {
        ParcelFileDescriptor parcelfiledescriptor = ParcelFileDescriptor.open(file, 0x10000000);
        Bundle bundle = new Bundle(1);
        bundle.putParcelable(file.getName(), parcelfiledescriptor);
        return new Request(session1, "me/videos", bundle, HttpMethod.POST, callback1);
    }

    private static String parameterToString(Object obj)
    {
        if (obj instanceof String)
        {
            return (String)obj;
        }
        if ((obj instanceof Boolean) || (obj instanceof Number))
        {
            return obj.toString();
        }
        if (obj instanceof Date)
        {
            return (new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US)).format(obj);
        } else
        {
            throw new IllegalArgumentException("Unsupported parameter type.");
        }
    }

    private static void processGraphObject(GraphObject graphobject, String s, KeyValueSerializer keyvalueserializer)
        throws IOException
    {
        boolean flag;
        Iterator iterator;
label0:
        {
            if (!s.startsWith("me/"))
            {
                boolean flag2 = s.startsWith("/me/");
                flag = false;
                if (!flag2)
                {
                    break label0;
                }
            }
            int i = s.indexOf(":");
            int j = s.indexOf("?");
            if (i > 3 && (j == -1 || i < j))
            {
                flag = true;
            } else
            {
                flag = false;
            }
        }
        iterator = graphobject.asMap().entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            boolean flag1;
            if (flag && ((String)entry.getKey()).equalsIgnoreCase("image"))
            {
                flag1 = true;
            } else
            {
                flag1 = false;
            }
            processGraphObjectProperty((String)entry.getKey(), entry.getValue(), keyvalueserializer, flag1);
        } while (true);
    }

    private static void processGraphObjectProperty(String s, Object obj, KeyValueSerializer keyvalueserializer, boolean flag)
        throws IOException
    {
        Class class1 = obj.getClass();
        if (!com/facebook/model/GraphObject.isAssignableFrom(class1)) goto _L2; else goto _L1
_L1:
        obj = ((GraphObject)obj).getInnerJSONObject();
        class1 = obj.getClass();
_L13:
        if (!org/json/JSONObject.isAssignableFrom(class1)) goto _L4; else goto _L3
_L3:
        JSONObject jsonobject = (JSONObject)obj;
        if (!flag) goto _L6; else goto _L5
_L5:
        Iterator iterator = jsonobject.keys();
_L9:
        if (iterator.hasNext()) goto _L8; else goto _L7
_L7:
        return;
_L2:
        if (com/facebook/model/GraphObjectList.isAssignableFrom(class1))
        {
            obj = ((GraphObjectList)obj).getInnerJSONArray();
            class1 = obj.getClass();
        }
        continue; /* Loop/switch isn't completed */
_L8:
        String s1 = (String)iterator.next();
        processGraphObjectProperty(String.format("%s[%s]", new Object[] {
            s, s1
        }), jsonobject.opt(s1), keyvalueserializer, flag);
          goto _L9
_L6:
        if (jsonobject.has("id"))
        {
            processGraphObjectProperty(s, jsonobject.optString("id"), keyvalueserializer, flag);
            return;
        }
        if (!jsonobject.has("url")) goto _L7; else goto _L10
_L10:
        processGraphObjectProperty(s, jsonobject.optString("url"), keyvalueserializer, flag);
        return;
_L4:
label0:
        {
            if (!org/json/JSONArray.isAssignableFrom(class1))
            {
                break label0;
            }
            JSONArray jsonarray = (JSONArray)obj;
            int i = jsonarray.length();
            int j = 0;
            while (j < i) 
            {
                Object aobj[] = new Object[2];
                aobj[0] = s;
                aobj[1] = Integer.valueOf(j);
                processGraphObjectProperty(String.format("%s[%d]", aobj), jsonarray.opt(j), keyvalueserializer, flag);
                j++;
            }
        }
          goto _L7
        if (java/lang/String.isAssignableFrom(class1) || java/lang/Number.isAssignableFrom(class1) || java/lang/Boolean.isAssignableFrom(class1))
        {
            keyvalueserializer.writeString(s, obj.toString());
            return;
        }
        if (!java/util/Date.isAssignableFrom(class1)) goto _L7; else goto _L11
_L11:
        Date date = (Date)obj;
        keyvalueserializer.writeString(s, (new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ssZ", Locale.US)).format(date));
        return;
        if (true) goto _L13; else goto _L12
_L12:
    }

    private static void processRequest(RequestBatch requestbatch, Logger logger, int i, URL url, OutputStream outputstream)
        throws IOException, JSONException
    {
        Serializer serializer = new Serializer(outputstream, logger);
        if (i == 1)
        {
            Request request = requestbatch.get(0);
            HashMap hashmap1 = new HashMap();
            Iterator iterator = request.parameters.keySet().iterator();
            do
            {
                String s1;
                Object obj;
                do
                {
                    if (!iterator.hasNext())
                    {
                        if (logger != null)
                        {
                            logger.append("  Parameters:\n");
                        }
                        serializeParameters(request.parameters, serializer, request);
                        if (logger != null)
                        {
                            logger.append("  Attachments:\n");
                        }
                        serializeAttachments(hashmap1, serializer);
                        if (request.graphObject != null)
                        {
                            processGraphObject(request.graphObject, url.getPath(), serializer);
                        }
                        return;
                    }
                    s1 = (String)iterator.next();
                    obj = request.parameters.get(s1);
                } while (!isSupportedAttachmentType(obj));
                hashmap1.put(s1, new Attachment(request, obj));
            } while (true);
        }
        String s = getBatchAppId(requestbatch);
        if (Utility.isNullOrEmpty(s))
        {
            throw new FacebookException("At least one request in a batch must have an open Session, or a default app ID must be specified.");
        }
        serializer.writeString("batch_app_id", s);
        HashMap hashmap = new HashMap();
        serializeRequestsAsJSON(serializer, requestbatch, hashmap);
        if (logger != null)
        {
            logger.append("  Attachments:\n");
        }
        serializeAttachments(hashmap, serializer);
    }

    static void runCallbacks(final RequestBatch requests, List list)
    {
        int i = requests.size();
        final ArrayList callbacks = new ArrayList();
        int j = 0;
        Runnable runnable;
        Handler handler;
        do
        {
            if (j >= i)
            {
                if (callbacks.size() > 0)
                {
                    runnable = new Runnable() {

                        private final ArrayList val$callbacks;
                        private final RequestBatch val$requests;

                        public void run()
                        {
                            Iterator iterator = callbacks.iterator();
_L3:
                            if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
                            Iterator iterator1 = requests.getCallbacks().iterator();
_L4:
                            if (!iterator1.hasNext())
                            {
                                return;
                            }
                            break MISSING_BLOCK_LABEL_72;
_L2:
                            Pair pair = (Pair)iterator.next();
                            ((Callback)pair.first).onCompleted((Response)pair.second);
                              goto _L3
                            ((RequestBatch.Callback)iterator1.next()).onBatchCompleted(requests);
                              goto _L4
                        }

            
            {
                callbacks = arraylist;
                requests = requestbatch;
                super();
            }
                    };
                    handler = requests.getCallbackHandler();
                    if (handler != null)
                    {
                        break;
                    }
                    runnable.run();
                }
                return;
            }
            Request request = requests.get(j);
            if (request.callback != null)
            {
                callbacks.add(new Pair(request.callback, (Response)list.get(j)));
            }
            j++;
        } while (true);
        handler.post(runnable);
    }

    private static void serializeAttachments(Map map, Serializer serializer)
        throws IOException
    {
        Iterator iterator = map.keySet().iterator();
        do
        {
            String s;
            Attachment attachment;
            do
            {
                if (!iterator.hasNext())
                {
                    return;
                }
                s = (String)iterator.next();
                attachment = (Attachment)map.get(s);
            } while (!isSupportedAttachmentType(attachment.getValue()));
            serializer.writeObject(s, attachment.getValue(), attachment.getRequest());
        } while (true);
    }

    private static void serializeParameters(Bundle bundle, Serializer serializer, Request request)
        throws IOException
    {
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            String s;
            Object obj;
            do
            {
                if (!iterator.hasNext())
                {
                    return;
                }
                s = (String)iterator.next();
                obj = bundle.get(s);
            } while (!isSupportedParameterType(obj));
            serializer.writeObject(s, obj, request);
        } while (true);
    }

    private static void serializeRequestsAsJSON(Serializer serializer, Collection collection, Map map)
        throws JSONException, IOException
    {
        JSONArray jsonarray = new JSONArray();
        Iterator iterator = collection.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                serializer.writeRequestsAsJson("batch", jsonarray, collection);
                return;
            }
            ((Request)iterator.next()).serializeToBatch(jsonarray, map);
        } while (true);
    }

    private void serializeToBatch(JSONArray jsonarray, Map map)
        throws JSONException, IOException
    {
        JSONObject jsonobject = new JSONObject();
        if (batchEntryName != null)
        {
            jsonobject.put("name", batchEntryName);
            jsonobject.put("omit_response_on_success", batchEntryOmitResultOnSuccess);
        }
        if (batchEntryDependsOn != null)
        {
            jsonobject.put("depends_on", batchEntryDependsOn);
        }
        String s = getUrlForBatchedRequest();
        jsonobject.put("relative_url", s);
        jsonobject.put("method", httpMethod);
        if (session != null)
        {
            Logger.registerAccessToken(session.getAccessToken());
        }
        ArrayList arraylist = new ArrayList();
        Iterator iterator = parameters.keySet().iterator();
        do
        {
            Object obj;
            do
            {
                if (!iterator.hasNext())
                {
                    if (!arraylist.isEmpty())
                    {
                        jsonobject.put("attached_files", TextUtils.join(",", arraylist));
                    }
                    if (graphObject != null)
                    {
                        final ArrayList keysAndValues = new ArrayList();
                        GraphObject graphobject = graphObject;
                        KeyValueSerializer keyvalueserializer = new KeyValueSerializer() {

                            final Request this$0;
                            private final ArrayList val$keysAndValues;

                            public void writeString(String s3, String s4)
                                throws IOException
                            {
                                ArrayList arraylist1 = keysAndValues;
                                Object aobj1[] = new Object[2];
                                aobj1[0] = s3;
                                aobj1[1] = URLEncoder.encode(s4, "UTF-8");
                                arraylist1.add(String.format("%s=%s", aobj1));
                            }

            
            {
                this$0 = Request.this;
                keysAndValues = arraylist;
                super();
            }
                        };
                        processGraphObject(graphobject, s, keyvalueserializer);
                        jsonobject.put("body", TextUtils.join("&", keysAndValues));
                    }
                    jsonarray.put(jsonobject);
                    return;
                }
                String s1 = (String)iterator.next();
                obj = parameters.get(s1);
            } while (!isSupportedAttachmentType(obj));
            Object aobj[] = new Object[2];
            aobj[0] = "file";
            aobj[1] = Integer.valueOf(map.size());
            String s2 = String.format("%s%d", aobj);
            arraylist.add(s2);
            Attachment attachment = new Attachment(this, obj);
            map.put(s2, attachment);
        } while (true);
    }

    static final void serializeToUrlConnection(RequestBatch requestbatch, HttpURLConnection httpurlconnection)
        throws IOException, JSONException
    {
        Logger logger;
        int i;
        URL url;
        logger = new Logger(LoggingBehavior.REQUESTS, "Request");
        i = requestbatch.size();
        HttpMethod httpmethod;
        boolean flag;
        if (i == 1)
        {
            httpmethod = requestbatch.get(0).httpMethod;
        } else
        {
            httpmethod = HttpMethod.POST;
        }
        httpurlconnection.setRequestMethod(httpmethod.name());
        url = httpurlconnection.getURL();
        logger.append("Request:\n");
        logger.appendKeyValue("Id", requestbatch.getId());
        logger.appendKeyValue("URL", url);
        logger.appendKeyValue("Method", httpurlconnection.getRequestMethod());
        logger.appendKeyValue("User-Agent", httpurlconnection.getRequestProperty("User-Agent"));
        logger.appendKeyValue("Content-Type", httpurlconnection.getRequestProperty("Content-Type"));
        httpurlconnection.setConnectTimeout(requestbatch.getTimeout());
        httpurlconnection.setReadTimeout(requestbatch.getTimeout());
        if (httpmethod == HttpMethod.POST)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            logger.log();
            return;
        }
        httpurlconnection.setDoOutput(true);
        Object obj;
        if (!hasOnProgressCallbacks(requestbatch))
        {
            break MISSING_BLOCK_LABEL_257;
        }
        ProgressNoopOutputStream progressnoopoutputstream = new ProgressNoopOutputStream(requestbatch.getCallbackHandler());
        processRequest(requestbatch, null, i, url, progressnoopoutputstream);
        int j = progressnoopoutputstream.getMaxProgress();
        Map map = progressnoopoutputstream.getProgressMap();
        obj = new ProgressOutputStream(new BufferedOutputStream(httpurlconnection.getOutputStream()), requestbatch, map, j);
_L1:
        processRequest(requestbatch, logger, i, url, ((OutputStream) (obj)));
        ((OutputStream) (obj)).close();
        logger.log();
        return;
        obj = new BufferedOutputStream(httpurlconnection.getOutputStream());
          goto _L1
        Exception exception;
        exception;
        obj = null;
_L3:
        ((OutputStream) (obj)).close();
        throw exception;
        exception;
        if (true) goto _L3; else goto _L2
_L2:
    }

    public static final void setDefaultBatchApplicationId(String s)
    {
        defaultBatchApplicationId = s;
    }

    public static HttpURLConnection toHttpConnection(RequestBatch requestbatch)
    {
        Iterator iterator = requestbatch.iterator();
_L5:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        URL url;
        if (requestbatch.size() != 1)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        url = new URL(requestbatch.get(0).getUrlForSingleRequest());
_L3:
        MalformedURLException malformedurlexception;
        HttpURLConnection httpurlconnection;
        try
        {
            httpurlconnection = createConnection(url);
            serializeToUrlConnection(requestbatch, httpurlconnection);
        }
        catch (IOException ioexception)
        {
            throw new FacebookException("could not construct request body", ioexception);
        }
        catch (JSONException jsonexception)
        {
            throw new FacebookException("could not construct request body", jsonexception);
        }
        return httpurlconnection;
_L2:
        ((Request)iterator.next()).validate();
        continue; /* Loop/switch isn't completed */
        url = new URL(ServerProtocol.getGraphUrlBase());
          goto _L3
        malformedurlexception;
        throw new FacebookException("could not construct URL for request", malformedurlexception);
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static HttpURLConnection toHttpConnection(Collection collection)
    {
        Validate.notEmptyAndContainsNoNulls(collection, "requests");
        return toHttpConnection(new RequestBatch(collection));
    }

    public static transient HttpURLConnection toHttpConnection(Request arequest[])
    {
        return toHttpConnection(((Collection) (Arrays.asList(arequest))));
    }

    private static List typedListFromResponse(Response response, Class class1)
    {
        GraphMultiResult graphmultiresult = (GraphMultiResult)response.getGraphObjectAs(com/facebook/model/GraphMultiResult);
        if (graphmultiresult == null)
        {
            return null;
        }
        GraphObjectList graphobjectlist = graphmultiresult.getData();
        if (graphobjectlist == null)
        {
            return null;
        } else
        {
            return graphobjectlist.castToListOf(class1);
        }
    }

    private void validate()
    {
        if (graphPath != null && restMethod != null)
        {
            throw new IllegalArgumentException("Only one of a graph path or REST method may be specified per request.");
        } else
        {
            return;
        }
    }

    public final Response executeAndWait()
    {
        return executeAndWait(this);
    }

    public final RequestAsyncTask executeAsync()
    {
        return executeBatchAsync(new Request[] {
            this
        });
    }

    public final String getBatchEntryDependsOn()
    {
        return batchEntryDependsOn;
    }

    public final String getBatchEntryName()
    {
        return batchEntryName;
    }

    public final boolean getBatchEntryOmitResultOnSuccess()
    {
        return batchEntryOmitResultOnSuccess;
    }

    public final Callback getCallback()
    {
        return callback;
    }

    public final GraphObject getGraphObject()
    {
        return graphObject;
    }

    public final String getGraphPath()
    {
        return graphPath;
    }

    public final HttpMethod getHttpMethod()
    {
        return httpMethod;
    }

    public final Bundle getParameters()
    {
        return parameters;
    }

    public final String getRestMethod()
    {
        return restMethod;
    }

    public final Session getSession()
    {
        return session;
    }

    public final Object getTag()
    {
        return tag;
    }

    final String getUrlForBatchedRequest()
    {
        if (overriddenURL != null)
        {
            throw new FacebookException("Can't override URL for a batch request");
        }
        String s;
        if (restMethod != null)
        {
            s = getRestPathWithVersion();
        } else
        {
            s = getGraphPathWithVersion();
        }
        addCommonParameters();
        return appendParametersToBaseUrl(s);
    }

    final String getUrlForSingleRequest()
    {
        if (overriddenURL != null)
        {
            return overriddenURL.toString();
        }
        String s1;
        if (restMethod != null)
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = ServerProtocol.getRestUrlBase();
            aobj1[1] = getRestPathWithVersion();
            s1 = String.format("%s/%s", aobj1);
        } else
        {
            String s;
            Object aobj[];
            if (getHttpMethod() == HttpMethod.POST && graphPath != null && graphPath.endsWith("/videos"))
            {
                s = ServerProtocol.getGraphVideoUrlBase();
            } else
            {
                s = ServerProtocol.getGraphUrlBase();
            }
            aobj = new Object[2];
            aobj[0] = s;
            aobj[1] = getGraphPathWithVersion();
            s1 = String.format("%s/%s", aobj);
        }
        addCommonParameters();
        return appendParametersToBaseUrl(s1);
    }

    public final String getVersion()
    {
        return version;
    }

    public final void setBatchEntryDependsOn(String s)
    {
        batchEntryDependsOn = s;
    }

    public final void setBatchEntryName(String s)
    {
        batchEntryName = s;
    }

    public final void setBatchEntryOmitResultOnSuccess(boolean flag)
    {
        batchEntryOmitResultOnSuccess = flag;
    }

    public final void setCallback(Callback callback1)
    {
        callback = callback1;
    }

    public final void setGraphObject(GraphObject graphobject)
    {
        graphObject = graphobject;
    }

    public final void setGraphPath(String s)
    {
        graphPath = s;
    }

    public final void setHttpMethod(HttpMethod httpmethod)
    {
        if (overriddenURL != null && httpmethod != HttpMethod.GET)
        {
            throw new FacebookException("Can't change HTTP method on request with overridden URL.");
        }
        HttpMethod httpmethod1;
        if (httpmethod != null)
        {
            httpmethod1 = httpmethod;
        } else
        {
            httpmethod1 = HttpMethod.GET;
        }
        httpMethod = httpmethod1;
    }

    public final void setParameters(Bundle bundle)
    {
        parameters = bundle;
    }

    public final void setRestMethod(String s)
    {
        restMethod = s;
    }

    public final void setSession(Session session1)
    {
        session = session1;
    }

    public final void setTag(Object obj)
    {
        tag = obj;
    }

    public final void setVersion(String s)
    {
        version = s;
    }

    public String toString()
    {
        return (new StringBuilder()).append("{Request: ").append(" session: ").append(session).append(", graphPath: ").append(graphPath).append(", graphObject: ").append(graphObject).append(", restMethod: ").append(restMethod).append(", httpMethod: ").append(httpMethod).append(", parameters: ").append(parameters).append("}").toString();
    }




}
