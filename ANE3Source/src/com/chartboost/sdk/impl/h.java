// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.graphics.drawable.BitmapDrawable;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ArrayAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.Libraries.d;
import com.chartboost.sdk.c;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.impl:
//            a, s, v, d, 
//            c, e, f, i

public class h extends c
{
    public class a extends com.chartboost.sdk.c.b
    {

        private static int k[];
        final h c;
        private ImageView d;
        private ImageView e;
        private FrameLayout f;
        private s g;
        private v h;
        private v i;
        private a j;

        static s a(a a1)
        {
            return a1.g;
        }

        private void a(View view)
        {
            int i1 = 200;
            if (i1 == getId())
            {
                i1++;
            }
            View view1 = findViewById(i1);
            int j1 = i1;
            View view2 = view1;
            do
            {
                if (view2 == null)
                {
                    view.setId(j1);
                    view.setSaveEnabled(false);
                    return;
                }
                int k1 = j1 + 1;
                View view3 = findViewById(k1);
                j1 = k1;
                view2 = view3;
            } while (true);
        }

        static void a(a a1, boolean flag)
        {
            a1.a = flag;
        }

        static h b(a a1)
        {
            return a1.c;
        }

        static int[] c()
        {
            int ai[] = k;
            if (ai != null)
            {
                return ai;
            }
            int ai1[] = new int[com.chartboost.sdk.Libraries.CBOrientation.Difference.values().length];
            try
            {
                ai1[com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_0.ordinal()] = 1;
            }
            catch (NoSuchFieldError nosuchfielderror) { }
            try
            {
                ai1[com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_180.ordinal()] = 3;
            }
            catch (NoSuchFieldError nosuchfielderror1) { }
            try
            {
                ai1[com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_270.ordinal()] = 4;
            }
            catch (NoSuchFieldError nosuchfielderror2) { }
            try
            {
                ai1[com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_90.ordinal()] = 2;
            }
            catch (NoSuchFieldError nosuchfielderror3) { }
            k = ai1;
            return ai1;
        }

