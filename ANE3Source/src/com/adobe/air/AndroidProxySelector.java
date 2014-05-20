// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import java.net.Proxy;
import java.net.ProxySelector;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;

public final class AndroidProxySelector
{

    private static final int LIST_HEAD = 0;
    private static final String LOG_TAG = "AndroidProxySelector";

    public AndroidProxySelector()
    {
    }

    public static String getProxyUrl(String s)
    {
        List list;
        URI uri = new URI(s);
        list = ProxySelector.getDefault().select(uri);
        if (list.isEmpty())
        {
            return "";
        }
        Proxy proxy;
        Proxy proxy1;
        proxy = (Proxy)list.get(0);
        proxy1 = Proxy.NO_PROXY;
        if (proxy1 != proxy) goto _L2; else goto _L1
_L1:
        return "";
_L2:
        String s1;
        if (java.net.Proxy.Type.HTTP != proxy.type())
        {
            continue; /* Loop/switch isn't completed */
        }
        s1 = proxy.address().toString();
        return s1;
        IndexOutOfBoundsException indexoutofboundsexception;
        indexoutofboundsexception;
        continue; /* Loop/switch isn't completed */
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        continue; /* Loop/switch isn't completed */
        URISyntaxException urisyntaxexception;
        urisyntaxexception;
        if (true) goto _L1; else goto _L3
_L3:
    }
}
