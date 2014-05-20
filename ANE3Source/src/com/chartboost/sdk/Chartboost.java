// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.view.Window;
import com.chartboost.sdk.Analytics.CBAnalytics;
import com.chartboost.sdk.Libraries.CBOrientation;
import com.chartboost.sdk.Libraries.d;
import com.chartboost.sdk.Libraries.e;
import com.chartboost.sdk.impl.a;
import com.chartboost.sdk.impl.j;
import com.chartboost.sdk.impl.k;
import com.chartboost.sdk.impl.o;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk:
//            a, CBImpressionActivity, b, d, 
//            c, ChartboostDelegate

public final class Chartboost
{
    public static interface CBAPIResponseCallback
    {

        public abstract void onFailure(String s1);

        public abstract void onSuccess(JSONObject jsonobject);
    }

    private class a
        implements Runnable
    {

        final Chartboost a;
        private int b;
        private int c;
        private int d;
        private int e;

        public void run()
        {
            if (a.getContext() != null)
            {
                a.clearImageCache();
            }
            if (a.a != null && a.a.hashCode() == c)
            {
                a.a = null;
            }
            if (com.chartboost.sdk.Chartboost.a(a) != null && com.chartboost.sdk.Chartboost.a(a).hashCode() == b)
            {
                com.chartboost.sdk.Chartboost.a(a, null);
            }
            if (Chartboost.b(a) != null && Chartboost.b(a).hashCode() == d)
            {
                com.chartboost.sdk.Chartboost.a(a, null);
            }
            if (Chartboost.c(a) != null && Chartboost.c(a).hashCode() == e)
            {
                com.chartboost.sdk.Chartboost.a(a, null);
            }
        }

        private a()
        {
            a = Chartboost.this;
            super();
            int i1;
            int j1;
            int k1;
            int l1;
            if (com.chartboost.sdk.Chartboost.a(Chartboost.this) == null)
            {
                i1 = -1;
            } else
            {
                i1 = com.chartboost.sdk.Chartboost.a(Chartboost.this).hashCode();
            }
            b = i1;
            if (Chartboost.this.a == null)
            {
                j1 = -1;
            } else
            {
                j1 = Chartboost.this.a.hashCode();
            }
            c = j1;
            if (Chartboost.b(Chartboost.this) == null)
            {
                k1 = -1;
            } else
            {
                k1 = Chartboost.b(Chartboost.this).hashCode();
            }
            d = k1;
            if (Chartboost.c(Chartboost.this) == null)
            {
                l1 = -1;
            } else
            {
                l1 = Chartboost.c(Chartboost.this).hashCode();
            }
            e = l1;
        }

        a(a a1)
        {
            this();
        }
    }

    static class b extends WeakReference
    {

        private int a;

        public int a()
        {
            return a;
        }

        public boolean a(Activity activity)
        {
            if (activity == null)
            {
                return false;
            }
            return activity.hashCode() == a;
        }

        public boolean a(b b1)
        {
            if (b1 == null)
            {
                return false;
            }
            return b1.a() == a;
        }

        public Context b()
        {
            Context context = (Context)get();
            if (context == null)
            {
                return Chartboost.sharedChartboost().getContext();
            } else
            {
                return context;
            }
        }

        public int hashCode()
        {
            return a();
        }

        public b(Activity activity)
        {
            super(activity);
            a = activity.hashCode();
        }
    }


    private static Chartboost d = null;
    private Runnable A;
    protected b a;
    protected j b;
    protected Handler c;
    private com.chartboost.sdk.b e;
    private Context f;
    private CBImpressionActivity g;
    private List h;
    private com.chartboost.sdk.a i;
    private String j;
    private String k;
    private ChartboostDelegate l;
    private int m;
    private boolean n;
    private CBOrientation o;
    private boolean p;
    private boolean q;
    private boolean r;
    private String s;
    private boolean t;
    private SparseBooleanArray u;
    private SparseArray v;
    private boolean w;
    private long x;
    private long y;
    private boolean z;

    private Chartboost()
    {
        f = null;
        g = null;
        h = new ArrayList();
        a = null;
        m = 30000;
        n = false;
        q = false;
        r = false;
        s = null;
        t = false;
        u = new SparseBooleanArray();
        v = new SparseArray();
        w = false;
        x = 0L;
        y = 0L;
        z = false;
        A = new a(null);
        d = this;
        c = new Handler();
        b = new j(null, null);
        i = new com.chartboost.sdk.a(this);
    }

