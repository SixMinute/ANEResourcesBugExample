// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.SystemClock;
import android.os.Vibrator;
import android.util.Base64;
import android.view.Display;
import com.adobe.air.TouchEventData;
import com.adobe.air.wand.message.Message;
import com.adobe.air.wand.message.MessageDataArray;
import com.adobe.air.wand.message.MessageDataObject;
import com.adobe.air.wand.message.MessageManager;
import com.adobe.air.wand.message.Notification;
import com.adobe.air.wand.message.Request;
import com.adobe.air.wand.message.Response;
import com.adobe.air.wand.motionsensor.Accelerometer;
import com.adobe.air.wand.view.GestureEventData;
import com.adobe.air.wand.view.TouchSensor;
import java.util.ArrayList;
import java.util.Date;

public class TaskManager
{
    public static interface Listener
    {

        public abstract void drawImage(Bitmap bitmap)
            throws Exception;

        public abstract void sendConnectionMessage(String s)
            throws Exception;

        public abstract void setScreenOrientation(com.adobe.air.wand.view.WandView.ScreenOrientation screenorientation)
            throws Exception;
    }

    public static final class MessageTitle extends Enum
    {

        private static final MessageTitle $VALUES[];
        public static final MessageTitle ACCELEROMETER_EVENT;
        public static final MessageTitle DRAW_IMAGE;
        public static final MessageTitle GESTURE_EVENT;
        public static final MessageTitle HARDWARE_SPECIFICATIONS;
        public static final MessageTitle TOUCH_EVENT;
        public static final MessageTitle VIBRATE;
        private final String mTitle;

        public static MessageTitle valueOf(String s)
        {
            return (MessageTitle)Enum.valueOf(com/adobe/air/wand/TaskManager$MessageTitle, s);
        }

        public static MessageTitle[] values()
        {
            return (MessageTitle[])$VALUES.clone();
        }

        public String toString()
        {
            return mTitle;
        }

        static 
        {
            ACCELEROMETER_EVENT = new MessageTitle("ACCELEROMETER_EVENT", 0, "ACCELEROMETER_EVENT");
            TOUCH_EVENT = new MessageTitle("TOUCH_EVENT", 1, "TOUCH_EVENT");
            GESTURE_EVENT = new MessageTitle("GESTURE_EVENT", 2, "GESTURE_EVENT");
            VIBRATE = new MessageTitle("VIBRATE", 3, "VIBRATE");
            DRAW_IMAGE = new MessageTitle("DRAW_IMAGE", 4, "DRAW_IMAGE");
            HARDWARE_SPECIFICATIONS = new MessageTitle("HARDWARE_SPECIFICATIONS", 5, "HARDWARE_SPECIFICATIONS");
            MessageTitle amessagetitle[] = new MessageTitle[6];
            amessagetitle[0] = ACCELEROMETER_EVENT;
            amessagetitle[1] = TOUCH_EVENT;
            amessagetitle[2] = GESTURE_EVENT;
            amessagetitle[3] = VIBRATE;
            amessagetitle[4] = DRAW_IMAGE;
            amessagetitle[5] = HARDWARE_SPECIFICATIONS;
            $VALUES = amessagetitle;
        }

        private MessageTitle(String s, int i, String s1)
        {
            super(s, i);
            mTitle = s1;
        }
    }


