// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.UUID;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import java.util.zip.ZipInputStream;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper, FileInfo

public final class ApplicationFileManager
{

    private static final String APP_PREFIX = "app";
    private static final String APP_XML_PATH = "META-INF/AIR/application.xml";
    private static final String ASSET_STRING = "assets";
    public static String sAndroidPackageName;
    public static String sApkPath;
    public static String sAppDataPath;
    public static String sInitialContentName;
    private final int BUFFER_SIZE = 8192;
    private final int DEFAULT_SIZE = -1;
    private HashMap mFileInfoMap;

    ApplicationFileManager()
    {
        mFileInfoMap = new HashMap();
        procZipContents(getApkPathFile());
    }

    private static void RefreshAppCache(String s, String s1)
    {
        if ((new File((new StringBuilder()).append(s).append(File.separator).append(s1).toString())).exists())
        {
            return;
        } else
        {
            deleteDir(new File(s));
            return;
        }
    }

    public static void checkAndCreateAppDataDir()
    {
        File file;
        file = new File(sAppDataPath);
        if (file.exists())
        {
            break MISSING_BLOCK_LABEL_23;
        }
        file.mkdirs();
        return;
        SecurityException securityexception;
        securityexception;
    }

    private void closeInputStream(InputStream inputstream)
        throws Exception
    {
        inputstream.close();
    }

    private void closeOutputStream(OutputStream outputstream)
        throws Exception
    {
        outputstream.flush();
        outputstream.close();
    }

    public static boolean deleteDir(File file)
    {
        if (file.isDirectory())
        {
            File afile[] = file.listFiles();
            int i = afile.length;
            for (int j = 0; j < i; j++)
            {
                if (!deleteDir(afile[j]))
                {
                    return false;
                }
            }

        }
        return file.delete();
    }

    public static boolean deleteUnzippedContents(String s)
    {
        File file = new File(s);
        if (file.isDirectory())
        {
            File afile[] = file.listFiles();
            for (int i = 0; i < afile.length; i++)
            {
                deleteUnzippedContents(afile[i].getAbsolutePath());
            }

        }
        return file.delete();
    }

    public static String getAndroidApkPath()
    {
        return sApkPath;
    }

    public static String getAndroidAppDataPath()
    {
        return sAppDataPath;
    }

    public static String getAndroidUnzipContentPath()
    {
        return sAppDataPath;
    }

    private File getApkPathFile()
    {
        return new File(getAndroidApkPath());
    }

    public static String getAppRoot()
    {
        return (new StringBuilder()).append(getAndroidUnzipContentPath()).append(File.separatorChar).append("assets").toString();
    }

    public static String getAppXMLRoot()
    {
        return (new StringBuilder()).append(getAndroidUnzipContentPath()).append(File.separatorChar).append("META-INF/AIR/application.xml").toString();
    }

