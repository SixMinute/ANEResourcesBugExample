// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import android.content.SharedPreferences;
import android.os.Handler;
import com.chartboost.sdk.Libraries.d;
import com.chartboost.sdk.impl.j;
import com.chartboost.sdk.impl.k;
import com.chartboost.sdk.impl.m;
import com.chartboost.sdk.impl.n;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk:
//            Chartboost, b, ChartboostDelegate

class com.chartboost.sdk.a
{
    static class a
    {

        private boolean a;
        private String b;
        private com.chartboost.sdk.impl.c c;

        static void a(a a1, boolean flag)
        {
            a1.a = flag;
        }

        static boolean a(a a1)
        {
            return a1.a;
        }

        static String b(a a1)
        {
            return a1.b;
        }

        public void a(boolean flag)
        {
            a = flag;
        }

        public a(com.chartboost.sdk.impl.c c1, String s, boolean flag)
        {
            c = c1;
            b = s;
            a(flag);
        }
    }

    private class b
        implements Runnable
    {

        final com.chartboost.sdk.a a;
        private String b;

        public void run()
        {
            if (com.chartboost.sdk.a.b(a).hasCachedInterstitial(b))
            {
                com.chartboost.sdk.a.b(a, (com.chartboost.sdk.impl.a)com.chartboost.sdk.a.a(a).get(b));
                return;
            } else
            {
                com.chartboost.sdk.a.a(a, b, false);
                return;
            }
        }

        public b(String s)
        {
            a = com.chartboost.sdk.a.this;
            super();
            b = s;
        }
    }

    private class c
        implements Runnable
    {

        final com.chartboost.sdk.a a;

        public void run()
        {
            if (com.chartboost.sdk.a.e(a) != null)
            {
                com.chartboost.sdk.a.c(a, com.chartboost.sdk.a.e(a));
                return;
            } else
            {
                a.a(false);
                return;
            }
        }

        private c()
        {
            a = com.chartboost.sdk.a.this;
            super();
        }

        c(c c1)
        {
            this();
        }
    }


    private ArrayList a;
    private a b;
    private Chartboost c;
    private j d;
    private n e;
    private Map f;
    private com.chartboost.sdk.impl.a g;
    private com.chartboost.sdk.impl.a h;
    private com.chartboost.sdk.impl.a i;
    private com.chartboost.sdk.impl.n.a j;

