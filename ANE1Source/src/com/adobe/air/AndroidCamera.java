// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.res.Configuration;
import android.graphics.ImageFormat;
import android.hardware.Camera;
import android.view.SurfaceHolder;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper, AndroidCameraView

public class AndroidCamera
{
    class PreviewSurfaceCallback
        implements android.view.SurfaceHolder.Callback
    {

        final AndroidCamera this$0;

        public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
        {
        }

        public void surfaceCreated(SurfaceHolder surfaceholder)
        {
            mPreviewSurfaceValid = true;
            if (mClientId != 0L && mCallbacksRegistered)
            {
                nativeOnCanOpenCamera(mClientId);
            }
        }

        public void surfaceDestroyed(SurfaceHolder surfaceholder)
        {
            mPreviewSurfaceValid = false;
            if (mClientId != 0L && mCallbacksRegistered)
            {
                nativeOnShouldCloseCamera(mClientId);
            }
        }

        PreviewSurfaceCallback()
        {
            this$0 = AndroidCamera.this;
            super();
        }
    }


    private static final int CAMERA_POSITION_UNKNOWN = -1;
    private static final String LOG_TAG = "AndroidCamera";
    private static boolean sAreMultipleCamerasSupportedInitialized = false;
    private static boolean sAreMultipleCamerasSupportedOnDevice = false;
    private static Class sCameraInfoClass = null;
    private static Method sMIDGetCameraInfo = null;
    private static Method sMIDGetNumberOfCameras = null;
    private static Method sMIDOpen = null;
    private static Method sMIDOpenWithCameraID = null;
    private AndroidActivityWrapper.StateChangeCallback mActivityStateCB;
    private byte mBuffer1[];
    private byte mBuffer2[];
    private byte mCallbackBuffer[];
    private boolean mCallbacksRegistered;
    private Camera mCamera;
    private int mCameraId;
    private boolean mCapturing;
    private long mClientId;
    private boolean mInitialized;
    private boolean mPreviewSurfaceValid;

    public AndroidCamera(long l)
    {
        mCamera = null;
        mClientId = 0L;
        mCameraId = 0;
        mInitialized = false;
        mCallbacksRegistered = false;
        mPreviewSurfaceValid = true;
        mCapturing = false;
        mActivityStateCB = null;
        mCallbackBuffer = null;
        mBuffer1 = null;
        mBuffer2 = null;
        mClientId = l;
        areMultipleCamerasSupportedOnDevice();
    }

    public static boolean areMultipleCamerasSupportedOnDevice()
    {
        if (sAreMultipleCamerasSupportedInitialized)
        {
            return sAreMultipleCamerasSupportedOnDevice;
        }
        sAreMultipleCamerasSupportedInitialized = true;
        try
        {
            Class aclass[] = new Class[1];
            aclass[0] = Integer.TYPE;
            sMIDOpenWithCameraID = android/hardware/Camera.getMethod("open", aclass);
            sMIDGetNumberOfCameras = android/hardware/Camera.getDeclaredMethod("getNumberOfCameras", (Class[])null);
        }
        catch (NoSuchMethodException nosuchmethodexception)
        {
            return false;
        }
        try
        {
            sCameraInfoClass = Class.forName("android.hardware.Camera$CameraInfo");
            Class aclass1[] = new Class[2];
            aclass1[0] = Integer.TYPE;
            aclass1[1] = sCameraInfoClass;
            sMIDGetCameraInfo = android/hardware/Camera.getMethod("getCameraInfo", aclass1);
        }
        catch (Exception exception)
        {
            return false;
        }
        if (sMIDOpenWithCameraID != null && sMIDGetNumberOfCameras != null && sMIDGetCameraInfo != null)
        {
            sAreMultipleCamerasSupportedOnDevice = true;
        }
        return sAreMultipleCamerasSupportedOnDevice;
    }

    public static int getNumberOfCameras()
    {
        if (!areMultipleCamerasSupportedOnDevice())
        {
            break MISSING_BLOCK_LABEL_27;
        }
        int i = ((Integer)sMIDGetNumberOfCameras.invoke(null, (Object[])null)).intValue();
        return i;
        Exception exception;
        exception;
        return 1;
    }

    private native void nativeOnCanOpenCamera(long l);

    private native void nativeOnFrameCaptured(long l, byte abyte0[]);

    private native void nativeOnShouldCloseCamera(long l);

    public boolean autoFocus()
    {
        if (mCamera == null || !mCapturing)
        {
            return false;
        }
        String s;
        try
        {
            s = mCamera.getParameters().getFocusMode();
        }
        catch (Exception exception)
        {
            return false;
        }
        if (s == "fixed" || s == "infinity")
        {
            break MISSING_BLOCK_LABEL_52;
        }
        mCamera.autoFocus(null);
        return true;
        return false;
    }

