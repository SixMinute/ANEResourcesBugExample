// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.Context;
import com.facebook.LoggingBehavior;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.URI;
import java.net.URISyntaxException;

// Referenced classes of package com.facebook.internal:
//            FileLruCache, Utility, Logger

class UrlRedirectCache
{

    private static final String REDIRECT_CONTENT_TAG = (new StringBuilder(String.valueOf(TAG))).append("_Redirect").toString();
    static final String TAG = com/facebook/internal/UrlRedirectCache.getSimpleName();
    private static volatile FileLruCache urlRedirectCache;

    UrlRedirectCache()
    {
    }

    static void cacheUriRedirect(Context context, URI uri, URI uri1)
    {
        Exception exception;
        if (uri == null || uri1 == null)
        {
            return;
        }
        OutputStream outputstream = null;
        try
        {
            outputstream = getCache(context).openPutStream(uri.toString(), REDIRECT_CONTENT_TAG);
            outputstream.write(uri1.toString().getBytes());
        }
        catch (IOException ioexception)
        {
            Utility.closeQuietly(outputstream);
            return;
        }
        finally
        {
            Utility.closeQuietly(outputstream);
        }
        Utility.closeQuietly(outputstream);
        return;
        throw exception;
    }

    static void clearCache(Context context)
    {
        try
        {
            getCache(context).clearCache();
            return;
        }
        catch (IOException ioexception)
        {
            Logger.log(LoggingBehavior.CACHE, 5, TAG, (new StringBuilder("clearCache failed ")).append(ioexception.getMessage()).toString());
        }
    }

    static FileLruCache getCache(Context context)
        throws IOException
    {
        com/facebook/internal/UrlRedirectCache;
        JVM INSTR monitorenter ;
        FileLruCache filelrucache;
        if (urlRedirectCache == null)
        {
            urlRedirectCache = new FileLruCache(context.getApplicationContext(), TAG, new FileLruCache.Limits());
        }
        filelrucache = urlRedirectCache;
        com/facebook/internal/UrlRedirectCache;
        JVM INSTR monitorexit ;
        return filelrucache;
        Exception exception;
        exception;
        throw exception;
    }

    static URI getRedirectedUri(Context context, URI uri)
    {
        String s;
        Object obj;
        if (uri == null)
        {
            return null;
        }
        s = uri.toString();
        obj = null;
        FileLruCache filelrucache = getCache(context);
        boolean flag;
        Object obj1;
        flag = false;
        obj1 = null;
_L12:
        java.io.InputStream inputstream = filelrucache.get(s, REDIRECT_CONTENT_TAG);
        if (inputstream != null) goto _L2; else goto _L1
_L1:
        if (!flag) goto _L4; else goto _L3
_L3:
        URI uri1 = new URI(s);
        Utility.closeQuietly(((java.io.Closeable) (obj1)));
        return uri1;
_L2:
        flag = true;
        obj = new InputStreamReader(inputstream);
        char ac[];
        StringBuilder stringbuilder;
        ac = new char[128];
        stringbuilder = new StringBuilder();
_L5:
        int i = ((InputStreamReader) (obj)).read(ac, 0, ac.length);
        if (i > 0)
        {
            break MISSING_BLOCK_LABEL_126;
        }
        Utility.closeQuietly(((java.io.Closeable) (obj)));
        s = stringbuilder.toString();
        obj1 = obj;
        continue; /* Loop/switch isn't completed */
        stringbuilder.append(ac, 0, i);
          goto _L5
        URISyntaxException urisyntaxexception;
        urisyntaxexception;
_L10:
        Utility.closeQuietly(((java.io.Closeable) (obj)));
_L6:
        return null;
        IOException ioexception;
        ioexception;
_L8:
        Utility.closeQuietly(((java.io.Closeable) (obj)));
          goto _L6
        Exception exception;
        exception;
_L7:
        Utility.closeQuietly(((java.io.Closeable) (obj)));
        throw exception;
_L4:
        Utility.closeQuietly(((java.io.Closeable) (obj1)));
        obj1;
          goto _L6
        exception;
        obj = obj1;
          goto _L7
        IOException ioexception1;
        ioexception1;
        obj = obj1;
          goto _L8
        URISyntaxException urisyntaxexception1;
        urisyntaxexception1;
        obj = obj1;
        if (true) goto _L10; else goto _L9
_L9:
        if (true) goto _L12; else goto _L11
_L11:
    }

}