    static CBImpressionActivity a(Chartboost chartboost)
    {
        return chartboost.g;
    }

    private void a(int i1, boolean flag)
    {
        u.put(i1, flag);
    }

    private void a(Activity activity, boolean flag)
    {
        if (activity == null)
        {
            return;
        } else
        {
            a(activity.hashCode(), flag);
            return;
        }
    }

    private void a(b b1, boolean flag)
    {
        if (b1 == null)
        {
            return;
        } else
        {
            a(b1.a(), flag);
            return;
        }
    }

    static void a(Chartboost chartboost, CBImpressionActivity cbimpressionactivity)
    {
        chartboost.g = cbimpressionactivity;
    }

    static void a(Chartboost chartboost, ChartboostDelegate chartboostdelegate)
    {
        chartboost.l = chartboostdelegate;
    }

    static void a(Chartboost chartboost, com.chartboost.sdk.b b1)
    {
        chartboost.e = b1;
    }

    private void a(Runnable runnable)
    {
        if (!com.chartboost.sdk.Libraries.d.d())
        {
            c.post(runnable);
            return;
        } else
        {
            runnable.run();
            return;
        }
    }

    private boolean a(b b1)
    {
        if (b1 == null)
        {
            return false;
        }
        Boolean boolean1 = Boolean.valueOf(u.get(b1.a()));
        if (boolean1 != null)
        {
            return boolean1.booleanValue();
        } else
        {
            return false;
        }
    }

    static ChartboostDelegate b(Chartboost chartboost)
    {
        return chartboost.l;
    }

    private void b(b b1)
    {
        if (!n)
        {
            c(b1);
        }
        if (!(b1.get() instanceof CBImpressionActivity))
        {
            a(b1, false);
        }
        x = (long)((double)System.nanoTime() / 1000000D);
    }

    private void b(b b1, boolean flag)
    {
        int i1 = b1.a();
        com.chartboost.sdk.b b2 = (com.chartboost.sdk.b)v.get(i1);
        if (b2 == null && flag)
        {
            com.chartboost.sdk.b b4;
            if (e != null)
            {
                com.chartboost.sdk.b b5 = e;
                e = null;
                b5.a((Activity)b1.get());
                b4 = b5;
            } else
            {
                b4 = new com.chartboost.sdk.b(this, (Activity)b1.get());
            }
            v.put(i1, b4);
        } else
        if (b2 != null && !flag)
        {
            com.chartboost.sdk.b b3 = (com.chartboost.sdk.b)v.get(i1);
            v.remove(i1);
            b3.a(null);
            if (e == null)
            {
                e = b3;
                return;
            }
        }
    }

    static com.chartboost.sdk.b c(Chartboost chartboost)
    {
        return chartboost.e;
    }

    private void c(b b1)
    {
        com.chartboost.sdk.b b2 = a();
        if (d(b1) && b2 != null)
        {
            b(b1, false);
            w = false;
            if (b2.a())
            {
                b2.a(false);
                w = true;
            }
            if (i.a() != null)
            {
                b2.a(i.a());
            }
            if (b1.get() instanceof CBImpressionActivity)
            {
                d();
            }
        }
        if (!(b1.get() instanceof CBImpressionActivity))
        {
            a(b1, false);
        }
    }

    private void cacheInterstitialData(String s1, CBAPIResponseCallback cbapiresponsecallback)
    {
        com.chartboost.sdk.d.a(s1, cbapiresponsecallback);
    }

    private void cacheInterstitialDataBatch(String s1, int i1, CBAPIResponseCallback cbapiresponsecallback)
    {
        com.chartboost.sdk.d.a(s1, i1, cbapiresponsecallback);
    }

    static com.chartboost.sdk.a d(Chartboost chartboost)
    {
        return chartboost.i;
    }

    private boolean d(Activity activity)
    {
        if (n)
        {
            return g == activity;
        }
        if (a == null)
        {
            return activity == null;
        } else
        {
            return a.a(activity);
        }
    }

    private boolean d(b b1)
    {
        if (n)
        {
            if (b1 == null)
            {
                return g == null;
            } else
            {
                return b1.a(g);
            }
        }
        if (a == null)
        {
            return b1 == null;
        } else
        {
            return a.a(b1);
        }
    }

    private boolean e()
    {
        return a(a);
    }

    public static Chartboost sharedChartboost()
    {
        com/chartboost/sdk/Chartboost;
        JVM INSTR monitorenter ;
        Chartboost chartboost;
        if (d == null)
        {
            d = new Chartboost();
        }
        chartboost = d;
        com/chartboost/sdk/Chartboost;
        JVM INSTR monitorexit ;
        return chartboost;
        Exception exception;
        exception;
        throw exception;
    }

