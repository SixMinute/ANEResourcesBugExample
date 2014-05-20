// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.media.MediaScannerConnection;
import android.net.Uri;
import java.io.OutputStream;
import java.util.Date;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

public class AndroidMediaManager
{

    public static final int ERROR_ACTIVITY_DESTROYED = 2;
    public static final int ERROR_IMAGE_PICKER_NOT_FOUND = 1;
    private static long MediaManagerObjectPointer = 0L;
    private static final String PHONE_STORAGE = "phoneStorage";
    private AndroidActivityWrapper.ActivityResultCallback mActivityResultCB;
    private boolean mCallbacksRegistered;

    public AndroidMediaManager()
    {
        mCallbacksRegistered = false;
        mActivityResultCB = null;
        MediaManagerObjectPointer = 0L;
    }

    public static boolean AddImage(Application application, Bitmap bitmap, boolean flag)
    {
        if (application == null) goto _L2; else goto _L1
_L1:
        ContentResolver contentresolver = application.getContentResolver();
        String s1 = android.provider.MediaStore.Images.Media.insertImage(contentresolver, bitmap, null, null);
        String s = s1;
_L3:
        if (s == null)
        {
            s = SaveImage("phoneStorage", contentresolver, bitmap, flag);
        }
        if (s == null)
        {
            break; /* Loop/switch isn't completed */
        }
        Cursor cursor;
        String as[] = {
            "_data"
        };
        cursor = contentresolver.query(Uri.parse(s), as, null, null, null);
        Exception exception;
        if (cursor != null)
        {
            try
            {
                int i = cursor.getColumnIndexOrThrow("_data");
                cursor.moveToFirst();
                String as1[] = new String[1];
                as1[0] = cursor.getString(i);
                MediaScannerConnection.scanFile(AndroidActivityWrapper.GetAndroidActivityWrapper().getDefaultContext(), as1, null, null);
            }
            catch (Exception exception1) { }
        }
        return true;
        exception;
        s = null;
        if (true) goto _L3; else goto _L2
_L2:
        return false;
    }

