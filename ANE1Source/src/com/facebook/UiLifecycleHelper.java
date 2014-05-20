// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.widget.FacebookDialog;
import java.util.UUID;

// Referenced classes of package com.facebook:
//            Settings, Session, AppEventsLogger, SessionState

public class UiLifecycleHelper
{
    private class ActiveSessionBroadcastReceiver extends BroadcastReceiver
    {

        final UiLifecycleHelper this$0;

        public void onReceive(Context context, Intent intent)
        {
            if ("com.facebook.sdk.ACTIVE_SESSION_SET".equals(intent.getAction()))
            {
                Session session1 = Session.getActiveSession();
                if (session1 != null && callback != null)
                {
                    session1.addCallback(callback);
                }
            } else
            if ("com.facebook.sdk.ACTIVE_SESSION_UNSET".equals(intent.getAction()))
            {
                Session session = Session.getActiveSession();
                if (session != null && callback != null)
                {
                    session.removeCallback(callback);
                    return;
                }
            }
        }

        private ActiveSessionBroadcastReceiver()
        {
            this$0 = UiLifecycleHelper.this;
            super();
        }

        ActiveSessionBroadcastReceiver(ActiveSessionBroadcastReceiver activesessionbroadcastreceiver)
        {
            this();
        }
    }


    private static final String ACTIVITY_NULL_MESSAGE = "activity cannot be null";
    private static final String DIALOG_CALL_BUNDLE_SAVE_KEY = "com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey";
    private final Activity activity;
    private AppEventsLogger appEventsLogger;
    private final LocalBroadcastManager broadcastManager;
    private final Session.StatusCallback callback;
    private com.facebook.widget.FacebookDialog.PendingCall pendingFacebookDialogCall;
    private final BroadcastReceiver receiver;

    public UiLifecycleHelper(Activity activity1, Session.StatusCallback statuscallback)
    {
        if (activity1 == null)
        {
            throw new IllegalArgumentException("activity cannot be null");
        } else
        {
            activity = activity1;
            callback = statuscallback;
            receiver = new ActiveSessionBroadcastReceiver(null);
            broadcastManager = LocalBroadcastManager.getInstance(activity1);
            Settings.loadDefaultsFromMetadataIfNeeded(activity1);
            return;
        }
    }

    private void cancelPendingAppCall(com.facebook.widget.FacebookDialog.Callback callback1)
    {
        if (callback1 != null)
        {
            Intent intent = pendingFacebookDialogCall.getRequestIntent();
            Intent intent1 = new Intent();
            intent1.putExtra("com.facebook.platform.protocol.CALL_ID", intent.getStringExtra("com.facebook.platform.protocol.CALL_ID"));
            intent1.putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", intent.getStringExtra("com.facebook.platform.protocol.PROTOCOL_ACTION"));
            intent1.putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", intent.getIntExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", 0));
            intent1.putExtra("com.facebook.platform.status.ERROR_TYPE", "UnknownError");
            FacebookDialog.handleActivityResult(activity, pendingFacebookDialogCall, pendingFacebookDialogCall.getRequestCode(), intent1, callback1);
        }
        pendingFacebookDialogCall = null;
    }

    private boolean handleFacebookDialogActivityResult(int i, int j, Intent intent, com.facebook.widget.FacebookDialog.Callback callback1)
    {
        String s;
        UUID uuid;
        if (pendingFacebookDialogCall == null || pendingFacebookDialogCall.getRequestCode() != i)
        {
            return false;
        }
        if (intent == null)
        {
            cancelPendingAppCall(callback1);
            return true;
        }
        s = intent.getStringExtra("com.facebook.platform.protocol.CALL_ID");
        uuid = null;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_59;
        }
        UUID uuid1 = UUID.fromString(s);
        uuid = uuid1;
_L2:
        if (uuid != null && pendingFacebookDialogCall.getCallId().equals(uuid))
        {
            FacebookDialog.handleActivityResult(activity, pendingFacebookDialogCall, i, intent, callback1);
        } else
        {
            cancelPendingAppCall(callback1);
        }
        pendingFacebookDialogCall = null;
        return true;
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        uuid = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public AppEventsLogger getAppEventsLogger()
    {
        Session session = Session.getActiveSession();
        if (session == null)
        {
            return null;
        }
        if (appEventsLogger == null || !appEventsLogger.isValidForSession(session))
        {
            if (appEventsLogger != null)
            {
                AppEventsLogger.onContextStop();
            }
            appEventsLogger = AppEventsLogger.newLogger(activity, session);
        }
        return appEventsLogger;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        onActivityResult(i, j, intent, null);
    }

    public void onActivityResult(int i, int j, Intent intent, com.facebook.widget.FacebookDialog.Callback callback1)
    {
        Session session = Session.getActiveSession();
        if (session != null)
        {
            session.onActivityResult(activity, i, j, intent);
        }
        handleFacebookDialogActivityResult(i, j, intent, callback1);
    }

    public void onCreate(Bundle bundle)
    {
        Session session = Session.getActiveSession();
        if (session == null)
        {
            if (bundle != null)
            {
                session = Session.restoreSession(activity, null, callback, bundle);
            }
            if (session == null)
            {
                session = new Session(activity);
            }
            Session.setActiveSession(session);
        }
        if (bundle != null)
        {
            pendingFacebookDialogCall = (com.facebook.widget.FacebookDialog.PendingCall)bundle.getParcelable("com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey");
        }
    }

    public void onDestroy()
    {
    }

    public void onPause()
    {
        broadcastManager.unregisterReceiver(receiver);
        if (callback != null)
        {
            Session session = Session.getActiveSession();
            if (session != null)
            {
                session.removeCallback(callback);
            }
        }
    }

    public void onResume()
    {
        Session session = Session.getActiveSession();
        if (session != null)
        {
            if (callback != null)
            {
                session.addCallback(callback);
            }
            if (SessionState.CREATED_TOKEN_LOADED.equals(session.getState()))
            {
                session.openForRead(null);
            }
        }
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("com.facebook.sdk.ACTIVE_SESSION_SET");
        intentfilter.addAction("com.facebook.sdk.ACTIVE_SESSION_UNSET");
        broadcastManager.registerReceiver(receiver, intentfilter);
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        Session.saveSession(Session.getActiveSession(), bundle);
        bundle.putParcelable("com.facebook.UiLifecycleHelper.pendingFacebookDialogCallKey", pendingFacebookDialogCall);
    }

    public void onStop()
    {
        AppEventsLogger.onContextStop();
    }

    public void trackPendingDialogCall(com.facebook.widget.FacebookDialog.PendingCall pendingcall)
    {
        if (pendingFacebookDialogCall != null)
        {
            Log.i("Facebook", "Tracking new app call while one is still pending; canceling pending call.");
            cancelPendingAppCall(null);
        }
        pendingFacebookDialogCall = pendingcall;
    }

}
