// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.text;

import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

class ICUCompatIcs
{

    private static final String TAG = "ICUCompatIcs";
    private static Method sAddLikelySubtagsMethod;
    private static Method sGetScriptMethod;

    ICUCompatIcs()
    {
    }

    public static String addLikelySubtags(String s)
    {
        String s1;
        if (sAddLikelySubtagsMethod == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        Object aobj[] = {
            s
        };
        s1 = (String)sAddLikelySubtagsMethod.invoke(null, aobj);
        return s1;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        Log.w("ICUCompatIcs", illegalaccessexception);
_L2:
        return s;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        Log.w("ICUCompatIcs", invocationtargetexception);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public static String getScript(String s)
    {
        String s1;
        if (sGetScriptMethod == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        Object aobj[] = {
            s
        };
        s1 = (String)sGetScriptMethod.invoke(null, aobj);
        return s1;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        Log.w("ICUCompatIcs", illegalaccessexception);
_L2:
        return null;
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        Log.w("ICUCompatIcs", invocationtargetexception);
        if (true) goto _L2; else goto _L1
_L1:
    }

    static 
    {
        Class class1;
        try
        {
            class1 = Class.forName("libcore.icu.ICU");
        }
        catch (Exception exception)
        {
            Log.w("ICUCompatIcs", exception);
        }
        if (class1 == null)
        {
            break MISSING_BLOCK_LABEL_46;
        }
        sGetScriptMethod = class1.getMethod("getScript", new Class[] {
            java/lang/String
        });
        sAddLikelySubtagsMethod = class1.getMethod("addLikelySubtags", new Class[] {
            java/lang/String
        });
    }
}
