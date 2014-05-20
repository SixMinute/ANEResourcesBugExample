// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.SharedPreferences;
import android.os.Handler;
import android.util.Log;
import android.util.SparseArray;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.d;
import com.chartboost.sdk.Libraries.e;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Serializable;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.message.BasicHeader;
import org.json.JSONArray;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.chartboost.sdk.impl:
//            m, k, l

public class j
{
    private class a
        implements Serializable
    {

        final j a;
        private k b;
        private JSONObject c;
        private Integer d;
        private b e;

        static k a(a a1)
        {
            return a1.b;
        }

        static void a(a a1, JSONObject jsonobject)
        {
            a1.c = jsonobject;
        }

        static Integer b(a a1)
        {
            return a1.d;
        }

        static JSONObject c(a a1)
        {
            return a1.c;
        }

        static b d(a a1)
        {
            return a1.e;
        }

        public void a(String s)
        {
            if (!b.f() || j.a(a) == null) goto _L2; else goto _L1
_L1:
            SharedPreferences sharedpreferences = com.chartboost.sdk.Libraries.d.a();
            String s1 = (new StringBuilder("CBQueuedRequests-")).append(j.a(a)).toString();
            JSONObject jsonobject;
            String s2;
            JSONArray jsonarray;
            android.content.SharedPreferences.Editor editor;
            Exception exception1;
            try
            {
                jsonobject = b.h();
            }
            catch (Exception exception)
            {
                return;
            }
            if (jsonobject == null)
            {
                break MISSING_BLOCK_LABEL_180;
            }
            s2 = sharedpreferences.getString(s1, null);
            if (s2 == null) goto _L4; else goto _L3
_L3:
            jsonarray = new JSONArray(new JSONTokener(s2));
_L5:
            jsonarray.put(jsonobject);
            editor = sharedpreferences.edit();
            editor.putString(s1, jsonarray.toString());
            editor.commit();
            return;
            exception1;
            jsonarray = new JSONArray();
            continue; /* Loop/switch isn't completed */
_L4:
            jsonarray = new JSONArray();
            if (true) goto _L5; else goto _L2
_L2:
            if (e != null)
            {
                e.a(b, s);
            }
        }

        public a(int i, k k1, b b1)
        {
            a = j.this;
            super();
            d = Integer.valueOf(i);
            b = k1;
            e = b1;
            c = null;
        }
    }

    public static interface b
    {

        public abstract void a(k k1, String s);

        public abstract void a(JSONObject jsonobject, k k1);
    }

    public static abstract class c
        implements b
    {

        public void a(k k1, String s)
        {
        }

        public c()
        {
        }
    }

