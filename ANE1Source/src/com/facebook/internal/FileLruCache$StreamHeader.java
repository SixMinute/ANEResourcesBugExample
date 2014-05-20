// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import com.facebook.LoggingBehavior;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

// Referenced classes of package com.facebook.internal:
//            FileLruCache, Logger

private static final class 
{

    private static final int HEADER_VERSION;

    static JSONObject readHeader(InputStream inputstream)
        throws IOException
    {
        int i;
        int j;
        if (inputstream.read() != 0)
        {
            return null;
        }
        i = 0;
        j = 0;
_L8:
        if (i < 3) goto _L2; else goto _L1
_L1:
        byte abyte0[];
        int i1;
        abyte0 = new byte[j];
        i1 = 0;
_L6:
        if (i1 < abyte0.length) goto _L4; else goto _L3
_L3:
        JSONTokener jsontokener = new JSONTokener(new String(abyte0));
        Object obj;
        obj = jsontokener.nextValue();
        if (obj instanceof JSONObject)
        {
            break; /* Loop/switch isn't completed */
        }
        Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, (new StringBuilder("readHeader: expected JSONObject, got ")).append(obj.getClass().getCanonicalName()).toString());
        return null;
_L2:
        int k = inputstream.read();
        if (k == -1)
        {
            Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, "readHeader: stream.read returned -1 while reading header size");
            return null;
        }
        int l = (j << 8) + (k & 0xff);
        i++;
        j = l;
        continue; /* Loop/switch isn't completed */
_L4:
        int j1 = inputstream.read(abyte0, i1, abyte0.length - i1);
        if (j1 < 1)
        {
            Logger.log(LoggingBehavior.CACHE, FileLruCache.TAG, (new StringBuilder("readHeader: stream.read stopped at ")).append(Integer.valueOf(i1)).append(" when expected ").append(abyte0.length).toString());
            return null;
        }
        i1 += j1;
        if (true) goto _L6; else goto _L5
_L5:
        JSONObject jsonobject = (JSONObject)obj;
        return jsonobject;
        JSONException jsonexception;
        jsonexception;
        throw new IOException(jsonexception.getMessage());
        if (true) goto _L8; else goto _L7
_L7:
    }

    static void writeHeader(OutputStream outputstream, JSONObject jsonobject)
        throws IOException
    {
        byte abyte0[] = jsonobject.toString().getBytes();
        outputstream.write(0);
        outputstream.write(0xff & abyte0.length >> 16);
        outputstream.write(0xff & abyte0.length >> 8);
        outputstream.write(0xff & abyte0.length >> 0);
        outputstream.write(abyte0);
    }

    private ()
    {
    }
}
