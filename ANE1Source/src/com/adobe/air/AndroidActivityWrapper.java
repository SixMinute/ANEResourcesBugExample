// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.app.KeyguardManager;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.media.AudioManager;
import android.os.Build;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.adobe.air.telephony.AndroidTelephonyManager;
import com.adobe.air.utils.Utils;
import com.adobe.flashplayer.HDMIUtils;
import java.io.File;
import java.io.IOException;
import java.net.InetAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package com.adobe.air:
//            DebuggerSettings, Entrypoints, AndroidIdleState, AIRWindowSurfaceView, 
//            AndroidCameraView, OrientationManager, ResourceFileManager, ApplicationFileManager, 
//            ListenErrorDialog, RemoteDebuggerListenerDialog, RemoteDebuggerDialog, AIRUpdateDialog, 
//            FlashEGL, DeviceProfiling, ConfigDownloadListener

public class AndroidActivityWrapper
{
    static interface ActivityResultCallback
    {

        public abstract void onActivityResult(int i, int j, Intent intent);
    }

    public static final class ActivityState extends Enum
    {

        private static final ActivityState $VALUES[];
        public static final ActivityState DESTROYED;
        public static final ActivityState PAUSED;
        public static final ActivityState RESTARTED;
        public static final ActivityState RESUMED;
        public static final ActivityState STARTED;
        public static final ActivityState STOPPED;

        public static ActivityState valueOf(String s)
        {
            return (ActivityState)Enum.valueOf(com/adobe/air/AndroidActivityWrapper$ActivityState, s);
        }

        public static ActivityState[] values()
        {
            return (ActivityState[])$VALUES.clone();
        }

        static 
        {
            STARTED = new ActivityState("STARTED", 0);
            RESTARTED = new ActivityState("RESTARTED", 1);
            RESUMED = new ActivityState("RESUMED", 2);
            PAUSED = new ActivityState("PAUSED", 3);
            STOPPED = new ActivityState("STOPPED", 4);
            DESTROYED = new ActivityState("DESTROYED", 5);
            ActivityState aactivitystate[] = new ActivityState[6];
            aactivitystate[0] = STARTED;
            aactivitystate[1] = RESTARTED;
            aactivitystate[2] = RESUMED;
            aactivitystate[3] = PAUSED;
            aactivitystate[4] = STOPPED;
            aactivitystate[5] = DESTROYED;
            $VALUES = aactivitystate;
        }

        private ActivityState(String s, int i)
        {
            super(s, i);
        }
    }

    private static final class DebugMode extends Enum
    {

        private static final DebugMode $VALUES[];
        public static final DebugMode ConflictMode;
        public static final DebugMode ConnectMode;
        public static final DebugMode ListenMode;
        public static final DebugMode None;

        public static DebugMode valueOf(String s)
        {
            return (DebugMode)Enum.valueOf(com/adobe/air/AndroidActivityWrapper$DebugMode, s);
        }

        public static DebugMode[] values()
        {
            return (DebugMode[])$VALUES.clone();
        }

        static 
        {
            None = new DebugMode("None", 0);
            ConnectMode = new DebugMode("ConnectMode", 1);
            ListenMode = new DebugMode("ListenMode", 2);
            ConflictMode = new DebugMode("ConflictMode", 3);
            DebugMode adebugmode[] = new DebugMode[4];
            adebugmode[0] = None;
            adebugmode[1] = ConnectMode;
            adebugmode[2] = ListenMode;
            adebugmode[3] = ConflictMode;
            $VALUES = adebugmode;
        }

        private DebugMode(String s, int i)
        {
            super(s, i);
        }
    }

    static interface InputEventCallback
    {

        public abstract boolean onGenericMotionEvent(MotionEvent motionevent);

        public abstract boolean onKeyEvent(KeyEvent keyevent);
    }

    public static class PlaneID
    {

        public static final int PLANE_CAMERA = 5;
        public static final int PLANE_COUNT = 8;
        public static final int PLANE_FLASH = 3;
        public static final int PLANE_OVERLAY = 2;
        public static final int PLANE_STAGE3D = 6;
        public static final int PLANE_STAGETEXT = 1;
        public static final int PLANE_STAGEVIDEO = 7;
        public static final int PLANE_STAGEVIDEOAUTOMATIC = 4;
        public static final int PLANE_STAGEWEBVIEW;

        public PlaneID()
        {
        }
    }

    static interface StateChangeCallback
    {

        public abstract void onActivityStateChanged(ActivityState activitystate);

        public abstract void onConfigurationChanged(Configuration configuration);
    }


    private static final String ADOBE_COM = "adobe.com";
    private static final int ASPECT_RATIO_ANY = 3;
    private static final int ASPECT_RATIO_LANDSCAPE = 2;
    private static final int ASPECT_RATIO_PORTRAIT = 1;
    public static final int IMAGE_PICKER_REQUEST_CODE = 2;
    private static final int INVOKE_EVENT_OPEN_URL = 1;
    private static final int INVOKE_EVENT_STANDARD = 0;
    private static final String LOG_TAG = "AndroidActivityWrapper";
    public static final int STILL_PICTURE_REQUEST_CODE = 3;
    public static final int VIDEO_CAPTURE_REQUEST_CODE = 4;
    public static final int WEBVIEW_UPLOAD_FILE_CHOOSER_CODE = 5;
    private static final String WWW_ADOBE_COM = "www.adobe.com";
    private static AndroidActivityWrapper sActivityWrapper = null;
    private static AndroidTelephonyManager sAndroidTelephonyManager = null;
    private static boolean sApplicationLaunched = false;
    private static boolean sDepthAndStencil = false;
    private static Entrypoints sEntryPoint = null;
    private static String sGamePreviewHost = "";
    private static boolean sHasCaptiveRuntime = false;
    private static AndroidIdleState sIdleStateManager = null;
    private static boolean sIsSwfPreviewMode = false;
    private static boolean sRuntimeLibrariesLoaded = false;
    private int debuggerPort;
    private KeyguardManager keyGuardManager;
    private boolean mActivateEventPending;
    private List mActivityResultListeners;
    private ActivityState mActivityState;
    private List mActivityStateListeners;
    private ConfigDownloadListener mConfigDownloadListener;
    private boolean mContainsVideo;
    private DebuggerSettings mDebuggerSettings;
    private boolean mDisplayWaitingDialog;
    private String mExtraArgs;
    private boolean mFullScreenSetFromMetaData;
    private int mHardKeyboardHidden;
    private int mHardKeyboardType;
    private List mInputEventListeners;
    private boolean mInvokeEventPendingFromOnCreate;
    private boolean mIsADL;
    private boolean mIsDebuggerMode;
    private boolean mIsFullScreen;
    private String mLibCorePath;
    private OrientationManager mOrientationManager;
    private boolean mRGB565Override;
    private String mRootDir;
    private boolean mScreenOn;
    private boolean mShowDebuggerDialog;
    private String mXmlPath;
    private Activity m_activity;
    private Application m_application;
    private AndroidCameraView m_cameraView;
    private FlashEGL m_flashEGL;
    private FrameLayout m_layout;
    private AIRWindowSurfaceView m_mainView;
    private Condition m_newActivityCondition;
    private Lock m_newActivityLock;
    private RelativeLayout m_overlaysLayout;
    private boolean m_planeBreakCascade;
    private boolean m_planeCascadeInit;
    private int m_planeCascadeStep;
    private List m_planes;
    private Context m_runtimeContext;
    private boolean m_skipKickCascade;
    private SurfaceView m_videoView;

