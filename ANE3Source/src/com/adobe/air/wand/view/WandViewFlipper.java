// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.view;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.ViewFlipper;

// Referenced classes of package com.adobe.air.wand.view:
//            WandView, CompanionView, TouchSensor

public class WandViewFlipper extends ViewFlipper
    implements WandView
{

    private static final String ACTIVE_WIFI_ASSIST_MESSAGE = "Enter this PIN in the desktop game and press 'Connect'";
    private static final String DEFAULT_VIEW_FONT_ASSET = "AdobeClean-Light.ttf";
    private static final String INACTIVE_WIFI_ASSIST_MESSAGE = "Connect this device to WiFi to get the pairing PIN";
    private static final String LOG_TAG = "WandViewFlipper";
    private static final String PIN_TITLE = "PIN : ";
    private static final String TITLE_DESCRIPTION_STRING = "Use this device as a Wireless Gamepad";
    private CompanionView mCompanionView;
    private View mCompanionViewHolder;
    private int mCurrentViewIndex;
    private View mDefaultView;
    private WandView.Listener mListener;
    private TouchSensor mTouchSensor;

    public WandViewFlipper(Context context)
    {
        super(context);
        mCurrentViewIndex = 0;
        mDefaultView = null;
        mCompanionViewHolder = null;
        mCompanionView = null;
        mTouchSensor = null;
        mListener = null;
        initView(context);
    }

    public WandViewFlipper(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mCurrentViewIndex = 0;
        mDefaultView = null;
        mCompanionViewHolder = null;
        mCompanionView = null;
        mTouchSensor = null;
        mListener = null;
        initView(context);
    }

    private static String getTokenDesc(boolean flag)
    {
        if (flag)
        {
            return "Enter this PIN in the desktop game and press 'Connect'";
        } else
        {
            return "Connect this device to WiFi to get the pairing PIN";
        }
    }

    private static String getTokenString(String s)
    {
        return (new StringBuilder()).append("PIN : ").append(s).toString();
    }

    private void initView(Context context)
    {
        mListener = null;
        try
        {
            setKeepScreenOn(true);
            LayoutInflater layoutinflater = LayoutInflater.from(context);
            mDefaultView = layoutinflater.inflate(0x7f03003c, null);
            mCompanionViewHolder = layoutinflater.inflate(0x7f03003b, null);
            mDefaultView.getBackground().setDither(true);
            TextView textview = (TextView)mDefaultView.findViewById(0x7f0700dc);
            Typeface typeface = Typeface.createFromAsset(context.getAssets(), "AdobeClean-Light.ttf");
            textview.setTypeface(typeface);
            ((TextView)mDefaultView.findViewById(0x7f0700df)).setTypeface(typeface);
            ((TextView)mDefaultView.findViewById(0x7f0700e0)).setTypeface(typeface);
            TextView textview1 = (TextView)mDefaultView.findViewById(0x7f0700dd);
            textview1.setTypeface(typeface);
            textview1.setText("Use this device as a Wireless Gamepad");
            addView(mDefaultView, 0);
            addView(mCompanionViewHolder, 1);
            mCompanionView = (CompanionView)mCompanionViewHolder.findViewById(0x7f0700d9);
            mTouchSensor = mCompanionView.getTouchSensor();
            mCurrentViewIndex = 0;
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public void drawImage(Bitmap bitmap)
        throws Exception
    {
        if (mCurrentViewIndex == 0)
        {
            throw new Exception("Companion view is not yet loaded.");
        }
        final ImageView skinView = (ImageView)mCompanionViewHolder.findViewById(0x7f0700db);
        Bitmap bitmap1 = Bitmap.createScaledBitmap(bitmap, skinView.getWidth(), (bitmap.getHeight() * skinView.getWidth()) / bitmap.getWidth(), true);
        if (bitmap1 != bitmap)
        {
            bitmap.recycle();
        }
        int i = skinView.getHeight();
        int j = bitmap1.getHeight();
        final Bitmap scaledImage;
        if (j > i)
        {
            scaledImage = Bitmap.createBitmap(bitmap1, 0, j - i, skinView.getWidth(), skinView.getHeight());
            if (scaledImage != bitmap1)
            {
                bitmap1.recycle();
            }
        } else
        {
            scaledImage = bitmap1;
        }
        ((Activity)getContext()).runOnUiThread(new Runnable() {

            final WandViewFlipper this$0;
            final Bitmap val$scaledImage;
            final ImageView val$skinView;

            public void run()
            {
                skinView.setImageBitmap(scaledImage);
            }

            
            {
                this$0 = WandViewFlipper.this;
                skinView = imageview;
                scaledImage = bitmap;
                super();
            }
        });
    }

    public TouchSensor getTouchSensor()
    {
        return mTouchSensor;
    }

    public void loadCompanionView()
        throws Exception
    {
        if (mCurrentViewIndex == 1)
        {
            return;
        } else
        {
            mCurrentViewIndex = 1;
            ((Activity)getContext()).runOnUiThread(new Runnable() {

                final WandViewFlipper this$0;

                public void run()
                {
                    setDisplayedChild(mCurrentViewIndex);
                }

            
            {
                this$0 = WandViewFlipper.this;
                super();
            }
            });
            return;
        }
    }

    public void loadDefaultView()
        throws Exception
    {
        ((Activity)getContext()).runOnUiThread(new Runnable() {

            final WandViewFlipper this$0;

            public void run()
            {
                ((ImageView)mCompanionViewHolder.findViewById(0x7f0700db)).setImageResource(0x7f080041);
                mCurrentViewIndex = 0;
                String s;
                String s1;
                TextView textview;
                boolean flag;
                if (mListener != null)
                {
                    s = mListener.getConnectionToken();
                } else
                {
                    s = "";
                }
                if (!s.equals(""))
                {
                    s1 = WandViewFlipper.getTokenString(s);
                } else
                {
                    s1 = s;
                }
                ((TextView)mDefaultView.findViewById(0x7f0700df)).setText(s1);
                textview = (TextView)mDefaultView.findViewById(0x7f0700e0);
                if (!mListener.getConnectionToken().equals(""))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                textview.setText(WandViewFlipper.getTokenDesc(flag));
                setDisplayedChild(mCurrentViewIndex);
            }

            
            {
                this$0 = WandViewFlipper.this;
                super();
            }
        });
    }

    public void registerListener(WandView.Listener listener)
        throws Exception
    {
        if (mListener != null)
        {
            throw new Exception("View listener is already registered");
        }
        if (listener == null)
        {
            throw new Exception("Invalid view listener");
        } else
        {
            mListener = listener;
            return;
        }
    }

    public void setScreenOrientation(WandView.ScreenOrientation screenorientation)
        throws Exception
    {
        static class _cls5
        {

            static final int $SwitchMap$com$adobe$air$wand$view$WandView$ScreenOrientation[];

            static 
            {
                $SwitchMap$com$adobe$air$wand$view$WandView$ScreenOrientation = new int[WandView.ScreenOrientation.values().length];
                try
                {
                    $SwitchMap$com$adobe$air$wand$view$WandView$ScreenOrientation[WandView.ScreenOrientation.LANDSCAPE.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$adobe$air$wand$view$WandView$ScreenOrientation[WandView.ScreenOrientation.PORTRAIT.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$adobe$air$wand$view$WandView$ScreenOrientation[WandView.ScreenOrientation.REVERSE_PORTRAIT.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                try
                {
                    $SwitchMap$com$adobe$air$wand$view$WandView$ScreenOrientation[WandView.ScreenOrientation.REVERSE_LANDSCAPE.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror3)
                {
                    return;
                }
            }
        }

        _cls5..SwitchMap.com.adobe.air.wand.view.WandView.ScreenOrientation[screenorientation.ordinal()];
        JVM INSTR tableswitch 1 4: default 40
    //                   1 64
    //                   2 69
    //                   3 74
    //                   4 80;
           goto _L1 _L2 _L3 _L4 _L5
_L5:
        break MISSING_BLOCK_LABEL_80;
_L1:
        byte byte0 = -1;
_L6:
        Activity activity = (Activity)getContext();
        if (activity == null)
        {
            throw new IllegalArgumentException("Wand cannot find activity while loading companion.");
        } else
        {
            activity.setRequestedOrientation(byte0);
            return;
        }
_L2:
        byte0 = 0;
          goto _L6
_L3:
        byte0 = 1;
          goto _L6
_L4:
        byte0 = 9;
          goto _L6
        byte0 = 8;
          goto _L6
    }

    public void unregisterListener()
    {
        mListener = null;
    }

    public void updateConnectionToken(final String connectionToken)
    {
        if (mCurrentViewIndex == 1)
        {
            return;
        } else
        {
            ((Activity)getContext()).runOnUiThread(new Runnable() {

                final WandViewFlipper this$0;
                final String val$connectionToken;

                public void run()
                {
                    String s;
                    TextView textview;
                    boolean flag;
                    if (!connectionToken.equals(""))
                    {
                        s = WandViewFlipper.getTokenString(connectionToken);
                    } else
                    {
                        s = "";
                    }
                    ((TextView)mDefaultView.findViewById(0x7f0700df)).setText(s);
                    textview = (TextView)mDefaultView.findViewById(0x7f0700e0);
                    if (!connectionToken.equals(""))
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    textview.setText(WandViewFlipper.getTokenDesc(flag));
                }

            
            {
                this$0 = WandViewFlipper.this;
                connectionToken = s;
                super();
            }
            });
            return;
        }
    }




/*
    static int access$102(WandViewFlipper wandviewflipper, int i)
    {
        wandviewflipper.mCurrentViewIndex = i;
        return i;
    }

*/




}
