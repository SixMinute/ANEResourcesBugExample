// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.Display;
import android.view.OrientationEventListener;
import android.view.Window;
import android.view.WindowManager;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper, AIRWindowSurfaceView

class OrientationManager
{
    public static final class EAspectRatio extends Enum
    {

        private static final EAspectRatio $VALUES[];
        public static final EAspectRatio LANDSCAPE;
        public static final EAspectRatio PORTRAIT;
        public static final EAspectRatio UNKNOWN;

        public static EAspectRatio valueOf(String s)
        {
            return (EAspectRatio)Enum.valueOf(com/adobe/air/OrientationManager$EAspectRatio, s);
        }

        public static EAspectRatio[] values()
        {
            return (EAspectRatio[])$VALUES.clone();
        }

        static 
        {
            UNKNOWN = new EAspectRatio("UNKNOWN", 0);
            PORTRAIT = new EAspectRatio("PORTRAIT", 1);
            LANDSCAPE = new EAspectRatio("LANDSCAPE", 2);
            EAspectRatio aeaspectratio[] = new EAspectRatio[3];
            aeaspectratio[0] = UNKNOWN;
            aeaspectratio[1] = PORTRAIT;
            aeaspectratio[2] = LANDSCAPE;
            $VALUES = aeaspectratio;
        }

