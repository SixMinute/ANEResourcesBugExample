// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Looper;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.chartboost.sdk.Chartboost;
import java.io.ByteArrayInputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.security.auth.x500.X500Principal;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            e, c, CBOrientation

public class d
{

    private static String a = null;
    private static final X500Principal b = new X500Principal("CN=Android Debug,O=Android,C=US");

    public static int a(int i, Context context)
    {
        return Math.round((float)i * b(context));
    }

    public static SharedPreferences a()
    {
        Chartboost chartboost = Chartboost.sharedChartboost();
        if (chartboost.getContext() == null)
        {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before modifying or accessing preferences.");
        } else
        {
            return chartboost.getContext().getSharedPreferences("cbPrefs", 0);
        }
    }

    public static String a(Map map)
    {
        StringBuilder stringbuilder;
        Iterator iterator;
        if (map == null)
        {
            return "";
        }
        stringbuilder = new StringBuilder();
        if (!map.keySet().isEmpty())
        {
            stringbuilder.append("?");
        }
        iterator = map.keySet().iterator();
_L3:
        String s;
        String s1;
        if (!iterator.hasNext())
        {
            return stringbuilder.toString();
        }
        s = (String)iterator.next();
        if (stringbuilder.length() > 1)
        {
            stringbuilder.append("&");
        }
        s1 = map.get(s).toString();
        if (s == null) goto _L2; else goto _L1
_L1:
        String s2 = URLEncoder.encode(s, "UTF-8");
_L4:
        stringbuilder.append(s2);
        stringbuilder.append("=");
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_170;
        }
        String s3 = URLEncoder.encode(s1, "UTF-8");
_L5:
        stringbuilder.append(s3);
          goto _L3
        UnsupportedEncodingException unsupportedencodingexception;
        unsupportedencodingexception;
        throw new RuntimeException("This method requires UTF-8 encoding support", unsupportedencodingexception);
_L2:
        s2 = "";
          goto _L4
        s3 = "";
          goto _L5
    }

    public static List a(JSONArray jsonarray)
    {
        ArrayList arraylist;
        int i;
        if (jsonarray == null)
        {
            return null;
        }
        arraylist = new ArrayList();
        i = 0;
_L5:
        if (i >= jsonarray.length())
        {
            return arraylist;
        }
        Object obj = jsonarray.get(i);
        if (!(obj instanceof JSONObject)) goto _L2; else goto _L1
_L1:
        obj = a((JSONObject)obj);
_L3:
        arraylist.add(obj);
        break MISSING_BLOCK_LABEL_106;
_L2:
label0:
        {
            if (!(obj instanceof JSONArray))
            {
                break label0;
            }
            obj = a((JSONArray)obj);
        }
          goto _L3
        boolean flag = obj.equals(JSONObject.NULL);
        if (flag)
        {
            obj = null;
        }
          goto _L3
        Exception exception;
        exception;
        i++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public static Map a(JSONObject jsonobject)
    {
        HashMap hashmap;
        Iterator iterator;
        if (jsonobject == null)
        {
            return null;
        }
        hashmap = new HashMap();
        iterator = jsonobject.keys();
_L6:
        if (!iterator.hasNext())
        {
            return hashmap;
        }
        String s;
        Object obj;
        s = (String)iterator.next();
        obj = jsonobject.get(s);
        if (!(obj instanceof JSONObject)) goto _L2; else goto _L1
_L1:
        obj = a((JSONObject)obj);
_L4:
        hashmap.put(s, obj);
        continue; /* Loop/switch isn't completed */
_L2:
        if (obj instanceof JSONArray)
        {
            obj = a((JSONArray)obj);
            continue; /* Loop/switch isn't completed */
        }
        boolean flag = obj.equals(JSONObject.NULL);
        if (flag)
        {
            obj = null;
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static JSONArray a(List list)
    {
        JSONArray jsonarray;
        int i;
        if (list == null)
        {
            return null;
        }
        jsonarray = new JSONArray();
        i = 0;
_L8:
        if (i >= list.size())
        {
            return jsonarray;
        }
        Object obj = list.get(i);
        if (!(obj instanceof Map)) goto _L2; else goto _L1
_L1:
        obj = b((Map)obj);
_L5:
        jsonarray.put(obj);
        break MISSING_BLOCK_LABEL_100;
_L2:
        if (!(obj instanceof List)) goto _L4; else goto _L3
_L3:
        obj = a((List)obj);
          goto _L5
_L4:
        if (obj != null) goto _L5; else goto _L6
_L6:
        obj = JSONObject.NULL;
          goto _L5
        Exception exception;
        exception;
        i++;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public static JSONObject a(Object obj)
    {
        if (obj == null)
        {
            return null;
        }
        if (obj instanceof JSONObject)
        {
            return (JSONObject)obj;
        }
        if (obj instanceof Map)
        {
            if (!e.a(new e.g[0]).a(obj))
            {
                throw new IllegalArgumentException("The given Map must have all String keys in order to be converted to JSON.");
            } else
            {
                return new JSONObject((Map)obj);
            }
        } else
        {
            throw new IllegalArgumentException("The given argument must be either a JSONObject or a Map that can be converted to a JSONObject.");
        }
    }

    public static void a(HttpEntity httpentity)
    {
        try
        {
            httpentity.consumeContent();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public static void a(HttpResponse httpresponse)
    {
        if (httpresponse == null)
        {
            break MISSING_BLOCK_LABEL_22;
        }
        if (httpresponse.getEntity() != null)
        {
            a(httpresponse.getEntity());
        }
        return;
        Exception exception;
        exception;
    }

    public static boolean a(Context context)
    {
        Signature asignature[] = context.getPackageManager().getPackageInfo(context.getPackageName(), 64).signatures;
        int i;
        boolean flag2;
        i = 0;
        flag2 = false;
_L5:
        int j = asignature.length;
        if (i < j) goto _L2; else goto _L1
_L1:
        boolean flag = flag2;
_L4:
        boolean flag1;
        boolean flag3;
        if ((2 & context.getApplicationInfo().flags) != 0)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        return flag | flag1;
_L2:
        flag3 = ((X509Certificate)CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(asignature[i].toByteArray()))).getSubjectX500Principal().equals(b);
        flag = flag3;
        if (flag) goto _L4; else goto _L3
_L3:
        i++;
        flag2 = flag;
          goto _L5
        Exception exception;
        exception;
        flag = false;
          goto _L4
        Exception exception1;
        exception1;
        flag = flag2;
          goto _L4
    }

    public static float b(int i, Context context)
    {
        return (float)i * b(context);
    }

    public static float b(Context context)
    {
        return context.getResources().getDisplayMetrics().density;
    }

    public static String b()
    {
        if (c())
        {
            return null;
        }
        if (a != null)
        {
            return a;
        } else
        {
            a = com.chartboost.sdk.Libraries.c.a();
            return a;
        }
    }

    public static JSONObject b(Map map)
    {
        if (map != null) goto _L2; else goto _L1
_L1:
        JSONObject jsonobject = null;
_L10:
        return jsonobject;
_L2:
        Iterator iterator;
        jsonobject = new JSONObject();
        iterator = map.entrySet().iterator();
_L8:
        String s;
        Object obj;
        if (!iterator.hasNext())
        {
            continue; /* Loop/switch isn't completed */
        }
        java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
        s = entry.getKey().toString();
        obj = entry.getValue();
        if (!(obj instanceof Map)) goto _L4; else goto _L3
_L3:
        Object obj1 = b((Map)obj);
_L6:
        jsonobject.put(s, obj1);
        break; /* Loop/switch isn't completed */
_L4:
        if (obj instanceof List)
        {
            obj1 = a((List)obj);
            continue; /* Loop/switch isn't completed */
        }
        if (obj == null)
        {
            try
            {
                obj1 = JSONObject.NULL;
                continue; /* Loop/switch isn't completed */
            }
            catch (Exception exception) { }
            break; /* Loop/switch isn't completed */
        }
        obj1 = obj;
        if (true) goto _L6; else goto _L5
_L5:
        if (true) goto _L8; else goto _L7
_L7:
        if (true) goto _L10; else goto _L9
_L9:
    }

    public static CBOrientation c(Context context)
    {
        Display display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        int i = context.getResources().getConfiguration().orientation;
        int j = display.getRotation();
        byte byte0;
        boolean flag;
        if (display.getWidth() == display.getHeight())
        {
            byte0 = 3;
        } else
        if (display.getWidth() < display.getHeight())
        {
            byte0 = 1;
        } else
        {
            byte0 = 2;
        }
        if (byte0 == 1)
        {
            flag = true;
            break MISSING_BLOCK_LABEL_55;
        }
        if (byte0 == 2)
        {
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        if (byte0 == 3)
        {
            if (i == 1)
            {
                flag = true;
                continue; /* Loop/switch isn't completed */
            }
            if (i == 2)
            {
                flag = false;
                continue; /* Loop/switch isn't completed */
            }
        }
        flag = true;
          goto _L1
_L3:
        if (j != 0 && j != 2)
        {
            if (flag)
            {
                flag = false;
            } else
            {
                flag = true;
            }
        }
        if (flag)
        {
            switch (j)
            {
            default:
                return CBOrientation.PORTRAIT;

            case 1: // '\001'
                return CBOrientation.LANDSCAPE_LEFT;

            case 2: // '\002'
                return CBOrientation.PORTRAIT_REVERSE;

            case 3: // '\003'
                return CBOrientation.LANDSCAPE_RIGHT;
            }
        }
        switch (j)
        {
        default:
            return CBOrientation.LANDSCAPE;

        case 1: // '\001'
            return CBOrientation.PORTRAIT_LEFT;

        case 2: // '\002'
            return CBOrientation.LANDSCAPE_REVERSE;

        case 3: // '\003'
            return CBOrientation.PORTRAIT_RIGHT;
        }
_L1:
        if (true) goto _L3; else goto _L2
_L2:
    }

    public static boolean c()
    {
        return a().getBoolean("cbIdentityTrackingDisabled", false);
    }

    public static boolean d()
    {
        return Looper.myLooper() == Looper.getMainLooper();
    }

}
