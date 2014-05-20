// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import com.adobe.air.utils.Utils;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.adobe.air:
//            ResourceIdMap

public final class ResourceFileManager
{

    private final Context mAppContext;
    private final Resources mAppResources;
    private ResourceIdMap mResourceIdMap;

    ResourceFileManager(Context context)
    {
        mResourceIdMap = null;
        mAppContext = context;
        mAppResources = context.getResources();
        try
        {
            mResourceIdMap = new ResourceIdMap(mAppContext.getClassLoader().loadClass((new StringBuilder()).append(mAppContext.getPackageName()).append(".R").toString()));
            return;
        }
        catch (ClassNotFoundException classnotfoundexception)
        {
            return;
        }
    }

    private String remapSpecialFileNames(String s)
    {
        if (s.equals("ss.cfg") || s.equals("ss.sgn") || s.equals("mms.cfg"))
        {
            return s.replace('.', '_');
        } else
        {
            return null;
        }
    }

    private boolean resExists(String s)
    {
        String s1 = remapSpecialFileNames(s);
        boolean flag = false;
        if (s1 != null)
        {
            flag = resExists(lookupResId((new StringBuilder()).append("raw.").append(s1).toString()));
        }
        return flag;
    }

    public AssetFileDescriptor GetAssetFileDescriptor(String s)
    {
        String s1;
        Uri uri;
        AssetFileDescriptor assetfiledescriptor;
        try
        {
            s1 = remapSpecialFileNames(s);
        }
        catch (Exception exception)
        {
            return null;
        }
        if (s1 == null)
        {
            s1 = s;
        }
        uri = Uri.parse((new StringBuilder()).append("android.resource://").append(mAppContext.getPackageName()).append("/raw/").append(s1).toString());
        assetfiledescriptor = mAppContext.getContentResolver().openAssetFileDescriptor(uri, "r");
        return assetfiledescriptor;
    }

    public void extractResource(int i, File file)
        throws IOException
    {
        InputStream inputstream = getStream(i);
        Utils.writeOut(inputstream, file);
        inputstream.close();
    }

    public InputStream getFileStreamFromRawRes(int i)
        throws android.content.res.Resources.NotFoundException
    {
        InputStream inputstream = mAppResources.openRawResource(i);
        if (inputstream != null);
        return inputstream;
    }

    public String getResourceEntryName(int i)
    {
        String s;
        try
        {
            s = mAppResources.getResourceEntryName(i);
        }
        catch (Exception exception)
        {
            return "null";
        }
        return s;
    }

    public String getResourceName(int i)
    {
        String s;
        try
        {
            s = mAppResources.getResourceName(i);
        }
        catch (Exception exception)
        {
            return "null";
        }
        return s;
    }

    public InputStream getStream(int i)
        throws android.content.res.Resources.NotFoundException
    {
        return mAppResources.openRawResource(i);
    }

    public int lookupResId(String s)
    {
        int i;
        if (mResourceIdMap == null)
        {
            break MISSING_BLOCK_LABEL_19;
        }
        i = mResourceIdMap.getId(s);
        return i;
        android.content.res.Resources.NotFoundException notfoundexception;
        notfoundexception;
        return -1;
    }

    public String readFileFromRawRes(int i)
    {
        String s = new String();
        String s1;
        try
        {
            InputStream inputstream = getFileStreamFromRawRes(i);
            ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
            Utils.writeThrough(inputstream, bytearrayoutputstream);
            s1 = new String(bytearrayoutputstream.toByteArray(), "UTF-8");
        }
        catch (Exception exception)
        {
            return s;
        }
        return s1;
    }

    public boolean resExists(int i)
    {
        if (i <= 0)
        {
            return false;
        }
        InputStream inputstream;
        try
        {
            inputstream = mAppResources.openRawResource(i);
        }
        catch (Exception exception)
        {
            return false;
        }
        return inputstream != null;
    }
}
