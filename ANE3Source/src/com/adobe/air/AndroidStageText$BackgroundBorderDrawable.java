// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.Shape;

// Referenced classes of package com.adobe.air:
//            AndroidStageText

public class init extends ShapeDrawable
{

    public int mBkgColor;
    public Paint mBkgPaint;
    public int mBorderColor;
    public boolean mHaveBkg;
    public boolean mHaveBorder;
    final AndroidStageText this$0;

    private void init()
    {
        mBkgPaint = new Paint(getPaint());
        mBkgPaint.setStyle(android.graphics.gPaint);
        mBkgPaint.setColor(mBkgColor);
        getPaint().setStyle(android.graphics.Paint);
        getPaint().setStrokeWidth(3F);
        getPaint().setColor(mBorderColor);
    }

    protected void onDraw(Shape shape, Canvas canvas, Paint paint)
    {
        if (mHaveBkg)
        {
            canvas.drawRect(getBounds(), mBkgPaint);
        }
        if (mHaveBorder)
        {
            super.onDraw(shape, canvas, paint);
        }
    }

    public void setBkgColor(int i)
    {
        mBkgColor = i;
        mBkgPaint.setColor(i);
    }

    public void setBorderColor(int i)
    {
        mBorderColor = i;
        getPaint().setColor(i);
    }

    public ()
    {
        this$0 = AndroidStageText.this;
        super();
        mHaveBorder = false;
        mHaveBkg = false;
        mBkgColor = -1;
        mBorderColor = 0xff000000;
        init();
    }

    public init(Shape shape)
    {
        this$0 = AndroidStageText.this;
        super(shape);
        mHaveBorder = false;
        mHaveBkg = false;
        mBkgColor = -1;
        mBorderColor = 0xff000000;
        init();
    }
}
