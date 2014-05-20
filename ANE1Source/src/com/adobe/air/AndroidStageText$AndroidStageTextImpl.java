// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.ScrollView;

// Referenced classes of package com.adobe.air:
//            AndroidStageText

public class this._cls0 extends ScrollView
{

    final AndroidStageText this$0;

    protected void onDraw(Canvas canvas)
    {
        if (AndroidStageText.access$300(AndroidStageText.this) != null)
        {
            canvas.save();
            int i = -AndroidStageText.access$400(AndroidStageText.this).left;
            int j = -AndroidStageText.access$400(AndroidStageText.this).top;
            canvas.clipRect(new Rect(i + AndroidStageText.access$300(AndroidStageText.this).left, j + AndroidStageText.access$300(AndroidStageText.this).top, i + AndroidStageText.access$300(AndroidStageText.this).right, j + AndroidStageText.access$300(AndroidStageText.this).bottom));
            super.onDraw(canvas);
            canvas.restore();
            return;
        } else
        {
            super.onDraw(canvas);
            return;
        }
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        AndroidStageText androidstagetext = AndroidStageText.this;
        super.onLayout(flag, i, j, k, l);
        if (AndroidStageText.access$000(androidstagetext))
        {
            AndroidStageText.access$002(androidstagetext, false);
            AndroidStageText.access$200(androidstagetext, AndroidStageText.access$100(androidstagetext));
        }
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
    }

    public _cls9(Context context)
    {
        this$0 = AndroidStageText.this;
        super(context);
    }

    public this._cls0(Context context, AttributeSet attributeset)
    {
        this$0 = AndroidStageText.this;
        super(context, attributeset);
    }

    public this._cls0(Context context, AttributeSet attributeset, int i)
    {
        this$0 = AndroidStageText.this;
        super(context, attributeset, i);
    }
}