    private AndroidActivityWrapper(Activity activity)
    {
        m_activity = null;
        mConfigDownloadListener = null;
        m_application = null;
        mActivityResultListeners = null;
        m_mainView = null;
        m_videoView = null;
        m_cameraView = null;
        m_layout = null;
        m_flashEGL = null;
        mXmlPath = null;
        mRootDir = null;
        mExtraArgs = null;
        mIsADL = false;
        mRGB565Override = false;
        mIsDebuggerMode = false;
        mHardKeyboardHidden = 2;
        mHardKeyboardType = 0;
        mShowDebuggerDialog = false;
        mDisplayWaitingDialog = false;
        debuggerPort = -1;
        mInvokeEventPendingFromOnCreate = false;
        mActivateEventPending = false;
        mActivityStateListeners = null;
        mInputEventListeners = null;
        mFullScreenSetFromMetaData = false;
        mIsFullScreen = false;
        mContainsVideo = false;
        mLibCorePath = null;
        m_runtimeContext = null;
        m_overlaysLayout = null;
        m_newActivityLock = null;
        m_newActivityCondition = null;
        mOrientationManager = null;
        keyGuardManager = null;
        mScreenOn = true;
        mDebuggerSettings = new DebuggerSettings();
        mActivityState = ActivityState.STARTED;
        m_planes = null;
        m_planeCascadeStep = 0;
        m_planeBreakCascade = false;
        m_planeCascadeInit = false;
        m_skipKickCascade = true;
        m_activity = activity;
        m_newActivityLock = new ReentrantLock();
        m_newActivityCondition = m_newActivityLock.newCondition();
        m_application = activity.getApplication();
        LoadRuntimeLibraries();
        keyGuardManager = (KeyguardManager)(KeyguardManager)activity.getSystemService("keyguard");
    }

    public static AndroidActivityWrapper CreateAndroidActivityWrapper(Activity activity)
    {
        return CreateAndroidActivityWrapper(activity, Boolean.valueOf(false));
    }

    public static AndroidActivityWrapper CreateAndroidActivityWrapper(Activity activity, Boolean boolean1)
    {
        sHasCaptiveRuntime = boolean1.booleanValue();
        if (boolean1.booleanValue())
        {
            Utils.setRuntimePackageName(activity.getApplicationContext().getPackageName());
        } else
        {
            Utils.setRuntimePackageName("com.adobe.air");
        }
        if (sActivityWrapper == null)
        {
            sActivityWrapper = new AndroidActivityWrapper(activity);
        }
        return sActivityWrapper;
    }

    public static AndroidActivityWrapper GetAndroidActivityWrapper()
    {
        return sActivityWrapper;
    }

    public static boolean GetDepthAndStencilForGamePreview()
    {
        return sDepthAndStencil;
    }

    public static boolean GetHasCaptiveRuntime()
    {
        return sHasCaptiveRuntime;
    }

    public static boolean IsGamePreviewMode()
    {
        return sIsSwfPreviewMode;
    }

    private void LaunchApplication(Activity activity, AIRWindowSurfaceView airwindowsurfaceview, String s, String s1, String s2, boolean flag, boolean flag1)
    {
        if (sApplicationLaunched)
        {
            return;
        }
        if (!flag) goto _L2; else goto _L1
_L1:
        String s13 = activity.getIntent().getStringExtra("args");
        if (s13 == null) goto _L4; else goto _L3
_L3:
        String as1[];
        String s14;
        as1 = s13.split(" ");
        s14 = as1[0];
        String s15 = as1[1];
        if (as1.length < 2) goto _L6; else goto _L5
_L5:
        String s23 = (new StringBuilder()).append(as1[2]).append(" ").toString();
        String s16 = s23;
_L33:
        String s17;
        int k;
        s17 = s16;
        k = 3;
_L8:
        String s22;
        if (k >= as1.length)
        {
            break; /* Loop/switch isn't completed */
        }
        s22 = (new StringBuilder()).append(s17).append(as1[k]).append(" ").toString();
        s17 = s22;
        k++;
        if (true) goto _L8; else goto _L7
_L7:
        String s18;
        String s19;
        String s20;
        s18 = s17;
        s19 = s14;
        s20 = s15;
_L34:
        String s3;
        String s4;
        String s5;
        s3 = s18;
        String s21 = s20;
        s5 = s19;
        s4 = s21;
_L31:
        boolean flag2;
        String s6;
        String as[];
        int i;
        byte byte0;
        int j;
        String s7;
        String s8;
        String s9;
        String s10;
        String s11;
        Exception exception3;
        Exception exception4;
        Exception exception5;
        try
        {
            Context context = getApplicationContext();
            sEntryPoint = new Entrypoints();
            sEntryPoint.EntryMain(s5, s4, s3, Utils.getRuntimePackageName(), airwindowsurfaceview, activity.getApplication(), activity.getApplicationInfo(), context, this, flag, flag1);
            sIdleStateManager = AndroidIdleState.GetIdleStateManager(context);
            sApplicationLaunched = true;
            return;
        }
        catch (Exception exception)
        {
            return;
        }
_L2:
        flag2 = sIsSwfPreviewMode;
        if (!flag2) goto _L10; else goto _L9
_L9:
        s6 = activity.getIntent().getDataString();
        if (s6 == null) goto _L12; else goto _L11
_L11:
        if (s6.indexOf("?") <= 0) goto _L12; else goto _L13
_L13:
        as = s6.substring(1 + s6.indexOf("?")).split("&");
        i = as.length;
        byte0 = -1;
        j = 0;
_L35:
        if (j >= i) goto _L15; else goto _L14
_L14:
        s7 = as[j];
        if (!s7.substring(0, s7.indexOf("=")).equalsIgnoreCase("depthAndStencil")) goto _L17; else goto _L16
_L16:
        if (!s7.substring(1 + s7.indexOf("=")).equalsIgnoreCase("true")) goto _L19; else goto _L18
_L18:
        sDepthAndStencil = true;
          goto _L20
_L19:
        sDepthAndStencil = false;
          goto _L20
_L17:
        if (!s7.substring(0, s7.indexOf("=")).equalsIgnoreCase("autoorients")) goto _L22; else goto _L21
_L21:
        if (!s7.substring(1 + s7.indexOf("=")).equalsIgnoreCase("true")) goto _L24; else goto _L23
_L23:
        setAutoOrients(true);
          goto _L20
_L24:
        setAutoOrients(false);
          goto _L20
_L22:
        if (!s7.substring(0, s7.indexOf("=")).equalsIgnoreCase("aspectratio")) goto _L20; else goto _L25
_L25:
        s8 = s7.substring(1 + s7.indexOf("="));
        if (!s8.equalsIgnoreCase("portrait")) goto _L27; else goto _L26
_L26:
        byte0 = 1;
          goto _L20
_L27:
        if (!s8.equalsIgnoreCase("landscape")) goto _L29; else goto _L28
_L28:
        byte0 = 2;
          goto _L20
_L29:
        if (s8.equalsIgnoreCase("any"))
        {
            byte0 = 3;
        }
          goto _L20
_L15:
        if (byte0 == -1) goto _L12; else goto _L30
_L30:
        setAspectRatio(byte0);
_L12:
        s3 = s2;
        s4 = s1;
        s5 = s;
          goto _L31
        exception3;
        s9 = s2;
        s11 = s14;
        s10 = s1;
          goto _L32
        exception4;
        s9 = s2;
        s11 = s14;
        s10 = s15;
          goto _L32
        exception5;
        s9 = s17;
        s11 = s14;
        s10 = s15;
          goto _L32
_L10:
        s3 = s2;
        s4 = s1;
        s5 = s;
          goto _L31
_L6:
        s16 = s2;
          goto _L33
_L4:
        s18 = s2;
        s20 = s1;
        s19 = s;
          goto _L34
        Exception exception2;
        exception2;
        s9 = s2;
        s10 = s1;
        s11 = s;
_L32:
        s3 = s9;
        String s12 = s10;
        s5 = s11;
        s4 = s12;
          goto _L31
_L20:
        j++;
          goto _L35
        Exception exception1;
        exception1;
        s3 = s2;
        s4 = s1;
        s5 = s;
          goto _L31
    }