        protected void a(int i1, int j1)
        {
            android.widget.RelativeLayout.LayoutParams layoutparams1;
            android.widget.RelativeLayout.LayoutParams layoutparams2;
            android.widget.RelativeLayout.LayoutParams layoutparams3;
            com.chartboost.sdk.Libraries.CBOrientation.Difference difference;
            if (g.a() != null)
            {
                removeView(g.a());
            }
            android.widget.FrameLayout.LayoutParams layoutparams = new android.widget.FrameLayout.LayoutParams(-2, -2, 17);
            layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams2 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            layoutparams3 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
            difference = Chartboost.sharedChartboost().getForcedOrientationDifference();
            int k1;
            int l1;
            BitmapDrawable bitmapdrawable;
            s s1;
            if (difference.isOdd())
            {
                k1 = com.chartboost.sdk.Libraries.d.a(h.f(), getContext());
            } else
            {
                k1 = -1;
            }
            layoutparams1.width = k1;
            if (difference.isOdd())
            {
                l1 = -1;
            } else
            {
                l1 = com.chartboost.sdk.Libraries.d.a(h.f(), getContext());
            }
            layoutparams1.height = l1;
            c()[difference.ordinal()];
            JVM INSTR tableswitch 2 3: default 160
        //                       2 647
        //                       3 657;
               goto _L1 _L2 _L3
_L1:
            bitmapdrawable = new BitmapDrawable(h.b(c).b());
            bitmapdrawable.setTileModeX(android.graphics.Shader.TileMode.REPEAT);
            bitmapdrawable.setTileModeY(android.graphics.Shader.TileMode.CLAMP);
            f.setBackgroundDrawable(bitmapdrawable);
            if (com.chartboost.sdk.impl.h.c(c) != null)
            {
                e.setImageBitmap(com.chartboost.sdk.impl.h.c(c).b());
                layoutparams.width = com.chartboost.sdk.Libraries.d.a(com.chartboost.sdk.impl.h.c(c).c(), getContext());
                layoutparams.height = com.chartboost.sdk.Libraries.d.a(Math.min(h.f(), com.chartboost.sdk.impl.h.c(c).d()), getContext());
            }
            d.setImageBitmap(com.chartboost.sdk.impl.h.d(c).b());
            int i2;
            int j2;
            if (difference.isOdd())
            {
                i2 = h.g();
            } else
            {
                i2 = h.h();
            }
            layoutparams2.width = com.chartboost.sdk.Libraries.d.a(i2, getContext());
            if (difference.isOdd())
            {
                j2 = h.h();
            } else
            {
                j2 = h.g();
            }
            layoutparams2.height = com.chartboost.sdk.Libraries.d.a(j2, getContext());
            c()[difference.ordinal()];
            JVM INSTR tableswitch 2 4: default 384
        //                       2 683
        //                       3 735
        //                       4 780;
               goto _L4 _L5 _L6 _L7
_L4:
            layoutparams2.rightMargin = com.chartboost.sdk.Libraries.d.a(10, getContext());
            layoutparams2.topMargin = com.chartboost.sdk.Libraries.d.a((h.f() - h.g()) / 2, getContext());
            layoutparams2.addRule(11);
_L12:
            layoutparams3.width = -1;
            layoutparams3.height = -1;
            c()[difference.ordinal()];
            JVM INSTR tableswitch 2 4: default 472
        //                       2 818
        //                       3 834
        //                       4 850;
               goto _L8 _L9 _L10 _L11
_L11:
            break MISSING_BLOCK_LABEL_850;
_L8:
            layoutparams3.addRule(3, i.getId());
_L13:
            s1 = g;
            int k2;
            if (difference.isOdd())
            {
                k2 = 0;
            } else
            {
                k2 = 1;
            }
            s1.a(k2);
            a(((View) (g.a())));
            g.a(j);
            addView(g.a(), layoutparams3);
            if (difference == com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_180)
            {
                g.b().setGravity(80);
            } else
            if (difference == com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_90)
            {
                g.b().setGravity(5);
            } else
            {
                g.b().setGravity(0);
            }
            i.setLayoutParams(layoutparams1);
            e.setLayoutParams(layoutparams);
            e.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
            h.setLayoutParams(layoutparams2);
            d.setScaleType(android.widget.ImageView.ScaleType.FIT_CENTER);
            post(new Runnable(this, difference) {

                final a a;
                private final com.chartboost.sdk.Libraries.CBOrientation.Difference b;

                public void run()
                {
                    try
                    {
                        a.a(a, true);
                        a.requestLayout();
                        a.a(a).a().requestLayout();
                        a.a(a).b().requestLayout();
                        a.a(a, false);
                        if (b == com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_180 || b == com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_90)
                        {
                            a.a(a).c();
                        }
                        return;
                    }
                    catch (Exception exception)
                    {
                        return;
                    }
                }

            
            {
                a = a1;
                b = difference;
                super();
            }
            });
            return;
_L2:
            layoutparams1.addRule(11);
              goto _L1
_L3:
            layoutparams1.addRule(12);
              goto _L1
_L5:
            layoutparams2.bottomMargin = com.chartboost.sdk.Libraries.d.a(10, getContext());
            layoutparams2.rightMargin = com.chartboost.sdk.Libraries.d.a((h.f() - h.g()) / 2, getContext());
            layoutparams2.addRule(11);
            layoutparams2.addRule(12);
              goto _L12
_L6:
            layoutparams2.leftMargin = com.chartboost.sdk.Libraries.d.a(10, getContext());
            layoutparams2.bottomMargin = com.chartboost.sdk.Libraries.d.a((h.f() - h.g()) / 2, getContext());
            layoutparams2.addRule(12);
              goto _L12
_L7:
            layoutparams2.topMargin = com.chartboost.sdk.Libraries.d.a(10, getContext());
            layoutparams2.leftMargin = com.chartboost.sdk.Libraries.d.a((h.f() - h.g()) / 2, getContext());
              goto _L12
_L9:
            layoutparams3.addRule(0, i.getId());
              goto _L13
_L10:
            layoutparams3.addRule(2, i.getId());
              goto _L13
            layoutparams3.addRule(1, i.getId());
              goto _L13
        }