    private static String SaveImage(String s, ContentResolver contentresolver, Bitmap bitmap, boolean flag)
    {
        ContentValues contentvalues = new ContentValues();
        if (!flag) goto _L2; else goto _L1
_L1:
        contentvalues.put("mime_type", "image/jpeg");
_L3:
        Uri uri1;
        Date date = new Date();
        contentvalues.put("datetaken", Long.valueOf(date.getTime()));
        contentvalues.put("date_added", Long.valueOf(date.getTime() / 1000L));
        uri1 = contentresolver.insert(android.provider.MediaStore.Images.Media.getContentUri(s), contentvalues);
        if (uri1 == null)
        {
            break MISSING_BLOCK_LABEL_252;
        }
        OutputStream outputstream = contentresolver.openOutputStream(uri1);
        bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 90, outputstream);
        long l = ContentUris.parseId(uri1);
        SaveThumbnail(s, contentresolver, SaveThumbnail(s, contentresolver, bitmap, l, 320F, 240F, 1), l, 50F, 50F, 3);
        outputstream.close();
        Uri uri = uri1;
_L4:
        Exception exception;
        Exception exception2;
        Exception exception3;
        Exception exception4;
        if (uri != null)
        {
            return uri.toString();
        } else
        {
            return null;
        }
_L2:
        contentvalues.put("mime_type", "image/png");
          goto _L3
        exception;
        uri = null;
_L5:
        if (uri != null)
        {
            contentresolver.delete(uri, null, null);
            uri = null;
        }
          goto _L4
        exception3;
        if (uri1 == null)
        {
            break MISSING_BLOCK_LABEL_245;
        }
        contentresolver.delete(uri1, null, null);
        uri = null;
_L6:
        outputstream.close();
          goto _L4
        exception4;
          goto _L5
        exception2;
        try
        {
            outputstream.close();
            throw exception2;
        }
        catch (Exception exception1)
        {
            uri = uri1;
        }
          goto _L5
        uri = uri1;
          goto _L6
        uri = uri1;
          goto _L4
    }

    private static final Bitmap SaveThumbnail(String s, ContentResolver contentresolver, Bitmap bitmap, long l, float f, float f1, int i)
    {
        if (bitmap != null) goto _L2; else goto _L1
_L1:
        Bitmap bitmap2 = null;
_L4:
        return bitmap2;
_L2:
        Uri uri;
        Matrix matrix = new Matrix();
        Bitmap bitmap1;
        ContentValues contentvalues;
        Uri uri1;
        OutputStream outputstream;
        try
        {
            matrix.setScale(f / (float)bitmap.getWidth(), f1 / (float)bitmap.getHeight());
            bitmap1 = Bitmap.createBitmap(bitmap, 0, 0, bitmap.getWidth(), bitmap.getHeight(), matrix, true);
        }
        catch (Exception exception)
        {
            return null;
        }
        bitmap2 = bitmap1;
        contentvalues = new ContentValues(4);
        contentvalues.put("kind", Integer.valueOf(i));
        contentvalues.put("image_id", Integer.valueOf((int)l));
        contentvalues.put("height", Integer.valueOf(bitmap2.getHeight()));
        contentvalues.put("width", Integer.valueOf(bitmap2.getWidth()));
        uri1 = contentresolver.insert(android.provider.MediaStore.Images.Thumbnails.getContentUri(s), contentvalues);
        uri = uri1;
        if (uri == null)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        outputstream = contentresolver.openOutputStream(uri);
        bitmap2.compress(android.graphics.Bitmap.CompressFormat.JPEG, 100, outputstream);
        outputstream.close();
_L5:
        if (uri == null)
        {
            return null;
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception1;
        exception1;
        uri = null;
_L6:
        if (uri != null)
        {
            contentresolver.delete(uri, null, null);
            uri = null;
        }
          goto _L5
        Exception exception2;
        exception2;
          goto _L6
    }

    private void doCallbackRegistration(boolean flag)
    {
        mCallbacksRegistered = flag;
        if (flag)
        {
            if (mActivityResultCB == null)
            {
                mActivityResultCB = new AndroidActivityWrapper.ActivityResultCallback() {

                    final AndroidMediaManager this$0;

                    public void onActivityResult(int i, int j, Intent intent)
                    {
                        while (i != 2 || AndroidMediaManager.MediaManagerObjectPointer == 0L || !mCallbacksRegistered) 
                        {
                            return;
                        }
                        onBrowseImageResult(j, intent, AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity());
                        unregisterCallbacks();
                    }

            
            {
                this$0 = AndroidMediaManager.this;
                super();
            }
                };
            }
            AndroidActivityWrapper.GetAndroidActivityWrapper().addActivityResultListener(mActivityResultCB);
        } else
        if (mActivityResultCB != null)
        {
            AndroidActivityWrapper.GetAndroidActivityWrapper().removeActivityResultListener(mActivityResultCB);
            mActivityResultCB = null;
            return;
        }
    }

    public int BrowseImage(long l)
    {
        int i = 0;
        AndroidActivityWrapper androidactivitywrapper;
        Intent intent;
        androidactivitywrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
        intent = new Intent();
        intent.setType("image/*");
        intent.setAction("android.intent.action.PICK");
        if (androidactivitywrapper.getActivity() == null) goto _L2; else goto _L1
_L1:
        androidactivitywrapper.getActivity().startActivityForResult(Intent.createChooser(intent, ""), 2);
_L4:
        if (i == 0)
        {
            registerCallbacks();
            MediaManagerObjectPointer = l;
        }
        return i;
_L2:
        i = 2;
        continue; /* Loop/switch isn't completed */
        ActivityNotFoundException activitynotfoundexception;
        activitynotfoundexception;
        i = 1;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onBrowseImageResult(int i, Intent intent, Activity activity)
    {
        if (i != 0) goto _L2; else goto _L1
_L1:
        useImagePickerData(MediaManagerObjectPointer, false, true, "", "", "");
_L4:
        return;
_L2:
        if (i != -1) goto _L4; else goto _L3
_L3:
        Cursor cursor;
        String as[] = {
            "_data", "mime_type", "_display_name"
        };
        cursor = activity.managedQuery(intent.getData(), as, null, null, null);
        if (cursor == null)
        {
            int j;
            int k;
            String s;
            String s1;
            try
            {
                useImagePickerData(MediaManagerObjectPointer, false, false, "", "", "");
                return;
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                useImagePickerData(MediaManagerObjectPointer, false, false, "", "", "");
                return;
            }
            catch (Exception exception)
            {
                useImagePickerData(MediaManagerObjectPointer, false, false, "", "", "");
            }
            break MISSING_BLOCK_LABEL_200;
        }
        j = cursor.getColumnIndexOrThrow("_data");
        k = cursor.getColumnIndexOrThrow("_display_name");
        cursor.moveToFirst();
        s = cursor.getString(j);
        s1 = cursor.getString(k);
        useImagePickerData(MediaManagerObjectPointer, true, true, s, "image", s1);
        return;
    }

    public void registerCallbacks()
    {
        doCallbackRegistration(true);
    }

    public void unregisterCallbacks()
    {
        doCallbackRegistration(false);
    }

    public native void useImagePickerData(long l, boolean flag, boolean flag1, String s, String s1, String s2);


}
