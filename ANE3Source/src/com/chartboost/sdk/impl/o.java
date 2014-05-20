// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.util.Log;
import android.widget.ImageView;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.a;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.concurrent.ExecutorService;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpGet;

// Referenced classes of package com.chartboost.sdk.impl:
//            l

public class o
{
    private class a
        implements Runnable
    {

        final o a;
        private String b;
        private final WeakReference c;
        private b d;
        private String e;
        private Bundle f;

        static Bundle a(a a1)
        {
            return a1.f;
        }

        static String b(a a1)
        {
            return a1.e;
        }

        static WeakReference c(a a1)
        {
            return a1.c;
        }

        static b d(a a1)
        {
            return a1.d;
        }

        static o e(a a1)
        {
            return a1.a;
        }

        public void a(com.chartboost.sdk.Libraries.a.a a1)
        {
            Chartboost.sharedChartboost().getHandler().post(new Runnable(this, a1) {

                final a a;
                private final com.chartboost.sdk.Libraries.a.a b;

                public void run()
                {
                    boolean flag;
                    if (com.chartboost.sdk.impl.a.a(a) != null)
                    {
                        flag = com.chartboost.sdk.impl.a.a(a).getBoolean("paramNoMemoryCache");
                    } else
                    {
                        flag = false;
                    }
                    if (b != null && !flag)
                    {
                        try
                        {
                            com.chartboost.sdk.impl.o.a(a.e(a)).a(a.b(a), b);
                        }
                        catch (Exception exception)
                        {
                            exception.printStackTrace();
                        }
                    }
                    if (a.c(a) != null)
                    {
                        ImageView imageview = (ImageView)a.c(a).get();
                        a a1 = com.chartboost.sdk.impl.o.a(imageview);
                        if (a == a1)
                        {
                            imageview.setImageBitmap(b.b());
                        }
                    }
                    if (a.d(a) != null)
                    {
                        a.d(a).a(b, com.chartboost.sdk.impl.a.a(a));
                    }
                    return;
                }

            
            {
                a = a1;
                b = a2;
                super();
            }
            });
        }

        public void run()
        {
            boolean flag;
            float f1;
            com.chartboost.sdk.Libraries.a.a a2;
            com.chartboost.sdk.Libraries.a.a a7;
            if (f != null)
            {
                flag = f.getBoolean("paramNoMemoryCache");
            } else
            {
                flag = false;
            }
            if (f != null)
            {
                f1 = f.getFloat("paramAssetScale", 1.0F);
            } else
            {
                f1 = 1.0F;
            }
            a7 = a.a(e, f1);
            a2 = a7;
            if (a2 == null)
            {
                break MISSING_BLOCK_LABEL_72;
            }
            boolean flag2;
            if (flag)
            {
                flag2 = false;
            } else
            {
                flag2 = true;
            }
            a2.a(flag2);
_L2:
            if (a2 != null)
            {
                a(a2);
                return;
            }
            break; /* Loop/switch isn't completed */
            Exception exception;
            exception;
            com.chartboost.sdk.Libraries.a.a a1 = null;
_L19:
            exception.printStackTrace();
            a2 = a1;
            if (true) goto _L2; else goto _L1
_L1:
            HttpClient httpclient;
            HttpGet httpget;
            httpclient = l.b();
            httpget = new HttpGet(b);
            HttpResponse httpresponse3 = httpclient.execute(httpget);
            int i = httpresponse3.getStatusLine().getStatusCode();
            if (i == 200) goto _L4; else goto _L3
_L3:
            Log.w("ImageDownloader", (new StringBuilder("Error ")).append(i).append(" while retrieving bitmap from ").append(b).toString());
            com.chartboost.sdk.Libraries.d.a(httpresponse3);
            a(((com.chartboost.sdk.Libraries.a.a) (null)));
            return;
            IOException ioexception;
            ioexception;
            HttpResponse httpresponse = httpresponse3;
_L10:
            com.chartboost.sdk.Libraries.a.a a3;
            httpget.abort();
            com.chartboost.sdk.Libraries.d.a(httpresponse);
            Log.w("CBWebImageCache", (new StringBuilder("I/O error while retrieving bitmap from ")).append(b).toString(), ioexception);
            a3 = a2;
_L9:
            a(a3);
            return;
_L4:
            HttpEntity httpentity = httpresponse3.getEntity();
            if (httpentity == null) goto _L6; else goto _L5
_L5:
            InputStream inputstream1 = httpentity.getContent();
            a.a(e, new e(inputstream1));
            com.chartboost.sdk.Libraries.a.a a6 = a.a(e, f1);
            com.chartboost.sdk.Libraries.a.a a5;
            a5 = a6;
            if (a5 == null)
            {
                break MISSING_BLOCK_LABEL_658;
            }
            IOException ioexception1;
            boolean flag1;
            if (flag)
            {
                flag1 = false;
            } else
            {
                flag1 = true;
            }
            a5.a(flag1);
            if (flag)
            {
                break MISSING_BLOCK_LABEL_658;
            }
            com.chartboost.sdk.impl.o.a(a).a(e, a5);
            a3 = a5;
_L11:
            if (inputstream1 == null) goto _L8; else goto _L7
_L7:
            inputstream1.close();
              goto _L9
            ioexception1;
            a2 = a3;
            ioexception = ioexception1;
            httpresponse = httpresponse3;
              goto _L10
            Exception exception2;
            exception2;
            a5 = a2;
_L18:
            exception2.printStackTrace();
            a3 = a5;
              goto _L11
            Exception exception1;
            exception1;
            InputStream inputstream = null;
_L17:
            if (inputstream == null) goto _L13; else goto _L12
_L12:
            inputstream.close();
_L14:
            throw exception1;
            IllegalStateException illegalstateexception1;
            illegalstateexception1;
            com.chartboost.sdk.Libraries.a.a a4;
            HttpResponse httpresponse1;
            httpresponse1 = httpresponse3;
            a4 = a2;
_L15:
            httpget.abort();
            com.chartboost.sdk.Libraries.d.a(httpresponse1);
            Log.w("CBWebImageCache", (new StringBuilder("Incorrect URL: ")).append(b).toString());
            a3 = a4;
              goto _L9
_L13:
            com.chartboost.sdk.Libraries.d.a(httpentity);
              goto _L14
            Throwable throwable;
            throwable;
            HttpResponse httpresponse2 = httpresponse3;
_L16:
            httpget.abort();
            com.chartboost.sdk.Libraries.d.a(httpresponse2);
            Log.w("CBWebImageCache", (new StringBuilder("Error while retrieving bitmap from ")).append(b).toString(), throwable);
_L6:
            a3 = a2;
              goto _L9
_L8:
            com.chartboost.sdk.Libraries.d.a(httpentity);
              goto _L9
            IllegalStateException illegalstateexception2;
            illegalstateexception2;
            a4 = a3;
            httpresponse1 = httpresponse3;
              goto _L15
            throwable;
            httpresponse2 = null;
              goto _L16
            Throwable throwable1;
            throwable1;
            a2 = a3;
            throwable = throwable1;
            httpresponse2 = httpresponse3;
              goto _L16
            IllegalStateException illegalstateexception;
            illegalstateexception;
            a4 = a2;
            httpresponse1 = null;
              goto _L15
            ioexception;
            httpresponse = null;
              goto _L10
            exception1;
            inputstream = inputstream1;
              goto _L17
            exception1;
            a2 = a5;
            inputstream = inputstream1;
              goto _L17
            exception2;
              goto _L18
            Exception exception3;
            exception3;
            a1 = a2;
            exception = exception3;
              goto _L19
            a3 = a5;
              goto _L11
        }

        public a(ImageView imageview, b b1, String s, Bundle bundle, String s1)
        {
            a = o.this;
            super();
            c = new WeakReference(imageview);
            c c1 = new c(this);
            if (imageview != null)
            {
                imageview.setImageDrawable(c1);
            }
            e = s;
            d = b1;
            f = bundle;
            b = s1;
        }
    }

