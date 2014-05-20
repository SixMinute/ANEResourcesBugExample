// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.content.SharedPreferences;
import com.adobe.air.utils.Utils;

public final class AIRSharedPref
{

    private static final String LOG_TAG = "AIRSharedPref";
    private static String SP_CONFIG_DATA = "AIRSharedPref.ConfigData";
    private static String SP_CONFIG_DATA_DEFAULT = "\n";
    private static String SP_CONFIG_REQUEST_TIME = "AIRSharedPref.ConfigRequestTime";
    private static String SP_CONFIG_REQUEST_TIME_DEFAULT = null;

    public AIRSharedPref()
    {
    }

    public static String getConfigData(Context context)
    {
        String s = SP_CONFIG_DATA_DEFAULT;
        String s1 = context.createPackageContext(Utils.getRuntimePackageName(), 4).getSharedPreferences(getPreferencesKey(), 1).getString(SP_CONFIG_DATA, SP_CONFIG_DATA_DEFAULT);
        s = s1;
_L2:
        if (s == SP_CONFIG_DATA_DEFAULT);
        return s;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        continue; /* Loop/switch isn't completed */
        ClassCastException classcastexception;
        classcastexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String getConfigRequestTime(Context context)
    {
        String s = SP_CONFIG_REQUEST_TIME_DEFAULT;
        String s1 = context.createPackageContext(Utils.getRuntimePackageName(), 4).getSharedPreferences(getPreferencesKey(), 1).getString(SP_CONFIG_REQUEST_TIME, SP_CONFIG_REQUEST_TIME_DEFAULT);
        s = s1;
_L2:
        if (s == SP_CONFIG_REQUEST_TIME_DEFAULT);
        return s;
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        continue; /* Loop/switch isn't completed */
        ClassCastException classcastexception;
        classcastexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private static String getPreferencesKey()
    {
        return (new StringBuilder()).append(Utils.getRuntimePackageName()).append(".AIRSharedPref").toString();
    }

    public static boolean setConfigData(Context context, String s)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences(getPreferencesKey(), 1).edit();
        editor.putString(SP_CONFIG_DATA, s);
        return editor.commit();
    }

    public static boolean setConfigRequestTime(Context context, String s)
    {
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences(getPreferencesKey(), 1).edit();
        editor.putString(SP_CONFIG_REQUEST_TIME, s);
        return editor.commit();
    }

}
