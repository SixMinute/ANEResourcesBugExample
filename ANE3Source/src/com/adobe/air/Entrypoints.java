// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import com.adobe.air.utils.Utils;
import java.io.File;

// Referenced classes of package com.adobe.air:
//            customHandler, AndroidActivityWrapper, ApplicationFileManager, AIRWindowSurfaceView, 
//            KeyEventData, TouchEventData

public class Entrypoints
{

    static boolean mCallEntryMain;
    private static String mLibCorePath = null;
    private static customHandler mMainHandler = new customHandler();
    public static Context s_context;
    private static String s_packageName;

    public Entrypoints()
    {
    }

    public static void BroadcastIntent(String s, String s1)
    {
        AndroidActivityWrapper.GetAndroidActivityWrapper().BroadcastIntent(s, s1);
    }

    public static String getAppCacheDirectory()
    {
        return s_context.getCacheDir().getAbsolutePath();
    }

    public static Handler getMainHandler()
    {
        return mMainHandler;
    }

    public static String getPackageName()
    {
        return s_packageName;
    }

    public static String getRuntimeDataDirectory()
    {
        return (new StringBuilder()).append(s_context.getApplicationInfo().dataDir).append("/").toString();
    }

    public static void registerCallback(int i, int j, int k, Handler handler)
    {
        Object obj;
        Message message;
        if (handler == null)
        {
            obj = mMainHandler;
        } else
        {
            obj = handler;
        }
        message = Message.obtain();
        message.what = 1119;
        message.arg1 = j;
        message.arg2 = k;
        if (i > 0)
        {
            ((Handler) (obj)).sendMessageDelayed(message, i);
            return;
        } else
        {
            ((Handler) (obj)).sendMessage(message);
            return;
        }
    }

    public static boolean registerKeyCallback(int i, KeyEventData keyeventdata, Handler handler)
    {
        Object obj;
        Message message;
        if (handler == null)
        {
            obj = mMainHandler;
        } else
        {
            obj = handler;
        }
        message = Message.obtain();
        message.what = 1121;
        message.obj = keyeventdata;
        if (i > 0)
        {
            ((Handler) (obj)).sendMessageDelayed(message, i);
        } else
        {
            ((Handler) (obj)).sendMessage(message);
        }
        return true;
    }

    public static boolean registerTouchCallback(int i, TouchEventData toucheventdata, Handler handler)
    {
        Object obj;
        Message message;
        if (handler == null)
        {
            obj = mMainHandler;
        } else
        {
            obj = handler;
        }
        message = Message.obtain();
        message.what = 1120;
        message.obj = toucheventdata;
        if (i > 0)
        {
            ((Handler) (obj)).sendMessageDelayed(message, i);
        } else
        {
            ((Handler) (obj)).sendMessage(message);
        }
        return true;
    }

    public void EntryApplyDownloadedConfig()
    {
        applyDownloadedConfig();
    }

    public boolean EntryDownloadConfig(Object obj, String s)
    {
        s_context = (Context)obj;
        ApplicationInfo applicationinfo = s_context.getApplicationInfo();
        s_packageName = applicationinfo.packageName;
        ApplicationFileManager.setAndroidPackageName(s_packageName);
        ApplicationFileManager.setAndroidAPKPath(applicationinfo.sourceDir);
        File file = s_context.getCacheDir();
        if (file == null)
        {
            return false;
        } else
        {
            ApplicationFileManager.processAndroidDataPath(file.getAbsolutePath());
            System.load(Utils.GetLibSTLPath(s_context));
            System.load(GetLibCorePath());
            EntryDownloadConfigNative(obj, s);
            return true;
        }
    }

    public native void EntryDownloadConfigNative(Object obj, String s);

    public void EntryMain(String s, String s1, String s2, String s3, Object obj, Object obj1, Object obj2, 
            Object obj3, Object obj4, boolean flag, boolean flag1)
    {
        s_context = (Context)obj3;
        s_packageName = ((ApplicationInfo)obj2).packageName;
        if (!mCallEntryMain)
        {
            mCallEntryMain = true;
            if (s1.length() > 0 && s.length() > 0)
            {
                EntryMainWrapper(s, s1, s2, s3, obj, obj1, obj3, obj4, flag, flag1);
            }
        }
    }

    public native void EntryMainWrapper(String s, String s1, String s2, String s3, Object obj, Object obj1, Object obj2, 
            Object obj3, boolean flag, boolean flag1);

    public void EntryStopRuntime()
    {
        System.load(GetLibCorePath());
        EntryStopRuntimeNative();
    }

    public native void EntryStopRuntimeNative();

    public String GetLibCorePath()
    {
        if (mLibCorePath == null)
        {
            mLibCorePath = Utils.GetLibCorePath(s_context);
        }
        return mLibCorePath;
    }

    public native void applyDownloadedConfig();

    public void setMainView(View view)
    {
        setMainViewOnCreate((AIRWindowSurfaceView)view);
    }

    public native void setMainViewOnCreate(AIRWindowSurfaceView airwindowsurfaceview);

}
