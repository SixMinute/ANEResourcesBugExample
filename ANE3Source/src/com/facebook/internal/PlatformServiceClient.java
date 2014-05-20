// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;

// Referenced classes of package com.facebook.internal:
//            NativeProtocol

public abstract class PlatformServiceClient
    implements ServiceConnection
{
    public static interface CompletedListener
    {

        public abstract void completed(Bundle bundle);
    }


    private final String applicationId;
    private final Context context;
    private final Handler handler = new Handler() {

        final PlatformServiceClient this$0;

        public void handleMessage(Message message)
        {
            PlatformServiceClient.this.handleMessage(message);
        }

            
            {
                this$0 = PlatformServiceClient.this;
                super();
            }
    };
    private CompletedListener listener;
    private final int protocolVersion;
    private int replyMessage;
    private int requestMessage;
    private boolean running;
    private Messenger sender;

    public PlatformServiceClient(Context context1, int i, int j, int k, String s)
    {
        Context context2 = context1.getApplicationContext();
        Context context3;
        if (context2 != null)
        {
            context3 = context2;
        } else
        {
            context3 = context1;
        }
        context = context3;
        requestMessage = i;
        replyMessage = j;
        applicationId = s;
        protocolVersion = k;
    }

    private void callback(Bundle bundle)
    {
        if (running)
        {
            running = false;
            CompletedListener completedlistener = listener;
            if (completedlistener != null)
            {
                completedlistener.completed(bundle);
                return;
            }
        }
    }

    private void sendMessage()
    {
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.platform.extra.APPLICATION_ID", applicationId);
        populateRequestBundle(bundle);
        Message message = Message.obtain(null, requestMessage);
        message.arg1 = protocolVersion;
        message.setData(bundle);
        message.replyTo = new Messenger(handler);
        try
        {
            sender.send(message);
            return;
        }
        catch (RemoteException remoteexception)
        {
            callback(null);
        }
    }

    public void cancel()
    {
        running = false;
    }

    protected Context getContext()
    {
        return context;
    }

    protected void handleMessage(Message message)
    {
        if (message.what == replyMessage)
        {
            Bundle bundle = message.getData();
            if (bundle.getString("com.facebook.platform.status.ERROR_TYPE") != null)
            {
                callback(null);
            } else
            {
                callback(bundle);
            }
            context.unbindService(this);
        }
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        sender = new Messenger(ibinder);
        sendMessage();
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        sender = null;
        context.unbindService(this);
        callback(null);
    }

    protected abstract void populateRequestBundle(Bundle bundle);

    public void setCompletedListener(CompletedListener completedlistener)
    {
        listener = completedlistener;
    }

    public boolean start()
    {
        if (running)
        {
            return false;
        }
        if (NativeProtocol.getLatestAvailableProtocolVersionForService(context, protocolVersion) == -1)
        {
            return false;
        }
        android.content.Intent intent = NativeProtocol.createPlatformServiceIntent(context);
        if (intent == null)
        {
            return false;
        } else
        {
            running = true;
            context.bindService(intent, this, 1);
            return true;
        }
    }
}
