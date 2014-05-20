// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.support.v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Transformation;
import android.widget.AbsListView;

// Referenced classes of package android.support.v4.widget:
//            SwipeProgressBar

public class SwipeRefreshLayout extends ViewGroup
{
    private class BaseAnimationListener
        implements android.view.animation.Animation.AnimationListener
    {

        final SwipeRefreshLayout this$0;

        public void onAnimationEnd(Animation animation)
        {
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }

        private BaseAnimationListener()
        {
            this$0 = SwipeRefreshLayout.this;
            super();
        }

    }

    public static interface OnRefreshListener
    {

        public abstract void onRefresh();
    }


    private static final float ACCELERATE_INTERPOLATION_FACTOR = 1.5F;
    private static final float DECELERATE_INTERPOLATION_FACTOR = 2F;
    private static final int LAYOUT_ATTRS[] = {
        0x101000e
    };
    private static final float MAX_SWIPE_DISTANCE_FACTOR = 0.6F;
    private static final float PROGRESS_BAR_HEIGHT = 4F;
    private static final int REFRESH_TRIGGER_DISTANCE = 120;
    private static final long RETURN_TO_ORIGINAL_POSITION_TIMEOUT = 300L;
    private final AccelerateInterpolator mAccelerateInterpolator;
    private final Animation mAnimateToStartPosition;
    private final Runnable mCancel;
    private float mCurrPercentage;
    private int mCurrentTargetOffsetTop;
    private final DecelerateInterpolator mDecelerateInterpolator;
    private float mDistanceToTriggerSync;
    private MotionEvent mDownEvent;
    private int mFrom;
    private float mFromPercentage;
    private OnRefreshListener mListener;
    private int mMediumAnimationDuration;
    private int mOriginalOffsetTop;
    private float mPrevY;
    private SwipeProgressBar mProgressBar;
    private int mProgressBarHeight;
    private boolean mRefreshing;
    private final Runnable mReturnToStartPosition;
    private final android.view.animation.Animation.AnimationListener mReturnToStartPositionListener;
    private boolean mReturningToStart;
    private final android.view.animation.Animation.AnimationListener mShrinkAnimationListener;
    private Animation mShrinkTrigger = new Animation() {

        final SwipeRefreshLayout this$0;

        public void applyTransformation(float f, Transformation transformation)
        {
            float f1 = mFromPercentage + f * (0.0F - mFromPercentage);
            mProgressBar.setTriggerPercentage(f1);
        }

            
            {
                this$0 = SwipeRefreshLayout.this;
                super();
            }
    };
    private View mTarget;
    private int mTouchSlop;

    public SwipeRefreshLayout(Context context)
    {
        this(context, null);
    }