    private class d
        implements Runnable
    {

        final j a;
        private a b;

        static a a(d d1)
        {
            return d1.b;
        }

        private void a(boolean flag, String s)
        {
            com.chartboost.sdk.impl.j.d(a).post(new Runnable(this, flag, s) {

                final d a;
                private final boolean b;
                private final String c;

                public void run()
                {
                    a a1 = d.a(a);
                    if (b && a.c(a1) != null)
                    {
                        if (com.chartboost.sdk.impl.a.d(a1) != null)
                        {
                            com.chartboost.sdk.impl.a.d(a1).a(a.c(a1), a.a(a1));
                        }
                        return;
                    } else
                    {
                        a1.a(c);
                        return;
                    }
                }

            
            {
                a = d1;
                b = flag;
                c = s;
                super();
            }
            });
        }

        public void run()
        {
            k k1;
            HttpPost httppost;
            Map map;
            k1 = a.a(b);
            httppost = new HttpPost((new StringBuilder(String.valueOf(j.b(a)))).append(k1.a()).toString());
            httppost.setHeader("Content-Type", "application/json; charset=UTF-8");
            httppost.setHeader("Accept", "application/json; charset=UTF-8");
            httppost.setHeader("X-Chartboost-Client", "Chartboost-Android-SDK 3.4.0");
            httppost.setHeader("X-Chartboost-API", "3.3.0");
            map = k1.e();
            if (map == null) goto _L2; else goto _L1
_L1:
            Iterator iterator = map.entrySet().iterator();
_L13:
            if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
            int i;
            synchronized (a)
            {
                i = 1 + j.b();
                j.a(i);
            }
            if (k1.d() == null) goto _L5; else goto _L4
_L4:
            StringEntity stringentity = new StringEntity(k1.d().toString());
            stringentity.setContentType(new BasicHeader("Content-Type", "application/json"));
            httppost.setEntity(stringentity);
_L14:
            HttpResponse httpresponse1 = l.b().execute(httppost);
            int i1;
            HttpEntity httpentity;
            i1 = httpresponse1.getStatusLine().getStatusCode();
            httpentity = httpresponse1.getEntity();
            BufferedReader bufferedreader;
            StringBuilder stringbuilder1;
            InputStream inputstream = httpentity.getContent();
            bufferedreader = new BufferedReader(new InputStreamReader(inputstream, "UTF-8"), 2048);
            stringbuilder1 = new StringBuilder(inputstream.available());
_L16:
            String s4 = bufferedreader.readLine();
            if (s4 != null) goto _L7; else goto _L6
_L6:
            String s5;
            bufferedreader.close();
            s5 = stringbuilder1.toString();
            String s1 = s5;
_L17:
            if (i1 >= 300 || i1 < 200) goto _L9; else goto _L8
_L8:
            if (s1 == null)
            {
                break MISSING_BLOCK_LABEL_749;
            }
            JSONObject jsonobject;
            com.chartboost.sdk.Libraries.e.a a1;
            StringBuilder stringbuilder;
            jsonobject = new JSONObject(new JSONTokener(s1));
            a1 = a.a(b).g();
            stringbuilder = new StringBuilder();
            if (a1 == null) goto _L11; else goto _L10
_L10:
            if (a1.a(jsonobject, stringbuilder)) goto _L11; else goto _L12
_L12:
            String s3 = (new StringBuilder("Json response failed validation: ")).append(stringbuilder.toString()).toString();
_L18:
            com.chartboost.sdk.Libraries.d.a(httpentity);
            String s = s3;
_L19:
            j.c(a).remove(a.b(b).intValue());
_L15:
            Exception exception2;
            HttpResponse httpresponse;
            Exception exception1;
            boolean flag;
            Exception exception4;
            String s2;
            java.util.Map.Entry entry;
            if (a.c(b) != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            a(flag, s);
            return;
_L3:
            entry = (java.util.Map.Entry)iterator.next();
            httppost.setHeader((String)entry.getKey(), entry.getValue().toString());
              goto _L13
            exception;
            j1;
            JVM INSTR monitorexit ;
            throw exception;
_L5:
            Log.i((new StringBuilder("HTTP Request Body ")).append(i).append(" ").append(k1.c()).toString(), "<empty>");
              goto _L14
            exception2;
            httpresponse = null;
_L20:
            s = (new StringBuilder("Exception on http request: ")).append(exception2.getLocalizedMessage()).toString();
            Log.e("Chartboost", s);
            com.chartboost.sdk.Libraries.d.a(httpresponse);
            j.c(a).remove(a.b(b).intValue());
              goto _L15
_L7:
            stringbuilder1.append(s4).append("\n");
              goto _L16
            exception4;
            s1 = httpresponse1.toString();
              goto _L17
_L11:
            a.a(b, jsonobject);
            s3 = null;
              goto _L18
_L9:
            Log.w("Chartboost", (new StringBuilder("Request failed. Response code: ")).append(i1).append(", body: ").append(s1).toString());
            com.chartboost.sdk.Libraries.d.a(httpentity);
            s2 = (new StringBuilder("Request failed. Response code: ")).append(i1).append(" is not valid (>=200 and <300)").toString();
            s = s2;
              goto _L19
            exception1;
            j.c(a).remove(a.b(b).intValue());
            throw exception1;
            Exception exception3;
            exception3;
            httpresponse = httpresponse1;
            exception2 = exception3;
              goto _L20
            s3 = "Response is not a valid json object";
              goto _L18
        }

        public d(a a1)
        {
            a = j.this;
            super();
            b = a1;
        }
    }


    public static com.chartboost.sdk.Libraries.e.a a;
    private static int g = 0;
    private String b;
    private String c;
    private SparseArray d;
    private int e;
    private Handler f;

    public j(String s, String s1)
    {
        f = Chartboost.sharedChartboost().getHandler();
        String s2;
        if (s == null)
        {
            s2 = "https://live.chartboost.com";
        } else
        {
            s2 = s;
        }
        b = s2;
        c = s1;
        d = new SparseArray();
        e = 1;
    }

    static String a(j j1)
    {
        return j1.c;
    }

    static void a(int i)
    {
        g = i;
    }

    static int b()
    {
        return g;
    }

    static String b(j j1)
    {
        return j1.b;
    }

    static SparseArray c(j j1)
    {
        return j1.d;
    }

    static Handler d(j j1)
    {
        return j1.f;
    }

    public void a()
    {
        if (m.a()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        SharedPreferences sharedpreferences;
        String s;
        String s1;
        sharedpreferences = com.chartboost.sdk.Libraries.d.a();
        s = (new StringBuilder("CBQueuedRequests-")).append(c).toString();
        s1 = sharedpreferences.getString(s, null);
        if (s1 == null) goto _L1; else goto _L3
_L3:
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putString(s, null);
        editor.commit();
        JSONArray jsonarray;
        int i;
        int i1;
        Exception exception1;
        k k1;
        try
        {
            jsonarray = new JSONArray(new JSONTokener(s1));
        }
        catch (Exception exception)
        {
            Log.w("Chartboost", "Retrying request list failed");
            return;
        }
        i = 0;
        i1 = jsonarray.length();
        if (i >= i1) goto _L1; else goto _L4
_L4:
        k1 = k.a(jsonarray.getJSONObject(i));
        if (k1 == null)
        {
            break MISSING_BLOCK_LABEL_127;
        }
        a(k1);
_L5:
        i++;
        break MISSING_BLOCK_LABEL_90;
        exception1;
        Log.w("Chartboost", "Retrying request failed");
          goto _L5
    }

    public void a(k k1)
    {
        a(k1, null);
    }

    public void a(k k1, b b1)
    {
        int i = e;
        e = i + 1;
        a a1 = new a(i, k1, b1);
        if (!m.a())
        {
            a1.a("network unreachable");
            return;
        } else
        {
            d.put(i, a1);
            d d1 = new d(a1);
            l.a().execute(d1);
            return;
        }
    }

    static 
    {
        com.chartboost.sdk.Libraries.e.a aa[] = new com.chartboost.sdk.Libraries.e.a[2];
        aa[0] = com.chartboost.sdk.Libraries.e.a();
        aa[1] = new com.chartboost.sdk.Libraries.e.c() {

            public String a()
            {
                return "Must be a valid status code (>=200 && <300)";
            }

            public boolean a(Object obj)
            {
                int i = ((Number)obj).intValue();
                return i >= 200 && i < 300;
            }

        };
        a = com.chartboost.sdk.Libraries.e.a(aa);
    }
}
