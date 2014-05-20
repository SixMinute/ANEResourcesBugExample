// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import com.chartboost.sdk.Chartboost;
import java.util.List;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.impl:
//            h, d, v, c, 
//            e, f, i

public class a extends ArrayAdapter
{

    Context a;
    final ner b;

    static a a(a a1)
    {
        return a1.b;
    }

    public JSONObject a(int j)
    {
        return (JSONObject)h.a(b(b)).get(j);
    }

    public int getCount()
    {
        return h.a(b(b)).size();
    }

    public Object getItem(int j)
    {
        return a(j);
    }

    public View getView(int j, View view, ViewGroup viewgroup)
    {
        com.chartboost.sdk.Libraries.ntation.Difference difference = Chartboost.sharedChartboost().getForcedOrientationDifference();
        if (difference.isReverse())
        {
            j = getCount() - 1 - j;
        }
        JSONObject jsonobject = a(j);
        String s = jsonobject.optString("type", "");
        v v2;
        Object obj;
        if (view == null)
        {
            c c1;
            android.view.nClickListener nclicklistener;
            if (s.equals("featured"))
            {
                obj = new d(a);
            } else
            if (s.equals("regular"))
            {
                obj = new e(a);
            } else
            {
                boolean flag = s.equals("webview");
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
            ner ner = (a)v1.a();
            v2 = v1;
            obj = ner;
        }
        ((a) (obj)).a(jsonobject, j);
        c1 = (c)obj;
        if (difference.isOdd())
        {
            v2.setLayoutParams(new android.widget.tView.LayoutParams(((ams) (obj)).ams(), -1));
        } else
        {
            v2.setLayoutParams(new android.widget.tView.LayoutParams(-1, ((ams) (obj)).ams()));
        }
        nclicklistener = new android.view.View.OnClickListener(jsonobject) {

            final h.a.a a;
            private final JSONObject b;

            public void onClick(View view1)
            {
                String s1 = b.optString("deep-link");
                if (s1 == null || s1.equals(""))
                {
                    s1 = b.optString("link");
                }
                if (h.a.b(h.a.a.a(a)).b != null)
                {
                    h.a.b(h.a.a.a(a)).b.a(s1, b);
                }
            }

            
            {
                a = h.a.a.this;
                b = jsonobject;
                super();
            }
        };
        c1.a = nclicklistener;
        c1.setOnClickListener(nclicklistener);
        if (obj instanceof e)
        {
            ((e)obj).b.setOnClickListener(nclicklistener);
        }
        return v2;
    }

    public _cls1.b(_cls1.b b1, Context context)
    {
        b = b1;
        super(context, 0, h.a(nit>(b1)));
        a = context;
    }
}