    public SwipeRefreshLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mRefreshing = false;
        mDistanceToTriggerSync = -1F;
        mFromPercentage = 0.0F;
        mCurrPercentage = 0.0F;
        mAnimateToStartPosition = new Animation() {

            final SwipeRefreshLayout this$0;

            public void applyTransformation(float f, Transformation transformation)
            {
                int i = mFrom;
                int j = mOriginalOffsetTop;
                int k = 0;
                if (i != j)
                {
                    k = mFrom + (int)(f * (float)(mOriginalOffsetTop - mFrom));
                }
                int l = k - mTarget.getTop();
                int i1 = mTarget.getTop();
                if (l + i1 < 0)
                {
                    l = 0 - i1;
                }
                setTargetOffsetTopAndBottom(l);
            }

            
            {
                this$0 = SwipeRefreshLayout.this;
                super();
            }
        };
        mReturnToStartPositionListener = new BaseAnimationListener() {

            final SwipeRefreshLayout this$0;

            public void onAnimationEnd(Animation animation)
            {
                mCurrentTargetOffsetTop = 0;
            }

            
            {
                this$0 = SwipeRefreshLayout.this;
                super();
            }
        };
        mShrinkAnimationListener = new BaseAnimationListener() {

            final SwipeRefreshLayout this$0;

            public void onAnimationEnd(Animation animation)
            {
                mCurrPercentage = 0.0F;
            }

            
            {
                this$0 = SwipeRefreshLayout.this;
                super();
            }
        };
        mReturnToStartPosition = new Runnable() {

            final SwipeRefreshLayout this$0;

            public void run()
            {
                mReturningToStart = true;
                animateOffsetToStartPosition(mCurrentTargetOffsetTop + getPaddingTop(), mReturnToStartPositionListener);
            }

            
            {
                this$0 = SwipeRefreshLayout.this;
                super();
            }
        };
        mCancel = new Runnable() {

            final SwipeRefreshLayout this$0;

            public void run()
            {
                mReturningToStart = true;
                if (mProgressBar != null)
                {
                    mFromPercentage = mCurrPercentage;
                    mShrinkTrigger.setDuration(mMediumAnimationDuration);
                    mShrinkTrigger.setAnimationListener(mShrinkAnimationListener);
                    mShrinkTrigger.reset();
                    mShrinkTrigger.setInterpolator(mDecelerateInterpolator);
                    startAnimation(mShrinkTrigger);
                }
                animateOffsetToStartPosition(mCurrentTargetOffsetTop + getPaddingTop(), mReturnToStartPositionListener);
            }

            
            {
                this$0 = SwipeRefreshLayout.this;
                super();
            }
        };
        mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        mMediumAnimationDuration = getResources().getInteger(0x10e0001);
        setWillNotDraw(false);
        mProgressBar = new SwipeProgressBar(this);
        mProgressBarHeight = (int)(4F * getResources().getDisplayMetrics().density);
        mDecelerateInterpolator = new DecelerateInterpolator(2.0F);
        mAccelerateInterpolator = new AccelerateInterpolator(1.5F);
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, LAYOUT_ATTRS);
        setEnabled(typedarray.getBoolean(0, true));
        typedarray.recycle();
    }

    private void animateOffsetToStartPosition(int i, android.view.animation.Animation.AnimationListener animationlistener)
    {
        mFrom = i;
        mAnimateToStartPosition.reset();
        mAnimateToStartPosition.setDuration(mMediumAnimationDuration);
        mAnimateToStartPosition.setAnimationListener(animationlistener);
        mAnimateToStartPosition.setInterpolator(mDecelerateInterpolator);
        mTarget.startAnimation(mAnimateToStartPosition);
    }

    private void ensureTarget()
    {
        if (mTarget == null)
        {
            if (getChildCount() > 1 && !isInEditMode())
            {
                throw new IllegalStateException("SwipeRefreshLayout can host only one direct child");
            }
            mTarget = getChildAt(0);
            mOriginalOffsetTop = mTarget.getTop() + getPaddingTop();
        }
        if (mDistanceToTriggerSync == -1F && getParent() != null && ((View)getParent()).getHeight() > 0)
        {
            DisplayMetrics displaymetrics = getResources().getDisplayMetrics();
            mDistanceToTriggerSync = (int)Math.min(0.6F * (float)((View)getParent()).getHeight(), 120F * displaymetrics.density);
        }
    }

    private void setTargetOffsetTopAndBottom(int i)
    {
        mTarget.offsetTopAndBottom(i);
        mCurrentTargetOffsetTop = mTarget.getTop();
    }

    private void setTriggerPercentage(float f)
    {
        if (f == 0.0F)
        {
            mCurrPercentage = 0.0F;
            return;
        } else
        {
            mCurrPercentage = f;
            mProgressBar.setTriggerPercentage(f);
            return;
        }
    }

    private void startRefresh()
    {
        removeCallbacks(mCancel);
        mReturnToStartPosition.run();
        setRefreshing(true);
        mListener.onRefresh();
    }

    private void updateContentOffsetTop(int i)
    {
        int j = mTarget.getTop();
        if ((float)i <= mDistanceToTriggerSync) goto _L2; else goto _L1
_L1:
        i = (int)mDistanceToTriggerSync;
_L4:
        setTargetOffsetTopAndBottom(i - j);
        return;
_L2:
        if (i < 0)
        {
            i = 0;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void updatePositionTimeout()
    {
        removeCallbacks(mCancel);
        postDelayed(mCancel, 300L);
    }

    public boolean canChildScrollUp()
    {
        if (android.os.Build.VERSION.SDK_INT < 14)
        {
            if (mTarget instanceof AbsListView)
            {
                AbsListView abslistview = (AbsListView)mTarget;
                return abslistview.getChildCount() > 0 && (abslistview.getFirstVisiblePosition() > 0 || abslistview.getChildAt(0).getTop() < abslistview.getPaddingTop());
            }
            return mTarget.getScrollY() > 0;
        } else
        {
            return ViewCompat.canScrollVertically(mTarget, -1);
        }
    }

    public void draw(Canvas canvas)
    {
        super.draw(canvas);
        mProgressBar.draw(canvas);
    }

    public boolean isRefreshing()
    {
        return mRefreshing;
    }

    public void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        removeCallbacks(mCancel);
        removeCallbacks(mReturnToStartPosition);
    }

    public void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        removeCallbacks(mReturnToStartPosition);
        removeCallbacks(mCancel);
    }

    public boolean onInterceptTouchEvent(MotionEvent motionevent)
    {
        ensureTarget();
        if (mReturningToStart && motionevent.getAction() == 0)
        {
            mReturningToStart = false;
        }
        boolean flag = isEnabled();
        boolean flag1 = false;
        if (flag)
        {
            boolean flag2 = mReturningToStart;
            flag1 = false;
            if (!flag2)
            {
                boolean flag3 = canChildScrollUp();
                flag1 = false;
                if (!flag3)
                {
                    flag1 = onTouchEvent(motionevent);
                }
            }
        }
        if (!flag1)
        {
            return super.onInterceptTouchEvent(motionevent);
        } else
        {
            return flag1;
        }
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        int i1 = getMeasuredWidth();
        int j1 = getMeasuredHeight();
        mProgressBar.setBounds(0, 0, i1, mProgressBarHeight);
        if (getChildCount() == 0)
        {
            return;
        } else
        {
            View view = getChildAt(0);
            int k1 = getPaddingLeft();
            int l1 = mCurrentTargetOffsetTop + getPaddingTop();
            int i2 = i1 - getPaddingLeft() - getPaddingRight();
            int j2 = j1 - getPaddingTop() - getPaddingBottom();
            view.layout(k1, l1, k1 + i2, l1 + j2);
            return;
        }
    }

    public void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        if (getChildCount() > 1 && !isInEditMode())
        {
            throw new IllegalStateException("SwipeRefreshLayout can host only one direct child");
        }
        if (getChildCount() > 0)
        {
            getChildAt(0).measure(android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredWidth() - getPaddingLeft() - getPaddingRight(), 0x40000000), android.view.View.MeasureSpec.makeMeasureSpec(getMeasuredHeight() - getPaddingTop() - getPaddingBottom(), 0x40000000));
        }
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        motionevent.getAction();
        JVM INSTR tableswitch 0 3: default 36
    //                   0 38
    //                   1 212
    //                   2 64
    //                   3 212;
           goto _L1 _L2 _L3 _L4 _L3