        private EAspectRatio(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class EDefault extends Enum
    {

        private static final EDefault $VALUES[];
        public static final EDefault LANDSCAPE;
        public static final EDefault PORTRAIT;

        public static EDefault valueOf(String s)
        {
            return (EDefault)Enum.valueOf(com/adobe/air/OrientationManager$EDefault, s);
        }

        public static EDefault[] values()
        {
            return (EDefault[])$VALUES.clone();
        }

        static 
        {
            PORTRAIT = new EDefault("PORTRAIT", 0);
            LANDSCAPE = new EDefault("LANDSCAPE", 1);
            EDefault aedefault[] = new EDefault[2];
            aedefault[0] = PORTRAIT;
            aedefault[1] = LANDSCAPE;
            $VALUES = aedefault;
        }

        private EDefault(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class EOrientation extends Enum
    {

        private static final EOrientation $VALUES[];
        public static final EOrientation DEFAULT;
        public static final EOrientation ROTATED_LEFT;
        public static final EOrientation ROTATED_RIGHT;
        public static final EOrientation UNKNOWN;
        public static final EOrientation UPSIDE_DOWN;

        public static EOrientation valueOf(String s)
        {
            return (EOrientation)Enum.valueOf(com/adobe/air/OrientationManager$EOrientation, s);
        }

        public static EOrientation[] values()
        {
            return (EOrientation[])$VALUES.clone();
        }

        static 
        {
            UNKNOWN = new EOrientation("UNKNOWN", 0);
            DEFAULT = new EOrientation("DEFAULT", 1);
            ROTATED_LEFT = new EOrientation("ROTATED_LEFT", 2);
            ROTATED_RIGHT = new EOrientation("ROTATED_RIGHT", 3);
            UPSIDE_DOWN = new EOrientation("UPSIDE_DOWN", 4);
            EOrientation aeorientation[] = new EOrientation[5];
            aeorientation[0] = UNKNOWN;
            aeorientation[1] = DEFAULT;
            aeorientation[2] = ROTATED_LEFT;
            aeorientation[3] = ROTATED_RIGHT;
            aeorientation[4] = UPSIDE_DOWN;
            $VALUES = aeorientation;
        }

        private EOrientation(String s, int i)
        {
            super(s, i);
        }
    }


    private static final float AIR_NAMESPACE_VERSION_3_3 = 3.3F;
    private static final float AIR_NAMESPACE_VERSION_3_8 = 3.8F;
    private static final String LOG_TAG = "OrientationManager";
    private static OrientationManager sMgr = null;
    public int mAfterOrientation;
    private boolean mAutoOrients;
    public int mBeforeOrientation;
    private int mDeviceDefault;
    private int mDeviceOrientation;
    public boolean mDispatchOrientationChangePending;
    private int mFinalOrientation;
    private boolean mFirstCreate;
    private int mHardKeyboardHidden;
    private float mNamespaceVersion;
    private int mOldDeviceOrientation;
    private int mOrientation;
    private OrientationEventListener mOrientationEventListner;
    private int mOsDefaultOrientation;
    private int mOsReversedOrientation;
    private int mOsRotatedLeftOrientation;
    private int mOsRotatedRightOrientation;
    private int mRequestedAspectRatio;
    private boolean mSetOrientation;
    private AIRWindowSurfaceView mView;
    private Activity m_activity;

    private OrientationManager()
    {
        mFirstCreate = true;
        mOrientation = EOrientation.DEFAULT.ordinal();
        mDeviceOrientation = EOrientation.UNKNOWN.ordinal();
        mOldDeviceOrientation = EOrientation.UNKNOWN.ordinal();
        mFinalOrientation = EOrientation.UNKNOWN.ordinal();
        mDeviceDefault = EDefault.PORTRAIT.ordinal();
        mAutoOrients = false;
        mSetOrientation = false;
        mHardKeyboardHidden = 2;
        m_activity = null;
        mView = null;
        mOsDefaultOrientation = 1;
        mOsRotatedRightOrientation = 0;
        mOsRotatedLeftOrientation = 8;
        mOsReversedOrientation = 9;
        mDispatchOrientationChangePending = false;
        mRequestedAspectRatio = -1;
    }

    private void applyLastOrientation()
    {
        if (mAutoOrients) goto _L2; else goto _L1
_L1:
        if (!mSetOrientation && (mNamespaceVersion < 3.3F || mRequestedAspectRatio == -1)) goto _L4; else goto _L3
_L3:
        setOrientation(mOrientation);
_L6:
        return;
_L4:
        setAutoOrients(mAutoOrients);
        return;
_L2:
        if (!mSetOrientation || mOldDeviceOrientation != mDeviceOrientation || mNamespaceVersion < 3.3F)
        {
            setAutoOrients(mAutoOrients);
            mAfterOrientation = getCurrentOrientation();
            mBeforeOrientation = mOrientation;
            if (mBeforeOrientation != mAfterOrientation)
            {
                boolean flag;
                if (AndroidActivityWrapper.GetAndroidActivityWrapper().isApplicationLaunched())
                {
                    flag = nativeOrientationChanging(mBeforeOrientation, mAfterOrientation);
                } else
                {
                    flag = false;
                }
                if (flag)
                {
                    setNearestOrientation(mBeforeOrientation);
                    return;
                }
                mOrientation = mAfterOrientation;
                if (AndroidActivityWrapper.GetAndroidActivityWrapper().isApplicationLaunched())
                {
                    if (mView.getVisibleBoundHeight() == mView.getVisibleBoundWidth())
                    {
                        nativeOrientationChanged(mBeforeOrientation, mAfterOrientation);
                        mDispatchOrientationChangePending = false;
                        return;
                    } else
                    {
                        mDispatchOrientationChangePending = true;
                        return;
                    }
                }
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    private int getCurrentOrientation()
    {
        int i = EOrientation.DEFAULT.ordinal();
        if (m_activity != null)
        {
            int j = m_activity.getWindowManager().getDefaultDisplay().getRotation();
            if (j == 0)
            {
                return EOrientation.DEFAULT.ordinal();
            }
            if (j == 1)
            {
                return EOrientation.ROTATED_RIGHT.ordinal();
            }
            if (j == 2)
            {
                return EOrientation.UPSIDE_DOWN.ordinal();
            }
            if (j == 3)
            {
                return EOrientation.ROTATED_LEFT.ordinal();
            }
        }
        return i;
    }

    public static OrientationManager getOrientationManager()
    {
        if (sMgr == null)
        {
            sMgr = new OrientationManager();
        }
        return sMgr;
    }

    private boolean isReOrientingAllowed()
    {
        boolean flag;
        boolean flag1;
        if (mNamespaceVersion < 3.3F)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        flag = mAutoOrients;
        flag1 = false;
        if (!flag) goto _L2; else goto _L1
_L1:
        if (mRequestedAspectRatio == -1)
        {
            break MISSING_BLOCK_LABEL_112;
        }
        boolean flag2 = mFirstCreate;
        flag1 = false;
        if (flag2)
        {
            flag1 = true;
        }
        if (mRequestedAspectRatio != mOsDefaultOrientation) goto _L4; else goto _L3
_L3:
        if (mDeviceOrientation == EOrientation.DEFAULT.ordinal() || mDeviceOrientation == EOrientation.UPSIDE_DOWN.ordinal())
        {
            flag1 = true;
        }
_L2:
        return flag1;
_L4:
        if (mDeviceOrientation != EOrientation.ROTATED_LEFT.ordinal() && mDeviceOrientation != EOrientation.ROTATED_RIGHT.ordinal()) goto _L2; else goto _L5
_L5:
        return true;
        return true;
        return true;
    }

    private void setDeviceDefault()
    {
        Display display = m_activity.getWindow().getWindowManager().getDefaultDisplay();
        int i = display.getRotation();
        boolean flag;
        boolean flag1;
        if (display.getHeight() >= display.getWidth())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i == 0 || i == 2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag && flag1 || !flag && !flag1)
        {
            mOsDefaultOrientation = 1;
            mOsRotatedRightOrientation = 0;
            if (android.os.Build.VERSION.SDK_INT <= 8)
            {
                mOsRotatedLeftOrientation = mOsRotatedRightOrientation;
                mOsReversedOrientation = mOsDefaultOrientation;
                return;
            } else
            {
                mOsRotatedLeftOrientation = 8;
                mOsReversedOrientation = 9;
                return;
            }
        }
        mOsDefaultOrientation = 0;
        mOsRotatedLeftOrientation = 1;
        if (android.os.Build.VERSION.SDK_INT <= 8)
        {
            mOsRotatedRightOrientation = mOsRotatedLeftOrientation;
            mOsReversedOrientation = mOsDefaultOrientation;
            return;
        } else
        {
            mOsRotatedRightOrientation = 9;
            mOsReversedOrientation = 8;
            return;
        }
    }

    private void setOrientationParamsFromMetaData()
    {
        Bundle bundle;
        Boolean boolean1;
        String s;
        try
        {
            bundle = m_activity.getPackageManager().getActivityInfo(m_activity.getComponentName(), 128).metaData;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            return;
        }
        if (bundle == null)
        {
            return;
        }
        boolean1 = (Boolean)bundle.get("autoOrients");
        s = (String)bundle.get("aspectRatio");
        mNamespaceVersion = bundle.getFloat("namespaceVersion");
        if (s == null) goto _L2; else goto _L1
_L1:
        if (!s.equals("portrait")) goto _L4; else goto _L3
_L3:
        setAspectRatio(EAspectRatio.PORTRAIT.ordinal());
_L2:
        if (boolean1 == null)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        if (boolean1.booleanValue())
        {
            setAutoOrients(true);
            return;
        }
        break MISSING_BLOCK_LABEL_129;
_L4:
        if (!s.equals("landscape")) goto _L2; else goto _L5
_L5:
        setAspectRatio(EAspectRatio.LANDSCAPE.ordinal());
          goto _L2
        if (mNamespaceVersion < 3.8F)
        {
            break MISSING_BLOCK_LABEL_161;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        if (!s.equals("any"))
        {
            break MISSING_BLOCK_LABEL_161;
        }
        setAutoOrients(false);
        return;
        if (mNamespaceVersion > 3.8F || s != null)
        {
            break MISSING_BLOCK_LABEL_181;
        }
        setAutoOrients(false);
    }

    private boolean setSensorBasedOrientation()
    {
        int _tmp = mOrientation;
        boolean flag;
        if (mRequestedAspectRatio != -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (mAutoOrients)
        {
            if (mSetOrientation && mNamespaceVersion >= 3.3F)
            {
                mSetOrientation = false;
            }
            if (flag && mNamespaceVersion >= 3.3F)
            {
                if (mRequestedAspectRatio == mOsDefaultOrientation)
                {
                    if (mDeviceOrientation == EOrientation.DEFAULT.ordinal())
                    {
                        m_activity.setRequestedOrientation(mRequestedAspectRatio);
                        return true;
                    }
                    if (mDeviceOrientation == EOrientation.UPSIDE_DOWN.ordinal())
                    {
                        m_activity.setRequestedOrientation(mOsReversedOrientation);
                        return true;
                    }
                } else
                {
                    int i;
                    if (mOsDefaultOrientation == 1)
                    {
                        i = EOrientation.ROTATED_LEFT.ordinal();
                    } else
                    {
                        i = EOrientation.ROTATED_RIGHT.ordinal();
                    }
                    if (mDeviceOrientation == i)
                    {
                        m_activity.setRequestedOrientation(mRequestedAspectRatio);
                    } else
                    if (mOsDefaultOrientation == 1)
                    {
                        m_activity.setRequestedOrientation(8);
                    } else
                    {
                        m_activity.setRequestedOrientation(9);
                    }
                    return true;
                }
            } else
            {
                m_activity.setRequestedOrientation(2);
                return true;
            }
        }
        return false;
    }

    public void enableEventListener(boolean flag)
    {
        if (flag)
        {
            mOrientationEventListner.enable();
            return;
        } else
        {
            mOrientationEventListner.disable();
            return;
        }
    }

    public boolean getAutoOrients()
    {
        return mAutoOrients;
    }

    public int getDeviceOrientation()
    {
        if (mHardKeyboardHidden == 1)
        {
            if (mOsDefaultOrientation == 1)
            {
                return EOrientation.ROTATED_LEFT.ordinal();
            } else
            {
                return EOrientation.DEFAULT.ordinal();
            }
        } else
        {
            return mDeviceOrientation;
        }
    }

    public int getOrientation()
    {
        mOrientation = getCurrentOrientation();
        return mOrientation;
    }

    public int[] getSupportedOrientations()
    {
        if (android.os.Build.VERSION.SDK_INT <= 8)
        {
            int ai1[] = new int[2];
            if (mOsDefaultOrientation == 1)
            {
                ai1[0] = EOrientation.DEFAULT.ordinal();
                ai1[1] = EOrientation.ROTATED_RIGHT.ordinal();
                return ai1;
            } else
            {
                ai1[0] = EOrientation.DEFAULT.ordinal();
                ai1[1] = EOrientation.ROTATED_LEFT.ordinal();
                return ai1;
            }
        } else
        {
            int ai[] = new int[4];
            ai[0] = EOrientation.DEFAULT.ordinal();
            ai[1] = EOrientation.ROTATED_LEFT.ordinal();
            ai[2] = EOrientation.ROTATED_RIGHT.ordinal();
            ai[3] = EOrientation.UPSIDE_DOWN.ordinal();
            return ai;
        }
    }

    public native void nativeOrientationChanged(int i, int j);

    public native boolean nativeOrientationChanging(int i, int j);

    public void onActivityCreated(Activity activity, AIRWindowSurfaceView airwindowsurfaceview)
    {
        m_activity = activity;
        mView = airwindowsurfaceview;
        mHardKeyboardHidden = m_activity.getResources().getConfiguration().hardKeyboardHidden;
        if (mFirstCreate)
        {
            setDeviceDefault();
            setOrientationParamsFromMetaData();
        }
        mOrientationEventListner = new OrientationEventListener(m_activity.getApplicationContext(), 3) {

            final OrientationManager this$0;

            public void onOrientationChanged(int i)
            {
                int j = EOrientation.UNKNOWN.ordinal();
                if (i == -1)
                {
                    mDeviceOrientation = EOrientation.UNKNOWN.ordinal();
                    j = EOrientation.UNKNOWN.ordinal();
                } else
                if (i >= 45 && i < 135)
                {
                    mDeviceOrientation = EOrientation.ROTATED_RIGHT.ordinal();
                    j = EOrientation.ROTATED_LEFT.ordinal();
                } else
                if (i >= 135 && i < 225)
                {
                    mDeviceOrientation = EOrientation.UPSIDE_DOWN.ordinal();
                    j = EOrientation.UPSIDE_DOWN.ordinal();
                } else
                if (i >= 225 && i < 315)
                {
                    mDeviceOrientation = EOrientation.ROTATED_LEFT.ordinal();
                    j = EOrientation.ROTATED_RIGHT.ordinal();
                } else
                if (i >= 0 && i < 45 || i >= 315 && i < 360)
                {
                    mDeviceOrientation = EOrientation.DEFAULT.ordinal();
                    j = EOrientation.DEFAULT.ordinal();
                }
                if (AndroidActivityWrapper.GetAndroidActivityWrapper().isApplicationLaunched() && mAutoOrients && mOldDeviceOrientation != mDeviceOrientation && j != EOrientation.UNKNOWN.ordinal() && mOrientation != j)
                {
                    int k = android.provider.Settings.System.getInt(m_activity.getContentResolver(), "accelerometer_rotation", 0);
                    if (m_activity != null && k != 0 && isReOrientingAllowed())
                    {
                        if (nativeOrientationChanging(mOrientation, j))
                        {
                            setNearestOrientation(mOrientation);
                        } else
                        if (setSensorBasedOrientation())
                        {
                            nativeOrientationChanged(mOrientation, j);
                            mOrientation = j;
                        }
                        mFinalOrientation = mOrientation;
                    }
                } else
                if (mAutoOrients && mSetOrientation && mOldDeviceOrientation != mDeviceOrientation && mOldDeviceOrientation != EOrientation.UNKNOWN.ordinal() && mDeviceOrientation != EOrientation.UNKNOWN.ordinal() && mNamespaceVersion < 3.3F)
                {
                    if (m_activity != null)
                    {
                        m_activity.setRequestedOrientation(2);
                    }
                    mSetOrientation = false;
                }
                mOldDeviceOrientation = mDeviceOrientation;
            }

            
            {
                this$0 = OrientationManager.this;
                super(context, i);
            }
        };
        AndroidActivityWrapper androidactivitywrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
        if (androidactivitywrapper.isScreenOn() && !androidactivitywrapper.isScreenLocked())
        {
            if (!mFirstCreate)
            {
                applyLastOrientation();
            }
            mOrientation = getCurrentOrientation();
        }
        mFirstCreate = false;
    }

    public void onActivityDestroyed()
    {
        m_activity = null;
    }

    public void onActivityPaused()
    {
        enableEventListener(false);
    }

    public void onActivityResumed()
    {
        enableEventListener(true);
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        mAfterOrientation = getCurrentOrientation();
        mBeforeOrientation = mOrientation;
        if (mHardKeyboardHidden != configuration.hardKeyboardHidden)
        {
            mHardKeyboardHidden = configuration.hardKeyboardHidden;
            if (mAutoOrients && mSetOrientation)
            {
                if (m_activity != null)
                {
                    m_activity.setRequestedOrientation(2);
                }
                mSetOrientation = false;
            }
        }
        if (mBeforeOrientation != mAfterOrientation && (mFinalOrientation == EOrientation.UNKNOWN.ordinal() || mAfterOrientation == mFinalOrientation))
        {
            mFinalOrientation = EOrientation.UNKNOWN.ordinal();
            mOrientation = mAfterOrientation;
            if (AndroidActivityWrapper.GetAndroidActivityWrapper().isApplicationLaunched())
            {
                if (mView.getVisibleBoundHeight() == mView.getVisibleBoundWidth())
                {
                    nativeOrientationChanged(mBeforeOrientation, mAfterOrientation);
                    mDispatchOrientationChangePending = false;
                    return;
                } else
                {
                    mDispatchOrientationChangePending = true;
                    return;
                }
            }
        }
    }

    public void setAspectRatio(int i)
    {
        if (m_activity == null) goto _L2; else goto _L1
_L1:
        if (mNamespaceVersion < 3.3F)
        {
            mSetOrientation = true;
        }
        if (i != EAspectRatio.PORTRAIT.ordinal()) goto _L4; else goto _L3
_L3:
        m_activity.setRequestedOrientation(1);
        mRequestedAspectRatio = 1;
_L6:
        mOrientation = getCurrentOrientation();
_L2:
        return;
_L4:
        if (i == EAspectRatio.LANDSCAPE.ordinal())
        {
            m_activity.setRequestedOrientation(0);
            mRequestedAspectRatio = 0;
        } else
        {
            mRequestedAspectRatio = -1;
            if (mAutoOrients)
            {
                m_activity.setRequestedOrientation(2);
            }
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void setAutoOrients(boolean flag)
    {
        if (m_activity != null)
        {
            mAutoOrients = flag;
            if (mAutoOrients)
            {
                if (mNamespaceVersion < 3.3F || mRequestedAspectRatio == -1)
                {
                    m_activity.setRequestedOrientation(2);
                    return;
                }
            } else
            {
                m_activity.setRequestedOrientation(5);
                return;
            }
        }
    }

    public void setNearestOrientation(int i)
    {
        if (m_activity != null)
        {
            if (i == EOrientation.DEFAULT.ordinal())
            {
                m_activity.setRequestedOrientation(mOsDefaultOrientation);
            } else
            {
                if (i == EOrientation.ROTATED_LEFT.ordinal())
                {
                    m_activity.setRequestedOrientation(mOsRotatedLeftOrientation);
                    return;
                }
                if (i == EOrientation.ROTATED_RIGHT.ordinal())
                {
                    m_activity.setRequestedOrientation(mOsRotatedRightOrientation);
                    return;
                }
                if (i == EOrientation.UPSIDE_DOWN.ordinal())
                {
                    m_activity.setRequestedOrientation(mOsReversedOrientation);
                    return;
                }
            }
        }
    }

    public void setOrientation(int i)
    {
        int j = mOrientation;
        if (android.os.Build.VERSION.SDK_INT <= 8) goto _L2; else goto _L1
_L1:
        setNearestOrientation(i);
        mSetOrientation = true;
        mOrientation = getCurrentOrientation();
_L4:
        int k = getCurrentOrientation();
        if (mNamespaceVersion >= 3.8F && k != j)
        {
            nativeOrientationChanged(j, k);
        }
        return;
_L2:
        if (i == EOrientation.DEFAULT.ordinal())
        {
            if (m_activity != null)
            {
                if (mOsDefaultOrientation == 1)
                {
                    m_activity.setRequestedOrientation(1);
                } else
                {
                    m_activity.setRequestedOrientation(0);
                }
                mSetOrientation = true;
            }
        } else
        if (i == EOrientation.ROTATED_RIGHT.ordinal())
        {
            if (m_activity != null && mOsDefaultOrientation == 1)
            {
                m_activity.setRequestedOrientation(0);
                mSetOrientation = true;
            }
        } else
        if (i == EOrientation.ROTATED_LEFT.ordinal() && m_activity != null && mOsDefaultOrientation == 0)
        {
            m_activity.setRequestedOrientation(1);
            mSetOrientation = true;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }




/*
    static int access$002(OrientationManager orientationmanager, int i)
    {
        orientationmanager.mDeviceOrientation = i;
        return i;
    }

*/




/*
    static int access$202(OrientationManager orientationmanager, int i)
    {
        orientationmanager.mOldDeviceOrientation = i;
        return i;
    }

*/



/*
    static int access$302(OrientationManager orientationmanager, int i)
    {
        orientationmanager.mOrientation = i;
        return i;
    }

*/





/*
    static int access$702(OrientationManager orientationmanager, int i)
    {
        orientationmanager.mFinalOrientation = i;
        return i;
    }

*/



/*
    static boolean access$802(OrientationManager orientationmanager, boolean flag)
    {
        orientationmanager.mSetOrientation = flag;
        return flag;
    }

*/

}