        public void b()
        {
            super.b();
            d = null;
            e = null;
            g = null;
        }

        private a(Context context)
        {
            c = h.this;
            super(h.this, context);
            setBackgroundColor(0xffe3e3e3);
            f = new FrameLayout(context);
            e = new ImageView(context);
            d = new ImageView(context);
            int i1;
            if (Chartboost.sharedChartboost().getForcedOrientationDifference().isOdd())
            {
                i1 = 0;
            } else
            {
                i1 = 1;
            }
            g = new s(context, i1);
            g.b().setBackgroundColor(0xffe3e3e3);
            f.setFocusable(false);
            e.setFocusable(false);
            d.setFocusable(false);
            d.setClickable(true);
            h = new v(context, d);
            i = new v(context, f);
            addView(i);
            f.addView(e);
            addView(h);
            a(e);
            a(f);
            a(d);
            a(i);
            a(h);
            d.setOnClickListener(new _cls1(this));
            j = new a(this, context);
        }

        a(Context context, a a1)
        {
            this(context);
        }
    }

    public class a.a extends ArrayAdapter
    {

        Context a;
        final a b;

        static a a(a.a a1)
        {
            return a1.b;
        }

        public JSONObject a(int i1)
        {
            return (JSONObject)h.a(a.b(b)).get(i1);
        }

        public int getCount()
        {
            return h.a(a.b(b)).size();
        }

        public Object getItem(int i1)
        {
            return a(i1);
        }