    public static void processAndroidDataPath(String s)
    {
        String s1 = (new StringBuilder()).append(s).append(File.separator).append("app").toString();
        Bundle bundle = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getPackageManager().getActivityInfo(AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity().getComponentName(), 128).metaData;
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_255;
        }
        String s4 = (String)bundle.get("uniqueappversionid");
        if (!AndroidActivityWrapper.IsGamePreviewMode()) goto _L2; else goto _L1
_L1:
        String s7 = UUID.randomUUID().toString();
        String s5 = s7;
_L4:
        String s6;
        RefreshAppCache(s1, s5);
        s6 = (String)bundle.get("initialcontent");
        String s2;
        String s3;
        s3 = s6;
        s2 = s5;
_L3:
        setAndroidDataPath((new StringBuilder()).append(s1).append(File.separator).append(s2).toString());
        (new File((new StringBuilder()).append(s1).append(File.separator).append(s2).toString())).mkdirs();
        setInitialContentName(s3);
        return;
        NullPointerException nullpointerexception;
        nullpointerexception;
        s2 = "app";
        s3 = null;
          goto _L3
        NullPointerException nullpointerexception1;
        nullpointerexception1;
        s2 = s4;
        s3 = null;
          goto _L3
        NullPointerException nullpointerexception2;
        nullpointerexception2;
        s2 = s5;
        s3 = null;
          goto _L3
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        s2 = "app";
        s3 = null;
          goto _L3
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception1;
        namenotfoundexception1;
        s2 = s4;
        s3 = null;
          goto _L3
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception2;
        namenotfoundexception2;
        s2 = s5;
        s3 = null;
          goto _L3
_L2:
        s5 = s4;
          goto _L4
        s2 = "app";
        s3 = null;
          goto _L3
    }

    public static void setAndroidAPKPath(String s)
    {
        sApkPath = s;
    }

    private static void setAndroidDataPath(String s)
    {
        sAppDataPath = s;
    }

    public static void setAndroidPackageName(String s)
    {
        sAndroidPackageName = s;
    }

    private static void setInitialContentName(String s)
    {
        sInitialContentName = s;
    }

    public boolean addToCache(String s)
    {
        return sInitialContentName != null && s.indexOf(sInitialContentName) != -1;
    }

    public String[] appDirectoryNameList(String s)
    {
        String s1;
        Iterator iterator;
        ArrayList arraylist;
        if (!s.equals(""))
        {
            s1 = (new StringBuilder()).append("assets").append(File.separator).append(s).toString();
        } else
        {
            s1 = "assets";
        }
        iterator = mFileInfoMap.keySet().iterator();
        arraylist = new ArrayList();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s2 = (String)iterator.next();
            if (!s2.equals(s1) && s2.startsWith(s1) && -1 == s2.indexOf(File.separator, 1 + s1.length()))
            {
                arraylist.add(s2.substring(1 + s1.length()));
            }
        } while (true);
        return (String[])arraylist.toArray(new String[0]);
    }

    public boolean[] appDirectoryTypeList(String s)
    {
        String s1;
        Iterator iterator;
        ArrayList arraylist;
        if (!s.equals(""))
        {
            s1 = (new StringBuilder()).append("assets").append(File.separator).append(s).toString();
        } else
        {
            s1 = "assets";
        }
        iterator = mFileInfoMap.keySet().iterator();
        arraylist = new ArrayList();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s2 = (String)iterator.next();
            if (!s2.equals(s1) && s2.startsWith(s1) && -1 == s2.indexOf(File.separator, 1 + s1.length()))
            {
                arraylist.add(new Boolean(((FileInfo)mFileInfoMap.get(s2)).mIsFile));
            }
        } while (true);
        boolean aflag[] = new boolean[arraylist.size()];
        for (int i = 0; i < aflag.length; i++)
        {
            aflag[i] = ((Boolean)arraylist.get(i)).booleanValue();
        }

        return aflag;
    }

    public void copyFolder(String s)
    {
        ZipInputStream zipinputstream;
        BufferedOutputStream bufferedoutputstream;
        String s1;
        String s2;
        File file;
        Exception exception;
        ZipEntry zipentry;
        String s3;
        File file1;
        byte abyte0[];
        int i;
        if (!s.equals(""))
        {
            s1 = (new StringBuilder()).append("assets").append(File.separator).append(s).toString();
        } else
        {
            s1 = "assets";
        }
        s2 = (new StringBuilder()).append(getAndroidUnzipContentPath()).append(File.separatorChar).toString();
        file = getApkPathFile();
        zipinputstream = new ZipInputStream(new BufferedInputStream(new FileInputStream(file), 8192));
_L2:
        zipentry = zipinputstream.getNextEntry();
        if (zipentry == null)
        {
            break MISSING_BLOCK_LABEL_261;
        }
        s3 = zipentry.getName();
        if (!s3.substring(0, "assets".length()).equals("assets") || !s3.startsWith(s1)) goto _L2; else goto _L1
_L1:
        file1 = new File((new StringBuilder()).append(s2).append(s3).toString());
        (new File(file1.getParent())).mkdirs();
        bufferedoutputstream = new BufferedOutputStream(new FileOutputStream(file1), 8192);
        abyte0 = new byte[8192];
_L3:
        i = zipinputstream.read(abyte0, 0, 8192);
label0:
        {
            if (i == -1)
            {
                break label0;
            }
            try
            {
                bufferedoutputstream.write(abyte0, 0, i);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                return;
            }
        }
          goto _L3
        closeOutputStream(bufferedoutputstream);
          goto _L2
        closeInputStream(zipinputstream);
        return;
    }

    public void deleteFile(String s)
    {
        (new File(s)).delete();
    }

    public boolean fileExists(String s)
    {
        String s1;
        if (!s.equals(""))
        {
            s1 = (new StringBuilder()).append("assets").append(File.separator).append(s).toString();
        } else
        {
            s1 = "assets";
        }
        return mFileInfoMap.containsKey(s1);
    }

    public long getLSize(String s)
    {
        String s1 = (new StringBuilder()).append("assets").append(File.separator).append(s).toString();
        FileInfo fileinfo = (FileInfo)mFileInfoMap.get(s1);
        if (fileinfo != null && fileinfo.mFileSize != -1L)
        {
            return fileinfo.mFileSize;
        } else
        {
            return 0L;
        }
    }

    public boolean isDirectory(String s)
    {
        String s1;
        FileInfo fileinfo;
        if (!s.equals(""))
        {
            s1 = (new StringBuilder()).append("assets").append(File.separator).append(s).toString();
        } else
        {
            s1 = "assets";
        }
        fileinfo = (FileInfo)mFileInfoMap.get(s1);
        return fileinfo != null && fileinfo.mIsDirectory;
    }

    public void procZipContents(File file)
    {
        ZipFile zipfile;
        try
        {
            zipfile = new ZipFile(file);
            Enumeration enumeration = zipfile.entries();
            do
            {
                if (!enumeration.hasMoreElements())
                {
                    break;
                }
                ZipEntry zipentry = (ZipEntry)enumeration.nextElement();
                String s = zipentry.getName();
                if (s.substring(0, "assets".length()).equals("assets"))
                {
                    FileInfo fileinfo = new FileInfo(zipentry.getSize(), true, false);
                    mFileInfoMap.put(s, fileinfo);
                    File file1 = new File(s);
                    while (file1.getParent() != null && (FileInfo)mFileInfoMap.get(file1.getParent()) == null) 
                    {
                        FileInfo fileinfo1 = new FileInfo(-1L, false, true);
                        mFileInfoMap.put(file1.getParent(), fileinfo1);
                        file1 = new File(file1.getParent());
                    }
                }
            } while (true);
        }
        catch (Exception exception)
        {
            return;
        }
        zipfile.close();
        return;
    }

    public boolean readFileName(String s)
    {
        String s1;
        String s2;
        File file;
        File file1;
        s1 = (new StringBuilder()).append("assets").append(File.separator).append(s).toString();
        s2 = (new StringBuilder()).append(getAndroidUnzipContentPath()).append(File.separatorChar).toString();
        file = new File((new StringBuilder()).append(s2).append(s1).toString());
        if (file.exists())
        {
            return true;
        }
        file1 = getApkPathFile();
        ZipFile zipfile = new ZipFile(file1);
        Enumeration enumeration = zipfile.entries();
_L4:
        if (!enumeration.hasMoreElements()) goto _L2; else goto _L1
_L1:
        ZipEntry zipentry;
        String s3;
        zipentry = (ZipEntry)enumeration.nextElement();
        s3 = zipentry.getName();
        if (!s3.substring(0, "assets".length()).equals("assets")) goto _L4; else goto _L3
_L3:
        InputStream inputstream;
        BufferedOutputStream bufferedoutputstream;
        byte abyte0[];
        if (!s3.equals(s1))
        {
            continue; /* Loop/switch isn't completed */
        }
        inputstream = zipfile.getInputStream(zipentry);
        (new File(file.getParent())).mkdirs();
        bufferedoutputstream = new BufferedOutputStream(new FileOutputStream(file), 8192);
        abyte0 = new byte[8192];
_L7:
        int i = inputstream.read(abyte0);
        if (i == -1) goto _L6; else goto _L5
_L5:
        bufferedoutputstream.write(abyte0, 0, i);
          goto _L7
        Exception exception2;
        exception2;
        ZipFile zipfile2 = zipfile;
_L13:
        Exception exception;
        ZipFile zipfile1;
        if (zipfile2 != null)
        {
            try
            {
                zipfile2.close();
            }
            catch (Exception exception3) { }
        }
_L9:
        return true;
_L6:
        closeInputStream(inputstream);
        closeOutputStream(bufferedoutputstream);
_L2:
        if (zipfile != null)
        {
            try
            {
                zipfile.close();
            }
            catch (Exception exception4) { }
        }
        if (true) goto _L9; else goto _L8
_L8:
        if (!s3.startsWith((new StringBuilder()).append(s1).append("/").toString())) goto _L4; else goto _L10
_L10:
        (new File((new StringBuilder()).append(s2).append(s1).toString())).mkdirs();
          goto _L2
        exception;
        zipfile1 = zipfile;
_L12:
        if (zipfile1 != null)
        {
            try
            {
                zipfile1.close();
            }
            catch (Exception exception1) { }
        }
        throw exception;
        exception;
        zipfile1 = null;
        if (true) goto _L12; else goto _L11
_L11:
        Exception exception5;
        exception5;
        zipfile2 = null;
          goto _L13
    }
}
