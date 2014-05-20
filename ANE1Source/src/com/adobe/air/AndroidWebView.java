// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Picture;
import android.graphics.Rect;
import android.net.http.SslError;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.URLUtil;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AutoCompleteTextView;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper, AIRWindowSurfaceView, SSLSecurityDialog

public class AndroidWebView
    implements AndroidActivityWrapper.StateChangeCallback
{
    public class AndroidWebViewImpl extends WebView
    {

        private int mLastFocusDirection;
        private View m_focusedChildView;
        private boolean m_hasFocus;
        private boolean m_inRequestChildFocus;
        final AndroidWebView this$0;

        private void dispatchFocusEvent(boolean flag, int i)
        {
            if (m_hasFocus != flag)
            {
                m_hasFocus = flag;
                AndroidWebView androidwebview = AndroidWebView.this;
                if (androidwebview.mInternalReference != 0L)
                {
                    if (mAIRSurface != null)
                    {
                        mAIRSurface.updateFocusedStageWebView(androidwebview, m_hasFocus);
                    }
                    byte byte0;
                    if ((i & 2) == 2)
                    {
                        byte0 = 3;
                    } else
                    if ((i & 1) == 1)
                    {
                        byte0 = 2;
                    } else
                    {
                        byte0 = 1;
                    }
                    if (flag)
                    {
                        androidwebview.dispatchFocusIn(mInternalReference, byte0);
                        return;
                    } else
                    {
                        androidwebview.dispatchFocusOut(mInternalReference, byte0);
                        return;
                    }
                }
            }
        }

        private void setRealFocus(boolean flag)
        {
            super.onFocusChanged(flag, 0, new Rect());
            invalidate();
            dispatchFocusEvent(flag, 0);
        }

        public void clearChildFocus(View view)
        {
            m_inRequestChildFocus = true;
            super.clearChildFocus(view);
            m_inRequestChildFocus = false;
            return;
            Exception exception;
            exception;
            m_inRequestChildFocus = false;
            throw exception;
        }

        public void clearFocus()
        {
            if (m_focusedChildView != null)
            {
                m_focusedChildView.clearFocus();
                if (android/widget/AutoCompleteTextView.isInstance(m_focusedChildView))
                {
                    mView.removeView(m_focusedChildView);
                }
                m_focusedChildView = null;
                setRealFocus(false);
                return;
            } else
            {
                super.clearFocus();
                return;
            }
        }

        public boolean dispatchKeyEvent(KeyEvent keyevent)
        {
            boolean flag = super.dispatchKeyEvent(keyevent);
            if (flag || keyevent.getAction() != 0) goto _L2; else goto _L1
_L1:
            if (keyevent.getKeyCode() != 19) goto _L4; else goto _L3
_L3:
            int j = 33;
_L9:
            if (j == 0) goto _L2; else goto _L5
_L5:
            AndroidWebView androidwebview = AndroidWebView.this;
            mLastFocusDirection = j;
            androidwebview.setStageFocus(j);
            flag = true;
_L7:
            return flag;
_L4:
            int i = keyevent.getKeyCode();
            j = 0;
            if (i == 20)
            {
                j = 130;
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (flag) goto _L7; else goto _L6
_L6:
            return mAIRSurface.dispatchKeyEvent(keyevent);
            if (true) goto _L9; else goto _L8
_L8:
        }

        public boolean dispatchTouchEvent(MotionEvent motionevent)
        {
            if (!m_hasFocus)
            {
                requestFocus();
            }
            return super.dispatchTouchEvent(motionevent);
        }

        public boolean isInTextEditingMode()
        {
            return m_hasFocus && (m_focusedChildView != null || getChildCount() != 0);
        }

        protected void onFocusChanged(boolean flag, int i, Rect rect)
        {
            super.onFocusChanged(flag, i, rect);
            if (m_inRequestChildFocus && m_focusedChildView != null && m_hasFocus)
            {
                return;
            }
            int j;
            if (i == 0)
            {
                j = mLastFocusDirection;
            } else
            {
                j = i;
            }
            mLastFocusDirection = 0;
            dispatchFocusEvent(flag, j);
        }

        public void requestChildFocus(View view, View view1)
        {
            m_inRequestChildFocus = true;
            if (!m_hasFocus)
            {
                setRealFocus(true);
            }
            m_focusedChildView = view;
            super.requestChildFocus(view, view1);
            m_inRequestChildFocus = false;
            return;
            Exception exception;
            exception;
            m_inRequestChildFocus = false;
            throw exception;
        }

        public AndroidWebViewImpl(Context context)
        {
            this$0 = AndroidWebView.this;
            super(context);
            m_inRequestChildFocus = false;
            m_focusedChildView = null;
            m_hasFocus = false;
            mLastFocusDirection = 0;
        }

        public AndroidWebViewImpl(Context context, AttributeSet attributeset)
        {
            this$0 = AndroidWebView.this;
            super(context, attributeset);
            m_inRequestChildFocus = false;
            m_focusedChildView = null;
            m_hasFocus = false;
            mLastFocusDirection = 0;
        }

        public AndroidWebViewImpl(Context context, AttributeSet attributeset, int i)
        {
            this$0 = AndroidWebView.this;
            super(context, attributeset, i);
            m_inRequestChildFocus = false;
            m_focusedChildView = null;
            m_hasFocus = false;
            mLastFocusDirection = 0;
        }
    }

    public class WebViewCustomView
    {

        private android.webkit.WebChromeClient.CustomViewCallback mCallback;
        private FrameLayout mCustomViewHolder;
        final AndroidWebView this$0;

        public void onHideCustomView()
        {
            if (mCallback == null)
            {
                return;
            }
            AndroidActivityWrapper.GetAndroidActivityWrapper().getView().setVisibility(0);
            RelativeLayout relativelayout = AndroidActivityWrapper.GetAndroidActivityWrapper().getOverlaysLayout(false);
            if (relativelayout != null)
            {
                relativelayout.setVisibility(0);
            }
            ((ViewGroup)mCustomViewHolder.getParent()).removeView(mCustomViewHolder);
            mCustomViewHolder = null;
            mCallback.onCustomViewHidden();
            mCallback = null;
        }

        public void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
        {
            if (mCallback != null)
            {
                customviewcallback.onCustomViewHidden();
                return;
            }
            mCallback = customviewcallback;
            View view1 = AndroidActivityWrapper.GetAndroidActivityWrapper().getView();
            view1.setVisibility(8);
            RelativeLayout relativelayout = AndroidActivityWrapper.GetAndroidActivityWrapper().getOverlaysLayout(false);
            if (relativelayout != null)
            {
                relativelayout.setVisibility(8);
            }
            mCustomViewHolder = new FrameLayout(mContext) {

                final WebViewCustomView this$1;

                public boolean dispatchKeyEvent(KeyEvent keyevent)
                {
                    if (super.dispatchKeyEvent(keyevent))
                    {
                        return true;
                    }
                    if (keyevent.getAction() == 0 && keyevent.getKeyCode() == 4)
                    {
                        onHideCustomView();
                        return true;
                    } else
                    {
                        return false;
                    }
                }

            
            {
                this$1 = WebViewCustomView.this;
                super(context);
            }
            };
            mCustomViewHolder.setBackgroundColor(0xff000000);
            android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-1, -1);
            ((ViewGroup)view1.getParent()).addView(mCustomViewHolder, layoutparams);
            android.widget.FrameLayout.LayoutParams layoutparams1 = new android.widget.FrameLayout.LayoutParams(-1, -1, 17);
            mCustomViewHolder.addView(view, layoutparams1);
            mCustomViewHolder.bringToFront();
            mCustomViewHolder.requestFocus();
        }

        public WebViewCustomView()
        {
            this$0 = AndroidWebView.this;
            super();
        }
    }


    private static final int ERROR_OTHER = 0;
    private static final int ERROR_PROTOCOL_UNSUPPORTED = 3229;
    private static final int FOCUS_DOWN = 3;
    private static final int FOCUS_NONE = 1;
    private static final int FOCUS_UP = 2;
    private static final String LOG_TAG = "AndroidWebView";
    private AIRWindowSurfaceView mAIRSurface;
    private Rect mBounds;
    private Context mContext;
    private WebViewCustomView mCustomViewHolder;
    private Rect mGlobalBounds;
    private long mInternalReference;
    private RelativeLayout mLayout;
    private String mUrl;
    private AndroidWebViewImpl mView;

    public AndroidWebView()
    {
        mBounds = null;
        mGlobalBounds = null;
        mUrl = null;
        mInternalReference = 0L;
        mContext = AndroidActivityWrapper.GetAndroidActivityWrapper().getActivity();
        mView = new AndroidWebViewImpl(mContext);
        WebSettings websettings = mView.getSettings();
        websettings.setJavaScriptEnabled(true);
        websettings.setBuiltInZoomControls(true);
        websettings.setNeedInitialFocus(true);
        if (android.os.Build.VERSION.SDK_INT < 18)
        {
            websettings.setPluginState(android.webkit.WebSettings.PluginState.ON);
        }
        if (android.os.Build.VERSION.SDK_INT > 15)
        {
            websettings.setAllowUniversalAccessFromFileURLs(true);
        }
        mView.setScrollbarFadingEnabled(true);
        mView.setScrollBarStyle(0x2000000);
        mView.setWebChromeClient(new WebChromeClient() {

            private ValueCallback mUploadMessage;
            final AndroidWebView this$0;

            public void onHideCustomView()
            {
                if (mCustomViewHolder != null)
                {
                    mCustomViewHolder.onHideCustomView();
                }
            }

            public void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
            {
                if (mCustomViewHolder == null)
                {
                    mCustomViewHolder = new WebViewCustomView();
                }
                mCustomViewHolder.onShowCustomView(view, customviewcallback);
            }

            public void openFileChooser(ValueCallback valuecallback)
            {
                if (mUploadMessage != null)
                {
                    return;
                } else
                {
                    mUploadMessage = valuecallback;
                    AndroidActivityWrapper androidactivitywrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
                    androidactivitywrapper.addActivityResultListener(androidactivitywrapper. new AndroidActivityWrapper.ActivityResultCallback() {

                        final _cls1 this$1;
                        final AndroidActivityWrapper val$wrapper;

                        public void onActivityResult(int i, int j, Intent intent)
                        {
                            if (i != 5)
                            {
                                return;
                            }
                            if (mUploadMessage != null)
                            {
                                android.net.Uri uri;
                                if (intent == null || j != -1)
                                {
                                    uri = null;
                                } else
                                {
                                    uri = intent.getData();
                                }
                                mUploadMessage.onReceiveValue(uri);
                                mUploadMessage = null;
                            }
                            wrapper.removeActivityResultListener(this);
                        }

            
            {
                this$1 = final__pcls1;
                wrapper = AndroidActivityWrapper.this;
                super();
            }
                    });
                    Intent intent = new Intent("android.intent.action.GET_CONTENT");
                    intent.addCategory("android.intent.category.OPENABLE");
                    intent.setType("*/*");
                    androidactivitywrapper.getActivity().startActivityForResult(Intent.createChooser(intent, ""), 5);
                    return;
                }
            }



/*
            static ValueCallback access$702(_cls1 _pcls1, ValueCallback valuecallback)
            {
                _pcls1.mUploadMessage = valuecallback;
                return valuecallback;
            }

*/

            
            {
                this$0 = AndroidWebView.this;
                super();
            }
        });
        mView.setWebViewClient(new WebViewClient() {

            private String mLastPageStartedUrl;
            private String mNoCompleteForUrl;
            private String mUrl;
            final AndroidWebView this$0;
            final AndroidWebView val$webView;

            public void doUpdateVisitedHistory(WebView webview, String s, boolean flag)
            {
                if (mLastPageStartedUrl != null && mLastPageStartedUrl.equals(s))
                {
                    webView.onLocationChange(s);
                }
            }

            public void onPageFinished(WebView webview, String s)
            {
                if (s != null && mNoCompleteForUrl != null && s.equals(mNoCompleteForUrl))
                {
                    mNoCompleteForUrl = null;
                    return;
                } else
                {
                    mUrl = s;
                    webView.onLoadComplete(s);
                    return;
                }
            }

            public void onPageStarted(WebView webview, String s, Bitmap bitmap)
            {
                super.onPageStarted(webview, s, bitmap);
                mUrl = s;
                mLastPageStartedUrl = s;
            }

            public void onReceivedError(WebView webview, int i, String s, String s1)
            {
                mNoCompleteForUrl = s1;
                if (i == -10)
                {
                    webView.onLoadError(s1, (new StringBuilder()).append("[").append(i).append("] ").append(s).append(": ").append(s1).toString(), 3229);
                    return;
                } else
                {
                    webView.onLoadError(s1, (new StringBuilder()).append("[").append(i).append("] ").append(s).append(": ").append(s1).toString(), 0);
                    return;
                }
            }

            public void onReceivedSslError(WebView webview, SslErrorHandler sslerrorhandler, final SslError error)
            {
                if (mUrl == null || error.getCertificate() == null)
                {
                    return;
                } else
                {
                    (sslerrorhandler. new Thread() {

                        final _cls2 this$1;
                        final SslError val$error;
                        final SslErrorHandler val$handler;
                        final String val$url;

                        public void run()
                        {
                            android.net.http.SslCertificate sslcertificate = error.getCertificate();
                            boolean flag = false;
                            if (sslcertificate != null)
                            {
                                SSLSecurityDialog sslsecuritydialog = new SSLSecurityDialog();
                                sslsecuritydialog.show(url, error.getCertificate());
                                boolean flag1 = sslsecuritydialog.getUserAction().equals("session");
                                flag = false;
                                if (flag1)
                                {
                                    flag = true;
                                }
                            }
                            if (flag)
                            {
                                handler.proceed();
                                return;
                            } else
                            {
                                handler.cancel();
                                return;
                            }
                        }

            
            {
                this$1 = final__pcls2;
                error = sslerror;
                url = s;
                handler = SslErrorHandler.this;
                super();
            }
                    }).start();
                    return;
                }
            }

            public boolean shouldOverrideUrlLoading(WebView webview, String s)
            {
                boolean flag = webView.onLocationChanging(s);
                if (flag)
                {
                    mNoCompleteForUrl = s;
                }
                return flag;
            }

            
            {
                this$0 = AndroidWebView.this;
                webView = androidwebview1;
                super();
                mUrl = null;
                mLastPageStartedUrl = null;
                mNoCompleteForUrl = null;
            }
        });
    }

    private String decodeURL(String s)
    {
        String s1;
        try
        {
            s1 = new String(URLUtil.decode(s.getBytes()));
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            return s;
        }
        return s1;
    }

    private native void dispatchFocusIn(long l, int i);

    private native void dispatchFocusOut(long l, int i);

    private native void dispatchLoadComplete(long l);

    private native void dispatchLoadError(long l, String s, int i);

    private native boolean dispatchLocationChange(long l);

    private native boolean dispatchLocationChanging(long l, String s);

    private void refreshGlobalBounds()
    {
        if (mView == null)
        {
            return;
        } else
        {
            mView.post(new Runnable() {

                final AndroidWebView this$0;

                public void run()
                {
                    if (mView == null)
                    {
                        return;
                    } else
                    {
                        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(mGlobalBounds.width(), mGlobalBounds.height());
                        layoutparams.leftMargin = mGlobalBounds.left;
                        layoutparams.topMargin = mGlobalBounds.top;
                        mView.setLayoutParams(layoutparams);
                        mView.requestLayout();
                        return;
                    }
                }

            
            {
                this$0 = AndroidWebView.this;
                super();
            }
            });
            return;
        }
    }

    public void addedToStage(AIRWindowSurfaceView airwindowsurfaceview)
    {
        if (mLayout != null)
        {
            removedFromStage();
        }
        mAIRSurface = airwindowsurfaceview;
        AndroidActivityWrapper androidactivitywrapper = airwindowsurfaceview.getActivityWrapper();
        androidactivitywrapper.addActivityStateChangeListner(this);
        mLayout = androidactivitywrapper.getOverlaysLayout(true);
        mLayout.addView(mView, new android.widget.RelativeLayout.LayoutParams(0, 0));
    }

    public void adjustViewBounds(double d, double d1, double d2, double d3)
    {
        mBounds = new Rect((int)d, (int)d1, (int)(d + d2), (int)(d1 + d3));
        mGlobalBounds = mBounds;
        refreshGlobalBounds();
    }

    public void assignFocus(int i)
    {
        switch (i)
        {
        default:
            return;

        case 1: // '\001'
            mView.requestFocus();
            return;

        case 2: // '\002'
            mView.pageUp(true);
            mView.requestFocus(33);
            return;

        case 3: // '\003'
            mView.pageDown(true);
            break;
        }
        mView.requestFocus(130);
    }

    public boolean canGoBack()
    {
        return mView.canGoBack();
    }

    public boolean canGoForward()
    {
        return mView.canGoForward();
    }

    public Bitmap captureSnapshot(int i, int j)
    {
        while (i < 0 || j < 0 || i == 0 && j == 0) 
        {
            return null;
        }
        Bitmap bitmap = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        canvas.translate(-mView.getScrollX(), -mView.getScrollY());
        boolean flag = mView.isHorizontalScrollBarEnabled();
        boolean flag1 = mView.isVerticalScrollBarEnabled();
        mView.setHorizontalScrollBarEnabled(false);
        mView.setVerticalScrollBarEnabled(false);
        try
        {
            mView.draw(canvas);
        }
        catch (Exception exception)
        {
            Picture picture = mView.capturePicture();
            float f = mView.getScale();
            canvas.scale(f, f);
            picture.draw(canvas);
        }
        mView.setHorizontalScrollBarEnabled(flag);
        mView.setVerticalScrollBarEnabled(flag1);
        return bitmap;
    }

    public void clearFocus()
    {
        mView.clearFocus();
        mAIRSurface.requestFocus();
    }

    public void destroyInternals()
    {
        removedFromStage();
        mInternalReference = 0L;
        mView.destroy();
        mView = null;
    }

    public String getCurrentLocation()
    {
        String s = mUrl;
        if (s == null)
        {
            return "about:blank";
        } else
        {
            return decodeURL(s);
        }
    }

    public String getPageTitle()
    {
        String s = mView.getTitle();
        if (s == null)
        {
            s = "";
        }
        return s;
    }

    public void goBack()
    {
        mView.goBack();
    }

    public void goForward()
    {
        mView.goForward();
    }

    public boolean isInTextEditingMode()
    {
        return mView.isInTextEditingMode();
    }

    public void loadString(String s, String s1)
    {
        byte abyte0[] = s.getBytes("utf-8");
        boolean flag;
        if (abyte0.length >= 3 && abyte0[0] == 239 && abyte0[1] == 187 && abyte0[2] == 191)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag)
        {
            byte abyte1[];
            String s2;
            try
            {
                abyte1 = new byte[3 + abyte0.length];
                System.arraycopy(abyte0, 0, abyte1, 3, abyte0.length);
                abyte1[0] = -17;
                abyte1[1] = -69;
                abyte1[2] = -65;
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                return;
            }
            abyte0 = abyte1;
        }
        s2 = Base64.encodeToString(abyte0, 0, abyte0.length, 2);
        mView.loadData(s2, "text/html", "base64");
        return;
    }

    public void loadURL(String s)
    {
        if (s == null)
        {
            return;
        } else
        {
            mView.loadUrl(s);
            return;
        }
    }

    public void onActivityStateChanged(AndroidActivityWrapper.ActivityState activitystate)
    {
        static class _cls4
        {

            static final int $SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState[];

            static 
            {
                $SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState = new int[AndroidActivityWrapper.ActivityState.values().length];
                try
                {
                    $SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState[AndroidActivityWrapper.ActivityState.RESUMED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState[AndroidActivityWrapper.ActivityState.PAUSED.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState[AndroidActivityWrapper.ActivityState.STARTED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState[AndroidActivityWrapper.ActivityState.DESTROYED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        Method method1;
        Method method2;
        boolean flag;
        int i;
        Method method = android/webkit/WebView.getMethod("isPaused", new Class[0]);
        method1 = android/webkit/WebView.getMethod("onResume", new Class[0]);
        method2 = android/webkit/WebView.getMethod("onPause", new Class[0]);
        flag = ((Boolean)method.invoke(mView, new Object[0])).booleanValue();
        i = _cls4..SwitchMap.com.adobe.air.AndroidActivityWrapper.ActivityState[activitystate.ordinal()];
        i;
        JVM INSTR tableswitch 1 2: default 100
    //                   1 133
    //                   2 162;
           goto _L1 _L2 _L3
_L1:
        _cls4..SwitchMap.com.adobe.air.AndroidActivityWrapper.ActivityState[activitystate.ordinal()];
        JVM INSTR tableswitch 3 4: default 132
    //                   3 191
    //                   4 211;
           goto _L4 _L5 _L6
_L4:
        return;
_L2:
        if (flag)
        {
            try
            {
                method1.invoke(mView, new Object[0]);
                mView.resumeTimers();
            }
            catch (Exception exception) { }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (flag)
        {
            continue; /* Loop/switch isn't completed */
        }
        mView.pauseTimers();
        method2.invoke(mView, new Object[0]);
        continue; /* Loop/switch isn't completed */
_L5:
        if (mCustomViewHolder != null) goto _L4; else goto _L7
_L7:
        mCustomViewHolder = new WebViewCustomView();
        return;
_L6:
        if (mCustomViewHolder == null) goto _L4; else goto _L8
_L8:
        mCustomViewHolder.onHideCustomView();
        mCustomViewHolder = null;
        return;
        if (true) goto _L1; else goto _L9
_L9:
    }

    public void onConfigurationChanged(Configuration configuration)
    {
    }

    public void onLoadComplete(String s)
    {
        if (mInternalReference == 0L)
        {
            return;
        } else
        {
            mUrl = s;
            dispatchLoadComplete(mInternalReference);
            return;
        }
    }

    public void onLoadError(String s, String s1, int i)
    {
        if (mInternalReference == 0L)
        {
            return;
        } else
        {
            mUrl = s;
            dispatchLoadError(mInternalReference, s1, i);
            return;
        }
    }

    public boolean onLocationChange(String s)
    {
        if (mInternalReference == 0L)
        {
            return true;
        } else
        {
            mUrl = s;
            return dispatchLocationChange(mInternalReference);
        }
    }

    public boolean onLocationChanging(String s)
    {
        if (mInternalReference == 0L)
        {
            return true;
        } else
        {
            return dispatchLocationChanging(mInternalReference, decodeURL(s));
        }
    }

    public void reload()
    {
        mView.reload();
    }

    public void removedFromStage()
    {
        if (mLayout != null)
        {
            mLayout.removeView(mView);
            mLayout = null;
            AndroidActivityWrapper androidactivitywrapper = mAIRSurface.getActivityWrapper();
            androidactivitywrapper.didRemoveOverlay();
            androidactivitywrapper.removeActivityStateChangeListner(this);
            mAIRSurface.updateFocusedStageWebView(this, false);
        }
        mAIRSurface = null;
    }

    public void resetGlobalBounds()
    {
        mGlobalBounds = mBounds;
        refreshGlobalBounds();
    }

    public void setInternalReference(long l)
    {
        mInternalReference = l;
    }

    public void setStageFocus(int i)
    {
        mView.clearFocus();
        mAIRSurface.requestFocus(i);
    }

    public void setVisibility(boolean flag)
    {
        int i;
        if (flag)
        {
            i = 0;
        } else
        {
            i = 4;
        }
        if (mView.getVisibility() != i)
        {
            mView.setVisibility(i);
        }
    }

    public void stop()
    {
        mView.stopLoading();
    }

    public long updateViewBoundsWithKeyboard(int i)
    {
        mGlobalBounds = mBounds;
        if (mAIRSurface == null || !isInTextEditingMode()) goto _L2; else goto _L1
_L1:
        Rect rect = new Rect(0, 0, mAIRSurface.getVisibleBoundWidth(), mAIRSurface.getVisibleBoundHeight());
        if (rect.contains(mBounds)) goto _L2; else goto _L3
_L3:
        int j;
        int k = Math.min(Math.max(0, mBounds.top), i);
        int l = Math.min(Math.max(0, mBounds.bottom), i);
        if (k == l)
        {
            return 0L;
        }
        int i1 = l - rect.bottom;
        if (i1 <= 0)
        {
            return 0L;
        }
        if (i1 <= k)
        {
            j = i1;
        } else
        {
            mGlobalBounds = new Rect(mBounds);
            mGlobalBounds.bottom = k + rect.bottom;
            j = k;
        }
_L5:
        refreshGlobalBounds();
        return (long)j;
_L2:
        j = 0;
        if (true) goto _L5; else goto _L4
_L4:
    }









/*
    static WebViewCustomView access$602(AndroidWebView androidwebview, WebViewCustomView webviewcustomview)
    {
        androidwebview.mCustomViewHolder = webviewcustomview;
        return webviewcustomview;
    }

*/

}