    public com.chartboost.sdk.a(Chartboost chartboost)
    {
        a = new ArrayList();
        b = null;
        i = new com.chartboost.sdk.impl.a() {

            final com.chartboost.sdk.a a;

            static com.chartboost.sdk.a a(_cls1 _pcls1)
            {
                return _pcls1.a;
            }

            private void a(JSONObject jsonobject, String s, k k1)
            {
                if (jsonobject == null)
                {
                    break MISSING_BLOCK_LABEL_22;
                }
                if (jsonobject.getString(s) != null)
                {
                    k1.a(s, jsonobject.optString(s));
                }
                return;
                JSONException jsonexception;
                jsonexception;
            }

            public void a(com.chartboost.sdk.impl.a a1)
            {
                boolean flag;
                com.chartboost.sdk.impl.b b1 = a1.c;
                com.chartboost.sdk.impl.b b2 = com.chartboost.sdk.impl.b.e;
                flag = false;
                if (b1 != b2)
                {
                    break MISSING_BLOCK_LABEL_143;
                }
                this;
                JVM INSTR monitorenter ;
                a a2 = a.a(a1.d, a1.e);
                flag = false;
                if (a2 == null)
                {
                    break MISSING_BLOCK_LABEL_62;
                }
                boolean flag1 = a.a(a2);
                flag = false;
                if (!flag1)
                {
                    flag = true;
                }
                this;
                JVM INSTR monitorexit ;
                Exception exception;
                if (a1.d == com.chartboost.sdk.impl.c.b && a1.e != null)
                {
                    com.chartboost.sdk.a.a(a).put(a1.e, a1);
                    if (com.chartboost.sdk.a.b(a).getDelegate() != null && !flag)
                    {
                        com.chartboost.sdk.a.b(a).getDelegate().didCacheInterstitial(a1.e);
                    }
                } else
                if (a1.d == com.chartboost.sdk.impl.c.c)
                {
                    com.chartboost.sdk.a.a(a, a1);
                    if (com.chartboost.sdk.a.b(a).getDelegate() != null && !flag)
                    {
                        com.chartboost.sdk.a.b(a).getDelegate().didCacheMoreApps();
                    }
                }
                a1.c = com.chartboost.sdk.impl.b.f;
                if (a1.c == com.chartboost.sdk.impl.b.b || flag)
                {
                    if (!flag)
                    {
                        a1.c = com.chartboost.sdk.impl.b.a;
                    }
                    if (a1.d == com.chartboost.sdk.impl.c.b)
                    {
                        com.chartboost.sdk.a.b(a, a1);
                    } else
                    if (a1.d == com.chartboost.sdk.impl.c.c)
                    {
                        com.chartboost.sdk.a.c(a, a1);
                    }
                }
                a.b(a1.d, a1.e);
                return;
                exception;
                this;
                JVM INSTR monitorexit ;
                throw exception;
            }

            public void a(com.chartboost.sdk.impl.a a1, String s, JSONObject jsonobject)
            {
                com.chartboost.sdk.a.d(a, null);
                boolean flag;
                k k1;
                Object obj;
                if (s != null && !s.equals("") && !s.equals("null"))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (a1.d == com.chartboost.sdk.impl.c.b)
                {
                    if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                    {
                        com.chartboost.sdk.a.b(a).getDelegate().didDismissInterstitial(a1.e);
                    }
                    if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                    {
                        com.chartboost.sdk.a.b(a).getDelegate().didClickInterstitial(a1.e);
                    }
                    if (a1.c == com.chartboost.sdk.impl.b.c)
                    {
                        com.chartboost.sdk.b b2 = com.chartboost.sdk.a.b(a).a();
                        if (b2 != null)
                        {
                            boolean flag2;
                            if (flag)
                            {
                                flag2 = false;
                            } else
                            {
                                flag2 = true;
                            }
                            b2.a(a1, flag2);
                        }
                    }
                } else
                if (a1.d == com.chartboost.sdk.impl.c.c)
                {
                    if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                    {
                        com.chartboost.sdk.a.b(a).getDelegate().didDismissMoreApps();
                    }
                    if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                    {
                        com.chartboost.sdk.a.b(a).getDelegate().didClickMoreApps();
                    }
                    if (a1.c == com.chartboost.sdk.impl.b.c)
                    {
                        com.chartboost.sdk.b b1 = com.chartboost.sdk.a.b(a).a();
                        if (b1 != null)
                        {
                            boolean flag1;
                            if (flag)
                            {
                                flag1 = false;
                            } else
                            {
                                flag1 = true;
                            }
                            b1.a(a1, flag1);
                        }
                    }
                }
                k1 = new k("api/click");
                if (com.chartboost.sdk.a.b(a).a == null)
                {
                    obj = com.chartboost.sdk.a.b(a).c();
                } else
                {
                    obj = com.chartboost.sdk.a.b(a).a.b();
                }
                if (obj == null)
                {
                    obj = com.chartboost.sdk.a.b(a).getContext();
                }
                k1.a(((android.content.Context) (obj)));
                a(a1.a, "to", k1);
                a(a1.a, "cgn", k1);
                a(a1.a, "creative", k1);
                a(a1.a, "ad_id", k1);
                a(jsonobject, "cgn", k1);
                a(jsonobject, "creative", k1);
                a(jsonobject, "type", k1);
                a(jsonobject, "more_type", k1);
                k1.b(com.chartboost.sdk.a.b(a).getAppID(), com.chartboost.sdk.a.b(a).getAppSignature());
                if (flag)
                {
                    com.chartboost.sdk.a.b(a).a(new b.a(true, null));
                    com.chartboost.sdk.a.c(a).a(k1, new com.chartboost.sdk.impl.j.b(this, s) {

                        final _cls1 a;
                        private final String b;

                        public void a(k k1, String s)
                        {
                            com.chartboost.sdk.a.d(_cls1.a(a)).a(false, b);
                        }

                        public void a(JSONObject jsonobject, k k1)
                        {
                            com.chartboost.sdk.a.a(_cls1.a(a), jsonobject, b);
                        }

            
            {
                a = _pcls1;
                b = s;
                super();
            }
                    });
                    return;
                } else
                {
                    com.chartboost.sdk.a.d(a).a(false, s);
                    com.chartboost.sdk.a.c(a).a(k1);
                    return;
                }
            }

            public void b(com.chartboost.sdk.impl.a a1)
            {
                com.chartboost.sdk.a.d(a, null);
                if (a1.d == com.chartboost.sdk.impl.c.b)
                {
                    if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                    {
                        com.chartboost.sdk.a.b(a).getDelegate().didDismissInterstitial(a1.e);
                    }
                    if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                    {
                        com.chartboost.sdk.a.b(a).getDelegate().didCloseInterstitial(a1.e);
                    }
                    if (a1.c == com.chartboost.sdk.impl.b.c)
                    {
                        com.chartboost.sdk.b b2 = com.chartboost.sdk.a.b(a).a();
                        if (b2 != null)
                        {
                            b2.a(a1, true);
                        }
                    }
                } else
                if (a1.d == com.chartboost.sdk.impl.c.c)
                {
                    if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                    {
                        com.chartboost.sdk.a.b(a).getDelegate().didDismissMoreApps();
                    }
                    if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                    {
                        com.chartboost.sdk.a.b(a).getDelegate().didCloseMoreApps();
                    }
                    if (a1.c == com.chartboost.sdk.impl.b.c)
                    {
                        com.chartboost.sdk.b b1 = com.chartboost.sdk.a.b(a).a();
                        if (b1 != null)
                        {
                            b1.a(a1, true);
                            return;
                        }
                    }
                }
            }

            public void c(com.chartboost.sdk.impl.a a1)
            {
                com.chartboost.sdk.a a2 = a;
                com.chartboost.sdk.impl.c c1 = a1.d;
                String s;
                if (a1.d == com.chartboost.sdk.impl.c.b)
                {
                    s = a1.e;
                } else
                {
                    s = null;
                }
                com.chartboost.sdk.a.a(a2, c1, s);
            }

            
            {
                a = com.chartboost.sdk.a.this;
                super();
            }
        };
        j = new com.chartboost.sdk.impl.n.a() {

            final com.chartboost.sdk.a a;

            public void a(boolean flag, String s)
            {
                com.chartboost.sdk.b b1 = com.chartboost.sdk.a.b(a).a();
                if (b1 != null && b1.a())
                {
                    b1.a(true);
                }
                if (!flag && com.chartboost.sdk.a.b(a).getDelegate() != null)
                {
                    com.chartboost.sdk.a.b(a).getDelegate().didFailToLoadUrl(s);
                }
            }

            
            {
                a = com.chartboost.sdk.a.this;
                super();
            }
        };
        c = chartboost;
        d = c.b;
        e = new n(j);
        f = new HashMap();
        g = null;
    }

