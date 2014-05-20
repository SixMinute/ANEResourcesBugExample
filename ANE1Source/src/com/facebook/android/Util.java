// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.android;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.Utility;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Iterator;
import java.util.Properties;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook.android:
//            FacebookError

public final class Util
{

    private static final String UTF8 = "UTF-8";

    public Util()
    {
    }

    public static Bundle decodeUrl(String s)
    {
        int i;
        Bundle bundle;
        i = 0;
        bundle = new Bundle();
        if (s == null) goto _L2; else goto _L1
_L1:
        String as[];
        int j;
        as = s.split("&");
        j = as.length;
_L5:
        if (i < j) goto _L3; else goto _L2
_L2:
        return bundle;
_L3:
        String as1[] = as[i].split("=");
label0:
        {
            if (as1.length == 2)
            {
                bundle.putString(URLDecoder.decode(as1[0], "UTF-8"), URLDecoder.decode(as1[1], "UTF-8"));
                break label0;
            }
            try
            {
                if (as1.length == 1)
                {
                    bundle.putString(URLDecoder.decode(as1[0], "UTF-8"), "");
                }
            }
            catch (UnsupportedEncodingException unsupportedencodingexception) { }
        }
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static String encodePostBody(Bundle bundle, String s)
    {
        if (bundle == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            String s1;
            Object obj;
            do
            {
                if (!iterator.hasNext())
                {
                    return stringbuilder.toString();
                }
                s1 = (String)iterator.next();
                obj = bundle.get(s1);
            } while (!(obj instanceof String));
            stringbuilder.append((new StringBuilder("Content-Disposition: form-data; name=\"")).append(s1).append("\"\r\n\r\n").append((String)obj).toString());
            stringbuilder.append((new StringBuilder("\r\n--")).append(s).append("\r\n").toString());
        } while (true);
    }

    public static String encodeUrl(Bundle bundle)
    {
        if (bundle == null)
        {
            return "";
        }
        StringBuilder stringbuilder = new StringBuilder();
        boolean flag = true;
        Iterator iterator = bundle.keySet().iterator();
        do
        {
            String s;
            do
            {
                if (!iterator.hasNext())
                {
                    return stringbuilder.toString();
                }
                s = (String)iterator.next();
            } while (!(bundle.get(s) instanceof String));
            if (flag)
            {
                flag = false;
            } else
            {
                stringbuilder.append("&");
            }
            stringbuilder.append((new StringBuilder(String.valueOf(URLEncoder.encode(s)))).append("=").append(URLEncoder.encode(bundle.getString(s))).toString());
        } while (true);
    }

    public static String openUrl(String s, String s1, Bundle bundle)
        throws MalformedURLException, IOException
    {
        HttpURLConnection httpurlconnection;
        if (s1.equals("GET"))
        {
            s = (new StringBuilder(String.valueOf(s))).append("?").append(encodeUrl(bundle)).toString();
        }
        Utility.logd("Facebook-Util", (new StringBuilder(String.valueOf(s1))).append(" URL: ").append(s).toString());
        httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection();
        httpurlconnection.setRequestProperty("User-Agent", (new StringBuilder(String.valueOf(System.getProperties().getProperty("http.agent")))).append(" FacebookAndroidSDK").toString());
        if (s1.equals("GET")) goto _L2; else goto _L1
_L1:
        Bundle bundle1;
        Iterator iterator;
        bundle1 = new Bundle();
        iterator = bundle.keySet().iterator();
_L10:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        BufferedOutputStream bufferedoutputstream;
        if (!bundle.containsKey("method"))
        {
            bundle.putString("method", s1);
        }
        if (bundle.containsKey("access_token"))
        {
            bundle.putString("access_token", URLDecoder.decode(bundle.getString("access_token")));
        }
        httpurlconnection.setRequestMethod("POST");
        httpurlconnection.setRequestProperty("Content-Type", (new StringBuilder("multipart/form-data;boundary=")).append("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").toString());
        httpurlconnection.setDoOutput(true);
        httpurlconnection.setDoInput(true);
        httpurlconnection.setRequestProperty("Connection", "Keep-Alive");
        httpurlconnection.connect();
        bufferedoutputstream = new BufferedOutputStream(httpurlconnection.getOutputStream());
        bufferedoutputstream.write((new StringBuilder("--")).append("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").append("\r\n").toString().getBytes());
        bufferedoutputstream.write(encodePostBody(bundle, "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").getBytes());
        bufferedoutputstream.write((new StringBuilder(String.valueOf("\r\n"))).append("--").append("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").append("\r\n").toString().getBytes());
        if (bundle1.isEmpty()) goto _L6; else goto _L5
_L5:
        Iterator iterator1 = bundle1.keySet().iterator();
_L8:
        if (iterator1.hasNext()) goto _L7; else goto _L6
_L6:
        bufferedoutputstream.flush();
        bufferedoutputstream.close();
_L2:
        String s2;
        Object obj;
        Exception exception;
        String s3;
        String s4;
        try
        {
            s3 = read(httpurlconnection.getInputStream());
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            return read(httpurlconnection.getErrorStream());
        }
        return s3;
_L4:
        s2 = (String)iterator.next();
        obj = bundle.get(s2);
        if (obj instanceof byte[])
        {
            bundle1.putByteArray(s2, (byte[])obj);
        }
        continue; /* Loop/switch isn't completed */
_L7:
        s4 = (String)iterator1.next();
        bufferedoutputstream.write((new StringBuilder("Content-Disposition: form-data; filename=\"")).append(s4).append("\"").append("\r\n").toString().getBytes());
        bufferedoutputstream.write((new StringBuilder("Content-Type: content/unknown")).append("\r\n").append("\r\n").toString().getBytes());
        bufferedoutputstream.write(bundle1.getByteArray(s4));
        bufferedoutputstream.write((new StringBuilder(String.valueOf("\r\n"))).append("--").append("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f").append("\r\n").toString().getBytes());
          goto _L8
        exception;
        bufferedoutputstream.close();
        throw exception;
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static JSONObject parseJson(String s)
        throws JSONException, FacebookError
    {
        if (s.equals("false"))
        {
            throw new FacebookError("request failed");
        }
        if (s.equals("true"))
        {
            s = "{value : true}";
        }
        JSONObject jsonobject = new JSONObject(s);
        if (jsonobject.has("error"))
        {
            JSONObject jsonobject1 = jsonobject.getJSONObject("error");
            throw new FacebookError(jsonobject1.getString("message"), jsonobject1.getString("type"), 0);
        }
        if (jsonobject.has("error_code") && jsonobject.has("error_msg"))
        {
            throw new FacebookError(jsonobject.getString("error_msg"), "", Integer.parseInt(jsonobject.getString("error_code")));
        }
        if (jsonobject.has("error_code"))
        {
            throw new FacebookError("request failed", "", Integer.parseInt(jsonobject.getString("error_code")));
        }
        if (jsonobject.has("error_msg"))
        {
            throw new FacebookError(jsonobject.getString("error_msg"));
        }
        if (jsonobject.has("error_reason"))
        {
            throw new FacebookError(jsonobject.getString("error_reason"));
        } else
        {
            return jsonobject;
        }
    }

    public static Bundle parseUrl(String s)
    {
        String s1 = s.replace("fbconnect", "http");
        Bundle bundle;
        try
        {
            URL url = new URL(s1);
            bundle = decodeUrl(url.getQuery());
            bundle.putAll(decodeUrl(url.getRef()));
        }
        catch (MalformedURLException malformedurlexception)
        {
            return new Bundle();
        }
        return bundle;
    }

    private static String read(InputStream inputstream)
        throws IOException
    {
        StringBuilder stringbuilder = new StringBuilder();
        BufferedReader bufferedreader = new BufferedReader(new InputStreamReader(inputstream), 1000);
        String s = bufferedreader.readLine();
        do
        {
            if (s == null)
            {
                inputstream.close();
                return stringbuilder.toString();
            }
            stringbuilder.append(s);
            s = bufferedreader.readLine();
        } while (true);
    }

    public static void showAlert(Context context, String s, String s1)
    {
        android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(context);
        builder.setTitle(s);
        builder.setMessage(s1);
        builder.create().show();
    }
}
