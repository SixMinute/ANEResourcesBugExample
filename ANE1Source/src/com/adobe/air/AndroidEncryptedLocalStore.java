// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.util.Base64;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

class AndroidEncryptedLocalStore
{

    private static final String LOG_TAG = "AndroidELS -------";

    AndroidEncryptedLocalStore()
    {
    }

    public byte[] getItem(String s, String s1)
        throws OutOfMemoryError
    {
        String s2 = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getApplicationContext().getSharedPreferences(s, 0).getString(s1, null);
        if (s2 != null)
        {
            return Base64.decode(s2, 0);
        } else
        {
            return null;
        }
    }

    public boolean removeItem(String s, String s1)
    {
        android.content.SharedPreferences.Editor editor = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getApplicationContext().getSharedPreferences(s, 0).edit();
        editor.remove(s1);
        return editor.commit();
    }

    public boolean reset(String s)
    {
        android.content.SharedPreferences.Editor editor = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getApplicationContext().getSharedPreferences(s, 0).edit();
        editor.clear();
        return editor.commit();
    }

    public boolean setItem(String s, String s1, byte abyte0[])
        throws OutOfMemoryError
    {
        String s2 = Base64.encodeToString(abyte0, 0);
        android.content.SharedPreferences.Editor editor = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getApplicationContext().getSharedPreferences(s, 0).edit();
        editor.putString(s1, s2);
        return editor.commit();
    }
}