    private void showInterstitialData(String s1, CBAPIResponseCallback cbapiresponsecallback)
    {
        com.chartboost.sdk.d.b(s1, cbapiresponsecallback);
    }

    protected com.chartboost.sdk.b a()
    {
        Activity activity = c();
        if (activity == null)
        {
            return null;
        } else
        {
            return (com.chartboost.sdk.b)v.get(activity.hashCode());
        }
    }

    protected void a(Activity activity)
    {
        f = activity.getApplicationContext();
        if (!(activity instanceof CBImpressionActivity))
        {
            a = new b(activity);
            a(a, true);
        } else
        {
            a((CBImpressionActivity)activity);
        }
        c.removeCallbacks(A);
        if (activity != null && d(activity)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        b(new b(activity), true);
        if (!(activity instanceof CBImpressionActivity)) goto _L4; else goto _L3
_L3:
        com.chartboost.sdk.b b1 = a();
        if (b1 == null) goto _L6; else goto _L5
_L5:
        int i1 = 0;
_L7:
        if (i1 < h.size())
        {
            break MISSING_BLOCK_LABEL_204;
        }
        h.clear();
_L6:
        z = false;
_L4:
        boolean flag;
        if (w)
        {
            w = false;
            flag = true;
        } else
        {
            flag = false;
        }
        if (i.a() != null && i.a().c == com.chartboost.sdk.impl.a.b.b && i.a().a())
        {
            flag = false;
        }
        if (flag)
        {
            a(new b.a(true, null));
            return;
        }
          goto _L1
        b1.a((b.a)h.get(i1));
        i1++;
          goto _L7
    }

    protected void a(CBImpressionActivity cbimpressionactivity)
    {
        if (!t)
        {
            f = cbimpressionactivity.getApplicationContext();
            g = cbimpressionactivity;
            t = true;
        }
        c.removeCallbacks(A);
    }

    protected void a(b.a a1)
    {
        if (getImpressionsUseActivities())
        {
            com.chartboost.sdk.b b2 = a();
            if (c() != null && t && b2 != null)
            {
                b2.a(a1);
            } else
            if (e())
            {
                Activity activity = (Activity)a.get();
                if (activity == null)
                {
                    if (a1.b.f.d != null)
                    {
                        a1.b.f.d.a();
                        return;
                    }
                } else
                {
                    h.add(a1);
                    Intent intent = new Intent(activity, com/chartboost/sdk/CBImpressionActivity);
                    boolean flag;
                    boolean flag1;
                    boolean flag2;
                    if ((0x400 & activity.getWindow().getAttributes().flags) != 0)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    if ((0x800 & activity.getWindow().getAttributes().flags) != 0)
                    {
                        flag1 = true;
                    } else
                    {
                        flag1 = false;
                    }
                    if (flag && !flag1)
                    {
                        flag2 = true;
                    } else
                    {
                        flag2 = false;
                    }
                    intent.putExtra("paramFullscreen", flag2);
                    try
                    {
                        activity.startActivity(intent);
                        z = true;
                        return;
                    }
                    catch (ActivityNotFoundException activitynotfoundexception)
                    {
                        throw new RuntimeException("Chartboost impression activity not declared in manifest. Please add the following inside your manifest's <application> tag: \n<activity android:name=\"com.chartboost.sdk.CBImpressionActivity\" android:theme=\"@android:style/Theme.Translucent.NoTitleBar\" android:excludeFromRecents=\"true\" />");
                    }
                }
            }
        } else
        {
            com.chartboost.sdk.b b1 = a();
            if (b1 != null)
            {
                b1.a(a1);
                return;
            }
        }
    }

    protected void a(com.chartboost.sdk.impl.a a1)
    {
        i.a(a1);
    }

    protected void b(Activity activity)
    {
        c(new b(activity));
    }

    protected boolean b()
    {
        if (i.a() != null && i.a().c == com.chartboost.sdk.impl.a.b.c)
        {
            a(new Runnable() {

                final Chartboost a;

                public void run()
                {
                    com.chartboost.sdk.Chartboost.d(a).d();
                }

            
            {
                a = Chartboost.this;
                super();
            }
            });
            return true;
        }
        com.chartboost.sdk.b b1 = a();
        if (b1 != null && b1.a())
        {
            a(new Runnable(b1) {

                final Chartboost a;
                private final com.chartboost.sdk.b b;

                public void run()
                {
                    b.a(true);
                }

            
            {
                a = Chartboost.this;
                b = b1;
                super();
            }
            });
            return true;
        } else
        {
            return false;
        }
    }

    protected Activity c()
    {
        if (n)
        {
            return g;
        } else
        {
            return (Activity)a.get();
        }
    }

    protected void c(Activity activity)
    {
        b(new b(activity), false);
    }

    public void cacheInterstitial()
    {
        cacheInterstitial("Default");
    }

    public void cacheInterstitial(String s1)
    {
        if (a == null)
        {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling cacheInterstitial().");
        } else
        {
            i.a(s1);
            return;
        }
    }

    public void cacheMoreApps()
    {
        if (a == null)
        {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling cacheMoreApps().");
        } else
        {
            i.a(true);
            return;
        }
    }

    public void clearCache()
    {
        i.e();
    }

    public void clearImageCache()
    {
        if (getContext() == null)
        {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling clearImageCache().");
        } else
        {
            com.chartboost.sdk.impl.o.a().b();
            return;
        }
    }

    protected void d()
    {
        if (t)
        {
            g = null;
            t = false;
        }
    }

    public CBAnalytics getAnalytics()
    {
        return CBAnalytics.sharedAnalytics();
    }

    public boolean getAnimationsOff()
    {
        return r;
    }

    public String getAppID()
    {
        return j;
    }

    public String getAppSignature()
    {
        return k;
    }

    public Context getContext()
    {
        return f;
    }

    public ChartboostDelegate getDelegate()
    {
        return l;
    }

    public com.chartboost.sdk.Libraries.CBOrientation.Difference getForcedOrientationDifference()
    {
        if (!p)
        {
            return com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_0;
        }
        CBOrientation cborientation = com.chartboost.sdk.Libraries.d.c(getContext());
        CBOrientation cborientation1 = getOrientation();
        if (cborientation1 == CBOrientation.UNSPECIFIED || cborientation1 == cborientation)
        {
            return com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_0;
        }
        if (cborientation1 == cborientation.rotate90())
        {
            return com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_90;
        }
        if (cborientation1 == cborientation.rotate180())
        {
            return com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_180;
        } else
        {
            return com.chartboost.sdk.Libraries.CBOrientation.Difference.ANGLE_270;
        }
    }

    public String getFramework()
    {
        if (s == null)
        {
            return "native";
        } else
        {
            return s;
        }
    }

    public Handler getHandler()
    {
        return c;
    }

    protected Activity getHostActivity()
    {
        if (a != null)
        {
            return (Activity)a.get();
        } else
        {
            return null;
        }
    }

    public boolean getIgnoreErrors()
    {
        return q;
    }

    public boolean getImpressionsUseActivities()
    {
        return n;
    }

    public CBOrientation getOrientation()
    {
        if (getContext() == null)
        {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling getOrientation().");
        }
        if (p && o != CBOrientation.UNSPECIFIED)
        {
            return o;
        } else
        {
            return com.chartboost.sdk.Libraries.d.c(getContext());
        }
    }

    public int getTimeout()
    {
        return m;
    }

    public boolean hasCachedInterstitial()
    {
        return hasCachedInterstitial("Default");
    }

    public boolean hasCachedInterstitial(String s1)
    {
        return i.c(s1);
    }

    public boolean hasCachedMoreApps()
    {
        return i.c();
    }

    public boolean isIdentityTrackingDisabledOnThisDevice()
    {
        return com.chartboost.sdk.Libraries.d.c();
    }

    public boolean onBackPressed()
    {
        if (!q && !com.chartboost.sdk.Libraries.d.d())
        {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onBackPressed() method of your host activity.");
        }
        if (a == null)
        {
            throw new IllegalStateException("The Chartboost methods onCreate(), onStart(), onStop(), and onDestroy() must be called in the corresponding methods of your activity in order for Chartboost to function properly.");
        }
        if (n)
        {
            if (z)
            {
                z = false;
                b();
                return true;
            } else
            {
                return false;
            }
        } else
        {
            return b();
        }
    }

    public void onCreate(Activity activity, String s1, String s2, ChartboostDelegate chartboostdelegate)
    {
        if (!q && !com.chartboost.sdk.Libraries.d.d())
        {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onCreate() method of your host activity.");
        }
        if (a != null && !a.a(activity) && e())
        {
            b(a);
            a(a, false);
        }
        c.removeCallbacks(A);
        a = new b(activity);
        f = activity.getApplicationContext();
        setAppID(s1);
        setAppSignature(s2);
        setDelegate(chartboostdelegate);
    }

    public void onDestroy(Activity activity)
    {
        c.postDelayed(A, 10000L);
        c(activity);
    }

    public void onStart(Activity activity)
    {
        if (!q && !com.chartboost.sdk.Libraries.d.d())
        {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onStart() method of your host activity.");
        }
        c.removeCallbacks(A);
        if (a != null && !a.a(activity) && e())
        {
            b(a);
            a(a, false);
        }
        a(activity, true);
        a = new b(activity);
        f = activity.getApplicationContext();
        if (!n)
        {
            a(activity);
        }
    }

    public void onStop(Activity activity)
    {
        if (!q && !com.chartboost.sdk.Libraries.d.d())
        {
            throw new IllegalStateException("It is illegal to call this method from any thread other than the UI thread. Please call it from the onStop() method of your host activity.");
        }
        b b1 = new b(activity);
        if (a(b1))
        {
            b(b1);
        }
    }

    public void setAnimationsOff(boolean flag)
    {
        r = flag;
    }

    public void setAppID(String s1)
    {
        j = s1;
    }

    public void setAppSignature(String s1)
    {
        k = s1;
    }

    public void setDelegate(ChartboostDelegate chartboostdelegate)
    {
        l = chartboostdelegate;
    }

    public void setFramework(String s1)
    {
        s = s1;
    }

    public void setIdentityTrackingDisabledOnThisDevice(boolean flag)
    {
        android.content.SharedPreferences.Editor editor = com.chartboost.sdk.Libraries.d.a().edit();
        editor.putBoolean("cbIdentityTrackingDisabled", flag);
        editor.commit();
    }

    public void setIgnoreErrors(boolean flag)
    {
        q = flag;
    }

    public void setImpressionsUseActivities(boolean flag)
    {
        n = flag;
    }

    public void setOrientation(CBOrientation cborientation)
    {
        boolean flag;
        if (cborientation != CBOrientation.UNSPECIFIED)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        p = flag;
        o = cborientation;
    }

    public void setTimeout(int i1)
    {
        m = i1;
    }

    public void showInterstitial()
    {
        showInterstitial("Default");
    }

    public void showInterstitial(String s1)
    {
        if (a == null)
        {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling showInterstitial().");
        } else
        {
            i.b(s1);
            return;
        }
    }

    public void showMoreApps()
    {
        if (a == null)
        {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling showMoreApps().");
        } else
        {
            i.b();
            return;
        }
    }

    public void showMoreAppsData(CBAPIResponseCallback cbapiresponsecallback)
    {
        com.chartboost.sdk.d.a(cbapiresponsecallback);
    }

    public void startSession()
    {
        if (a == null)
        {
            throw new IllegalStateException("The context must be set through the Chartboost method onCreate() before calling startSession().");
        }
        long l1;
        for (l1 = (long)((double)System.nanoTime() / 1000000D); l1 - x < 10000L || l1 - y < 60000L;)
        {
            return;
        }

        y = l1;
        SharedPreferences sharedpreferences = com.chartboost.sdk.Libraries.d.a();
        int i1 = 1 + sharedpreferences.getInt("cbPrefSessionCount", 0);
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putInt("cbPrefSessionCount", i1);
        editor.commit();
        k k1 = new k("api/install");
        k1.a(a.b());
        k1.b(getAppID(), getAppSignature());
        com.chartboost.sdk.Libraries.e.g ag[] = new com.chartboost.sdk.Libraries.e.g[1];
        ag[0] = com.chartboost.sdk.Libraries.e.a("status", j.a);
        k1.a(ag);
        b.a(k1, new com.chartboost.sdk.impl.j.c() {

            final Chartboost a;

            public void a(JSONObject jsonobject, k k2)
            {
                if (com.chartboost.sdk.Libraries.d.a(a.getContext()))
                {
                    String s1 = jsonobject.optString("latest-sdk-version");
                    if (s1 != null && !s1.equals("") && !s1.equals("3.4.0"))
                    {
                        Log.w("Chartboost", String.format("WARNING: you have an outdated version of the SDK (Current: %s, Latest: %s). Get the latest version at chartboost.com/support/sdk#android", new Object[] {
                            s1, "3.4.0"
                        }));
                    }
                }
            }

            
            {
                a = Chartboost.this;
                super();
            }
        });
    }

}