    static Map a(com.chartboost.sdk.a a1)
    {
        return a1.f;
    }

    static void a(com.chartboost.sdk.a a1, com.chartboost.sdk.impl.c c1, String s)
    {
        a1.c(c1, s);
    }

    static void a(com.chartboost.sdk.a a1, com.chartboost.sdk.impl.a a2)
    {
        a1.g = a2;
    }

    static void a(com.chartboost.sdk.a a1, String s, boolean flag)
    {
        a1.a(s, flag);
    }

    static void a(com.chartboost.sdk.a a1, JSONObject jsonobject, com.chartboost.sdk.impl.c c1, boolean flag, String s, boolean flag1)
    {
        a1.a(jsonobject, c1, flag, s, flag1);
    }

    static void a(com.chartboost.sdk.a a1, JSONObject jsonobject, String s)
    {
        a1.a(jsonobject, s);
    }

    private void a(String s, boolean flag)
    {
        com.chartboost.sdk.b b1 = c.a();
        if (flag || b1 == null || !b1.c()) goto _L2; else goto _L1
_L1:
        if (c.getDelegate() != null)
        {
            c.getDelegate().didFailToLoadInterstitial(s);
        }
_L4:
        return;
_L2:
        if (c.getDelegate() != null && !c.getDelegate().shouldRequestInterstitial(s))
        {
            continue; /* Loop/switch isn't completed */
        }
        if (m.a())
        {
            break; /* Loop/switch isn't completed */
        }
        if (c.getDelegate() != null)
        {
            c.getDelegate().didFailToLoadInterstitial(s);
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        this;
        JVM INSTR monitorenter ;
        a a1 = a(com.chartboost.sdk.impl.c.b, s);
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_174;
        }
        if (flag)
        {
            break MISSING_BLOCK_LABEL_148;
        }
        if (!a.a(a1))
        {
            break MISSING_BLOCK_LABEL_148;
        }
        a.a(a1, false);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (c.getDelegate() != null)
        {
            c.getDelegate().didFailToLoadInterstitial(s);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        a(com.chartboost.sdk.impl.c.b, s, flag);
        this;
        JVM INSTR monitorexit ;
        k k1 = new k("api/get");
        k1.a(c.a.b());
        k1.a("location", s);
        if (flag)
        {
            k1.a("cache", "1");
        }
        k1.b(c.getAppID(), c.getAppSignature());
        d.a(k1, new com.chartboost.sdk.impl.j.b(flag, s) {

            final com.chartboost.sdk.a a;
            private final boolean b;
            private final String c;

            public void a(k k2, String s1)
            {
                com.chartboost.sdk.a.a(a, com.chartboost.sdk.impl.c.b, c);
                com.chartboost.sdk.b b2 = com.chartboost.sdk.a.b(a).a();
                if (b2 != null && b2.a())
                {
                    b2.a(true);
                }
            }

            public void a(JSONObject jsonobject, k k2)
            {
                com.chartboost.sdk.a.a(a, jsonobject, com.chartboost.sdk.impl.c.b, b, c, false);
            }

            
            {
                a = com.chartboost.sdk.a.this;
                b = flag;
                c = s;
                super();
            }
        });
        return;
    }

    private void a(JSONObject jsonobject, com.chartboost.sdk.impl.c c1, boolean flag, String s, boolean flag1)
    {
        if (!jsonobject.optString("status", "").equals("200"))
        {
            c(c1, s);
            return;
        }
        if (c1 == com.chartboost.sdk.impl.c.c && !flag)
        {
            com.chartboost.sdk.b b2 = c.a();
            boolean flag2 = false;
            if (b2 != null)
            {
                boolean flag3 = c.a().a();
                flag2 = false;
                if (flag3)
                {
                    flag2 = true;
                }
            }
            if (flag1 && !flag2)
            {
                b(c1, s);
                return;
            }
        }
        com.chartboost.sdk.impl.b b1;
        if (flag)
        {
            b1 = com.chartboost.sdk.impl.b.e;
        } else
        {
            b1 = com.chartboost.sdk.impl.b.b;
        }
        new com.chartboost.sdk.impl.a(jsonobject, c1, i, b1, s, flag1);
    }

    private void a(JSONObject jsonobject, String s)
    {
        e.a(s, c.getHostActivity());
    }

    static Chartboost b(com.chartboost.sdk.a a1)
    {
        return a1.c;
    }

    static void b(com.chartboost.sdk.a a1, com.chartboost.sdk.impl.a a2)
    {
        a1.b(a2);
    }

    private void b(com.chartboost.sdk.impl.a a1)
    {
        if (!a1.k && c.getDelegate() != null && !c.getDelegate().shouldDisplayInterstitial(a1.e))
        {
            b(a1.d, a1.e);
            return;
        }
        if (a1.c == com.chartboost.sdk.impl.b.f && f.get(a1.e) == a1)
        {
            f.remove(a1.e);
            k k1 = new k("api/show");
            k1.a(c.a.b());
            String s = a1.a.optString("ad_id");
            if (s != null)
            {
                k1.a("ad_id", s);
            }
            k1.b(c.getAppID(), c.getAppSignature());
            d.a(k1);
        }
        a1.c = com.chartboost.sdk.impl.b.b;
        c.a(new b.a(a1));
    }

    static j c(com.chartboost.sdk.a a1)
    {
        return a1.d;
    }

    static void c(com.chartboost.sdk.a a1, com.chartboost.sdk.impl.a a2)
    {
        a1.c(a2);
    }

    private void c(com.chartboost.sdk.impl.c c1, String s)
    {
        b(c1, s);
        com.chartboost.sdk.b b1 = c.a();
        if (c1 == com.chartboost.sdk.impl.c.c && b1 != null && b1.a())
        {
            b1.a(true);
        }
        a(((com.chartboost.sdk.impl.a) (null)));
        if (c1 == com.chartboost.sdk.impl.c.b && c.getDelegate() != null)
        {
            c.getDelegate().didFailToLoadInterstitial(s);
        }
        if (c1 == com.chartboost.sdk.impl.c.c && c.getDelegate() != null)
        {
            c.getDelegate().didFailToLoadMoreApps();
        }
    }

    private void c(com.chartboost.sdk.impl.a a1)
    {
        if (!a1.k && c.getDelegate() != null && !c.getDelegate().shouldDisplayMoreApps())
        {
            b(a1.d, a1.e);
            return;
        }
        if (a1 == g)
        {
            g = null;
        }
        boolean flag;
        boolean flag1;
        com.chartboost.sdk.b b1;
        if (a1.c == com.chartboost.sdk.impl.b.f)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a1.c = com.chartboost.sdk.impl.b.a;
        flag1 = a1.l;
        b1 = c.a();
        if (b1 != null)
        {
            if (b1.a() || !flag1)
            {
                if (flag1)
                {
                    b1.a(false);
                }
            } else
            if (!flag && !a1.j)
            {
                return;
            }
        }
        a1.c = com.chartboost.sdk.impl.b.b;
        c.a(new b.a(a1));
    }

    static com.chartboost.sdk.impl.n.a d(com.chartboost.sdk.a a1)
    {
        return a1.j;
    }

    static void d(com.chartboost.sdk.a a1, com.chartboost.sdk.impl.a a2)
    {
        a1.h = a2;
    }

    static com.chartboost.sdk.impl.a e(com.chartboost.sdk.a a1)
    {
        return a1.g;
    }

    public a a(com.chartboost.sdk.impl.c c1, String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (c1 != com.chartboost.sdk.impl.c.c) goto _L2; else goto _L1
_L1:
        a a1 = b;
_L5:
        this;
        JVM INSTR monitorexit ;
        return a1;
_L2:
        if (c1 == com.chartboost.sdk.impl.c.b)
        {
            Exception exception;
            String s1;
            if (s == null)
            {
                s1 = "";
            } else
            {
                s1 = s;
            }
            break MISSING_BLOCK_LABEL_116;
        }
        break MISSING_BLOCK_LABEL_102;
_L3:
label0:
        {
            int l;
            for (; l < a.size(); l = 0)
            {
                break label0;
            }

            a1 = null;
        }
        continue; /* Loop/switch isn't completed */
label1:
        {
            if (!s1.equals(a.b((a)a.get(l))))
            {
                break label1;
            }
            a1 = (a)a.get(l);
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
        l++;
          goto _L3
        a1 = null;
        if (true) goto _L5; else goto _L4
_L4:
        exception;
        throw exception;
    }

    protected com.chartboost.sdk.impl.a a()
    {
        return h;
    }

    public void a(com.chartboost.sdk.impl.c c1, String s, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        a a1 = new a(c1, s, flag);
        if (c1 != com.chartboost.sdk.impl.c.c) goto _L2; else goto _L1
_L1:
        b = a1;
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        if (c1 == com.chartboost.sdk.impl.c.b)
        {
            a.add(a1);
        }
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    protected void a(com.chartboost.sdk.impl.a a1)
    {
        h = a1;
    }

    public void a(String s)
    {
        if (c.getDelegate() != null && !c.getDelegate().shouldRequestInterstitialsInFirstSession() && com.chartboost.sdk.Libraries.d.a().getInt("cbPrefSessionCount", 0) <= 1)
        {
            return;
        } else
        {
            a(s, true);
            return;
        }
    }

    protected void a(boolean flag)
    {
        com.chartboost.sdk.b b1 = c.a();
        if (flag || b1 == null || !b1.c()) goto _L2; else goto _L1
_L1:
        if (c.getDelegate() != null)
        {
            c.getDelegate().didFailToLoadMoreApps();
        }
_L4:
        return;
_L2:
        if (c.getDelegate() != null && !c.getDelegate().shouldRequestMoreApps())
        {
            continue; /* Loop/switch isn't completed */
        }
        if (m.a())
        {
            break; /* Loop/switch isn't completed */
        }
        if (c.getDelegate() != null)
        {
            c.getDelegate().didFailToLoadMoreApps();
            return;
        }
        if (true) goto _L4; else goto _L3
_L3:
        this;
        JVM INSTR monitorenter ;
        a a1 = a(com.chartboost.sdk.impl.c.c, ((String) (null)));
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        if (flag)
        {
            break MISSING_BLOCK_LABEL_143;
        }
        if (!a.a(a1))
        {
            break MISSING_BLOCK_LABEL_143;
        }
        a.a(a1, false);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (c.getDelegate() != null)
        {
            c.getDelegate().didFailToLoadMoreApps();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        a(com.chartboost.sdk.impl.c.c, ((String) (null)), flag);
        this;
        JVM INSTR monitorexit ;
        boolean flag1;
        k k1;
        if (!flag)
        {
            if (c.getDelegate() != null && !c.getDelegate().shouldDisplayLoadingViewForMoreApps())
            {
                flag1 = false;
            } else
            {
                c.a(new b.a(true, null));
                flag1 = true;
            }
        } else
        {
            flag1 = false;
        }
        k1 = new k("api/more");
        k1.a(c.a.b());
        if (flag)
        {
            k1.a("cache", "1");
        }
        k1.b(c.getAppID(), c.getAppSignature());
        d.a(k1, new com.chartboost.sdk.impl.j.b(flag, flag1) {

            final com.chartboost.sdk.a a;
            private final boolean b;
            private final boolean c;

            public void a(k k2, String s)
            {
                com.chartboost.sdk.a.a(a, com.chartboost.sdk.impl.c.c, null);
                com.chartboost.sdk.b b2 = com.chartboost.sdk.a.b(a).a();
                if (b2 != null && b2.a())
                {
                    b2.a(true);
                }
            }

            public void a(JSONObject jsonobject, k k2)
            {
                com.chartboost.sdk.a.a(a, jsonobject, com.chartboost.sdk.impl.c.c, b, null, c);
            }

            
            {
                a = com.chartboost.sdk.a.this;
                b = flag;
                c = flag1;
                super();
            }
        });
        return;
    }

    protected void b()
    {
        c c1 = new c(null);
        c.getHandler().post(c1);
    }

    public void b(com.chartboost.sdk.impl.c c1, String s)
    {
        this;
        JVM INSTR monitorenter ;
        if (c1 != com.chartboost.sdk.impl.c.c) goto _L2; else goto _L1
_L1:
        b = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        a a1;
        if (c1 != com.chartboost.sdk.impl.c.b)
        {
            continue; /* Loop/switch isn't completed */
        }
        a1 = a(c1, s);
        if (a1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        a.remove(a1);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    protected void b(String s)
    {
        if (c.getDelegate() != null && !c.getDelegate().shouldRequestInterstitialsInFirstSession() && com.chartboost.sdk.Libraries.d.a().getInt("cbPrefSessionCount", 0) == 1)
        {
            return;
        } else
        {
            b b1 = new b(s);
            c.getHandler().post(b1);
            return;
        }
    }

    protected boolean c()
    {
        return g != null;
    }

    protected boolean c(String s)
    {
        com.chartboost.sdk.impl.a a1 = (com.chartboost.sdk.impl.a)f.get(s);
        if (a1 == null)
        {
            return false;
        }
        return TimeUnit.MILLISECONDS.toSeconds((new Date()).getTime() - a1.b.getTime()) < 0x15180L;
    }

    protected void d()
    {
        if (h == null)
        {
            return;
        } else
        {
            i.b(h);
            return;
        }
    }

    protected void e()
    {
        f = new HashMap();
        g = null;
    }
}
