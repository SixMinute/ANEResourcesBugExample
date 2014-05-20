// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.media.MediaScannerConnection;
import android.net.Uri;
import android.os.Environment;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

public final class CameraUI
    implements AndroidActivityWrapper.ActivityResultCallback
{

    public static final int ERROR_ACTIVITY_DESTROYED = 4;
    public static final int ERROR_CAMERA_BUSY = 1;
    public static final int ERROR_CAMERA_ERROR = 2;
    public static final int ERROR_CAMERA_UNAVAILABLE = 3;
    private static final String LOG_TAG = "CameraUI";
    private static final String PHONE_STORAGE = "phoneStorage";
    public static final int REQUESTED_MEDIA_TYPE_IMAGE = 1;
    public static final int REQUESTED_MEDIA_TYPE_INVALID = 0;
    public static final int REQUESTED_MEDIA_TYPE_VIDEO = 2;
    private static String sCameraRollPath = null;
    private static CameraUI sCameraUI = null;
    private boolean mCameraBusy;
    private String mImagePath;
    private long mLastClientId;

    private CameraUI()
    {
        mLastClientId = 0L;
        mCameraBusy = false;
        mImagePath = null;
    }

    private String getCameraRollDirectory(Activity activity)
    {
        if (sCameraRollPath != null)
        {
            return sCameraRollPath;
        }
        Uri uri2 = activity.getContentResolver().insert(android.provider.MediaStore.Images.Media.EXTERNAL_CONTENT_URI, new ContentValues());
        Uri uri = uri2;
_L1:
        if (uri != null)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        Uri uri1 = activity.getContentResolver().insert(android.provider.MediaStore.Images.Media.getContentUri("phoneStorage"), new ContentValues());
        uri = uri1;
_L3:
        if (uri == null)
        {
            break MISSING_BLOCK_LABEL_145;
        }
        sCameraRollPath = getFileFromUri(uri, activity).getParent();
        activity.getContentResolver().delete(uri, null, null);
_L2:
        return sCameraRollPath;
        Exception exception;
        exception;
        uri = null;
          goto _L1
        ActivityNotFoundException activitynotfoundexception;
        activitynotfoundexception;
        activity.getContentResolver().delete(uri, null, null);
          goto _L2
        NullPointerException nullpointerexception;
        nullpointerexception;
        activity.getContentResolver().delete(uri, null, null);
          goto _L2
        Exception exception1;
        exception1;
        activity.getContentResolver().delete(uri, null, null);
        throw exception1;
        File file = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
        if (file.exists())
        {
            sCameraRollPath = file.toString();
        }
          goto _L2
        Exception exception2;
        exception2;
          goto _L3
    }

    public static CameraUI getCameraUI()
    {
        com/adobe/air/CameraUI;
        JVM INSTR monitorenter ;
        CameraUI cameraui;
        if (sCameraUI == null)
        {
            sCameraUI = new CameraUI();
            AndroidActivityWrapper.GetAndroidActivityWrapper().addActivityResultListener(sCameraUI);
        }
        cameraui = sCameraUI;
        com/adobe/air/CameraUI;
        JVM INSTR monitorexit ;
        return cameraui;
        Exception exception;
        exception;
        throw exception;
    }

    private Cursor getCursorFromUri(Uri uri, Activity activity, String as[])
    {
        Cursor cursor1 = activity.getContentResolver().query(uri, as, null, null, null);
        boolean flag2 = cursor1.moveToFirst();
        if (flag2)
        {
            boolean flag5;
            boolean flag6;
            if (cursor1 != null)
            {
                flag5 = true;
            } else
            {
                flag5 = false;
            }
            if (!cursor1.moveToFirst())
            {
                flag6 = true;
            } else
            {
                flag6 = false;
            }
            if (flag5 & flag6)
            {
                cursor1.close();
            }
            return cursor1;
        }
        cursor1.close();
        boolean flag3;
        boolean flag4;
        if (cursor1 != null)
        {
            flag3 = true;
        } else
        {
            flag3 = false;
        }
        if (!cursor1.moveToFirst())
        {
            flag4 = true;
        } else
        {
            flag4 = false;
        }
        if (flag3 & flag4)
        {
            cursor1.close();
        }
        return null;
        Exception exception;
        exception;
        Cursor cursor = null;
_L2:
        boolean flag;
        boolean flag1;
        if (cursor != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!cursor.moveToFirst())
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag & flag1)
        {
            cursor.close();
        }
        throw exception;
        Exception exception1;
        exception1;
        cursor = cursor1;
        exception = exception1;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private File getFileFromUri(Uri uri, Activity activity)
    {
        Exception exception;
        Cursor cursor = getCursorFromUri(uri, activity, new String[] {
            "_data"
        });
        File file = null;
        if (cursor != null)
        {
            File file1;
            try
            {
                file1 = new File(cursor.getString(cursor.getColumnIndexOrThrow("_data")));
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                cursor.close();
                return null;
            }
            finally
            {
                cursor.close();
            }
            cursor.close();
            file = file1;
        }
        return file;
        throw exception;
    }

    private native void nativeOnCameraCancel(long l);

    private native void nativeOnCameraError(long l, int i);

    private native void nativeOnCameraResult(long l, String s, String s1, String s2);

    private void onCameraCancel()
    {
        if (mLastClientId != 0L)
        {
            nativeOnCameraCancel(mLastClientId);
            mLastClientId = 0L;
        }
    }

    private void onCameraError(int i)
    {
        if (mLastClientId != 0L)
        {
            nativeOnCameraError(mLastClientId, i);
            mLastClientId = 0L;
        }
    }

    private void onCameraResult(String s, String s1, String s2)
    {
        if (mLastClientId != 0L)
        {
            nativeOnCameraResult(mLastClientId, s, s1, s2);
            mLastClientId = 0L;
        }
    }

    private void processImageSuccessResult()
    {
        String s = new String("image");
        String s1 = (new File(mImagePath)).getName();
        String as[] = new String[1];
        as[0] = mImagePath;
        MediaScannerConnection.scanFile(AndroidActivityWrapper.GetAndroidActivityWrapper().getDefaultContext(), as, null, null);
        onCameraResult(mImagePath, s, s1);
    }

    private void processVideoSuccessResult(Intent intent)
    {
        Cursor cursor;
        String as[] = {
            "_data", "mime_type", "_display_name"
        };
        cursor = getCursorFromUri(intent.getData(), AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity(), as);
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_337;
        }
        int j;
        int k;
        String s6;
        int i = cursor.getColumnIndexOrThrow("_data");
        j = cursor.getColumnIndexOrThrow("mime_type");
        k = cursor.getColumnIndexOrThrow("_display_name");
        s6 = cursor.getString(i);
        if (s6 == null) goto _L2; else goto _L1
_L1:
        String s9 = toMediaType(cursor.getString(j));
        String s7;
        s7 = s9;
        if (s7 != null)
        {
            break MISSING_BLOCK_LABEL_123;
        }
        String s13 = new String("video");
        s7 = s13;
        String s10 = cursor.getString(k);
        String s8;
        s8 = s10;
        if (s8 != null)
        {
            break MISSING_BLOCK_LABEL_157;
        }
        String s11 = new String("");
        s8 = s11;
_L5:
        String s;
        String s1;
        String s2;
        cursor.close();
        s = s7;
        s2 = s6;
        s1 = s8;
_L3:
        Exception exception;
        IllegalArgumentException illegalargumentexception;
        String s3;
        String s4;
        String s5;
        if (s != null && s.equals("image") || s.equals("video"))
        {
            onCameraResult(s2, s, s1);
            return;
        } else
        {
            onCameraError(2);
            return;
        }
        illegalargumentexception;
        s3 = null;
        s4 = null;
        s5 = null;
_L4:
        cursor.close();
        s = s3;
        s1 = s4;
        s2 = s5;
          goto _L3
        exception;
        cursor.close();
        throw exception;
        IllegalArgumentException illegalargumentexception1;
        illegalargumentexception1;
        s5 = s6;
        s3 = null;
        s4 = null;
          goto _L4
        IllegalArgumentException illegalargumentexception4;
        illegalargumentexception4;
        s5 = s6;
        s3 = s7;
        s4 = null;
          goto _L4
        IllegalArgumentException illegalargumentexception2;
        illegalargumentexception2;
        s5 = s6;
        s3 = s7;
        s4 = null;
          goto _L4
        IllegalArgumentException illegalargumentexception3;
        illegalargumentexception3;
        String s12 = s7;
        s4 = s8;
        s5 = s6;
        s3 = s12;
          goto _L4
_L2:
        s7 = null;
        s8 = null;
          goto _L5
        s = null;
        s1 = null;
        s2 = null;
          goto _L3
    }

    private int stillPictureWork()
    {
        Activity activity;
        String s1;
        File file;
        activity = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity();
        if (activity == null)
        {
            return 4;
        }
        if (getCameraRollDirectory(activity) == null)
        {
            return 2;
        }
        String s = (new SimpleDateFormat("'IMG'_yyyyMMdd_HHmmss")).format(new Date(System.currentTimeMillis()));
        s1 = (new StringBuilder()).append(getCameraRollDirectory(activity)).append("/").append(s).append(".jpg").toString();
        file = new File(s1);
        if (file.exists())
        {
            return 2;
        }
        Intent intent = new Intent("android.media.action.IMAGE_CAPTURE");
        intent.putExtra("output", Uri.fromFile(file));
        activity.startActivityForResult(intent, 3);
        int i;
        String s2;
        i = 0;
        s2 = s1;
_L2:
        mImagePath = s2;
        return i;
        ActivityNotFoundException activitynotfoundexception;
        activitynotfoundexception;
        i = 3;
        s2 = null;
        continue; /* Loop/switch isn't completed */
        NullPointerException nullpointerexception;
        nullpointerexception;
        i = 2;
        s2 = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private String toMediaType(String s)
    {
        String s1 = null;
        if (s != null)
        {
            if (s.startsWith("image/"))
            {
                s1 = new String("image");
            } else
            {
                boolean flag = s.startsWith("video/");
                s1 = null;
                if (flag)
                {
                    return new String("video");
                }
            }
        }
        return s1;
    }

    private int videoCaptureWork()
    {
        Activity activity;
        Intent intent;
        try
        {
            activity = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity();
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            return 3;
        }
        if (activity == null)
        {
            return 4;
        }
        intent = new Intent("android.media.action.VIDEO_CAPTURE");
        intent.putExtra("android.intent.extra.videoQuality", 0);
        activity.startActivityForResult(intent, 4);
        return 0;
    }

    public Object clone()
        throws CloneNotSupportedException
    {
        throw new CloneNotSupportedException();
    }

    public void launch(long l, int i)
    {
        if (l != 0L) goto _L2; else goto _L1
_L1:
        return;
_L2:
        int j;
        if (mCameraBusy)
        {
            nativeOnCameraError(l, 1);
            return;
        }
        if (mLastClientId != 0L)
        {
            onCameraError(1);
        }
        mLastClientId = l;
        mCameraBusy = true;
        switch (i)
        {
        default:
            j = 3;
            break;

        case 1: // '\001'
            break; /* Loop/switch isn't completed */

        case 2: // '\002'
            break MISSING_BLOCK_LABEL_97;
        }
_L4:
        if (j != 0)
        {
            mCameraBusy = false;
            onCameraError(j);
            return;
        }
        if (true) goto _L1; else goto _L3
_L3:
        j = stillPictureWork();
          goto _L4
        j = videoCaptureWork();
          goto _L4
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 3 || i == 4) goto _L2; else goto _L1
_L1:
        return;
_L2:
        mCameraBusy = false;
        if (mLastClientId == 0L) goto _L1; else goto _L3
_L3:
        switch (j)
        {
        default:
            if (mImagePath != null)
            {
                mImagePath = null;
            }
            onCameraError(2);
            return;

        case -1: 
            if (i == 3)
            {
                if (mImagePath != null)
                {
                    processImageSuccessResult();
                    mImagePath = null;
                    return;
                } else
                {
                    onCameraCancel();
                    return;
                }
            }
            if (i == 4)
            {
                processVideoSuccessResult(intent);
                return;
            }
            break;

        case 0: // '\0'
            if (mImagePath != null)
            {
                mImagePath = null;
            }
            onCameraCancel();
            return;
        }
        if (true) goto _L1; else goto _L4
_L4:
    }

    public void unregisterCallbacks(long l)
    {
        if (mLastClientId == l)
        {
            mLastClientId = 0L;
        }
    }

}
