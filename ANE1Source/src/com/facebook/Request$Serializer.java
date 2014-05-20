// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import com.facebook.internal.Logger;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.Collection;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            ProgressNoopOutputStream, RequestOutputStream, Request

private static class logger
    implements ializer
{

    private boolean firstWrite;
    private final Logger logger;
    private final OutputStream outputStream;

    public transient void write(String s, Object aobj[])
        throws IOException
    {
        if (firstWrite)
        {
            outputStream.write("--".getBytes());
            outputStream.write("3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f".getBytes());
            outputStream.write("\r\n".getBytes());
            firstWrite = false;
        }
        outputStream.write(String.format(s, aobj).getBytes());
    }

    public void writeBitmap(String s, Bitmap bitmap)
        throws IOException
    {
        writeContentDisposition(s, s, "image/png");
        bitmap.compress(android.graphics.at.PNG, 100, outputStream);
        writeLine("", new Object[0]);
        writeRecordBoundary();
        if (logger != null)
        {
            logger.appendKeyValue((new StringBuilder("    ")).append(s).toString(), "<Image>");
        }
    }

    public void writeBytes(String s, byte abyte0[])
        throws IOException
    {
        writeContentDisposition(s, s, "content/unknown");
        outputStream.write(abyte0);
        writeLine("", new Object[0]);
        writeRecordBoundary();
        if (logger != null)
        {
            Logger logger1 = logger;
            String s1 = (new StringBuilder("    ")).append(s).toString();
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(abyte0.length);
            logger1.appendKeyValue(s1, String.format("<Data: %d>", aobj));
        }
    }

    public void writeContentDisposition(String s, String s1, String s2)
        throws IOException
    {
        write("Content-Disposition: form-data; name=\"%s\"", new Object[] {
            s
        });
        if (s1 != null)
        {
            write("; filename=\"%s\"", new Object[] {
                s1
            });
        }
        writeLine("", new Object[0]);
        if (s2 != null)
        {
            writeLine("%s: %s", new Object[] {
                "Content-Type", s2
            });
        }
        writeLine("", new Object[0]);
    }

    public void writeFile(String s, ParcelFileDescriptor parcelfiledescriptor, String s1)
        throws IOException
    {
        int i;
        if (s1 == null)
        {
            s1 = "content/unknown";
        }
        writeContentDisposition(s, s, s1);
        i = 0;
        if (!(outputStream instanceof ProgressNoopOutputStream)) goto _L2; else goto _L1
_L1:
        ((ProgressNoopOutputStream)outputStream).addProgress(parcelfiledescriptor.getStatSize());
_L7:
        writeLine("", new Object[0]);
        writeRecordBoundary();
        if (logger != null)
        {
            Logger logger1 = logger;
            String s2 = (new StringBuilder("    ")).append(s).toString();
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            logger1.appendKeyValue(s2, String.format("<Data: %d>", aobj));
        }
        return;
_L2:
        android.os.r.AutoCloseInputStream autocloseinputstream;
        BufferedInputStream bufferedinputstream;
        autocloseinputstream = null;
        bufferedinputstream = null;
        android.os.r.AutoCloseInputStream autocloseinputstream1 = new android.os.r.AutoCloseInputStream(parcelfiledescriptor);
        BufferedInputStream bufferedinputstream1 = new BufferedInputStream(autocloseinputstream1);
        byte abyte0[] = new byte[8192];
_L3:
        int j = bufferedinputstream1.read(abyte0);
        if (j == -1)
        {
            if (bufferedinputstream1 != null)
            {
                bufferedinputstream1.close();
            }
            if (autocloseinputstream1 != null)
            {
                autocloseinputstream1.close();
            }
            continue; /* Loop/switch isn't completed */
        }
        outputStream.write(abyte0, 0, j);
        i += j;
          goto _L3
        Exception exception;
        exception;
_L5:
        if (bufferedinputstream != null)
        {
            bufferedinputstream.close();
        }
        if (autocloseinputstream != null)
        {
            autocloseinputstream.close();
        }
        throw exception;
        exception;
        autocloseinputstream = autocloseinputstream1;
        bufferedinputstream = null;
        continue; /* Loop/switch isn't completed */
        exception;
        bufferedinputstream = bufferedinputstream1;
        autocloseinputstream = autocloseinputstream1;
        if (true) goto _L5; else goto _L4
_L4:
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void writeFile(String s, escriptorWithMimeType escriptorwithmimetype)
        throws IOException
    {
        writeFile(s, escriptorwithmimetype.getFileDescriptor(), escriptorwithmimetype.getMimeType());
    }

    public transient void writeLine(String s, Object aobj[])
        throws IOException
    {
        write(s, aobj);
        write("\r\n", new Object[0]);
    }

    public void writeObject(String s, Object obj, Request request)
        throws IOException
    {
        if (outputStream instanceof RequestOutputStream)
        {
            ((RequestOutputStream)outputStream).setCurrentRequest(request);
        }
        if (Request.access$0(obj))
        {
            writeString(s, Request.access$1(obj));
            return;
        }
        if (obj instanceof Bitmap)
        {
            writeBitmap(s, (Bitmap)obj);
            return;
        }
        if (obj instanceof byte[])
        {
            writeBytes(s, (byte[])obj);
            return;
        }
        if (obj instanceof ParcelFileDescriptor)
        {
            writeFile(s, (ParcelFileDescriptor)obj, null);
            return;
        }
        if (obj instanceof escriptorWithMimeType)
        {
            writeFile(s, (escriptorWithMimeType)obj);
            return;
        } else
        {
            throw new IllegalArgumentException("value is not a supported type: String, Bitmap, byte[]");
        }
    }

    public void writeRecordBoundary()
        throws IOException
    {
        writeLine("--%s", new Object[] {
            "3i2ndDfv2rTHiSisAbouNdArYfORhtTPEefj3q2f"
        });
    }

    public void writeRequestsAsJson(String s, JSONArray jsonarray, Collection collection)
        throws IOException, JSONException
    {
        if (outputStream instanceof RequestOutputStream) goto _L2; else goto _L1
_L1:
        writeString(s, jsonarray.toString());
_L4:
        return;
_L2:
        RequestOutputStream requestoutputstream = (RequestOutputStream)outputStream;
        writeContentDisposition(s, null, null);
        write("[", new Object[0]);
        int i = 0;
        Iterator iterator = collection.iterator();
        do
        {
label0:
            {
                if (iterator.hasNext())
                {
                    break label0;
                }
                write("]", new Object[0]);
                if (logger != null)
                {
                    logger.appendKeyValue((new StringBuilder("    ")).append(s).toString(), jsonarray.toString());
                    return;
                }
            }
            if (true)
            {
                continue;
            }
            Request request = (Request)iterator.next();
            JSONObject jsonobject = jsonarray.getJSONObject(i);
            requestoutputstream.setCurrentRequest(request);
            if (i > 0)
            {
                Object aobj1[] = new Object[1];
                aobj1[0] = jsonobject.toString();
                write(",%s", aobj1);
            } else
            {
                Object aobj[] = new Object[1];
                aobj[0] = jsonobject.toString();
                write("%s", aobj);
            }
            i++;
        } while (true);
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void writeString(String s, String s1)
        throws IOException
    {
        writeContentDisposition(s, null, null);
        writeLine("%s", new Object[] {
            s1
        });
        writeRecordBoundary();
        if (logger != null)
        {
            logger.appendKeyValue((new StringBuilder("    ")).append(s).toString(), s1);
        }
    }

    public escriptorWithMimeType(OutputStream outputstream, Logger logger1)
    {
        firstWrite = true;
        outputStream = outputstream;
        logger = logger1;
    }
}
