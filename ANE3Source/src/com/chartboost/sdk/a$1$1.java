// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk;

import com.chartboost.sdk.impl.a;
import com.chartboost.sdk.impl.j;
import com.chartboost.sdk.impl.k;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk:
//            a, Chartboost, ChartboostDelegate, b

class b
    implements com.chartboost.sdk.impl.b
{

    final b a;
    private final String b;

    public void a(k k, String s)
    {
        com.chartboost.sdk.a.d(com.chartboost.sdk.(a)).b(false, b);
    }

    public void a(JSONObject jsonobject, k k)
    {
        com.chartboost.sdk.a.a(com.chartboost.sdk.(a), jsonobject, b);
    }

    ( , String s)
    {
        a = ;
        b = s;
        super();
    }

    // Unreferenced inner class com/chartboost/sdk/a$1

/* anonymous class */
    class a._cls1
        implements com.chartboost.sdk.impl.a.a
    {

        final com.chartboost.sdk.a a;

        static com.chartboost.sdk.a a(a._cls1 _pcls1)
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

        public void a(a a1)
        {
            boolean flag;
            com.chartboost.sdk.impl.a.b b1 = a1.c;
            com.chartboost.sdk.impl.a.b b2 = com.chartboost.sdk.impl.a.b.e;
            flag = false;
            if (b1 != b2)
            {
                break MISSING_BLOCK_LABEL_143;
            }
            this;
            JVM INSTR monitorenter ;
            a.a a2 = a.a(a1.d, a1.e);
            flag = false;
            if (a2 == null)
            {
                break MISSING_BLOCK_LABEL_62;
            }
            boolean flag1 = com.chartboost.sdk.a.a.a(a2);
            flag = false;
            if (!flag1)
            {
                flag = true;
            }
            this;
            JVM INSTR monitorexit ;
            Exception exception;
            if (a1.d == com.chartboost.sdk.impl.a.c.b && a1.e != null)
            {
                com.chartboost.sdk.a.a(a).put(a1.e, a1);
                if (com.chartboost.sdk.a.b(a).getDelegate() != null && !flag)
                {
                    com.chartboost.sdk.a.b(a).getDelegate().didCacheInterstitial(a1.e);
                }
            } else
            if (a1.d == com.chartboost.sdk.impl.a.c.c)
            {
                com.chartboost.sdk.a.a(a, a1);
                if (com.chartboost.sdk.a.b(a).getDelegate() != null && !flag)
                {
                    com.chartboost.sdk.a.b(a).getDelegate().didCacheMoreApps();
                }
            }
            a1.c = com.chartboost.sdk.impl.a.b.f;
            if (a1.c == com.chartboost.sdk.impl.a.b.b || flag)
            {
                if (!flag)
                {
                    a1.c = com.chartboost.sdk.impl.a.b.a;
                }
                if (a1.d == com.chartboost.sdk.impl.a.c.b)
                {
                    com.chartboost.sdk.a.b(a, a1);
                } else
                if (a1.d == com.chartboost.sdk.impl.a.c.c)
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

        public void a(a a1, String s, JSONObject jsonobject)
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
            if (a1.d == com.chartboost.sdk.impl.a.c.b)
            {
                if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                {
                    com.chartboost.sdk.a.b(a).getDelegate().didDismissInterstitial(a1.e);
                }
                if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                {
                    com.chartboost.sdk.a.b(a).getDelegate().didClickInterstitial(a1.e);
                }
                if (a1.c == com.chartboost.sdk.impl.a.b.c)
                {
                    b b2 = com.chartboost.sdk.a.b(a).a();
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
            if (a1.d == com.chartboost.sdk.impl.a.c.c)
            {
                if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                {
                    com.chartboost.sdk.a.b(a).getDelegate().didDismissMoreApps();
                }
                if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                {
                    com.chartboost.sdk.a.b(a).getDelegate().didClickMoreApps();
                }
                if (a1.c == com.chartboost.sdk.impl.a.b.c)
                {
                    b b1 = com.chartboost.sdk.a.b(a).a();
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
                com.chartboost.sdk.a.c(a).a(k1, new a._cls1._cls1(this, s));
                return;
            } else
            {
                com.chartboost.sdk.a.d(a).a(false, s);
                com.chartboost.sdk.a.c(a).a(k1);
                return;
            }
        }

        public void b(a a1)
        {
            com.chartboost.sdk.a.d(a, null);
            if (a1.d == com.chartboost.sdk.impl.a.c.b)
            {
                if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                {
                    com.chartboost.sdk.a.b(a).getDelegate().didDismissInterstitial(a1.e);
                }
                if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                {
                    com.chartboost.sdk.a.b(a).getDelegate().didCloseInterstitial(a1.e);
                }
                if (a1.c == com.chartboost.sdk.impl.a.b.c)
                {
                    b b2 = com.chartboost.sdk.a.b(a).a();
                    if (b2 != null)
                    {
                        b2.a(a1, true);
                    }
                }
            } else
            if (a1.d == com.chartboost.sdk.impl.a.c.c)
            {
                if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                {
                    com.chartboost.sdk.a.b(a).getDelegate().didDismissMoreApps();
                }
                if (com.chartboost.sdk.a.b(a).getDelegate() != null)
                {
                    com.chartboost.sdk.a.b(a).getDelegate().didCloseMoreApps();
                }
                if (a1.c == com.chartboost.sdk.impl.a.b.c)
                {
                    b b1 = com.chartboost.sdk.a.b(a).a();
                    if (b1 != null)
                    {
                        b1.a(a1, true);
                        return;
                    }
                }
            }
        }

        public void c(a a1)
        {
            com.chartboost.sdk.a a2 = a;
            com.chartboost.sdk.impl.a.c c1 = a1.d;
            String s;
            if (a1.d == com.chartboost.sdk.impl.a.c.b)
            {
                s = a1.e;
            } else
            {
                s = null;
            }
            com.chartboost.sdk.a.a(a2, c1, s);
        }

            
            {
                a = a1;
                super();
            }
    }

}