    private void LoadRuntimeLibraries()
    {
        if (sRuntimeLibrariesLoaded)
        {
            break MISSING_BLOCK_LABEL_27;
        }
        System.load(Utils.GetLibSTLPath(m_application));
        System.load(GetLibCorePath());
        sRuntimeLibrariesLoaded = true;
        return;
        UnsatisfiedLinkError unsatisfiedlinkerror;
        unsatisfiedlinkerror;
    }

    private void SetVisible(boolean flag)
    {
        if (flag)
        {
            if (isSurfaceValid() && mScreenOn && mActivityState != ActivityState.STOPPED && mActivityState != ActivityState.DESTROYED)
            {
                nativeSetVisible(true);
            }
        } else
        if (isApplicationLaunched())
        {
            nativeSetVisible(false);
            return;
        }
    }

    public static boolean ShouldShowGamePreviewWatermark()
    {
        Boolean boolean1 = Boolean.valueOf(sIsSwfPreviewMode);
        if (boolean1.booleanValue() && (sGamePreviewHost.equalsIgnoreCase("www.adobe.com") || sGamePreviewHost.equalsIgnoreCase("adobe.com")))
        {
            boolean1 = Boolean.valueOf(false);
        }
        return boolean1.booleanValue();
    }

    private void SignalNewActivityCreated()
    {
        m_newActivityLock.lock();
        m_newActivityCondition.signalAll();
        m_newActivityLock.unlock();
    }