    public static interface b
    {

        public abstract void a(com.chartboost.sdk.Libraries.a.a a1, Bundle bundle);
    }

    static class c extends BitmapDrawable
    {

        private final WeakReference a;

        public a a()
        {
            return (a)a.get();
        }

        public c(a a1)
        {
            a = new WeakReference(a1);
        }
    }

    private static class d
    {

        private File a;
        private File b;
        private File c;

        private void a(Context context)
        {
            if (context == null)
            {
                return;
            }
            boolean flag;
            if (context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (!flag)
            {
                break MISSING_BLOCK_LABEL_43;
            }
            if (Environment.getExternalStorageState().equals("mounted"))
            {
                b = context.getExternalFilesDir("cache");
            }
            if (b != null)
            {
                b = new File(b, "__chartboost");
                b = new File(b, "images");
                if (b != null && !b.exists())
                {
                    b.mkdirs();
                }
            }
_L1:
            c = context.getCacheDir();
            if (c != null)
            {
                c = new File(c, "__chartboost");
                c = new File(c, "images");
                if (!c.exists())
                {
                    c.mkdirs();
                }
            }
            Exception exception;
            File file;
            if (b != null)
            {
                file = b;
            } else
            {
                file = c;
            }
            a = file;
            return;
            exception;
            b = null;
              goto _L1
        }

        public File a(String s)
        {
            if (a == null)
            {
                a(Chartboost.sharedChartboost().getContext());
            }
            if (a == null)
            {
                return null;
            } else
            {
                return new File(a, s);
            }
        }

        public void a()
        {
            if (a != null) goto _L2; else goto _L1
_L1:
            return;
_L2:
            if (b == null) goto _L4; else goto _L3
_L3:
            File afile1[] = b.listFiles();
            if (afile1 == null) goto _L4; else goto _L5
_L5:
            int k;
            int i1;
            File afile[];
            int i;
            int j;
            try
            {
                k = afile1.length;
            }
            catch (Exception exception)
            {
                return;
            }
            i1 = 0;
              goto _L6
_L4:
            if (c == null) goto _L1; else goto _L7
_L7:
            afile = c.listFiles();
            if (afile == null) goto _L1; else goto _L8
_L8:
            i = afile.length;
            j = 0;
_L10:
            if (j >= i) goto _L1; else goto _L9
_L9:
            afile[j].delete();
            j++;
              goto _L10
              goto _L1
_L11:
            afile1[i1].delete();
            i1++;
_L6:
            if (i1 < k) goto _L11; else goto _L4
        }

        public d(Context context)
        {
            a = null;
            b = null;
            c = null;
            a(context);
        }
    }