    public void close()
    {
        if (mCamera != null)
        {
            stopCapture();
            mCamera.release();
            mCamera = null;
        }
    }

    public Camera getCamera()
    {
        return mCamera;
    }

    public int getCameraPosition()
    {
        int i = -1;
        if (sAreMultipleCamerasSupportedOnDevice)
        {
            Object obj;
            Field field;
            if (sCameraInfoClass != null)
            {
                Exception exception;
                Method method;
                Camera camera;
                Object aobj[];
                Exception exception1;
                int j;
                Exception exception2;
                Field field1;
                Object obj1;
                try
                {
                    obj1 = sCameraInfoClass.newInstance();
                }
                catch (Exception exception3)
                {
                    return i;
                }
                obj = obj1;
            } else
            {
                obj = null;
            }
            try
            {
                method = sMIDGetCameraInfo;
                camera = mCamera;
                aobj = new Object[2];
                aobj[0] = Integer.valueOf(mCameraId);
                aobj[1] = obj;
                method.invoke(camera, aobj);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception)
            {
                return i;
            }
            if (obj != null)
            {
                try
                {
                    field1 = obj.getClass().getField("facing");
                }
                // Misplaced declaration of an exception variable
                catch (Exception exception2)
                {
                    return i;
                }
                field = field1;
            } else
            {
                field = null;
            }
            try
            {
                j = field.getInt(obj);
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception1)
            {
                return i;
            }
            i = j;
        }
        return i;
    }

    public int getCaptureFormat()
    {
        int i;
        try
        {
            i = mCamera.getParameters().getPreviewFormat();
        }
        catch (Exception exception)
        {
            return 0;
        }
        return i;
    }

    public int getCaptureHeight()
    {
        int i;
        try
        {
            i = mCamera.getParameters().getPreviewSize().height;
        }
        catch (Exception exception)
        {
            return 0;
        }
        return i;
    }

    public int getCaptureWidth()
    {
        int i;
        try
        {
            i = mCamera.getParameters().getPreviewSize().width;
        }
        catch (Exception exception)
        {
            return 0;
        }
        return i;
    }

