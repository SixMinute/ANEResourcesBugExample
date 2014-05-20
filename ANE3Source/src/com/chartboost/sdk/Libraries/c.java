// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.impl.an;
import com.chartboost.sdk.impl.ao;
import java.util.UUID;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            b, d

public class c
{

    private static String a = null;

    public static String a()
    {
        return com.chartboost.sdk.Libraries.b.b(c());
    }

    private static String b()
    {
        if (com.chartboost.sdk.Libraries.d.c())
        {
            return null;
        } else
        {
            return com.chartboost.sdk.Libraries.b.b(com.chartboost.sdk.Libraries.b.a(f()));
        }
    }

    private static byte[] c()
    {
        String s = d();
        if (s == null || "9774d56d682e549c".equals(s))
        {
            s = e();
        }
        String s1 = b();
        ao ao1 = new ao();
        ao1.a("uuid", s);
        ao1.a("macid", s1);
        return (new an()).a(ao1);
    }

    private static String d()
    {
        if (com.chartboost.sdk.Libraries.d.c())
        {
            return null;
        } else
        {
            return android.provider.Settings.Secure.getString(Chartboost.sharedChartboost().getContext().getContentResolver(), "android_id");
        }
    }

    private static String e()
    {
        if (a == null)
        {
            SharedPreferences sharedpreferences = com.chartboost.sdk.Libraries.d.a();
            a = sharedpreferences.getString("cbUUID", null);
            if (a == null)
            {
                a = UUID.randomUUID().toString();
                android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                editor.putString("cbUUID", a);
                editor.commit();
            }
        }
        return a;
    }

    private static byte[] f()
    {
        String s;
        String as[];
        byte abyte0[];
        int i;
        try
        {
            s = ((WifiManager)Chartboost.sharedChartboost().getContext().getSystemService("wifi")).getConnectionInfo().getMacAddress();
        }
        catch (Exception exception)
        {
            return null;
        }
        if (s == null) goto _L2; else goto _L1
_L1:
        if (!s.equals("")) goto _L3; else goto _L2
_L3:
        as = s.split(":");
        abyte0 = new byte[6];
        i = 0;
_L4:
        if (i >= as.length)
        {
            return abyte0;
        }
        abyte0[i] = Integer.valueOf(Integer.parseInt(as[i], 16)).byteValue();
        i++;
        if (true) goto _L4; else goto _L2
_L2:
        return null;
    }

}
