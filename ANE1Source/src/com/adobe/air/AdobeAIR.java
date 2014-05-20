// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.webkit.WebBackForwardList;
import android.webkit.WebHistoryItem;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.adobe.air.wand.WandActivity;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.io.File;

// Referenced classes of package com.adobe.air:
//            AndroidGcmResultReceiver, AndroidGcmRegistrationService, ShakeListener

public class AdobeAIR extends Activity
    implements AndroidGcmResultReceiver.Receiver
{

    private static final String ADOBE_GAME_SHOWCASE = "gaming.adobe.com";
    public static final String ADOBE_HOST = "www.adobe.com";
    private static final String ANALYTICS_URL = "https://www.adobe.com/gamepreview/?game=notification/notificationClicked.html_";
    public static final String CLOUDFRONT_HOST = "dh8vjmvwgc27o.cloudfront.net";
    public static final String DYNAMIC_URL_CLOUDFRONT = "https://www.adobe.com/airgames2/";
    public static final String GAMESPACE_HOST = "gamespace.adobe.com";
    private static final String GOOGLE_PLAY_HOST = "play.google.com";
    private static final String MSG_ID = "msgId";
    private static final int PLAY_SERVICES_RESOLUTION_REQUEST = 9000;
    private static final String PROPERTY_INITIAL_LAUNCH = "initialLaunch";
    public static long RATE_LIMIT = 0L;
    public static final String RESULT_RECEIVER = "resultReceiver";
    private static final String STATIC_URL = "file:///android_res/raw/startga.html";
    private static final String TAG = "Adobe AIR";
    public String DYNAMIC_URL;
    private WebView mAuxWebView;
    private Context mCtx;
    private boolean mFirstLoad;
    private WebView mHiddenWebView;
    private boolean mOffline;
    private AndroidGcmResultReceiver mReceiver;
    private ShakeListener mShakeListener;
    private WebView mWebView;

    public AdobeAIR()
    {
        mWebView = null;
        mShakeListener = null;
        mAuxWebView = null;
        mHiddenWebView = null;
        mOffline = false;
        mFirstLoad = true;
        DYNAMIC_URL = "https://www.adobe.com/airgames/";
        mCtx = null;
        mReceiver = null;
    }

    private void createWebView()
    {
        WebViewClient webviewclient = new WebViewClient() {

            final AdobeAIR this$0;

            public void onPageFinished(WebView webview, String s)
            {
                if (mFirstLoad && !s.equals(DYNAMIC_URL))
                {
                    mFirstLoad = false;
                    setRequestedOrientation(2);
                    setContentView(mWebView);
                }
            }

            public void onReceivedError(WebView webview, int i, String s, String s1)
            {
                mOffline = true;
                mWebView.loadUrl("file:///android_res/raw/startga.html");
            }

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                if (s == null) goto _L2; else goto _L1
_L1:
                Uri uri = Uri.parse(s);
                if (uri == null || uri.getScheme() == null) goto _L2; else goto _L3
_L3:
                if (uri.getHost() == null || !uri.getScheme().equalsIgnoreCase("http") && !uri.getScheme().equalsIgnoreCase("https")) goto _L5; else goto _L4
_L4:
                if (!s.equals(DYNAMIC_URL) && !uri.getHost().equalsIgnoreCase("gamespace.adobe.com") && !uri.getHost().equalsIgnoreCase("dh8vjmvwgc27o.cloudfront.net")) goto _L7; else goto _L6
_L7:
                boolean flag;
                if (!uri.getHost().equalsIgnoreCase("www.adobe.com") && !uri.getHost().equalsIgnoreCase("play.google.com") && !uri.getHost().equalsIgnoreCase("gaming.adobe.com"))
                {
                    flag = false;
                } else
                {
                    flag = true;
                }
_L11:
                if (!flag) goto _L9; else goto _L8
_L8:
                try
                {
                    Intent intent = new Intent("android.intent.action.VIEW", uri);
                    startActivity(intent);
                }
                catch (Exception exception) { }
                  goto _L2
_L9:
                mAuxWebView.loadUrl(s);
                  goto _L2
_L6:
                return false;
_L2:
                return true;
_L5:
                flag = true;
                if (true) goto _L11; else goto _L10
_L10:
            }

            
            {
                this$0 = AdobeAIR.this;
                super();
            }
        };
        mWebView = new WebView(this);
        mWebView.setScrollBarStyle(0);
        mWebView.setWebViewClient(webviewclient);
        mWebView.getSettings().setJavaScriptEnabled(true);
        mWebView.getSettings().setBuiltInZoomControls(true);
        mWebView.getSettings().setDomStorageEnabled(true);
        mWebView.getSettings().setDatabaseEnabled(true);
        mWebView.getSettings().setDatabasePath((new StringBuilder()).append(getApplicationContext().getFilesDir().getPath()).append("/databases/").toString());
        mAuxWebView = new WebView(this);
        mAuxWebView.getSettings().setJavaScriptEnabled(true);
        mAuxWebView.getSettings().setDomStorageEnabled(true);
        mAuxWebView.getSettings().setDatabaseEnabled(true);
        mAuxWebView.getSettings().setDatabasePath((new StringBuilder()).append(getApplicationContext().getFilesDir().getPath()).append("/databases/").toString());
        mHiddenWebView = new WebView(this);
        mHiddenWebView.getSettings().setJavaScriptEnabled(true);
        mHiddenWebView.getSettings().setDomStorageEnabled(true);
        mHiddenWebView.getSettings().setDatabaseEnabled(true);
        mHiddenWebView.getSettings().setDatabasePath((new StringBuilder()).append(getApplicationContext().getFilesDir().getPath()).append("/databases/").toString());
        mHiddenWebView.setWebViewClient(new WebViewClient() {

            final AdobeAIR this$0;

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                return false;
            }

            
            {
                this$0 = AdobeAIR.this;
                super();
            }
        });
    }

    private boolean isInitialLaunch()
    {
        return getSharedPreferences(com/adobe/air/AdobeAIR.getSimpleName(), 0).getBoolean("initialLaunch", true);
    }

    private void registerForNotifications()
    {
        mReceiver = new AndroidGcmResultReceiver(new Handler());
        mReceiver.setReceiver(this);
        Intent intent = new Intent(mCtx, com/adobe/air/AndroidGcmRegistrationService);
        intent.putExtra("resultReceiver", mReceiver);
        mCtx.startService(intent);
    }

    private void updateSharedPrefForInitialLaunch()
    {
        android.content.SharedPreferences.Editor editor = getSharedPreferences(com/adobe/air/AdobeAIR.getSimpleName(), 0).edit();
        editor.putBoolean("initialLaunch", false);
        editor.commit();
    }

    public void onBackPressed()
    {
        if (android.os.Build.VERSION.SDK_INT < 12 || !mWebView.canGoBack()) goto _L2; else goto _L1
_L1:
        WebBackForwardList webbackforwardlist;
        int i;
        webbackforwardlist = mWebView.copyBackForwardList();
        i = webbackforwardlist.getCurrentIndex();
        if (i <= 0) goto _L4; else goto _L3
_L3:
        String s = webbackforwardlist.getItemAtIndex(i - 1).getUrl();
        if (!DYNAMIC_URL.equals(s)) goto _L4; else goto _L5
_L5:
        boolean flag = false;
_L7:
        if (flag)
        {
            mWebView.goBack();
            return;
        }
_L2:
        super.onBackPressed();
        return;
_L4:
        flag = true;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        mCtx = this;
        if (isInitialLaunch())
        {
            DYNAMIC_URL = "https://www.adobe.com/airgames2/";
            updateSharedPrefForInitialLaunch();
        }
        createWebView();
        mWebView.loadUrl(DYNAMIC_URL);
        onNewIntent(getIntent());
        registerForNotifications();
        mShakeListener = new ShakeListener(this);
        mShakeListener.registerListener(new ShakeListener.Listener() {

            final AdobeAIR this$0;

            public void onShake()
            {
                Intent intent = new Intent(AdobeAIR.this, com/adobe/air/wand/WandActivity);
                startActivity(intent);
            }

            
            {
                this$0 = AdobeAIR.this;
                super();
            }
        });
    }

    public void onNewIntent(Intent intent)
    {
        super.onNewIntent(intent);
        Bundle bundle = intent.getExtras();
        if (bundle != null && bundle.containsKey("gameUrl"))
        {
            String s = bundle.getString("gameUrl");
            if (mWebView == null)
            {
                createWebView();
            }
            mWebView.loadUrl(s);
            if (bundle.containsKey("msgId"))
            {
                mHiddenWebView.loadUrl((new StringBuilder()).append("https://www.adobe.com/gamepreview/?game=notification/notificationClicked.html_").append(bundle.getString("msgId")).toString());
            }
        }
    }

    public void onPause()
    {
        super.onPause();
        mShakeListener.pause();
    }

    public void onReceiveResult(int i, Bundle bundle)
    {
        GooglePlayServicesUtil.getErrorDialog(i, (Activity)mCtx, 9000).show();
    }

    public void onResume()
    {
        super.onResume();
        if (mOffline)
        {
            mOffline = false;
            mWebView.loadUrl(DYNAMIC_URL);
        }
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        if (flag)
        {
            mShakeListener.resume();
        }
    }

    static 
    {
        RATE_LIMIT = 0x5265c00L;
    }




/*
    static boolean access$102(AdobeAIR adobeair, boolean flag)
    {
        adobeair.mFirstLoad = flag;
        return flag;
    }

*/



/*
    static boolean access$302(AdobeAIR adobeair, boolean flag)
    {
        adobeair.mOffline = flag;
        return flag;
    }

*/
}
