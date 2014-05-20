// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Executor;

// Referenced classes of package com.facebook:
//            RequestBatch, Request, Settings

public class RequestAsyncTask extends AsyncTask
{

    private static final String TAG = com/facebook/RequestAsyncTask.getCanonicalName();
    private static Method executeOnExecutorMethod;
    private final HttpURLConnection connection;
    private Exception exception;
    private final RequestBatch requests;

    public RequestAsyncTask(RequestBatch requestbatch)
    {
        this(null, requestbatch);
    }

    public RequestAsyncTask(HttpURLConnection httpurlconnection, RequestBatch requestbatch)
    {
        requests = requestbatch;
        connection = httpurlconnection;
    }

    public RequestAsyncTask(HttpURLConnection httpurlconnection, Collection collection)
    {
        this(httpurlconnection, new RequestBatch(collection));
    }

    public transient RequestAsyncTask(HttpURLConnection httpurlconnection, Request arequest[])
    {
        this(httpurlconnection, new RequestBatch(arequest));
    }

    public RequestAsyncTask(Collection collection)
    {
        this(null, new RequestBatch(collection));
    }

    public transient RequestAsyncTask(Request arequest[])
    {
        this(null, new RequestBatch(arequest));
    }

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient List doInBackground(Void avoid[])
    {
        List list;
        try
        {
            if (connection == null)
            {
                return requests.executeAndWait();
            }
            list = Request.executeConnectionAndWait(connection, requests);
        }
        catch (Exception exception1)
        {
            exception = exception1;
            return null;
        }
        return list;
    }

    RequestAsyncTask executeOnSettingsExecutor()
    {
        if (executeOnExecutorMethod == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        Method method = executeOnExecutorMethod;
        Object aobj[] = new Object[2];
        aobj[0] = Settings.getExecutor();
        aobj[1] = null;
        method.invoke(this, aobj);
        return this;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
_L2:
        execute(new Void[0]);
        return this;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    protected final Exception getException()
    {
        return exception;
    }

    protected final RequestBatch getRequests()
    {
        return requests;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((List)obj);
    }

    protected void onPostExecute(List list)
    {
        super.onPostExecute(list);
        if (exception != null)
        {
            String s = TAG;
            Object aobj[] = new Object[1];
            aobj[0] = exception.getMessage();
            Log.d(s, String.format("onPostExecute: exception encountered during request: %s", aobj));
        }
    }

    protected void onPreExecute()
    {
        super.onPreExecute();
        if (requests.getCallbackHandler() == null)
        {
            requests.setCallbackHandler(new Handler());
        }
    }

    public String toString()
    {
        return (new StringBuilder()).append("{RequestAsyncTask: ").append(" connection: ").append(connection).append(", requests: ").append(requests).append("}").toString();
    }

    static 
    {
        Method amethod[] = android/os/AsyncTask.getMethods();
        int i = amethod.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            Method method = amethod[j];
            if ("executeOnExecutor".equals(method.getName()))
            {
                Class aclass[] = method.getParameterTypes();
                if (aclass.length == 2 && aclass[0] == java/util/concurrent/Executor && aclass[1].isArray())
                {
                    executeOnExecutorMethod = method;
                    return;
                }
            }
            j++;
        } while (true);
    }
}