    protected static final String GESTURE_PHASE_ALL = "ALL";
    protected static final String GESTURE_PHASE_BEGIN = "BEGIN";
    protected static final String GESTURE_PHASE_END = "END";
    protected static final String GESTURE_PHASE_UPDATE = "UPDATE";
    protected static final String GESTURE_TYPE_PAN = "GESTURE_PAN";
    protected static final String GESTURE_TYPE_ROTATE = "GESTURE_ROTATE";
    protected static final String GESTURE_TYPE_SWIPE = "GESTURE_SWIPE";
    protected static final String GESTURE_TYPE_TWO_FINGER_TAP = "GESTURE_TWO_FINGER_TAP";
    protected static final String GESTURE_TYPE_ZOOM = "GESTURE_ZOOM";
    private static final String LOG_TAG = "TaskManager";
    protected static final int MOTION_SENSOR_MINIMUM_INTERVAL = 16;
    protected static final String NAME_NOTIFICATION_ACCELEROMETER = "accelerometer";
    protected static final String NAME_NOTIFICATION_ACCELEROMETER_DATA = "acc";
    protected static final String NAME_NOTIFICATION_DURATION = "duration";
    protected static final String NAME_NOTIFICATION_INTERVAL = "interval";
    protected static final String NAME_NOTIFICATION_IS_PRIMARY_TOUCH_POINT = "isPrimaryTouchPoint";
    protected static final String NAME_NOTIFICATION_IS_TRANSFORM = "isTransform";
    protected static final String NAME_NOTIFICATION_LOCAL_X = "localX";
    protected static final String NAME_NOTIFICATION_LOCAL_Y = "localY";
    protected static final String NAME_NOTIFICATION_OFFSET_X = "offsetX";
    protected static final String NAME_NOTIFICATION_OFFSET_Y = "offsetY";
    protected static final String NAME_NOTIFICATION_PHASE = "phase";
    protected static final String NAME_NOTIFICATION_PRESSURE = "pressure";
    protected static final String NAME_NOTIFICATION_ROTATION = "rotation";
    protected static final String NAME_NOTIFICATION_SCALE_X = "scaleX";
    protected static final String NAME_NOTIFICATION_SCALE_Y = "scaleY";
    protected static final String NAME_NOTIFICATION_SCREEN_DIMENSIONS = "screenDimensions";
    protected static final String NAME_NOTIFICATION_SIZE_X = "sizeX";
    protected static final String NAME_NOTIFICATION_SIZE_Y = "sizeY";
    protected static final String NAME_NOTIFICATION_START = "start";
    protected static final String NAME_NOTIFICATION_TIMESTAMP = "timestamp";
    protected static final String NAME_NOTIFICATION_TOUCH_POINT_ID = "touchPointID";
    protected static final String NAME_NOTIFICATION_TYPE = "type";
    protected static final String NAME_NOTIFICATION_VIBRATOR = "vibrator";
    protected static final String SCREEN_DIMENSIONS_HEIGHT = "height";
    protected static final String SCREEN_DIMENSIONS_WIDTH = "width";
    protected static final String TOUCH_TYPE_BEGIN = "TOUCH_BEGIN";
    protected static final String TOUCH_TYPE_END = "TOUCH_END";
    protected static final String TOUCH_TYPE_MOVE = "TOUCH_MOVE";
    private final Accelerometer mAccelerometer;
    private final Display mDisplay;
    private Listener mListener;
    private final MessageManager mMessageManager;
    private final TouchSensor mTouchSensor;
    private final Vibrator mVibrator;

    public TaskManager(MessageManager messagemanager, Display display, TouchSensor touchsensor, Accelerometer accelerometer, Vibrator vibrator)
        throws Exception
    {
        mListener = null;
        if (messagemanager == null)
        {
            throw new Exception("Invalid MessageManager");
        }
        mMessageManager = messagemanager;
        if (accelerometer == null)
        {
            throw new Exception("Invalid Accelerometer");
        }
        mAccelerometer = accelerometer;
        mVibrator = vibrator;
        if (display == null)
        {
            throw new Exception("Invalid Display");
        }
        mDisplay = display;
        if (touchsensor == null)
        {
            throw new Exception("Invalid TouchSensor");
        } else
        {
            mTouchSensor = touchsensor;
            mTouchSensor.setListener(new com.adobe.air.wand.view.TouchSensor.Listener() {

                final TaskManager this$0;

                public void onGestureEvent(GestureEventData gestureeventdata)
                {
                    sendGestureEventData(gestureeventdata);
                }

                public void onTouchEvent(TouchEventData toucheventdata)
                {
                    sendTouchEventData(toucheventdata);
                }

            
            {
                this$0 = TaskManager.this;
                super();
            }
            });
            mAccelerometer.setListener(new com.adobe.air.wand.motionsensor.MotionSensor.Listener() {

                final TaskManager this$0;

                public void onSensorChanged(float af[], long l)
                {
                    sendAccelerometerData(af, l);
                }

            
            {
                this$0 = TaskManager.this;
                super();
            }
            });
            return;
        }
    }

    private String[] getGesturePhases(int i)
    {
        ArrayList arraylist = new ArrayList();
        if ((i & 2) != 0)
        {
            arraylist.add("BEGIN");
        }
        if ((i & 1) != 0)
        {
            arraylist.add("UPDATE");
        }
        if ((i & 4) != 0)
        {
            arraylist.add("END");
        }
        if ((i & 8) != 0)
        {
            arraylist.add("ALL");
        }
        return (String[])arraylist.toArray(new String[0]);
    }

