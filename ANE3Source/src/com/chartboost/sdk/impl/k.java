// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.b;
import com.chartboost.sdk.Libraries.d;
import com.chartboost.sdk.Libraries.e;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.impl:
//            m

public class k
{

    private String a;
    private JSONObject b;
    private Map c;
    private Map d;
    private String e;
    private boolean f;
    private com.chartboost.sdk.Libraries.e.a g;

    public k(String s)
    {
        g = null;
        a = s;
        e = "POST";
    }

    public static k a(JSONObject jsonobject)
    {
        k k1;
        try
        {
            k1 = new k(jsonobject.getString("path"));
            k1.e = jsonobject.getString("method");
            k1.c = com.chartboost.sdk.Libraries.d.a(jsonobject.optJSONObject("query"));
            k1.b = jsonobject.optJSONObject("body");
            k1.d = com.chartboost.sdk.Libraries.d.a(jsonobject.optJSONObject("headers"));
            k1.f = jsonobject.getBoolean("ensureDelivery");
        }
        catch (Exception exception)
        {
            return null;
        }
        return k1;
    }

    private void b(Context context)
    {
        if (!(context instanceof Activity)) goto _L2; else goto _L1
_L1:
        Rect rect;
        int j1;
        Activity activity = (Activity)context;
        rect = new Rect();
        activity.getWindow().getDecorView().getWindowVisibleDisplayFrame(rect);
        if (android.os.Build.VERSION.SDK_INT < 9)
        {
            rect.top = 0;
        }
        j1 = rect.width();
        int i = j1;
        int k1 = rect.height();
        int j;
        int l;
        l = k1;
        j = i;
_L5:
        Display display = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        Exception exception;
        int i1;
        if (j <= 0)
        {
            j = display.getWidth();
        }
        if (l > 0)
        {
            i1 = l;
        } else
        {
            i1 = display.getHeight();
        }
        a("w", (new StringBuilder()).append(j).toString());
        a("h", (new StringBuilder()).append(i1).toString());
        return;
        exception;
        i = 0;
_L3:
        j = i;
        l = 0;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        if (true) goto _L3; else goto _L2
_L2:
        l = 0;
        j = 0;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public String a()
    {
        String s;
        if (a.startsWith("/"))
        {
            s = "";
        } else
        {
            s = "/";
        }
        return (new StringBuilder(String.valueOf(s))).append(a).append(com.chartboost.sdk.Libraries.d.a(c)).toString();
    }

    public void a(Context context)
    {
        Chartboost chartboost = Chartboost.sharedChartboost();
        a("app", Chartboost.sharedChartboost().getAppID());
        int i;
        if ("sdk".equals(Build.PRODUCT))
        {
            a("model", "Android Simulator");
            a("identity", com.chartboost.sdk.Libraries.d.b());
        } else
        {
            a("model", Build.MODEL);
            a("identity", com.chartboost.sdk.Libraries.d.b());
        }
        a("device_type", (new StringBuilder(String.valueOf(Build.MANUFACTURER))).append(" ").append(Build.MODEL).toString());
        a("os", (new StringBuilder("Android ")).append(android.os.Build.VERSION.RELEASE).toString());
        a("country", Locale.getDefault().getCountry());
        a("language", Locale.getDefault().getLanguage());
        a("sdk", "3.4.0");
        a("framework", chartboost.getFramework());
        a("timestamp", String.valueOf(Long.valueOf((new Date()).getTime() / 1000L).intValue()));
        a("session", Integer.valueOf(com.chartboost.sdk.Libraries.d.a().getInt("cbPrefSessionCount", 0)));
        i = com.chartboost.sdk.impl.m.b();
        if (i != -1)
        {
            a("reachability", Integer.valueOf(i));
        }
        b(context);
        a("scale", (new StringBuilder()).append(context.getResources().getDisplayMetrics().density).toString());
        try
        {
            String s = context.getPackageName();
            a("bundle", context.getPackageManager().getPackageInfo(s, 128).versionName);
            a("bundle_id", s);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void a(String s, Object obj)
    {
        if (b == null)
        {
            b = new JSONObject();
        }
        try
        {
            b.put(s, obj);
            return;
        }
        catch (JSONException jsonexception)
        {
            jsonexception.printStackTrace();
        }
    }

    public void a(String s, String s1)
    {
        if (d == null)
        {
            d = new HashMap();
        }
        d.put(s, s1);
    }

    public void a(boolean flag)
    {
        f = flag;
    }

    public transient void a(com.chartboost.sdk.Libraries.e.g ag[])
    {
        g = com.chartboost.sdk.Libraries.e.a(ag);
    }

    public String b()
    {
        return b.toString();
    }

    public void b(String s, String s1)
    {
        Locale locale = Locale.US;
        Object aobj[] = new Object[4];
        aobj[0] = e;
        aobj[1] = a();
        aobj[2] = s1;
        aobj[3] = b();
        String s2 = com.chartboost.sdk.Libraries.b.b(com.chartboost.sdk.Libraries.b.a(String.format(locale, "%s %s\n%s\n%s", aobj).getBytes()));
        a("X-Chartboost-App", s);
        a("X-Chartboost-Signature", s2);
    }

    public String c()
    {
        return a;
    }

    public JSONObject d()
    {
        return b;
    }

    public Map e()
    {
        return d;
    }

    public boolean f()
    {
        return f;
    }

    public com.chartboost.sdk.Libraries.e.a g()
    {
        return g;
    }

    public JSONObject h()
    {
        JSONObject jsonobject;
        try
        {
            jsonobject = new JSONObject();
            jsonobject.put("path", a);
            jsonobject.put("method", e);
            jsonobject.put("query", com.chartboost.sdk.Libraries.d.b(c));
            jsonobject.put("body", b);
            jsonobject.put("headers", com.chartboost.sdk.Libraries.d.b(d));
            jsonobject.put("ensureDelivery", f);
        }
        catch (Exception exception)
        {
            return null;
        }
        return jsonobject;
    }
}
