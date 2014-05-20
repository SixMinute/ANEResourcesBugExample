// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.os.Environment;
import com.chartboost.sdk.Chartboost;
import java.io.File;

// Referenced classes of package com.chartboost.sdk.impl:
//            o

private static class a
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
        int l;
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
        l = 0;
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
        afile1[l].delete();
        l++;
_L6:
        if (l < k) goto _L11; else goto _L4
    }

    public t(Context context)
    {
        a = null;
        b = null;
        c = null;
        a(context);
    }
}