        public View getView(int i1, View view, ViewGroup viewgroup)
        {
            com.chartboost.sdk.Libraries.CBOrientation.Difference difference = Chartboost.sharedChartboost().getForcedOrientationDifference();
            if (difference.isReverse())
            {
                i1 = getCount() - 1 - i1;
            }
            JSONObject jsonobject = a(i1);
            String s = jsonobject.optString("type", "");
            v v2;
            Object obj;
            if (view == null)
            {
                com.chartboost.sdk.impl.c c1;
                android.view.View.OnClickListener onclicklistener;
                if (s.equals("featured"))
                {
                    obj = new com.chartboost.sdk.impl.d(a);
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
                b b1 = (b)v1.a();
                v2 = v1;
                obj = b1;
            }
            ((b) (obj)).a(jsonobject, i1);
            c1 = (com.chartboost.sdk.impl.c)obj;
            if (difference.isOdd())
            {
                v2.setLayoutParams(new android.widget.AbsListView.LayoutParams(((b) (obj)).a(), -1));
            } else
            {
                v2.setLayoutParams(new android.widget.AbsListView.LayoutParams(-1, ((b) (obj)).a()));
            }
            onclicklistener = new android.view.View.OnClickListener(this, jsonobject) {

                final a.a a;
                private final JSONObject b;

                public void onClick(View view)
                {
                    String s = b.optString("deep-link");
                    if (s == null || s.equals(""))
                    {
                        s = b.optString("link");
                    }
                    if (a.b(a.a.a(a)).b != null)
                    {
                        a.b(a.a.a(a)).b.a(s, b);
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

        public a.a(a a1, Context context)
        {
            b = a1;
            super(context, 0, h.a(a.b(a1)));
            a = context;
        }
    }

    public static interface b
    {

        public abstract int a();

        public abstract void a(JSONObject jsonobject, int i1);
    }


    private static int h = 50;
    private static int i = 50;
    private static int j = 30;
    private List k;
    private com.chartboost.sdk.Libraries.a.a l;
    private com.chartboost.sdk.Libraries.a.a m;
    private com.chartboost.sdk.Libraries.a.a n;
    private SparseArray o;

    public h(com.chartboost.sdk.impl.a a1)
    {
        super(a1);
        e = 3;
        k = new ArrayList();
    }

    static List a(h h1)
    {
        return h1.k;
    }

    static void a(h h1, com.chartboost.sdk.Libraries.a.a a1)
    {
        h1.a(a1);
    }

    static com.chartboost.sdk.Libraries.a.a b(h h1)
    {
        return h1.n;
    }

    static void b(h h1, com.chartboost.sdk.Libraries.a.a a1)
    {
        h1.l = a1;
    }

    static com.chartboost.sdk.Libraries.a.a c(h h1)
    {
        return h1.m;
    }

    static void c(h h1, com.chartboost.sdk.Libraries.a.a a1)
    {
        h1.m = a1;
    }

    static com.chartboost.sdk.Libraries.a.a d(h h1)
    {
        return h1.l;
    }

    static void d(h h1, com.chartboost.sdk.Libraries.a.a a1)
    {
        h1.n = a1;
    }

    static SparseArray e(h h1)
    {
        return h1.o;
    }

    static int f()
    {
        return h;
    }

    static int g()
    {
        return j;
    }

    static int h()
    {
        return i;
    }

    protected com.chartboost.sdk.c.b a(Context context)
    {
        return new a(context, null);
    }

    public void a(JSONObject jsonobject)
    {
        JSONArray jsonarray;
        o.b b1;
        int i1;
        super.a(jsonobject);
        jsonarray = jsonobject.optJSONArray("cells");
        if (jsonarray == null)
        {
            if (d != null)
            {
                d.a();
            }
            return;
        }
        o = new SparseArray();
        b1 = new o.b() {

            final h a;

            public void a(com.chartboost.sdk.Libraries.a.a a1, Bundle bundle3)
            {
                h.e(a).put(bundle3.getInt("index"), a1);
                h.a(a, a1);
            }

            
            {
                a = h.this;
                super();
            }
        };
        i1 = 0;
_L2:
        JSONObject jsonobject1;
        String s;
        if (i1 >= jsonarray.length())
        {
            o.b b2 = new o.b() {

                final h a;

                public void a(com.chartboost.sdk.Libraries.a.a a1, Bundle bundle3)
                {
                    h.b(a, a1);
                    h.a(a, a1);
                }

            
            {
                a = h.this;
                super();
            }
            };
            o.b b3 = new o.b() {

                final h a;

                public void a(com.chartboost.sdk.Libraries.a.a a1, Bundle bundle3)
                {
                    com.chartboost.sdk.impl.h.c(a, a1);
                    h.a(a, a1);
                }

            
            {
                a = h.this;
                super();
            }
            };
            o.b b4 = new o.b() {

                final h a;

                public void a(com.chartboost.sdk.Libraries.a.a a1, Bundle bundle3)
                {
                    com.chartboost.sdk.impl.h.d(a, a1);
                    h.a(a, a1);
                }

            
            {
                a = h.this;
                super();
            }
            };
            a("close", b2);
            a("header-center", b3);
            a("header-tile", b4);
            return;
        }
        jsonobject1 = jsonarray.optJSONObject(i1);
        k.add(jsonobject1);
        s = jsonobject1.optString("type", "");
        if (!s.equals("regular"))
        {
            break; /* Loop/switch isn't completed */
        }
        JSONObject jsonobject3 = jsonobject1.optJSONObject("assets");
        if (jsonobject3 != null)
        {
            e = 1 + e;
            Bundle bundle2 = new Bundle();
            bundle2.putInt("index", i1);
            a(jsonobject3, "icon", b1, bundle2);
        }
_L3:
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        if (s.equals("featured"))
        {
            JSONObject jsonobject2 = jsonobject1.optJSONObject("assets");
            if (jsonobject2 != null)
            {
                e = 1 + e;
                Bundle bundle = new Bundle();
                bundle.putInt("index", i1);
                a(jsonobject2, "portrait", b1, bundle);
                e = 1 + e;
                Bundle bundle1 = new Bundle();
                bundle1.putInt("index", i1);
                a(jsonobject2, "landscape", b1, bundle1);
            }
        } else
        {
            s.equals("webview");
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }

    public void c()
    {
        super.c();
        k = null;
        l = null;
        n = null;
        m = null;
    }


    // Unreferenced inner class com/chartboost/sdk/impl/h$a$1

/* anonymous class */
    class a._cls1
        implements android.view.View.OnClickListener
    {

        final a a;

        public void onClick(View view)
        {
            if (a.b(a).a != null)
            {
                a.b(a).a.a();
            }
        }

            
            {
                a = a1;
                super();
            }
    }

}