    static class e extends FilterInputStream
    {

        public long skip(long l1)
            throws IOException
        {
            long l2 = 0L;
_L5:
            if (l2 < l1) goto _L2; else goto _L1
_L1:
            return l2;
_L2:
            long l3;
            l3 = in.skip(l1 - l2);
            if (l3 != 0L)
            {
                break; /* Loop/switch isn't completed */
            }
            if (read() < 0)
            {
                continue; /* Loop/switch isn't completed */
            }
            l3 = 1L;
            break; /* Loop/switch isn't completed */
            if (true) goto _L1; else goto _L3
_L3:
            l2 += l3;
            if (true) goto _L5; else goto _L4
_L4:
        }

        public e(InputStream inputstream)
        {
            super(inputstream);
        }
    }


    private static o a = null;
    private d b;
    private com.chartboost.sdk.Libraries.a c;

    private o()
    {
        b = new d(Chartboost.sharedChartboost().getContext());
        c = new com.chartboost.sdk.Libraries.a();
    }

    static com.chartboost.sdk.Libraries.a a(o o1)
    {
        return o1.c;
    }

    static a a(ImageView imageview)
    {
        return b(imageview);
    }

    public static o a()
    {
        com/chartboost/sdk/impl/o;
        JVM INSTR monitorenter ;
        o o1;
        if (a == null)
        {
            a = new o();
        }
        o1 = a;
        com/chartboost/sdk/impl/o;
        JVM INSTR monitorexit ;
        return o1;
        Exception exception;
        exception;
        throw exception;
    }

    private static a b(ImageView imageview)
    {
        if (imageview != null)
        {
            android.graphics.drawable.Drawable drawable = imageview.getDrawable();
            if (drawable instanceof c)
            {
                return ((c)drawable).a();
            }
        }
        return null;
    }