    private String[] getTouchTypes(int i)
    {
        ArrayList arraylist = new ArrayList();
        if ((i & 2) != 0)
        {
            arraylist.add("TOUCH_BEGIN");
        }
        if ((i & 1) != 0)
        {
            arraylist.add("TOUCH_MOVE");
        }
        if ((i & 4) != 0)
        {
            arraylist.add("TOUCH_END");
        }
        return (String[])arraylist.toArray(new String[0]);
    }

    private void handleDrawImageRequest(Request request)
    {
        byte abyte0[];
        abyte0 = Base64.decode(request.getData().getArguments().getString(0), 0);
        if (abyte0.length < 4 || abyte0[0] != -1 || abyte0[1] != -40 || abyte0[2] != -1)
        {
            throw new Exception("Unsupported image format");
        }
          goto _L1
        Exception exception;
        exception;
        String s = mMessageManager.createSerializedErrorResponse(request, exception.getMessage());
        if (mListener != null)
        {
            mListener.sendConnectionMessage(s);
        }
_L2:
        return;
_L1:
        Bitmap bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
        if (bitmap != null)
        {
            break MISSING_BLOCK_LABEL_122;
        }
        throw new Exception("Unable to decode the image");
        if (mListener != null)
        {
            mListener.drawImage(bitmap);
        }
        String s1 = mMessageManager.createSerializedSuccessResponse(request);
        if (mListener != null)
        {
            mListener.sendConnectionMessage(s1);
            return;
        }
          goto _L2
        Exception exception1;
        exception1;
    }

