// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.widget;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;

// Referenced classes of package android.support.v4.widget:
//            ResourceCursorAdapter

public class SimpleCursorAdapter extends ResourceCursorAdapter
{
    public static interface CursorToStringConverter
    {

        public abstract CharSequence convertToString(Cursor cursor);
    }

    public static interface ViewBinder
    {

        public abstract boolean setViewValue(View view, Cursor cursor, int i);
    }


    private CursorToStringConverter mCursorToStringConverter;
    protected int mFrom[];
    String mOriginalFrom[];
    private int mStringConversionColumn;
    protected int mTo[];
    private ViewBinder mViewBinder;

    public SimpleCursorAdapter(Context context, int i, Cursor cursor, String as[], int ai[])
    {
        super(context, i, cursor);
        mStringConversionColumn = -1;
        mTo = ai;
        mOriginalFrom = as;
        findColumns(as);
    }

    public SimpleCursorAdapter(Context context, int i, Cursor cursor, String as[], int ai[], int j)
    {
        super(context, i, cursor, j);
        mStringConversionColumn = -1;
        mTo = ai;
        mOriginalFrom = as;
        findColumns(as);
    }

    private void findColumns(String as[])
    {
        if (mCursor != null)
        {
            int i = as.length;
            if (mFrom == null || mFrom.length != i)
            {
                mFrom = new int[i];
            }
            for (int j = 0; j < i; j++)
            {
                mFrom[j] = mCursor.getColumnIndexOrThrow(as[j]);
            }

        } else
        {
            mFrom = null;
        }
    }

    public void bindView(View view, Context context, Cursor cursor)
    {
        ViewBinder viewbinder = mViewBinder;
        int i = mTo.length;
        int ai[] = mFrom;
        int ai1[] = mTo;
        int j = 0;
        while (j < i) 
        {
            View view1 = view.findViewById(ai1[j]);
            if (view1 == null)
            {
                continue;
            }
            boolean flag = false;
            if (viewbinder != null)
            {
                flag = viewbinder.setViewValue(view1, cursor, ai[j]);
            }
            if (!flag)
            {
                String s = cursor.getString(ai[j]);
                if (s == null)
                {
                    s = "";
                }
                if (view1 instanceof TextView)
                {
                    setViewText((TextView)view1, s);
                } else
                if (view1 instanceof ImageView)
                {
                    setViewImage((ImageView)view1, s);
                } else
                {
                    throw new IllegalStateException((new StringBuilder()).append(view1.getClass().getName()).append(" is not a ").append(" view that can be bounds by this SimpleCursorAdapter").toString());
                }
            }
            j++;
        }
    }

    public void changeCursorAndColumns(Cursor cursor, String as[], int ai[])
    {
        mOriginalFrom = as;
        mTo = ai;
        super.changeCursor(cursor);
        findColumns(mOriginalFrom);
    }

    public CharSequence convertToString(Cursor cursor)
    {
        if (mCursorToStringConverter != null)
        {
            return mCursorToStringConverter.convertToString(cursor);
        }
        if (mStringConversionColumn > -1)
        {
            return cursor.getString(mStringConversionColumn);
        } else
        {
            return super.convertToString(cursor);
        }
    }

    public CursorToStringConverter getCursorToStringConverter()
    {
        return mCursorToStringConverter;
    }

    public int getStringConversionColumn()
    {
        return mStringConversionColumn;
    }

    public ViewBinder getViewBinder()
    {
        return mViewBinder;
    }

    public void setCursorToStringConverter(CursorToStringConverter cursortostringconverter)
    {
        mCursorToStringConverter = cursortostringconverter;
    }

    public void setStringConversionColumn(int i)
    {
        mStringConversionColumn = i;
    }

    public void setViewBinder(ViewBinder viewbinder)
    {
        mViewBinder = viewbinder;
    }

    public void setViewImage(ImageView imageview, String s)
    {
        try
        {
            imageview.setImageResource(Integer.parseInt(s));
            return;
        }
        catch (NumberFormatException numberformatexception)
        {
            imageview.setImageURI(Uri.parse(s));
        }
    }

    public void setViewText(TextView textview, String s)
    {
        textview.setText(s);
    }

    public Cursor swapCursor(Cursor cursor)
    {
        Cursor cursor1 = super.swapCursor(cursor);
        findColumns(mOriginalFrom);
        return cursor1;
    }
}