    protected com.chartboost.sdk.Libraries.a.a a(String s, float f)
        throws IOException
    {
        File file = b.a((new StringBuilder(String.valueOf(s))).append(".png").toString());
        if (file == null)
        {
            return null;
        }
        if (!file.exists())
        {
            return null;
        }
        BufferedInputStream bufferedinputstream = new BufferedInputStream(new FileInputStream(file));
        long l1 = file.length();
        if (l1 > 0x7fffffffL)
        {
            int i;
            byte abyte0[];
            android.graphics.BitmapFactory.Options options;
            android.graphics.BitmapFactory.Options options1;
            OutOfMemoryError outofmemoryerror;
            Exception exception;
            android.graphics.Bitmap bitmap;
            android.graphics.Bitmap bitmap1;
            try
            {
                bufferedinputstream.close();
            }
            catch (IOException ioexception) { }
            throw new IOException("Cannot read files larger than 2147483647 bytes");
        }
        i = (int)l1;
        abyte0 = new byte[i];
        bufferedinputstream.read(abyte0, 0, i);
        bufferedinputstream.close();
        options = new android.graphics.BitmapFactory.Options();
        options.inJustDecodeBounds = true;
        BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options);
        options1 = new android.graphics.BitmapFactory.Options();
        options1.inJustDecodeBounds = false;
        options1.inDither = false;
        options1.inPurgeable = true;
        options1.inInputShareable = true;
        options1.inTempStorage = new byte[32768];
        options1.inSampleSize = 1;
        if (options1.inSampleSize >= 32)
        {
            bitmap1 = null;
        } else
        {
            try
            {
                bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length, options1);
            }
            // Misplaced declaration of an exception variable
            catch (OutOfMemoryError outofmemoryerror)
            {
                options1.inSampleSize = 2 * options1.inSampleSize;
                if (false)
                {
                } else
                {
                    break MISSING_BLOCK_LABEL_191;
                }
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                return null;
            }
            bitmap1 = bitmap;
        }
        if (bitmap1 == null)
        {
            return null;
        } else
        {
            return new com.chartboost.sdk.Libraries.a.a(bitmap1, options1.inSampleSize, f);
        }
    }

    public void a(String s, String s1, b b1, ImageView imageview, Bundle bundle)
    {
        com.chartboost.sdk.Libraries.a.a a1;
        boolean flag;
        float f;
        com.chartboost.sdk.Libraries.a.a a4;
        if (bundle != null)
        {
            flag = bundle.getBoolean("paramNoMemoryCache");
        } else
        {
            flag = false;
        }
        if (bundle != null)
        {
            f = bundle.getFloat("paramAssetScale", 1.0F);
        } else
        {
            f = 1.0F;
        }
        a1 = null;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        a4 = c.a(s1);
        a1 = a4;
        if (a1 != null)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        a1 = a(s1, f);
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        boolean flag1;
        if (flag)
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        a1.a(flag1);
        if (flag)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        c.a(s1, a1);
_L1:
        com.chartboost.sdk.Libraries.a.a a3;
        Exception exception1;
        Exception exception2;
        if (a1 != null)
        {
            if (imageview != null)
            {
                imageview.setImageBitmap(a1.b());
            }
            if (b1 != null)
            {
                b1.a(a1, bundle);
            }
            return;
        } else
        {
            a a2 = new a(imageview, b1, s1, bundle, s);
            com.chartboost.sdk.impl.l.a().execute(a2);
            return;
        }
        exception2;
        a3 = null;
        exception1 = exception2;
_L2:
        exception1.printStackTrace();
        a1 = a3;
          goto _L1
        Exception exception;
        exception;
        a3 = a1;
        exception1 = exception;
          goto _L2
    }

    protected boolean a(String s, e e1)
        throws IOException
    {
        File file;
        FileOutputStream fileoutputstream;
        file = b.a((new StringBuilder(String.valueOf(s))).append(".png").toString());
        if (file == null)
        {
            return false;
        }
        fileoutputstream = null;
        FileOutputStream fileoutputstream1 = new FileOutputStream(file);
        byte abyte0[] = new byte[4096];
_L1:
        int i = e1.read(abyte0);
        Exception exception;
        FileOutputStream fileoutputstream2;
        if (i == -1)
        {
            Exception exception2;
            if (fileoutputstream1 != null)
            {
                try
                {
                    fileoutputstream1.close();
                }
                catch (Exception exception4) { }
            }
            return true;
        }
        fileoutputstream1.write(abyte0, 0, i);
          goto _L1
        exception2;
        fileoutputstream2 = fileoutputstream1;
_L5:
        if (fileoutputstream2 != null)
        {
            try
            {
                fileoutputstream2.close();
            }
            catch (Exception exception3) { }
        }
        return false;
        exception;
_L3:
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            catch (Exception exception1) { }
        }
        throw exception;
        exception;
        fileoutputstream = fileoutputstream1;
        if (true) goto _L3; else goto _L2
_L2:
        Exception exception5;
        exception5;
        fileoutputstream2 = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void b()
    {
        b.a();
        c.a();
    }

}
