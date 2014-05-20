// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Vibrator;
import android.view.Display;
import android.view.WindowManager;
import com.adobe.air.wand.connection.Connection;
import com.adobe.air.wand.message.MessageManager;
import com.adobe.air.wand.message.json.JSONMessageManager;
import com.adobe.air.wand.motionsensor.Accelerometer;
import com.adobe.air.wand.view.TouchSensor;
import com.adobe.air.wand.view.WandView;

// Referenced classes of package com.adobe.air.wand:
//            ConnectionChangeReceiver, TaskManager

public class WandManager
{
    private class ConnectionListener
        implements com.adobe.air.wand.connection.Connection.Listener
    {

        final WandManager this$0;

        public void onConnectError()
        {
        }

        public void onConnectSuccess()
        {
        }

        public void onConnectionClose()
        {
            try
            {
                loadDefaultView();
                return;
            }
            catch (Throwable throwable)
            {
                return;
            }
        }

        public void onConnectionOpen(String s)
        {
            try
            {
                mWandView.setScreenOrientation(com.adobe.air.wand.view.WandView.ScreenOrientation.LANDSCAPE);
                mWandView.loadCompanionView();
                return;
            }
            catch (Throwable throwable)
            {
                return;
            }
        }

        public void onDisconnectError()
        {
        }

        public void onDisconnectSuccess()
        {
        }

        public void onReceive(String s)
        {
            mTaskManager.handleRemoteMessage(s);
        }

        public void updateConnectionToken(String s)
        {
            mWandView.updateConnectionToken(s);
        }

        private ConnectionListener()
        {
            this$0 = WandManager.this;
            super();
        }

    }

    private class TaskListener
        implements TaskManager.Listener
    {

        final WandManager this$0;

        public void drawImage(Bitmap bitmap)
            throws Exception
        {
            mWandView.drawImage(bitmap);
        }

        public void sendConnectionMessage(String s)
            throws Exception
        {
            mWandConnection.send(s);
        }

        public void setScreenOrientation(com.adobe.air.wand.view.WandView.ScreenOrientation screenorientation)
            throws Exception
        {
            mWandView.setScreenOrientation(screenorientation);
        }

        private TaskListener()
        {
            this$0 = WandManager.this;
            super();
        }

    }

    private class ViewListener
        implements com.adobe.air.wand.view.WandView.Listener
    {

        final WandManager this$0;

        public String getConnectionToken()
        {
            String s;
            try
            {
                s = mWandConnection.getConnectionToken();
            }
            catch (Exception exception)
            {
                return "";
            }
            return s;
        }

        private ViewListener()
        {
            this$0 = WandManager.this;
            super();
        }

    }


    private static final String LOG_TAG = "WandManager";
    private Accelerometer mAccelerometer;
    private Display mDisplay;
    private boolean mHasFocus;
    private boolean mIsDisposed;
    private MessageManager mMessageManager;
    private TaskManager mTaskManager;
    private TouchSensor mTouchSensor;
    private Vibrator mVibrator;
    private Connection mWandConnection;
    private WandView mWandView;

    public WandManager(Activity activity, WandView wandview, Connection connection)
        throws Exception
    {
        mWandConnection = null;
        mWandView = null;
        mTaskManager = null;
        mMessageManager = null;
        mAccelerometer = null;
        mVibrator = null;
        mDisplay = null;
        mTouchSensor = null;
        mIsDisposed = false;
        mHasFocus = false;
        ConnectionChangeReceiver.resisterWandConnection(connection);
        mWandConnection = connection;
        mWandConnection.registerListener(new ConnectionListener());
        mWandView = wandview;
        mWandView.registerListener(new ViewListener());
        mMessageManager = new JSONMessageManager();
        mTouchSensor = wandview.getTouchSensor();
        mAccelerometer = new Accelerometer(activity);
        if (activity == null)
        {
            throw new Exception("Cannot find application context while initializing.");
        } else
        {
            mVibrator = (Vibrator)activity.getSystemService("vibrator");
            mDisplay = ((WindowManager)activity.getSystemService("window")).getDefaultDisplay();
            mTaskManager = new TaskManager(mMessageManager, mDisplay, mTouchSensor, mAccelerometer, mVibrator);
            mTaskManager.registerListener(new TaskListener());
            return;
        }
    }

    private void loadDefaultView()
        throws Exception
    {
        try
        {
            mAccelerometer.stop();
            mTaskManager.terminateRunningTasks();
            setDefaultOrientation();
            mWandView.loadDefaultView();
            return;
        }
        catch (Exception exception)
        {
            throw exception;
        }
    }

    private void setDefaultOrientation()
        throws Exception
    {
        mWandView.setScreenOrientation(com.adobe.air.wand.view.WandView.ScreenOrientation.INHERIT);
    }

    public void dispose()
    {
        mIsDisposed = true;
        mTaskManager.terminateRunningTasks();
        mTaskManager.unregisterListener();
        mTaskManager = null;
        mWandView.unregisterListener();
        mWandView = null;
        mAccelerometer.dispose();
        mAccelerometer = null;
        mDisplay = null;
        mMessageManager = null;
        mTouchSensor = null;
        mVibrator = null;
        mWandConnection.unregisterListener();
        mWandConnection = null;
        ConnectionChangeReceiver.unresisterWandConnection();
    }

    public void focus(boolean flag)
        throws Exception
    {
        if (mIsDisposed)
        {
            throw new Exception("WandManager has been disposed");
        }
        if (flag)
        {
            setDefaultOrientation();
            mWandConnection.connect();
        } else
        {
            loadDefaultView();
            mWandConnection.disconnect();
        }
        mHasFocus = flag;
    }

    public boolean hasFocus()
    {
        return mHasFocus;
    }




}
