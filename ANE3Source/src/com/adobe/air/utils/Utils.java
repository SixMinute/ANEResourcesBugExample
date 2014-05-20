// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.utils;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.os.Environment;
import android.os.Process;
import android.view.LayoutInflater;
import android.view.View;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Scanner;

public class Utils
{

    private static String sRuntimePackageName;

    public Utils()
    {
    }

    public static String GetExternalStorageDirectory()
    {
        return Environment.getExternalStorageDirectory().getAbsolutePath();
    }

    public static View GetLayoutViewFromRuntime(String s, Resources resources, LayoutInflater layoutinflater)
    {
        int i = resources.getIdentifier(s, "layout", sRuntimePackageName);
        if (i != 0)
        {
            return layoutinflater.inflate(i, null);
        } else
        {
            return null;
        }
    }

    public static String GetLibCorePath(Context context)
    {
        return GetNativeLibraryPath(context, "libCore.so");
    }

    public static String GetLibSTLPath(Context context)
    {
        return GetNativeLibraryPath(context, "libstlport_shared.so");
    }

    public static String GetNativeExtensionPath(Context context, String s)
    {
        ApplicationInfo applicationinfo;
        Field field;
        Field field1;
        applicationinfo = context.getPackageManager().getApplicationInfo(sRuntimePackageName, 0);
        field = android/content/pm/ApplicationInfo.getField("nativeLibraryDir");
        field1 = android/content/pm/ApplicationInfo.getField("sourceDir");
        if (field == null) goto _L2; else goto _L1
_L1:
        if (!((String)field1.get(applicationinfo)).startsWith("/system/app/")) goto _L4; else goto _L3
_L3:
        String s1 = new String((new StringBuilder()).append("/system/lib/").append(sRuntimePackageName).append("/").append(s).toString());
_L6:
        if (s1 == null)
        {
            s1 = new String((new StringBuilder()).append("/data/data/").append(sRuntimePackageName).append("/lib/").append(s).toString());
        }
        return s1;
_L4:
        try
        {
            s1 = new String((new StringBuilder()).append("/data/data/").append(context.getPackageName()).append("/lib/").append(s).toString());
        }
        catch (Exception exception)
        {
            s1 = null;
        }
        continue; /* Loop/switch isn't completed */
_L2:
        s1 = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public static String GetNativeLibraryPath(Context context, String s)
    {
        ApplicationInfo applicationinfo;
        Field field;
        Field field1;
        applicationinfo = context.getPackageManager().getApplicationInfo(sRuntimePackageName, 0);
        field = android/content/pm/ApplicationInfo.getField("nativeLibraryDir");
        field1 = android/content/pm/ApplicationInfo.getField("sourceDir");
        String s1 = null;
        if (field == null) goto _L2; else goto _L1
_L1:
        if (!((String)field1.get(applicationinfo)).startsWith("/system/app/")) goto _L4; else goto _L3
_L3:
        String s2 = new String((new StringBuilder()).append("/system/lib/").append(sRuntimePackageName).append("/").append(s).toString());
        s1 = s2;
_L2:
        if (s1 == null)
        {
            s1 = new String((new StringBuilder()).append("/data/data/").append(sRuntimePackageName).append("/lib/").append(s).toString());
        }
        return s1;
_L4:
        String s3 = ((String)field.get(applicationinfo)).concat((new StringBuilder()).append("/").append(s).toString());
        s1 = s3;
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        s1 = null;
        if (true) goto _L2; else goto _L5
_L5:
    }

    public static String GetResourceStringFromRuntime(String s, Resources resources)
    {
        return resources.getString(resources.getIdentifier(s, "string", sRuntimePackageName));
    }

    public static String GetSharedDataDirectory()
    {
        return Environment.getDataDirectory().getAbsolutePath();
    }

    public static String GetTelemetrySettings(Context context, String s, String s1)
    {
        InputStream inputstream2 = context.getResources().getAssets().open(s, 1);
        InputStream inputstream1 = inputstream2;
        ByteArrayOutputStream bytearrayoutputstream1 = new ByteArrayOutputStream();
        String s4;
        copyTo(inputstream1, bytearrayoutputstream1);
        s4 = bytearrayoutputstream1.toString();
        if (inputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        inputstream1.close();
        if (bytearrayoutputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_61;
        }
        bytearrayoutputstream1.close();
        String s2 = s4;
_L1:
        Exception exception;
        InputStream inputstream;
        ByteArrayOutputStream bytearrayoutputstream;
        if (s2 == null)
        {
            Exception exception2;
            Exception exception3;
            String s3;
            Exception exception7;
            try
            {
                s3 = context.createPackageContext(s1, 0).getSharedPreferences("telemetry", 1).getString("content", "");
            }
            catch (Exception exception4)
            {
                return s2;
            }
            s2 = s3;
        }
        return s2;
        exception7;
        s2 = s4;
          goto _L1
        exception2;
        inputstream1 = null;
        bytearrayoutputstream1 = null;
_L4:
        if (inputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_127;
        }
        inputstream1.close();
        if (bytearrayoutputstream1 == null)
        {
            break MISSING_BLOCK_LABEL_137;
        }
        bytearrayoutputstream1.close();
        s2 = null;
          goto _L1
        exception3;
        s2 = null;
          goto _L1
        exception;
        inputstream = null;
        bytearrayoutputstream = null;
_L3:
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        inputstream.close();
        if (bytearrayoutputstream != null)
        {
            try
            {
                bytearrayoutputstream.close();
            }
            catch (Exception exception1) { }
        }
        throw exception;
        Exception exception9;
        exception9;
        InputStream inputstream3 = inputstream1;
        exception = exception9;
        inputstream = inputstream3;
        bytearrayoutputstream = null;
        continue; /* Loop/switch isn't completed */
        Exception exception6;
        exception6;
        bytearrayoutputstream = bytearrayoutputstream1;
        inputstream = inputstream1;
        exception = exception6;
        if (true) goto _L3; else goto _L2
_L2:
        Exception exception8;
        exception8;
        bytearrayoutputstream1 = null;
          goto _L4
        Exception exception5;
        exception5;
          goto _L4
    }

    public static View GetWidgetInViewByName(String s, Resources resources, View view)
    {
        return view.findViewById(resources.getIdentifier(s, "id", sRuntimePackageName));
    }

    static void KillProcess()
    {
        Process.killProcess(Process.myPid());
    }

    public static String ReplaceTextContentWithStars(String s)
    {
        int i = s.length();
        char ac[] = new char[i];
        for (int j = 0; j < i; j++)
        {
            ac[j] = '*';
        }

        return new String(ac);
    }

    public static void copyTo(File file, File file1)
        throws IOException
    {
        if (file.isDirectory())
        {
            file1.mkdirs();
            File afile[] = file.listFiles();
            int i = afile.length;
            for (int j = 0; j < i; j++)
            {
                File file2 = afile[j];
                copyTo(file2, new File(file1, file2.getName()));
            }

        } else
        {
            FileInputStream fileinputstream = new FileInputStream(file);
            FileOutputStream fileoutputstream = new FileOutputStream(file1);
            copyTo(((InputStream) (fileinputstream)), ((OutputStream) (fileoutputstream)));
            fileinputstream.close();
            fileoutputstream.close();
        }
    }

    public static void copyTo(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        byte abyte0[] = new byte[1024];
        do
        {
            int i = inputstream.read(abyte0);
            if (i > 0)
            {
                outputstream.write(abyte0, 0, i);
            } else
            {
                return;
            }
        } while (true);
    }

    public static String getRuntimePackageName()
    {
        return sRuntimePackageName;
    }

    public static boolean hasCaptiveRuntime()
    {
        return !"com.adobe.air".equals(sRuntimePackageName);
    }

    public static native boolean nativeConnectDebuggerSocket(String s);

    public static HashMap parseKeyValuePairFile(File file, String s)
        throws FileNotFoundException, IllegalStateException
    {
        return parseKeyValuePairFile(((InputStream) (new FileInputStream(file))), s);
    }

    public static HashMap parseKeyValuePairFile(InputStream inputstream, String s)
        throws IllegalStateException
    {
        HashMap hashmap = new HashMap();
        Scanner scanner;
        Scanner scanner1;
        for (scanner = new Scanner(inputstream); scanner.hasNextLine(); scanner1.close())
        {
            scanner1 = new Scanner(scanner.nextLine());
            scanner1.useDelimiter(s);
            if (scanner1.hasNext())
            {
                String s1 = scanner1.next();
                String s2 = scanner1.next();
                hashmap.put(s1.trim(), s2.trim());
            }
        }

        scanner.close();
        return hashmap;
    }

    public static void setRuntimePackageName(String s)
    {
        sRuntimePackageName = s;
    }

    public static void writeBufferToFile(StringBuffer stringbuffer, File file)
        throws IOException
    {
        FileWriter filewriter = new FileWriter(file);
        filewriter.write(stringbuffer.toString());
        filewriter.close();
    }

    public static void writeOut(InputStream inputstream, File file)
        throws IOException
    {
        FileOutputStream fileoutputstream = new FileOutputStream(file);
        writeThrough(inputstream, fileoutputstream);
        fileoutputstream.close();
    }

    public static void writeStringToFile(String s, File file)
        throws IOException
    {
        FileWriter filewriter = new FileWriter(file);
        filewriter.write(s);
        filewriter.close();
    }

    public static boolean writeStringToFile(String s, String s1)
    {
        File file = new File(s1);
        byte abyte0[];
        if (!file.exists())
        {
            try
            {
                file.createNewFile();
            }
            catch (IOException ioexception1)
            {
                return false;
            }
        }
        abyte0 = s.getBytes();
        try
        {
            FileOutputStream fileoutputstream = new FileOutputStream(file);
            fileoutputstream.write(abyte0, 0, abyte0.length);
            fileoutputstream.close();
        }
        catch (IOException ioexception)
        {
            return false;
        }
        return true;
    }

    public static void writeThrough(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        byte abyte0[] = new byte[4096];
        do
        {
            int i = inputstream.read(abyte0);
            if (i == -1)
            {
                break;
            }
            if (outputstream != null)
            {
                outputstream.write(abyte0, 0, i);
                outputstream.flush();
            }
        } while (true);
    }
}