    private void afterOnCreate()
    {
        if (m_planes != null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        m_planes = new ArrayList(8);
        int i = 0;
        while (i < 8) 
        {
            Context context;
            Bundle bundle;
            Boolean boolean1;
            try
            {
                m_planes.add(i, null);
            }
            catch (Exception exception)
            {
                return;
            }
            i++;
        }
        context = getApplicationContext();
        m_layout = new FrameLayout(context);
        m_mainView = new AIRWindowSurfaceView(context, this);
        if (m_cameraView == null && m_runtimeContext.checkCallingOrSelfPermission("android.permission.CAMERA") == 0)
        {
            m_cameraView = new AndroidCameraView(context, this);
        }
        if (m_cameraView != null)
        {
            m_layout.addView(m_cameraView, 8, 16);
        }
        bundle = m_activity.getPackageManager().getActivityInfo(m_activity.getComponentName(), 128).metaData;
        if (bundle == null)
        {
            break MISSING_BLOCK_LABEL_218;
        }
        boolean1 = (Boolean)bundle.get("containsVideo");
        if (boolean1 == null)
        {
            break MISSING_BLOCK_LABEL_218;
        }
        if (boolean1.booleanValue())
        {
            mContainsVideo = boolean1.booleanValue();
            m_videoView = m_mainView.getVideoView();
            m_layout.addView(m_videoView, 0);
        }
        m_layout.addView(m_mainView);
        if (m_overlaysLayout != null)
        {
            m_layout.addView(m_overlaysLayout);
        }
        m_activity.setContentView(m_layout);
        if ((mIsADL || mShowDebuggerDialog) && m_activity != null && m_activity.getCurrentFocus() != m_mainView)
        {
            m_mainView.requestFocus();
            m_mainView.onWindowFocusChanged(true);
        }
        if (!mFullScreenSetFromMetaData)
        {
            setFullScreenFromMetaData();
        }
        mFullScreenSetFromMetaData = true;
        if (getIsFullScreen())
        {
            m_mainView.setFullScreen();
        }
        mHardKeyboardHidden = m_activity.getResources().getConfiguration().hardKeyboardHidden;
        mHardKeyboardType = m_activity.getResources().getConfiguration().keyboard;
        mOrientationManager = OrientationManager.getOrientationManager();
        mOrientationManager.onActivityCreated(m_activity, m_mainView);
        callActivityStateListeners();
        HDMIUtils.initHelper(context);
        return;
    }

    private void callActivityResultListeners(int i, int j, Intent intent)
    {
        if (mActivityResultListeners != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int k;
        int l;
        try
        {
            k = mActivityResultListeners.size();
        }
        catch (Exception exception)
        {
            return;
        }
        l = 0;
        if (l >= k)
        {
            continue; /* Loop/switch isn't completed */
        }
        ((ActivityResultCallback)mActivityResultListeners.get(l)).onActivityResult(i, j, intent);
        l++;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_53;
_L4:
        break MISSING_BLOCK_LABEL_22;
        if (true) goto _L1; else goto _L5
_L5:
    }

    private void callActivityStateListeners()
    {
        if (mActivityStateListeners != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i;
        int j;
        try
        {
            i = mActivityStateListeners.size();
        }
        catch (Exception exception)
        {
            return;
        }
        j = 0;
        if (j >= i)
        {
            continue; /* Loop/switch isn't completed */
        }
        ((StateChangeCallback)mActivityStateListeners.get(j)).onActivityStateChanged(mActivityState);
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_49;
_L4:
        break MISSING_BLOCK_LABEL_20;
        if (true) goto _L1; else goto _L5
_L5:
    }

    private void callActivityStateListeners(Configuration configuration)
    {
        if (mActivityStateListeners != null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int i;
        int j;
        try
        {
            i = mActivityStateListeners.size();
        }
        catch (Exception exception)
        {
            return;
        }
        j = 0;
        if (j >= i)
        {
            continue; /* Loop/switch isn't completed */
        }
        ((StateChangeCallback)mActivityStateListeners.get(j)).onConfigurationChanged(configuration);
        j++;
        if (true) goto _L4; else goto _L3
_L3:
        break MISSING_BLOCK_LABEL_49;
_L4:
        break MISSING_BLOCK_LABEL_21;
        if (true) goto _L1; else goto _L5
_L5:
    }

    private boolean callInputEventListeners(KeyEvent keyevent)
    {
        boolean flag;
        if (mInputEventListeners == null)
        {
            return false;
        }
        int i;
        int j;
        boolean flag1;
        boolean flag2;
        try
        {
            i = mInputEventListeners.size();
        }
        catch (Exception exception)
        {
            return false;
        }
        j = 0;
        flag = false;
        if (j >= i) goto _L2; else goto _L1
_L1:
        if (flag) goto _L4; else goto _L3
_L3:
        try
        {
            flag2 = ((InputEventCallback)mInputEventListeners.get(j)).onKeyEvent(keyevent);
        }
        catch (Exception exception1)
        {
            return flag;
        }
        if (!flag2) goto _L5; else goto _L4
_L4:
        flag1 = true;
_L6:
        j++;
        flag = flag1;
        continue; /* Loop/switch isn't completed */
_L5:
        flag1 = false;
        if (true) goto _L6; else goto _L2
_L2:
        return flag;
        if (true) goto _L8; else goto _L7
_L8:
        break MISSING_BLOCK_LABEL_25;
_L7:
    }

    private boolean callInputEventListeners(MotionEvent motionevent)
    {
        boolean flag;
        if (mInputEventListeners == null)
        {
            return false;
        }
        int i;
        int j;
        boolean flag1;
        boolean flag2;
        try
        {
            i = mInputEventListeners.size();
        }
        catch (Exception exception)
        {
            return false;
        }
        j = 0;
        flag = false;
        if (j >= i) goto _L2; else goto _L1
_L1:
        if (flag) goto _L4; else goto _L3
_L3:
        try
        {
            flag2 = ((InputEventCallback)mInputEventListeners.get(j)).onGenericMotionEvent(motionevent);
        }
        catch (Exception exception1)
        {
            return flag;
        }
        if (!flag2) goto _L5; else goto _L4
_L4:
        flag1 = true;
_L6:
        j++;
        flag = flag1;
        continue; /* Loop/switch isn't completed */
_L5:
        flag1 = false;
        if (true) goto _L6; else goto _L2
_L2:
        return flag;
        if (true) goto _L8; else goto _L7
_L8:
        break MISSING_BLOCK_LABEL_25;
_L7:
    }

    private void checkForDebuggerAndLaunchDialog()
    {
        ResourceFileManager resourcefilemanager;
        DebugMode debugmode;
        if (mIsADL)
        {
            break MISSING_BLOCK_LABEL_510;
        }
        resourcefilemanager = new ResourceFileManager(m_activity);
        debugmode = DebugMode.None;
        if (!resourcefilemanager.resExists(resourcefilemanager.lookupResId("raw.debuginfo"))) goto _L2; else goto _L1
_L1:
        HashMap hashmap;
        String s1;
        hashmap = Utils.parseKeyValuePairFile(resourcefilemanager.getFileStreamFromRawRes(resourcefilemanager.lookupResId("raw.debuginfo")), "=");
        s1 = (String)hashmap.get("incomingDebugPort");
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_91;
        }
        DebugMode debugmode3;
        debuggerPort = Integer.parseInt(s1);
        debugmode3 = DebugMode.ListenMode;
        debugmode = debugmode3;
_L24:
        String s2 = (String)hashmap.get("outgoingDebugHost");
        if (s2 == null) goto _L2; else goto _L3
_L3:
        DebugMode debugmode2;
        if (debugmode == DebugMode.ListenMode)
        {
            DebugMode.ConflictMode;
            throw new Exception("listen and connect are mutually exclusive.");
        }
        debugmode2 = DebugMode.ConnectMode;
        DebugMode debugmode1;
        String s;
        s = s2;
        debugmode1 = debugmode2;
_L22:
        static class _cls2
        {

            static final int $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode[];

            static 
            {
                $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode = new int[DebugMode.values().length];
                try
                {
                    $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode[DebugMode.ListenMode.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode[DebugMode.ConnectMode.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode[DebugMode.None.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode[DebugMode.ConflictMode.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        _cls2..SwitchMap.com.adobe.air.AndroidActivityWrapper.DebugMode[debugmode1.ordinal()];
        JVM INSTR tableswitch 1 4: default 180
    //                   1 181
    //                   2 419
    //                   3 448
    //                   4 510;
           goto _L4 _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_510;
_L4:
        return;
_L5:
        ServerSocket serversocket = new ServerSocket(debuggerPort, 1, InetAddress.getLocalHost());
        serversocket.close();
        if (serversocket == null) goto _L10; else goto _L9
_L9:
        serversocket.close();
_L10:
        boolean flag = true;
_L11:
        ServerSocket serversocket1;
        Exception exception1;
        Exception exception2;
        DebuggerSettings debuggersettings;
        boolean flag1;
        IOException ioexception1;
        IOException ioexception2;
        boolean flag2;
        IOException ioexception4;
        IOException ioexception5;
        SecurityException securityexception1;
        IOException ioexception6;
        if (flag)
        {
            mDisplayWaitingDialog = true;
            afterOnCreate();
        } else
        {
            showDialogUnableToListenOnPort(debuggerPort);
        }
        debuggersettings = mDebuggerSettings;
        if (debugmode1 == DebugMode.ListenMode)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        debuggersettings.setListen(flag1);
        mDebuggerSettings.setDebugerPort(debuggerPort);
        return;
        ioexception5;
        flag = true;
          goto _L11
        ioexception6;
        serversocket = null;
_L20:
        if (serversocket == null) goto _L13; else goto _L12
_L12:
        serversocket.close();
_L13:
        flag = false;
          goto _L11
        ioexception1;
        flag = false;
          goto _L11
        securityexception1;
        serversocket = null;
_L19:
        if (serversocket == null) goto _L15; else goto _L14
_L14:
        serversocket.close();
_L15:
        flag = false;
          goto _L11
        ioexception2;
        flag = false;
          goto _L11
        exception1;
        serversocket1 = null;
_L18:
        flag2 = exception1.getClass().getName().equals("android.os.NetworkOnMainThreadException");
        if (flag2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (serversocket1 != null)
        {
            try
            {
                serversocket1.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception4) { }
        }
          goto _L11
        exception2;
        serversocket = null;
_L17:
        if (serversocket != null)
        {
            try
            {
                serversocket.close();
            }
            catch (IOException ioexception3) { }
        }
        throw exception2;
_L6:
        if (!Utils.nativeConnectDebuggerSocket(s))
        {
            showDialogforIpAddress(s);
            return;
        } else
        {
            mDebuggerSettings.setHost(s);
            afterOnCreate();
            return;
        }
_L7:
        afterOnCreate();
        return;
        exception2;
        continue; /* Loop/switch isn't completed */
        exception2;
        serversocket = serversocket1;
        if (true) goto _L17; else goto _L16
_L16:
        Exception exception;
        exception;
        serversocket1 = serversocket;
        exception1 = exception;
          goto _L18
        SecurityException securityexception;
        securityexception;
          goto _L19
        IOException ioexception;
        ioexception;
          goto _L20
        NumberFormatException numberformatexception;
        numberformatexception;
        continue; /* Loop/switch isn't completed */
_L2:
        debugmode1 = debugmode;
        s = null;
        if (true) goto _L22; else goto _L21
_L21:
        Exception exception3;
        exception3;
        return;
        if (true) goto _L24; else goto _L23
_L23:
    }

    private void closeDialogWaitingForConnection()
    {
        Context context = getApplicationContext();
        try
        {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.MAIN");
            intent.addCategory("RemoteDebuggerListenerDialogClose");
            intent.putExtra("debuggerPort", debuggerPort);
            context.sendBroadcast(intent);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void initializeAndroidAppVars(ApplicationInfo applicationinfo)
    {
        ApplicationFileManager.setAndroidPackageName(applicationinfo.packageName);
        ApplicationFileManager.setAndroidAPKPath(applicationinfo.sourceDir);
        ApplicationFileManager.processAndroidDataPath(m_application.getCacheDir().getAbsolutePath());
    }

    public static boolean isGingerbread()
    {
        return android.os.Build.VERSION.SDK_INT >= 9;
    }

    public static boolean isHoneycomb()
    {
        return android.os.Build.VERSION.SDK_INT >= 11;
    }

    public static boolean isIceCreamSandwich()
    {
        return android.os.Build.VERSION.SDK_INT >= 14;
    }

    public static boolean isJellybean()
    {
        return android.os.Build.VERSION.SDK_INT >= 16;
    }

    private native void nativeActivateEvent();

    private native void nativeDeactivateEvent();

    private native void nativeLowMemoryEvent();

    private native void nativeOnFocusListener(boolean flag);

    private native void nativeSendInvokeEventWithData(String s, String s1, int i);

    private native void nativeSetVisible(boolean flag);

    private void parseArgs(Activity activity, String as[])
    {
        String s = "false";
        String s14 = as[0];
        String s15 = as[1];
        String s16 = as[2];
        String s10 = as[3];
        String s18 = as[4];
        if (as.length < 6) goto _L2; else goto _L1
_L1:
        String s22 = as[5];
        String s24 = as[6];
        String s20;
        s = s22;
        s20 = s24;
_L6:
        String s7;
        String s8;
        String s9;
        String s11;
        String s12;
        String s13;
        String s21 = s20;
        s8 = s15;
        s12 = s;
        s7 = s14;
        s13 = s21;
        s11 = s18;
        s9 = s16;
_L3:
        String s1;
        String s2;
        String s3;
        String s4;
        String s5;
        String s6;
        mExtraArgs = s9;
        mIsADL = Boolean.valueOf(s10).booleanValue();
        mIsDebuggerMode = Boolean.valueOf(s11).booleanValue();
        sIsSwfPreviewMode = Boolean.valueOf(s12).booleanValue();
        sGamePreviewHost = s13;
        initializeAndroidAppVars(m_activity.getApplicationInfo());
        ArrayIndexOutOfBoundsException arrayindexoutofboundsexception;
        if (mIsADL)
        {
            mXmlPath = s7;
            mRootDir = s8;
            return;
        } else
        {
            mXmlPath = ApplicationFileManager.getAppXMLRoot();
            mRootDir = ApplicationFileManager.getAppRoot();
            return;
        }
        arrayindexoutofboundsexception;
        s1 = s;
        s2 = s;
        s3 = s;
        s4 = "";
        s5 = "";
        s6 = "";
_L4:
        s7 = s6;
        s8 = s5;
        s9 = s4;
        s10 = s3;
        s11 = s2;
        s12 = s1;
        s13 = "";
          goto _L3
        ArrayIndexOutOfBoundsException arrayindexoutofboundsexception1;
        arrayindexoutofboundsexception1;
        s2 = s;
        s3 = s;
        s4 = "";
        s5 = "";
        s6 = s14;
        s1 = s;
          goto _L4
        ArrayIndexOutOfBoundsException arrayindexoutofboundsexception2;
        arrayindexoutofboundsexception2;
        s3 = s;
        s4 = "";
        s5 = s15;
        s6 = s14;
        s1 = s;
        s2 = s;
          goto _L4
        ArrayIndexOutOfBoundsException arrayindexoutofboundsexception3;
        arrayindexoutofboundsexception3;
        s4 = s16;
        s5 = s15;
        s6 = s14;
        s1 = s;
        s2 = s;
        s3 = s;
          goto _L4
        ArrayIndexOutOfBoundsException arrayindexoutofboundsexception4;
        arrayindexoutofboundsexception4;
        s5 = s15;
        s6 = s14;
        s1 = s;
        s2 = s;
        String s17 = s10;
        s4 = s16;
        s3 = s17;
          goto _L4
        ArrayIndexOutOfBoundsException arrayindexoutofboundsexception5;
        arrayindexoutofboundsexception5;
        s6 = s14;
        s1 = s;
        String s19 = s10;
        s4 = s16;
        s3 = s19;
        s2 = s18;
        s5 = s15;
          goto _L4
        ArrayIndexOutOfBoundsException arrayindexoutofboundsexception6;
        arrayindexoutofboundsexception6;
        s6 = s14;
        s1 = s22;
        String s23 = s10;
        s4 = s16;
        s3 = s23;
        s2 = s18;
        s5 = s15;
          goto _L4
_L2:
        s20 = "";
        if (true) goto _L6; else goto _L5
_L5:
    }

    private boolean planeRemovedSuccessfully(SurfaceView surfaceview)
    {
        if (!surfaceview.getHolder().getSurface().isValid())
        {
            return true;
        }
        return (Build.MODEL.equals("LT18i") || Build.MODEL.equals("LT15i") || Build.MODEL.equals("Arc")) && isIceCreamSandwich() && m_layout.indexOfChild(surfaceview) < 0;
    }

    private void setFullScreenFromMetaData()
    {
        Bundle bundle = m_activity.getPackageManager().getActivityInfo(m_activity.getComponentName(), 128).metaData;
        if (bundle == null)
        {
            return;
        }
        Boolean boolean1 = (Boolean)bundle.get("fullScreen");
        if (boolean1 != null)
        {
            try
            {
                if (boolean1.booleanValue())
                {
                    m_mainView.setFullScreen();
                    return;
                }
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception) { }
        }
        return;
    }

    private void setMainView(View view)
    {
        while (!sApplicationLaunched || sEntryPoint == null || !isResumed()) 
        {
            return;
        }
        try
        {
            sEntryPoint.setMainView(view);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void showDialogUnableToListenOnPort(int i)
    {
        (new ListenErrorDialog(m_activity, i)).createAndShowDialog();
    }

    private void showDialogWaitingForConnection(final int aDebuggerPort)
    {
        getApplicationContext();
        if (sHasCaptiveRuntime)
        {
            (new Thread(new Runnable() {

                final AndroidActivityWrapper this$0;
                final int val$aDebuggerPort;

                public void run()
                {
                    try
                    {
                        Thread.sleep(30000L);
                        (new Socket(InetAddress.getLocalHost(), aDebuggerPort)).close();
                        return;
                    }
                    catch (Exception exception1)
                    {
                        return;
                    }
                }

            
            {
                this$0 = AndroidActivityWrapper.this;
                aDebuggerPort = i;
                super();
            }
            })).start();
            return;
        }
        try
        {
            Intent intent = new Intent(m_runtimeContext, com/adobe/air/RemoteDebuggerListenerDialog);
            intent.setAction("android.intent.action.MAIN");
            intent.addCategory("RemoteDebuggerListenerDialog");
            intent.putExtra("debuggerPort", aDebuggerPort);
            m_activity.startActivity(intent);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void showDialogforIpAddress(String s)
    {
        getApplicationContext();
        (new RemoteDebuggerDialog(m_activity)).createAndShowDialog(s);
    }

    public void BroadcastIntent(String s, String s1)
    {
        try
        {
            getDefaultContext().startActivity(Intent.parseUri(s1, 0).setAction(s).addFlags(getDefaultIntentFlags()));
            return;
        }
        catch (URISyntaxException urisyntaxexception)
        {
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            return;
        }
    }

    public String GetAppCacheDirectory()
    {
        return m_application.getCacheDir().getAbsolutePath();
    }

    public String GetAppDataDirectory()
    {
        return m_application.getApplicationInfo().dataDir;
    }

    public DebuggerSettings GetDebuggerSettings()
    {
        return mDebuggerSettings;
    }

    public String GetLibCorePath()
    {
        if (mLibCorePath == null)
        {
            mLibCorePath = Utils.GetLibCorePath(m_application);
        }
        return mLibCorePath;
    }

    public String GetRuntimeDataDirectory()
    {
        return (new StringBuilder()).append(m_runtimeContext.getApplicationInfo().dataDir).append("/").toString();
    }

    public void LaunchMarketPlaceForAIR(String s)
    {
        String s1;
        if (s == null)
        {
            s1 = (new StringBuilder()).append("market://details?id=").append(Utils.getRuntimePackageName()).toString();
        } else
        {
            s1 = s;
        }
        try
        {
            BroadcastIntent("android.intent.action.VIEW", s1);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void SendIntentToRuntime(Class class1, String s, String s1)
    {
        try
        {
            Intent intent = new Intent(m_runtimeContext, class1);
            intent.setAction(s);
            intent.addCategory(s1);
            m_activity.startActivity(intent);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void SendIntentToRuntime(Class class1, String s, String s1, String s2, String s3)
    {
        try
        {
            Intent intent = new Intent(m_runtimeContext, class1);
            intent.setAction(s);
            intent.addCategory(s1);
            intent.putExtra(s2, s3);
            m_activity.startActivity(intent);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void SendInvokeEvent()
    {
        Intent intent = m_activity.getIntent();
        String s = intent.getDataString();
        int i = 0;
        if (s != null)
        {
            i = 1;
        }
        nativeSendInvokeEventWithData(s, intent.getAction(), i);
    }

    public void ShowImmediateUpdateDialog()
    {
        Bundle bundle = m_activity.getPackageManager().getActivityInfo(m_activity.getComponentName(), 128).metaData;
        if (bundle == null) goto _L2; else goto _L1
_L1:
        String s1 = (String)bundle.get("airDownloadURL");
_L5:
        String s = s1;
_L3:
        if (s != null)
        {
            SendIntentToRuntime(com/adobe/air/AIRUpdateDialog, "android.intent.action.MAIN", "AIRUpdateDialog", "airDownloadURL", s);
            return;
        } else
        {
            SendIntentToRuntime(com/adobe/air/AIRUpdateDialog, "android.intent.action.MAIN", "AIRUpdateDialog");
            return;
        }
        android.content.pm.PackageManager.NameNotFoundException namenotfoundexception;
        namenotfoundexception;
        s = null;
        if (true) goto _L3; else goto _L2
_L2:
        s1 = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void StartDownloadConfigService()
    {
        Intent intent = new Intent();
        intent.setPackage(Utils.getRuntimePackageName());
        intent.setAction("com.adobe.air.DownloadConfig");
        try
        {
            getApplicationContext().startService(intent);
            return;
        }
        catch (SecurityException securityexception)
        {
            return;
        }
    }

    public Activity WaitForNewActivity()
    {
        m_newActivityLock.lock();
        if (m_activity == null)
        {
            m_newActivityCondition.await();
        }
        m_newActivityLock.unlock();
_L2:
        return m_activity;
        InterruptedException interruptedexception;
        interruptedexception;
        m_newActivityLock.unlock();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        m_newActivityLock.unlock();
        throw exception;
    }

    public void addActivityResultListener(ActivityResultCallback activityresultcallback)
    {
        if (mActivityResultListeners == null)
        {
            mActivityResultListeners = new ArrayList();
        }
        if (!mActivityResultListeners.contains(activityresultcallback))
        {
            mActivityResultListeners.add(activityresultcallback);
        }
    }

    public void addActivityStateChangeListner(StateChangeCallback statechangecallback)
    {
        if (mActivityStateListeners == null)
        {
            mActivityStateListeners = new ArrayList();
        }
        if (!mActivityStateListeners.contains(statechangecallback))
        {
            mActivityStateListeners.add(statechangecallback);
        }
    }

    public void addInputEventListner(InputEventCallback inputeventcallback)
    {
        if (mInputEventListeners == null)
        {
            mInputEventListeners = new ArrayList();
        }
        if (!mInputEventListeners.contains(inputeventcallback))
        {
            mInputEventListeners.add(inputeventcallback);
        }
    }

    public void applyDownloadedConfig()
    {
        if (sEntryPoint != null)
        {
            sEntryPoint.EntryApplyDownloadedConfig();
        }
    }

    public void didRemoveOverlay()
    {
        if (m_overlaysLayout != null && m_overlaysLayout.getChildCount() == 0)
        {
            m_layout.removeView(m_overlaysLayout);
            m_overlaysLayout = null;
        }
    }

    public boolean dispatchGenericMotionEvent(MotionEvent motionevent, boolean flag)
    {
        return callInputEventListeners(motionevent);
    }

    public boolean dispatchKeyEvent(KeyEvent keyevent, boolean flag)
    {
        return callInputEventListeners(keyevent);
    }

    public void ensureZOrder()
    {
        for (int i = 7; i >= 0; i--)
        {
            if (m_planes.get(i) != null && m_layout.indexOfChild((View)m_planes.get(i)) >= 0)
            {
                m_layout.bringChildToFront((View)m_planes.get(i));
            }
        }

    }

    public void finish()
    {
        if (m_activity != null)
        {
            m_activity.finish();
        }
    }

    public void finishActivityFromChild(Activity activity, int i)
    {
    }

    public void finishFromChild(Activity activity)
    {
    }

    public Activity getActivity()
    {
        return m_activity;
    }

    public Application getApplication()
    {
        return m_application;
    }

    public Context getApplicationContext()
    {
        return m_application;
    }

    public boolean getAutoOrients()
    {
        return mOrientationManager.getAutoOrients();
    }

    public AndroidCameraView getCameraView()
    {
        return m_cameraView;
    }

    public Context getDefaultContext()
    {
        if (m_activity != null)
        {
            return m_activity;
        } else
        {
            return m_application;
        }
    }

    public int getDefaultIntentFlags()
    {
        return m_activity == null ? 0x10000000 : 0;
    }

    public int getDeviceOrientation()
    {
        return mOrientationManager.getDeviceOrientation();
    }

    public FlashEGL getEgl()
    {
        if (m_flashEGL == null)
        {
            m_flashEGL = new FlashEGL();
        }
        return m_flashEGL;
    }

    public int getHardKeyboardType()
    {
        return mHardKeyboardType;
    }

    protected boolean getIsFullScreen()
    {
        return mIsFullScreen;
    }

    public int getOrientation()
    {
        return mOrientationManager.getOrientation();
    }

    public RelativeLayout getOverlaysLayout(boolean flag)
    {
        if (flag && m_overlaysLayout == null)
        {
            m_overlaysLayout = new RelativeLayout(m_activity);
            m_layout.addView(m_overlaysLayout);
        }
        return m_overlaysLayout;
    }

    public Context getRuntimeContext()
    {
        return m_runtimeContext;
    }

    public boolean getSpeakerphoneOn()
    {
        return ((AudioManager)getActivity().getSystemService("audio")).isSpeakerphoneOn();
    }

    public int[] getSupportedOrientations()
    {
        return mOrientationManager.getSupportedOrientations();
    }

    public View getView()
    {
        return m_mainView;
    }

    public void gotResultFromDialog(boolean flag, String s)
    {
        boolean flag1;
        if (flag)
        {
            if (s.length() != 0)
            {
                flag1 = Utils.nativeConnectDebuggerSocket(s);
            } else
            {
                flag1 = false;
            }
            if (!flag1)
            {
                showDialogforIpAddress(s);
            } else
            {
                mDebuggerSettings.setHost(s);
                mDebuggerSettings.setListen(false);
                mShowDebuggerDialog = true;
            }
        } else
        {
            flag1 = false;
        }
        if (flag1 || !flag)
        {
            afterOnCreate();
        }
    }

    public void initCallStateListener()
    {
        if (sAndroidTelephonyManager == null)
        {
            sAndroidTelephonyManager = AndroidTelephonyManager.CreateAndroidTelephonyManager(getApplicationContext());
            sAndroidTelephonyManager.listen(true);
        }
    }

    public boolean isApplicationLaunched()
    {
        return sApplicationLaunched;
    }

    public boolean isHardKeyboardHidden()
    {
        return mHardKeyboardHidden == 2;
    }

    public boolean isResumed()
    {
        return mActivityState == ActivityState.RESUMED;
    }

    public boolean isScreenLocked()
    {
        return keyGuardManager.inKeyguardRestrictedInputMode();
    }

    public boolean isScreenOn()
    {
        return mScreenOn;
    }

    public boolean isStarted()
    {
        return mActivityState == ActivityState.STARTED || mActivityState == ActivityState.RESTARTED;
    }

    public boolean isSurfaceValid()
    {
        return m_mainView != null && m_mainView.isSurfaceValid();
    }

    public boolean needsCompositingSurface()
    {
        return m_runtimeContext.checkCallingOrSelfPermission("android.permission.CAMERA") == 0;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        callActivityResultListeners(i, j, intent);
    }

    public void onApplyThemeResource(android.content.res.Resources.Theme theme, int i, boolean flag)
    {
    }

    public void onAttachedToWindow()
    {
    }

    public void onBackPressed()
    {
    }

    public void onChildTitleChanged(Activity activity, CharSequence charsequence)
    {
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        mHardKeyboardHidden = configuration.hardKeyboardHidden;
        mHardKeyboardType = configuration.keyboard;
        mOrientationManager.onConfigurationChanged(configuration);
        callActivityStateListeners(configuration);
    }

    public void onContentChanged()
    {
    }

    public boolean onContextItemSelected(MenuItem menuitem, boolean flag)
    {
        return flag;
    }

    public void onContextMenuClosed(Menu menu)
    {
    }

    public void onCreate(Activity activity, String as[])
    {
        m_activity = activity;
        mActivityState = ActivityState.STARTED;
        parseArgs(activity, as);
        SignalNewActivityCreated();
        try
        {
            m_runtimeContext = m_activity.createPackageContext(Utils.getRuntimePackageName(), 4);
        }
        catch (Exception exception) { }
        if (mIsDebuggerMode && !mIsADL && !sApplicationLaunched && !DeviceProfiling.checkAndInitiateProfiler(m_activity))
        {
            checkForDebuggerAndLaunchDialog();
        } else
        {
            afterOnCreate();
        }
        mInvokeEventPendingFromOnCreate = true;
        mConfigDownloadListener = ConfigDownloadListener.GetConfigDownloadListener();
    }

    public void onCreateContextMenu(ContextMenu contextmenu, View view, android.view.ContextMenu.ContextMenuInfo contextmenuinfo)
    {
    }

    public CharSequence onCreateDescription(CharSequence charsequence)
    {
        return charsequence;
    }

    public Dialog onCreateDialog(int i, Dialog dialog)
    {
        return dialog;
    }

    public Dialog onCreateDialog(int i, Bundle bundle, Dialog dialog)
    {
        return dialog;
    }

    public boolean onCreateOptionsMenu(Menu menu, boolean flag)
    {
        return flag;
    }

    public boolean onCreatePanelMenu(int i, Menu menu, boolean flag)
    {
        return flag;
    }

    public View onCreatePanelView(int i, View view)
    {
        return view;
    }

    public boolean onCreateThumbnail(Bitmap bitmap, Canvas canvas, boolean flag)
    {
        return flag;
    }

    public View onCreateView(String s, Context context, AttributeSet attributeset, View view)
    {
        return view;
    }

    public void onDestroy()
    {
        mActivityState = ActivityState.DESTROYED;
        callActivityStateListeners();
        if (mOrientationManager != null)
        {
            mOrientationManager.onActivityDestroyed();
        }
        for (int i = 0; i < 8; i++)
        {
            if (m_planes.get(i) != null)
            {
                m_layout.removeView((View)m_planes.get(i));
            }
        }

        if (m_overlaysLayout != null)
        {
            m_layout.removeView(m_overlaysLayout);
        }
        m_activity = null;
        m_cameraView = null;
        m_mainView = null;
        m_layout = null;
        setMainView(null);
        HDMIUtils.closeHelper();
    }

    public void onDetachedFromWindow()
    {
    }

    public boolean onKeyDown(int i, KeyEvent keyevent, boolean flag)
    {
        return flag;
    }

    public boolean onKeyLongPress(int i, KeyEvent keyevent, boolean flag)
    {
        return flag;
    }

    public boolean onKeyMultiple(int i, int j, KeyEvent keyevent, boolean flag)
    {
        return flag;
    }

    public boolean onKeyUp(int i, KeyEvent keyevent, boolean flag)
    {
        return flag;
    }

    public void onLowMemory()
    {
        nativeLowMemoryEvent();
    }

    public boolean onMenuItemSelected(int i, MenuItem menuitem, boolean flag)
    {
        return flag;
    }

    public boolean onMenuOpened(int i, Menu menu, boolean flag)
    {
        return flag;
    }

    public void onNewIntent(Intent intent)
    {
        m_activity.setIntent(intent);
        SendInvokeEvent();
    }

    public boolean onOptionsItemSelected(MenuItem menuitem, boolean flag)
    {
        return flag;
    }

    public void onOptionsMenuClosed(Menu menu)
    {
    }

    public void onPanelClosed(int i, Menu menu)
    {
    }

    public void onPause()
    {
        mActivityState = ActivityState.PAUSED;
        callActivityStateListeners();
        if (m_mainView != null)
        {
            m_mainView.forceSoftKeyboardDown();
        }
        if (mOrientationManager != null)
        {
            mOrientationManager.onActivityPaused();
        }
        if (sIdleStateManager != null)
        {
            sIdleStateManager.releaseLock();
        }
        if (isApplicationLaunched())
        {
            nativeOnFocusListener(false);
            nativeDeactivateEvent();
        }
        planeBreakCascade();
    }

    public void onPostCreate(Bundle bundle)
    {
    }

    public void onPostResume()
    {
    }

    public void onPrepareDialog(int i, Dialog dialog)
    {
    }

    public void onPrepareDialog(int i, Dialog dialog, Bundle bundle)
    {
    }

    public boolean onPrepareOptionsMenu(Menu menu, boolean flag)
    {
        return flag;
    }

    public boolean onPreparePanel(int i, View view, Menu menu, boolean flag)
    {
        return flag;
    }

    public void onRestart()
    {
        mActivityState = ActivityState.RESTARTED;
        callActivityStateListeners();
        if (m_mainView != null)
        {
            m_mainView.HideSoftKeyboardOnWindowFocusChange();
        }
        SetVisible(true);
    }

    public void onRestoreInstanceState(Bundle bundle)
    {
    }

    public void onResume()
    {
        mActivityState = ActivityState.RESUMED;
        callActivityStateListeners();
        if (mOrientationManager != null)
        {
            mOrientationManager.onActivityResumed();
        }
        if (sIdleStateManager != null)
        {
            sIdleStateManager.acquireLock();
        }
        if (isApplicationLaunched())
        {
            nativeActivateEvent();
            nativeOnFocusListener(true);
        } else
        {
            mActivateEventPending = true;
        }
        m_skipKickCascade = true;
        planeBreakCascade();
    }

    public Object onRetainNonConfigurationInstance(Object obj)
    {
        return obj;
    }

    public void onSaveInstanceState(Bundle bundle)
    {
    }

    public void onScreenStateChanged(boolean flag)
    {
        mScreenOn = flag;
        SetVisible(flag);
        if (flag)
        {
            m_skipKickCascade = false;
            planeBreakCascade();
        }
    }

    public boolean onSearchRequested(boolean flag)
    {
        return flag;
    }

    public void onStop()
    {
        mActivityState = ActivityState.STOPPED;
        callActivityStateListeners();
        SetVisible(false);
    }

    public void onSurfaceDestroyed()
    {
        SetVisible(false);
    }

    public void onSurfaceInitialized()
    {
        setMainView(m_mainView);
        SetVisible(true);
        if (mDisplayWaitingDialog)
        {
            showDialogWaitingForConnection(debuggerPort);
            mDisplayWaitingDialog = false;
        }
        LaunchApplication(m_activity, m_mainView, mXmlPath, mRootDir, mExtraArgs, mIsADL, mIsDebuggerMode);
        if (mInvokeEventPendingFromOnCreate)
        {
            if (!mIsADL)
            {
                SendInvokeEvent();
            }
            mInvokeEventPendingFromOnCreate = false;
        }
        if (mActivateEventPending)
        {
            nativeActivateEvent();
            mActivateEventPending = false;
        }
        planeCleanCascade();
    }

    public void onTitleChanged(CharSequence charsequence, int i)
    {
    }

    public boolean onTouchEvent(MotionEvent motionevent, boolean flag)
    {
        return flag;
    }

    public boolean onTrackballEvent(MotionEvent motionevent, boolean flag)
    {
        return flag;
    }

    public void onUserInteraction()
    {
    }

    public void onUserLeaveHint()
    {
    }

    public void onWindowAttributesChanged(android.view.WindowManager.LayoutParams layoutparams)
    {
    }

    public void onWindowFocusChanged(boolean flag)
    {
    }

    public void planeBreakCascade()
    {
        int i = 0;
        int j = 0;
        for (; i < 8; i++)
        {
            if (m_planes.get(i) != null)
            {
                j++;
            }
        }

        if (j > 1)
        {
            m_planeBreakCascade = true;
        }
    }

    public void planeCleanCascade()
    {
        if (!m_planeCascadeInit)
        {
            m_planeCascadeInit = true;
            planeBreakCascade();
        }
    }

    public void planeKickCascade()
    {
        if ((!isHoneycomb() || !m_skipKickCascade) && (!isJellybean() || !mContainsVideo)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        planeCleanCascade();
        if (m_layout == null) goto _L1; else goto _L3
_L3:
        int j;
        if (!m_planeBreakCascade)
        {
            continue; /* Loop/switch isn't completed */
        }
        for (int i = 0; i < 8; i++)
        {
            if (m_planes.get(i) != null && m_layout.indexOfChild((View)m_planes.get(i)) >= 0)
            {
                m_layout.removeView((View)m_planes.get(i));
            }
        }

        m_planeBreakCascade = false;
        j = 0;
_L5:
        if (j < 8)
        {
            if (m_planes.get(j) == null || planeRemovedSuccessfully((SurfaceView)m_planes.get(j)))
            {
                break MISSING_BLOCK_LABEL_192;
            }
            m_planeBreakCascade = true;
        }
        m_planeCascadeStep = 0;
        if (m_planeCascadeStep != 0) goto _L1; else goto _L4
_L4:
        planeStepCascade();
        m_mainView.requestFocus();
        return;
        j++;
          goto _L5
    }

    public void planeStepCascade()
    {
        m_skipKickCascade = false;
        break MISSING_BLOCK_LABEL_5;
        if (m_layout != null && !m_planeBreakCascade)
        {
            while (m_planeCascadeStep < 8) 
            {
                if (m_planes.get(m_planeCascadeStep) != null)
                {
                    if (m_layout.indexOfChild((View)m_planes.get(m_planeCascadeStep)) < 0)
                    {
                        m_layout.addView((View)m_planes.get(m_planeCascadeStep), 0);
                    }
                    m_planeCascadeStep = 1 + m_planeCascadeStep;
                    return;
                }
                m_planeCascadeStep = 1 + m_planeCascadeStep;
            }
        }
        return;
    }

    public void registerPlane(SurfaceView surfaceview, int i)
    {
        m_planes.set(i, surfaceview);
        planeBreakCascade();
    }

    public void removeActivityResultListener(ActivityResultCallback activityresultcallback)
    {
        if (mActivityResultListeners != null)
        {
            mActivityResultListeners.remove(activityresultcallback);
        }
    }

    public void removeActivityStateChangeListner(StateChangeCallback statechangecallback)
    {
        if (mActivityStateListeners != null)
        {
            mActivityStateListeners.remove(statechangecallback);
        }
    }

    public void removeInputEventListner(InputEventCallback inputeventcallback)
    {
        if (mInputEventListeners != null)
        {
            mInputEventListeners.remove(inputeventcallback);
        }
    }

    public void setAspectRatio(int i)
    {
        mOrientationManager.setAspectRatio(i);
    }

    public void setAutoOrients(boolean flag)
    {
        mOrientationManager.setAutoOrients(flag);
    }

    protected void setIsFullScreen(boolean flag)
    {
        mIsFullScreen = flag;
    }

    public void setOrientation(int i)
    {
        mOrientationManager.setOrientation(i);
    }

    public void setSpeakerphoneOn(boolean flag)
    {
        ((AudioManager)getActivity().getSystemService("audio")).setSpeakerphoneOn(flag);
    }

    public void setUseRGB565(Boolean boolean1)
    {
        mRGB565Override = boolean1.booleanValue();
    }

    public void unregisterPlane(int i)
    {
        m_planes.set(i, null);
        planeBreakCascade();
    }

    public boolean useRGB565()
    {
        if (mIsADL)
        {
            return mRGB565Override;
        }
        ResourceFileManager resourcefilemanager = new ResourceFileManager(m_activity);
        return !resourcefilemanager.resExists(resourcefilemanager.lookupResId("raw.rgba8888"));
    }

}