_L1:
        return false;
_L2:
        mCurrPercentage = 0.0F;
        mDownEvent = MotionEvent.obtain(motionevent);
        mPrevY = mDownEvent.getY();
        return false;
_L4:
        if (mDownEvent != null && !mReturningToStart)
        {
            float f = motionevent.getY();
            float f1 = f - mDownEvent.getY();
            if (f1 > (float)mTouchSlop)
            {
                if (f1 > mDistanceToTriggerSync)
                {
                    startRefresh();
                    return true;
                }
                setTriggerPercentage(mAccelerateInterpolator.getInterpolation(f1 / mDistanceToTriggerSync));
                float f2 = f1;
                if (mPrevY > f)
                {
                    f2 = f1 - (float)mTouchSlop;
                }
                updateContentOffsetTop((int)f2);
                if (mPrevY > f && mTarget.getTop() < mTouchSlop)
                {
                    removeCallbacks(mCancel);
                } else
                {
                    updatePositionTimeout();
                }
                mPrevY = motionevent.getY();
                return true;
            }
        }
        continue; /* Loop/switch isn't completed */
_L3:
        if (mDownEvent != null)
        {
            mDownEvent.recycle();
            mDownEvent = null;
            return false;
        }
        if (true) goto _L1; else goto _L5
_L5:
    }

    public void requestDisallowInterceptTouchEvent(boolean flag)
    {
    }

    public void setColorScheme(int i, int j, int k, int l)
    {
        ensureTarget();
        Resources resources = getResources();
        int i1 = resources.getColor(i);
        int j1 = resources.getColor(j);
        int k1 = resources.getColor(k);
        int l1 = resources.getColor(l);
        mProgressBar.setColorScheme(i1, j1, k1, l1);
    }

    public void setOnRefreshListener(OnRefreshListener onrefreshlistener)
    {
        mListener = onrefreshlistener;
    }

    public void setRefreshing(boolean flag)
    {
label0:
        {
            if (mRefreshing != flag)
            {
                ensureTarget();
                mCurrPercentage = 0.0F;
                mRefreshing = flag;
                if (!mRefreshing)
                {
                    break label0;
                }
                mProgressBar.start();
            }
            return;
        }
        mProgressBar.stop();
    }














/*
    static float access$402(SwipeRefreshLayout swiperefreshlayout, float f)
    {
        swiperefreshlayout.mFromPercentage = f;
        return f;
    }

*/




/*
    static int access$702(SwipeRefreshLayout swiperefreshlayout, int i)
    {
        swiperefreshlayout.mCurrentTargetOffsetTop = i;
        return i;
    }

*/



/*
    static float access$802(SwipeRefreshLayout swiperefreshlayout, float f)
    {
        swiperefreshlayout.mCurrPercentage = f;
        return f;
    }

*/


/*
    static boolean access$902(SwipeRefreshLayout swiperefreshlayout, boolean flag)
    {
        swiperefreshlayout.mReturningToStart = flag;
        return flag;
    }

*/
}