    private void handleHardwareSpecsRequest(Request request)
    {
        MessageDataObject messagedataobject = mMessageManager.createDataObject();
        if (mVibrator == null || android.os.Build.VERSION.SDK_INT < 14) goto _L2; else goto _L1
_L1:
        boolean flag = mVibrator.hasVibrator();
_L3:
        boolean flag1 = mAccelerometer.available();
        Display display = mDisplay;
        MessageDataObject messagedataobject1 = mMessageManager.createDataObject();
        int i = display.getWidth();
        int j = display.getHeight();
        messagedataobject1.put("width", i);
        messagedataobject1.put("height", j);
        messagedataobject.put("screenDimensions", messagedataobject1);
        messagedataobject.put("accelerometer", flag1);
        messagedataobject.put("vibrator", flag);
        String s1 = mMessageManager.createSerializedResponse(request, com.adobe.air.wand.message.Response.Status.SUCCESS, messagedataobject);
        if (mListener != null)
        {
            mListener.sendConnectionMessage(s1);
            return;
        }
        break MISSING_BLOCK_LABEL_223;
_L2:
        Vibrator vibrator = mVibrator;
        if (vibrator != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
          goto _L3
        Exception exception;
        exception;
        try
        {
            String s = mMessageManager.createSerializedErrorResponse(request, exception.getMessage());
            if (mListener != null)
            {
                mListener.sendConnectionMessage(s);
                return;
            }
        }
        catch (Exception exception1) { }
    }

    private void handleRemoteAccelerometerUpdateNotification(Notification notification)
    {
        int i;
        MessageDataObject messagedataobject = (MessageDataObject)notification.getData().getNotification();
        if (!messagedataobject.getBoolean("start"))
        {
            break MISSING_BLOCK_LABEL_63;
        }
        if (mAccelerometer.active())
        {
            break MISSING_BLOCK_LABEL_82;
        }
        i = messagedataobject.getInt("interval");
        if (i < 16)
        {
            i = 16;
        }
        try
        {
            mAccelerometer.start(i);
            return;
        }
        catch (Exception exception) { }
        break MISSING_BLOCK_LABEL_82;
        if (mAccelerometer.active())
        {
            mAccelerometer.stop();
            return;
        }
    }

    private void handleRemoteGestureNotification(Notification notification)
    {
        if (((MessageDataObject)notification.getData().getNotification()).getBoolean("start"))
        {
            if (!mTouchSensor.activeGestureListening())
            {
                mTouchSensor.startGestureEventListening();
                return;
            }
            break MISSING_BLOCK_LABEL_57;
        }
        try
        {
            if (mTouchSensor.activeGestureListening())
            {
                mTouchSensor.stopGestureEventListening();
                return;
            }
        }
        catch (Exception exception) { }
    }

    private void handleRemoteNotification(Notification notification)
    {
        String s = notification.getHeader().getTitle();
        if (s.equals(MessageTitle.VIBRATE.toString()))
        {
            handleRemoteVibrateNotification(notification);
        } else
        {
            if (s.equals(MessageTitle.ACCELEROMETER_EVENT.toString()))
            {
                handleRemoteAccelerometerUpdateNotification(notification);
                return;
            }
            if (s.equals(MessageTitle.TOUCH_EVENT.toString()))
            {
                handleRemoteTouchNotification(notification);
                return;
            }
            if (s.equals(MessageTitle.GESTURE_EVENT.toString()))
            {
                handleRemoteGestureNotification(notification);
                return;
            }
        }
    }

    private void handleRemoteRequest(Request request)
    {
        String s = request.getHeader().getTitle();
        if (s.equals(MessageTitle.DRAW_IMAGE.toString()))
        {
            handleDrawImageRequest(request);
        } else
        if (s.equals(MessageTitle.HARDWARE_SPECIFICATIONS.toString()))
        {
            handleHardwareSpecsRequest(request);
            return;
        }
    }

    private void handleRemoteResponse(Response response)
    {
        response.getHeader().getTitle();
    }

    private void handleRemoteTouchNotification(Notification notification)
    {
        if (((MessageDataObject)notification.getData().getNotification()).getBoolean("start"))
        {
            if (!mTouchSensor.activeTouchListening())
            {
                mTouchSensor.startTouchEventListening();
                return;
            }
            break MISSING_BLOCK_LABEL_57;
        }
        try
        {
            if (mTouchSensor.activeTouchListening())
            {
                mTouchSensor.stopTouchEventListening();
                return;
            }
        }
        catch (Exception exception) { }
    }

    private void handleRemoteVibrateNotification(Notification notification)
    {
        try
        {
            long l = ((MessageDataObject)notification.getData().getNotification()).getLong("duration");
            if (mVibrator != null)
            {
                mVibrator.vibrate(l);
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void sendAccelerometerData(float af[], long l)
    {
        try
        {
            MessageDataObject messagedataobject = mMessageManager.createDataObject();
            long l1 = System.currentTimeMillis() - SystemClock.uptimeMillis();
            MessageDataArray messagedataarray = mMessageManager.createDataArray();
            messagedataarray.put(0, af[0]);
            messagedataarray.put(1, af[1]);
            messagedataarray.put(2, af[2]);
            messagedataarray.put(3, l1 + l / 0xf4240L);
            messagedataobject.put("acc", messagedataarray);
            String s = mMessageManager.createSerializedNotification(MessageTitle.ACCELEROMETER_EVENT.toString(), messagedataobject);
            if (mListener != null)
            {
                mListener.sendConnectionMessage(s);
            }
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    private void sendGestureEventData(GestureEventData gestureeventdata)
    {
        String as[];
        int i;
        as = getGesturePhases(gestureeventdata.mPhase);
        i = 0;
_L10:
        if (i >= as.length) goto _L2; else goto _L1
_L1:
        MessageDataObject messagedataobject;
        messagedataobject = mMessageManager.createDataObject();
        messagedataobject.put("phase", as[i]);
        gestureeventdata.mType;
        JVM INSTR tableswitch 0 4: default 76
    //                   0 313
    //                   1 253
    //                   2 268
    //                   3 298
    //                   4 283;
           goto _L3 _L4 _L5 _L6 _L7 _L8
_L3:
        messagedataobject.put("isTransform", gestureeventdata.mIsTransform);
        messagedataobject.put("localX", gestureeventdata.mXCoord);
        messagedataobject.put("localY", gestureeventdata.mYCoord);
        messagedataobject.put("scaleX", gestureeventdata.mScaleX);
        messagedataobject.put("scaleY", gestureeventdata.mScaleY);
        messagedataobject.put("rotation", gestureeventdata.mRotation);
        messagedataobject.put("offsetX", gestureeventdata.mOffsetX);
        messagedataobject.put("offsetY", gestureeventdata.mOffsetY);
        messagedataobject.put("timestamp", (new Date()).getTime());
        String s = mMessageManager.createSerializedNotification(MessageTitle.GESTURE_EVENT.toString(), messagedataobject);
        if (mListener != null)
        {
            mListener.sendConnectionMessage(s);
        }
        break MISSING_BLOCK_LABEL_329;
_L5:
        try
        {
            messagedataobject.put("type", "GESTURE_PAN");
            continue; /* Loop/switch isn't completed */
        }
        catch (Exception exception) { }
        break MISSING_BLOCK_LABEL_329;
_L6:
        messagedataobject.put("type", "GESTURE_ROTATE");
        continue; /* Loop/switch isn't completed */
_L8:
        messagedataobject.put("type", "GESTURE_SWIPE");
        continue; /* Loop/switch isn't completed */
_L7:
        messagedataobject.put("type", "GESTURE_TWO_FINGER_TAP");
        continue; /* Loop/switch isn't completed */
_L4:
        messagedataobject.put("type", "GESTURE_ZOOM");
        if (true) goto _L3; else goto _L2
_L2:
        return;
        i++;
        if (true) goto _L10; else goto _L9
_L9:
    }

    private void sendTouchEventData(TouchEventData toucheventdata)
    {
        String as[] = getTouchTypes(toucheventdata.mTouchEventType);
        int i = 0;
        while (i < as.length) 
        {
            try
            {
                MessageDataObject messagedataobject = mMessageManager.createDataObject();
                messagedataobject.put("type", as[i]);
                messagedataobject.put("isPrimaryTouchPoint", toucheventdata.mIsPrimaryPoint);
                messagedataobject.put("localX", toucheventdata.mXCoord);
                messagedataobject.put("localY", toucheventdata.mYCoord);
                messagedataobject.put("pressure", toucheventdata.mPressure);
                messagedataobject.put("sizeX", toucheventdata.mContactX);
                messagedataobject.put("sizeY", toucheventdata.mContactY);
                messagedataobject.put("touchPointID", toucheventdata.mPointerID);
                messagedataobject.put("timestamp", (new Date()).getTime());
                String s = mMessageManager.createSerializedNotification(MessageTitle.TOUCH_EVENT.toString(), messagedataobject);
                if (mListener != null)
                {
                    mListener.sendConnectionMessage(s);
                }
            }
            catch (Exception exception) { }
            i++;
        }
    }

    public void handleRemoteMessage(String s)
    {
        Message message = mMessageManager.deserializeWandMessage(s);
        static class _cls3
        {

            static final int $SwitchMap$com$adobe$air$wand$message$Message$Type[];

            static 
            {
                $SwitchMap$com$adobe$air$wand$message$Message$Type = new int[com.adobe.air.wand.message.Message.Type.values().length];
                try
                {
                    $SwitchMap$com$adobe$air$wand$message$Message$Type[com.adobe.air.wand.message.Message.Type.REQUEST.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$adobe$air$wand$message$Message$Type[com.adobe.air.wand.message.Message.Type.RESPONSE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$adobe$air$wand$message$Message$Type[com.adobe.air.wand.message.Message.Type.NOTIFICATION.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls3..SwitchMap.com.adobe.air.wand.message.Message.Type[message.getHeader().getType().ordinal()];
        JVM INSTR tableswitch 1 3: default 74
    //                   1 48
    //                   2 57
    //                   3 66;
           goto _L1 _L2 _L3 _L4
_L2:
        handleRemoteRequest((Request)message);
        return;
_L3:
        try
        {
            handleRemoteResponse((Response)message);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
_L4:
        handleRemoteNotification((Notification)message);
_L1:
    }

    public void registerListener(Listener listener)
        throws Exception
    {
        if (listener == null)
        {
            throw new Exception("Invalid listener");
        }
        if (mListener != null)
        {
            throw new Exception("A listener is already registered");
        } else
        {
            mListener = listener;
            return;
        }
    }

    void terminateRunningTasks()
    {
        if (mAccelerometer.active())
        {
            mAccelerometer.stop();
        }
        if (mTouchSensor.activeTouchListening())
        {
            mTouchSensor.stopTouchEventListening();
        }
        if (mTouchSensor.activeGestureListening())
        {
            mTouchSensor.stopGestureEventListening();
        }
        if (mVibrator != null)
        {
            mVibrator.cancel();
        }
    }

    public void unregisterListener()
    {
        mListener = null;
    }



}
