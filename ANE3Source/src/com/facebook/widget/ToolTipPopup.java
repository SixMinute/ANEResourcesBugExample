// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import java.lang.ref.WeakReference;

public class ToolTipPopup
{
    private class PopupContentView extends FrameLayout
    {

        private View bodyFrame;
        private ImageView bottomArrow;
        final ToolTipPopup this$0;
        private ImageView topArrow;
        private ImageView xOut;

        private void init()
        {
            LayoutInflater.from(getContext()).inflate(com.facebook.android.R.layout.com_facebook_tooltip_bubble, this);
            topArrow = (ImageView)findViewById(com.facebook.android.R.id.com_facebook_tooltip_bubble_view_top_pointer);
            bottomArrow = (ImageView)findViewById(com.facebook.android.R.id.com_facebook_tooltip_bubble_view_bottom_pointer);
            bodyFrame = findViewById(com.facebook.android.R.id.com_facebook_body_frame);
            xOut = (ImageView)findViewById(com.facebook.android.R.id.com_facebook_button_xout);
        }

        public void onMeasure(int i, int j)
        {
            super.onMeasure(i, j);
        }

        public void showBottomArrow()
        {
            topArrow.setVisibility(4);
            bottomArrow.setVisibility(0);
        }

        public void showTopArrow()
        {
            topArrow.setVisibility(0);
            bottomArrow.setVisibility(4);
        }





        public PopupContentView(Context context)
        {
            this$0 = ToolTipPopup.this;
            super(context);
            init();
        }
    }

    public static final class Style extends Enum
    {

        public static final Style BLACK;
        public static final Style BLUE;
        private static final Style ENUM$VALUES[];

        public static Style valueOf(String s)
        {
            return (Style)Enum.valueOf(com/facebook/widget/ToolTipPopup$Style, s);
        }

        public static Style[] values()
        {
            Style astyle[] = ENUM$VALUES;
            int i = astyle.length;
            Style astyle1[] = new Style[i];
            System.arraycopy(astyle, 0, astyle1, 0, i);
            return astyle1;
        }

        static 
        {
            BLUE = new Style("BLUE", 0);
            BLACK = new Style("BLACK", 1);
            Style astyle[] = new Style[2];
            astyle[0] = BLUE;
            astyle[1] = BLACK;
            ENUM$VALUES = astyle;
        }

        private Style(String s, int i)
        {
            super(s, i);
        }
    }


    public static final long DEFAULT_POPUP_DISPLAY_TIME = 6000L;
    private final WeakReference mAnchorViewRef;
    private final Context mContext;
    private long mNuxDisplayTime;
    private PopupContentView mPopupContent;
    private PopupWindow mPopupWindow;
    private final android.view.ViewTreeObserver.OnScrollChangedListener mScrollListener = new android.view.ViewTreeObserver.OnScrollChangedListener() {

        final ToolTipPopup this$0;

        public void onScrollChanged()
        {
label0:
            {
                if (mAnchorViewRef.get() != null && mPopupWindow != null && mPopupWindow.isShowing())
                {
                    if (!mPopupWindow.isAboveAnchor())
                    {
                        break label0;
                    }
                    mPopupContent.showBottomArrow();
                }
                return;
            }
            mPopupContent.showTopArrow();
        }

            
            {
                this$0 = ToolTipPopup.this;
                super();
            }
    };
    private Style mStyle;
    private final String mText;

    public ToolTipPopup(String s, View view)
    {
        mStyle = Style.BLUE;
        mNuxDisplayTime = 6000L;
        mText = s;
        mAnchorViewRef = new WeakReference(view);
        mContext = view.getContext();
    }

    private void registerObserver()
    {
        unregisterObserver();
        if (mAnchorViewRef.get() != null)
        {
            ((View)mAnchorViewRef.get()).getViewTreeObserver().addOnScrollChangedListener(mScrollListener);
        }
    }

    private void unregisterObserver()
    {
        if (mAnchorViewRef.get() != null)
        {
            ((View)mAnchorViewRef.get()).getViewTreeObserver().removeOnScrollChangedListener(mScrollListener);
        }
    }

    private void updateArrows()
    {
label0:
        {
            if (mPopupWindow != null && mPopupWindow.isShowing())
            {
                if (!mPopupWindow.isAboveAnchor())
                {
                    break label0;
                }
                mPopupContent.showBottomArrow();
            }
            return;
        }
        mPopupContent.showTopArrow();
    }

    public void dismiss()
    {
        unregisterObserver();
        if (mPopupWindow != null)
        {
            mPopupWindow.dismiss();
        }
    }

    public void setNuxDisplayTime(long l)
    {
        mNuxDisplayTime = l;
    }

    public void setStyle(Style style)
    {
        mStyle = style;
    }

    public void show()
    {
        if (mAnchorViewRef.get() != null)
        {
            mPopupContent = new PopupContentView(mContext);
            ((TextView)mPopupContent.findViewById(com.facebook.android.R.id.com_facebook_tooltip_bubble_view_text_body)).setText(mText);
            View view;
            int i;
            int j;
            if (mStyle == Style.BLUE)
            {
                mPopupContent.bodyFrame.setBackgroundResource(com.facebook.android.R.drawable.com_facebook_tooltip_blue_background);
                mPopupContent.bottomArrow.setImageResource(com.facebook.android.R.drawable.com_facebook_tooltip_blue_bottomnub);
                mPopupContent.topArrow.setImageResource(com.facebook.android.R.drawable.com_facebook_tooltip_blue_topnub);
                mPopupContent.xOut.setImageResource(com.facebook.android.R.drawable.com_facebook_tooltip_blue_xout);
            } else
            {
                mPopupContent.bodyFrame.setBackgroundResource(com.facebook.android.R.drawable.com_facebook_tooltip_black_background);
                mPopupContent.bottomArrow.setImageResource(com.facebook.android.R.drawable.com_facebook_tooltip_black_bottomnub);
                mPopupContent.topArrow.setImageResource(com.facebook.android.R.drawable.com_facebook_tooltip_black_topnub);
                mPopupContent.xOut.setImageResource(com.facebook.android.R.drawable.com_facebook_tooltip_black_xout);
            }
            view = ((Activity)mContext).getWindow().getDecorView();
            i = view.getWidth();
            j = view.getHeight();
            registerObserver();
            mPopupContent.onMeasure(android.view.View.MeasureSpec.makeMeasureSpec(i, 0x80000000), android.view.View.MeasureSpec.makeMeasureSpec(j, 0x80000000));
            mPopupWindow = new PopupWindow(mPopupContent, mPopupContent.getMeasuredWidth(), mPopupContent.getMeasuredHeight());
            mPopupWindow.showAsDropDown((View)mAnchorViewRef.get());
            updateArrows();
            if (mNuxDisplayTime > 0L)
            {
                mPopupContent.postDelayed(new Runnable() {

                    final ToolTipPopup this$0;

                    public void run()
                    {
                        dismiss();
                    }

            
            {
                this$0 = ToolTipPopup.this;
                super();
            }
                }, mNuxDisplayTime);
            }
            mPopupWindow.setTouchable(true);
            mPopupContent.setOnClickListener(new android.view.View.OnClickListener() {

                final ToolTipPopup this$0;

                public void onClick(View view1)
                {
                    dismiss();
                }

            
            {
                this$0 = ToolTipPopup.this;
                super();
            }
            });
        }
    }



}
