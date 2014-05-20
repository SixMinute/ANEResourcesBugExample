// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import com.chartboost.sdk.Chartboost;
import com.chartboost.sdk.c;
import java.util.Date;
import java.util.List;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.impl:
//            b, h, x, u

public class com.chartboost.sdk.impl.a
{
    public static interface a
    {

        public abstract void a(com.chartboost.sdk.impl.a a1);

        public abstract void a(com.chartboost.sdk.impl.a a1, String s, JSONObject jsonobject);

        public abstract void b(com.chartboost.sdk.impl.a a1);

        public abstract void c(com.chartboost.sdk.impl.a a1);
    }

    public static final class b extends Enum
    {

        public static final b a;
        public static final b b;
        public static final b c;
        public static final b d;
        public static final b e;
        public static final b f;
        private static final b g[];

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(com/chartboost/sdk/impl/a$b, s);
        }

        public static b[] values()
        {
            b ab[] = g;
            int i1 = ab.length;
            b ab1[] = new b[i1];
            System.arraycopy(ab, 0, ab1, 0, i1);
            return ab1;
        }

        static 
        {
            a = new b("CBImpressionStateOther", 0);
            b = new b("CBImpressionStateWaitingForDisplay", 1);
            c = new b("CBImpressionStateDisplayedByDefaultController", 2);
            d = new b("CBImpressionStateWaitingForDismissal", 3);
            e = new b("CBImpressionStateWaitingForCaching", 4);
            f = new b("CBImpressionStateCached", 5);
            b ab[] = new b[6];
            ab[0] = a;
            ab[1] = b;
            ab[2] = c;
            ab[3] = d;
            ab[4] = e;
            ab[5] = f;
            g = ab;
        }

        private b(String s, int i1)
        {
            super(s, i1);
        }
    }

    public static final class c extends Enum
    {

        public static final c a;
        public static final c b;
        public static final c c;
        private static final c d[];

        public static c valueOf(String s)
        {
            return (c)Enum.valueOf(com/chartboost/sdk/impl/a$c, s);
        }

        public static c[] values()
        {
            c ac[] = d;
            int i1 = ac.length;
            c ac1[] = new c[i1];
            System.arraycopy(ac, 0, ac1, 0, i1);
            return ac1;
        }

        static 
        {
            a = new c("CBImpressionTypeOther", 0);
            b = new c("CBImpressionTypeInterstitial", 1);
            c = new c("CBImpressionTypeMoreApps", 2);
            c ac[] = new c[3];
            ac[0] = a;
            ac[1] = b;
            ac[2] = c;
            d = ac;
        }

        private c(String s, int i1)
        {
            super(s, i1);
        }
    }


    public JSONObject a;
    public Date b;
    public b c;
    public c d;
    public String e;
    public com.chartboost.sdk.c f;
    public a g;
    public u h;
    public boolean i;
    public boolean j;
    public boolean k;
    public boolean l;

    public com.chartboost.sdk.impl.a(JSONObject jsonobject, c c1, a a1, b b1, String s, boolean flag)
    {
        JSONObject jsonobject1;
        boolean flag1;
        if (jsonobject == null)
        {
            jsonobject1 = new JSONObject();
        } else
        {
            jsonobject1 = jsonobject;
        }
        c = b1;
        e = s;
        a = jsonobject1;
        b = new Date();
        g = a1;
        d = c1;
        l = flag;
        i = false;
        j = false;
        k = false;
        flag1 = jsonobject1.optString("type", "").equals("native");
        if (flag1 && d == c.b)
        {
            f = new com.chartboost.sdk.impl.b(this);
        } else
        if (flag1 && d == com.chartboost.sdk.impl.c.c)
        {
            f = new h(this);
        } else
        {
            f = new x(this);
        }
        f.c = new com.chartboost.sdk.c.a(this) {

            final com.chartboost.sdk.impl.a a;
            private final com.chartboost.sdk.impl.a b;

            public void a()
            {
                if (b.g != null)
                {
                    b.g.a(b);
                }
            }

            
            {
                a = com.chartboost.sdk.impl.a.this;
                b = a2;
                super();
            }
        };
        f.a = new com.chartboost.sdk.c.a(this) {

            final com.chartboost.sdk.impl.a a;
            private final com.chartboost.sdk.impl.a b;

            public void a()
            {
                if (b.g != null)
                {
                    b.g.b(b);
                }
            }

            
            {
                a = com.chartboost.sdk.impl.a.this;
                b = a2;
                super();
            }
        };
        f.b = new com.chartboost.sdk.c.c(this) {

            final com.chartboost.sdk.impl.a a;
            private final com.chartboost.sdk.impl.a b;

            public void a(String s1, JSONObject jsonobject2)
            {
                String s2;
                String s3;
                Intent intent;
                int i1;
                if (s1 != null)
                {
                    s2 = s1;
                } else
                {
                    s2 = b.a.optString("link");
                }
                s3 = b.a.optString("deep-link");
                if (s3 == null || s3.equals(""))
                {
                    break MISSING_BLOCK_LABEL_82;
                }
                intent = new Intent("android.intent.action.VIEW", Uri.parse(s3));
                i1 = Chartboost.sharedChartboost().getContext().getPackageManager().queryIntentActivities(intent, 0x10000).size();
                if (i1 > 0)
                {
                    s2 = s3;
                }
_L2:
                b.g.a(b, s2, jsonobject2);
                return;
                Exception exception;
                exception;
                if (true) goto _L2; else goto _L1
_L1:
            }

            
            {
                a = com.chartboost.sdk.impl.a.this;
                b = a2;
                super();
            }
        };
        f.d = new com.chartboost.sdk.c.a(this) {

            final com.chartboost.sdk.impl.a a;
            private final com.chartboost.sdk.impl.a b;

            public void a()
            {
                if (b.g != null)
                {
                    b.g.c(b);
                }
            }

            
            {
                a = com.chartboost.sdk.impl.a.this;
                b = a2;
                super();
            }
        };
        f.a(jsonobject1);
    }

    public boolean a()
    {
        i = true;
        j = true;
        k = true;
        f.a();
        if (f.d() != null)
        {
            return true;
        } else
        {
            i = false;
            j = false;
            k = false;
            return false;
        }
    }

    public void b()
    {
        if (h != null)
        {
            h.a();
            try
            {
                if (f.d().getParent() != null)
                {
                    h.removeView(f.d());
                }
            }
            catch (Exception exception) { }
        }
        if (f != null)
        {
            f.c();
        }
        a = null;
        b = null;
        g = null;
        f = null;
        h = null;
    }

    public void c()
    {
        if (h != null)
        {
            h.a();
            try
            {
                if (f.d().getParent() != null)
                {
                    h.removeView(f.d());
                }
            }
            catch (Exception exception) { }
        }
        if (f != null)
        {
            f.e();
        }
    }
}
