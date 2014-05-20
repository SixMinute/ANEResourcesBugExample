// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.d;
import java.util.List;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.impl:
//            s, v, h, d, 
//            c, e, f, i

public class <init> extends com.chartboost.sdk..h.a
{
    public class a extends ArrayAdapter
    {

        Context a;
        final h.a b;

        static h.a a(a a1)
        {
            return a1.b;
        }

        public JSONObject a(int l)
        {
            return (JSONObject)com.chartboost.sdk.impl.h.a(h.a.b(b)).get(l);
        }

        public int getCount()
        {
            return com.chartboost.sdk.impl.h.a(h.a.b(b)).size();
        }

        public Object getItem(int l)
        {
            return a(l);
        }

        public View getView(int l, View view, ViewGroup viewgroup)
        {
            com.chartboost.sdk.Libraries.CBOrientation.Difference difference = Chartboost.sharedChartboost().getForcedOrientationDifference();
            if (difference.isReverse())
            {
                l = getCount() - 1 - l;
            }
            JSONObject jsonobject = a(l);
            String s1 = jsonobject.optString("type", "");
            v v2;
            Object obj;
            if (view == null)
            {
                c c1;
                android.view.View.OnClickListener onclicklistener;
                if (s1.equals("featured"))
                {
                    obj = new com.chartboost.sdk.impl.d(a);
                } else
                if (s1.equals("regular"))
                {
                    obj = new e(a);
                } else
                {
                    boolean flag = s1.equals("webview");
                    obj = null;
                    if (flag)
                    {
                        obj = new i(a);
                    }
                }
                v2 = new v(a, (View)obj);
            } else
            {
                v v1 = (v)view;
                h.b b1 = (h.b)v1.a();
                v2 = v1;
                obj = b1;
            }
            ((h.b) (obj)).a(jsonobject, l);
            c1 = (c)obj;
            if (difference.isOdd())
            {
                v2.setLayoutParams(new android.widget.AbsListView.LayoutParams(((h.b) (obj)).a(), -1));
            } else
            {
                v2.setLayoutParams(new android.widget.AbsListView.LayoutParams(-1, ((h.b) (obj)).a()));
            }
            onclicklistener = new android.view.View.OnClickListener(this, jsonobject) {

                final a a;
                private final JSONObject b;

                public void onClick(View view)
                {
                    String s1 = b.optString("deep-link");
                    if (s1 == null || s1.equals(""))
                    {
                        s1 = b.optString("link");
                    }
                    if (h.a.b(a.a(a)).b != null)
                    {
                        h.a.b(a.a(a)).b.a(s1, b);
                    }
                }

            
            {
                a = a1;
                b = jsonobject;
                super();
            }
            };
            c1.a = onclicklistener;
            c1.setOnClickListener(onclicklistener);
            if (obj instanceof e)
            {
                ((e)obj).b.setOnClickListener(onclicklistener);
            }
            return v2;
        }

        public a(Context context)
        {
            b = h.a.this;
            super(context, 0, com.chartboost.sdk.impl.h.a(h.a.b(h.a.this)));
        