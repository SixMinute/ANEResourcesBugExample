// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.Context;
import com.facebook.LoggingBehavior;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;

// Referenced classes of package com.facebook.internal:
//            FileLruCache, Logger, Utility

class ImageResponseCache
{
    private static class BufferedHttpInputStream extends BufferedInputStream
    {

        HttpURLConnection connection;

        public void close()
            throws IOException
        {
            super.close();
            Utility.disconnectQuietly(connection);
        }

        BufferedHttpInputStream(InputStream inputstream, HttpURLConnection httpurlconnection)
        {
            super(inputstream, 8192);
            connection = httpurlconnection;
        }
    }


    static final String TAG = com/facebook/internal/ImageResponseCache.getSimpleName();
    private static volatile FileLruCache imageCache;

    ImageResponseCache()
    {
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
        com/facebook/internal/ImageResponseCache;
        JVM INSTR monitorenter ;
        FileLruCache filelrucache;
        if (imageCache == null)
        {
            imageCache = new FileLruCache(context.getApplicationContext(), TAG, new FileLruCache.Limits());
        }
        filelrucache = imageCache;
        com/facebook/internal/ImageResponseCache;
        JVM INSTR monitorexit ;
        return filelrucache;
        Exception exception;
        exception;
        throw exception;
    }

    static InputStream getCachedImageStream(URI uri, Context context)
    {
        InputStream inputstream = null;
        if (uri != null)
        {
            boolean flag = isCDNURL(uri);
            inputstream = null;
            if (flag)
            {
                InputStream inputstream1;
                try
                {
                    inputstream1 = getCache(context).get(uri.toString());
                }
                catch (IOException ioexception)
                {
                    Logger.log(LoggingBehavior.CACHE, 5, TAG, ioexception.toString());
                    return null;
                }
                inputstream = inputstream1;
            }
        }
        return inputstream;
    }

    static InputStream interceptAndCacheImageStream(Context context, HttpURLConnection httpurlconnection)
        throws IOException
    {
label0:
        {
            int i = httpurlconnection.getResponseCode();
            InputStream inputstream = null;
            if (i != 200)
            {
                break label0;
            }
            URL url = httpurlconnection.getURL();
            inputstream = httpurlconnection.getInputStream();
            InputStream inputstream1;
            try
            {
                if (!isCDNURL(url.toURI()))
                {
                    break label0;
                }
                inputstream1 = getCache(context).interceptAndPut(url.toString(), new BufferedHttpInputStream(inputstream, httpurlconnection));
            }
            catch (IOException ioexception)
            {
                return inputstream;
            }
            catch (URISyntaxException urisyntaxexception)
            {
                return inputstream;
            }
            inputstream = inputstream1;
        }
        return inputstream;
    }

    private static boolean isCDNURL(URI uri)
    {
        if (uri != null)
        {
            String s = uri.getHost();
            if (s.endsWith("fbcdn.net"))
            {
                return true;
            }
            if (s.startsWith("fbcdn") && s.endsWith("akamaihd.net"))
            {
                return true;
            }
        }
        return false;
    }

}
