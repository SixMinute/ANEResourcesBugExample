// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.IntentService;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.content.SharedPreferences;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

// Referenced classes of package com.adobe.air:
//            AdobeAIR, AndroidGcmBroadcastReceiver

public class AndroidGcmIntentService extends IntentService
{

    private static final String CLOUDFRONT = "cloudfront";
    private static final String GAMESPACE = "gamespace";
    private static final String GAME_URL = "gameUrl";
    private static final String MSG_ID = "msgId";
    private static final String PROPERTY_NOTIFICATION_TIMESTAMP = "notficationTimestamp";
    private static final String TAG = "AndroidGcmIntentService";
    private static int sUniqueId = 0;
    private String mGameDesc;
    private String mGameIconUrl;
    private String mGameTitle;
    private String mGameUrl;
    private String mGameUrlPrefix;
    private String mHost;
    private String mMsgId;

    public AndroidGcmIntentService()
    {
        super("AndroidGcmIntentService");
        mGameTitle = null;
        mGameDesc = null;
        mGameIconUrl = null;
        mGameUrl = null;
        mGameUrlPrefix = null;
        mMsgId = null;
        mHost = null;
    }

    private Bitmap getBitmapFromURL(String s)
    {
        Bitmap bitmap;
        try
        {
            HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL(s)).openConnection();
            httpurlconnection.setDoInput(true);
            httpurlconnection.connect();
            bitmap = BitmapFactory.decodeStream(httpurlconnection.getInputStream());
        }
        catch (Exception exception)
        {
            return null;
        }
        return bitmap;
    }

    private void handleNotification(String s)
    {
        if (isNotificationValid()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        JSONObject jsonobject = new JSONObject(s);
        mGameTitle = jsonobject.getString("gameTitle");
        mGameDesc = jsonobject.getString("gameDesc");
        mGameIconUrl = jsonobject.getString("gameIconUrl");
        mGameUrl = jsonobject.getString("gameUrl");
        mGameUrlPrefix = jsonobject.getString("gameUrlPrefix");
        mMsgId = jsonobject.getString("msgId");
        if (mGameTitle == null || mGameDesc == null || mGameIconUrl == null || mGameUrl == null || mGameUrlPrefix == null || mMsgId == null) goto _L1; else goto _L3
_L3:
        if (!mGameUrlPrefix.equals("gamespace")) goto _L5; else goto _L4
_L4:
        mHost = "http://gamespace.adobe.com";
_L7:
        mGameUrl = (new StringBuilder()).append(mHost).append("/").append(mGameUrl).toString();
        mGameIconUrl = (new StringBuilder()).append(mHost).append("/").append(mGameIconUrl).toString();
        sendNotification();
        return;
_L5:
        if (mGameUrlPrefix.equals("cloudfront"))
        {
            mHost = "https://dh8vjmvwgc27o.cloudfront.net";
        }
        if (true) goto _L7; else goto _L6
_L6:
        Exception exception;
        exception;
    }

    private boolean isNotificationValid()
    {
        SharedPreferences sharedpreferences = getSharedPreferences(com/adobe/air/AdobeAIR.getSimpleName(), 0);
        long l = sharedpreferences.getLong("notficationTimestamp", 0x8000000000000000L);
        long l1 = System.currentTimeMillis();
        if (l == 0x8000000000000000L || l1 - l > AdobeAIR.RATE_LIMIT)
        {
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putLong("notficationTimestamp", l1);
            editor.commit();
            return true;
        } else
        {
            return false;
        }
    }

    private void sendNotification()
    {
        Intent intent = new Intent(this, com/adobe/air/AdobeAIR);
        intent.putExtra("gameUrl", mGameUrl);
        intent.putExtra("msgId", mMsgId);
        intent.setFlags(0x24000000);
        int i = 1 + sUniqueId;
        sUniqueId = i;
        PendingIntent pendingintent = PendingIntent.getActivity(this, i, intent, 0x40000000);
        android.support.v4.app.NotificationCompat.Builder builder = new android.support.v4.app.NotificationCompat.Builder(this);
        builder.setSmallIcon(0x7f020057);
        builder.setContentTitle(mGameTitle);
        builder.setContentText(mGameDesc);
        builder.setContentIntent(pendingintent);
        builder.setAutoCancel(true);
        Bitmap bitmap = getBitmapFromURL(mGameIconUrl);
        if (bitmap != null)
        {
            builder.setLargeIcon(bitmap);
        }
        ((NotificationManager)getSystemService("notification")).notify(sUniqueId, builder.build());
    }

    protected void onHandleIntent(Intent intent)
    {
        String s = "";
        Bundle bundle = intent.getExtras();
        if (bundle != null && bundle.containsKey("message"))
        {
            s = bundle.getString("message");
        }
        if (!s.isEmpty() && "gcm".equals(GoogleCloudMessaging.getInstance(this).getMessageType(intent)))
        {
            handleNotification(s);
        }
        AndroidGcmBroadcastReceiver.completeWakefulIntent(intent);
    }

}