    public int[] getSupportedFormats()
    {
        int ai[] = new int[0];
        Iterator iterator;
        List list = mCamera.getParameters().getSupportedPreviewFormats();
        ai = new int[list.size()];
        iterator = list.iterator();
        int i = 0;
_L1:
        Integer integer;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_80;
        }
        integer = (Integer)iterator.next();
        int j = i + 1;
        ai[i] = integer.intValue();
        i = j;
          goto _L1
        Exception exception;
        exception;
        return ai;
    }

    public int[] getSupportedFps()
    {
        int ai[] = new int[0];
        Iterator iterator;
        List list = mCamera.getParameters().getSupportedPreviewFrameRates();
        ai = new int[list.size()];
        iterator = list.iterator();
        int i = 0;
_L1:
        Integer integer;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_80;
        }
        integer = (Integer)iterator.next();
        int j = i + 1;
        ai[i] = integer.intValue();
        i = j;
          goto _L1
        Exception exception;
        exception;
        return ai;
    }

    public int[] getSupportedVideoSizes()
    {
        int ai[] = new int[0];
        Iterator iterator;
        List list = mCamera.getParameters().getSupportedPreviewSizes();
        ai = new int[2 * list.size()];
        iterator = list.iterator();
        int i = 0;
_L1:
        android.hardware.Camera.Size size;
        if (!iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_93;
        }
        size = (android.hardware.Camera.Size)iterator.next();
        int j = i + 1;
        ai[i] = size.width;
        i = j + 1;
        ai[j] = size.height;
          goto _L1
        Exception exception;
        exception;
        return ai;
    }

    public boolean open(int i)
    {
        if (mCamera != null)
        {
            return true;
        }
        SurfaceHolder surfaceholder1 = AndroidActivityWrapper.GetAndroidActivityWrapper().getCameraView().getHolder();
        if (surfaceholder1 == null) goto _L2; else goto _L1
_L1:
        if (surfaceholder1.getSurface() == null) goto _L2; else goto _L3
_L3:
        if (!sAreMultipleCamerasSupportedOnDevice) goto _L5; else goto _L4
_L4:
        Method method = sMIDOpenWithCameraID;
        Object aobj[] = new Object[1];
        aobj[0] = Integer.valueOf(i);
        mCamera = (Camera)method.invoke(null, aobj);
        mCameraId = i;
_L6:
        mCamera.setPreviewDisplay(surfaceholder1);
_L2:
        SurfaceHolder surfaceholder = surfaceholder1;
_L7:
        Exception exception;
        Exception exception1;
        if (mCamera != null)
        {
            surfaceholder.addCallback(new PreviewSurfaceCallback());
            return true;
        } else
        {
            return false;
        }
_L5:
        mCamera = Camera.open();
        mCameraId = 0;
          goto _L6
        exception1;
        surfaceholder = surfaceholder1;
_L8:
        if (mCamera != null)
        {
            mCamera.release();
            mCamera = null;
        }
          goto _L7
        exception;
        surfaceholder = null;
          goto _L8
    }

    public void registerCallbacks(boolean flag)
    {
        mCallbacksRegistered = flag;
        if (flag)
        {
            if (mActivityStateCB == null)
            {
                mActivityStateCB = new AndroidActivityWrapper.StateChangeCallback() {

                    final AndroidCamera this$0;

                    public void onActivityStateChanged(AndroidActivityWrapper.ActivityState activitystate)
                    {
                        if (mClientId != 0L && mCallbacksRegistered)
                        {
                            if (activitystate == AndroidActivityWrapper.ActivityState.RESUMED && mPreviewSurfaceValid)
                            {
                                nativeOnCanOpenCamera(mClientId);
                            } else
                            if (activitystate == AndroidActivityWrapper.ActivityState.PAUSED)
                            {
                                nativeOnShouldCloseCamera(mClientId);
                                return;
                            }
                        }
                    }

                    public void onConfigurationChanged(Configuration configuration)
                    {
                    }

            
            {
                this$0 = AndroidCamera.this;
                super();
            }
                };
            }
            AndroidActivityWrapper.GetAndroidActivityWrapper().addActivityStateChangeListner(mActivityStateCB);
            return;
        }
        if (mActivityStateCB != null)
        {
            AndroidActivityWrapper.GetAndroidActivityWrapper().removeActivityStateChangeListner(mActivityStateCB);
        }
        mActivityStateCB = null;
    }

    public boolean setContinuousFocusMode()
    {
label0:
        {
            if (mCamera == null)
            {
                return false;
            }
            try
            {
                android.hardware.Camera.Parameters parameters = mCamera.getParameters();
                if (!parameters.getSupportedFocusModes().contains("edof"))
                {
                    break label0;
                }
                parameters.setFocusMode("edof");
                mCamera.setParameters(parameters);
            }
            catch (Exception exception)
            {
                return false;
            }
            return true;
        }
        return false;
    }

    public boolean startCapture(int i, int j, int k, int l)
    {
        if (mCamera == null)
        {
            return false;
        }
        try
        {
            android.hardware.Camera.Parameters parameters = mCamera.getParameters();
            parameters.setPreviewSize(i, j);
            parameters.setPreviewFrameRate(k);
            parameters.setPreviewFormat(l);
            mCamera.setParameters(parameters);
            mCamera.setPreviewCallbackWithBuffer(new android.hardware.Camera.PreviewCallback() {

                final AndroidCamera this$0;

                public void onPreviewFrame(byte abyte0[], Camera camera)
                {
                    if (mClientId != 0L && mCallbacksRegistered)
                    {
                        nativeOnFrameCaptured(mClientId, abyte0);
                    }
                    if (mCallbackBuffer != mBuffer1)
                    {
                        break MISSING_BLOCK_LABEL_87;
                    }
                    mCallbackBuffer = mBuffer2;
_L1:
                    mCamera.addCallbackBuffer(mCallbackBuffer);
                    return;
                    try
                    {
                        mCallbackBuffer = mBuffer1;
                    }
                    catch (Exception exception2)
                    {
                        return;
                    }
                      goto _L1
                }

            
            {
                this$0 = AndroidCamera.this;
                super();
            }
            });
            mCamera.startPreview();
            android.hardware.Camera.Parameters parameters1 = mCamera.getParameters();
            int i1 = parameters1.getPreviewSize().width * parameters1.getPreviewSize().height * ImageFormat.getBitsPerPixel(parameters1.getPreviewFormat());
            mBuffer1 = new byte[i1];
            mBuffer2 = new byte[i1];
            mCallbackBuffer = mBuffer1;
            mCamera.addCallbackBuffer(mCallbackBuffer);
        }
        catch (Exception exception)
        {
            return false;
        }
        try
        {
            mCapturing = true;
        }
        catch (Exception exception1)
        {
            return true;
        }
        return true;
    }

    public void stopCapture()
    {
        if (mCamera != null)
        {
            mCamera.setPreviewCallback(null);
            mCamera.stopPreview();
            mCallbackBuffer = null;
            mBuffer1 = null;
            mBuffer2 = null;
        }
        mCapturing = false;
    }







/*
    static byte[] access$302(AndroidCamera androidcamera, byte abyte0[])
    {
        androidcamera.mCallbackBuffer = abyte0;
        return abyte0;
    }

*/






/*
    static boolean access$702(AndroidCamera androidcamera, boolean flag)
    {
        androidcamera.mPreviewSurfaceValid = flag;
        return flag;
    }

*/


}
