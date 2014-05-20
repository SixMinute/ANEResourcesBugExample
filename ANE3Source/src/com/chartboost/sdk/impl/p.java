// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import com.chartboost.sdk.Chartboost;

// Referenced classes of package com.chartboost.sdk.impl:
//            a, u, r

public class p
{
    public static interface a
    {

        public abstract void a(com.chartboost.sdk.impl.a a1);
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

        public static b a(int i)
        {
            if (i == 0)
            {
                return null;
            }
            if (i > 0 && i <= values().length)
            {
                return values()[i - 1];
            } else
            {
                return null;
            }
        }

        public static b valueOf(String s)
        {
            return (b)Enum.valueOf(com/chartboost/sdk/impl/p$b, s);
        }

        public static b[] values()
        {
            b ab[] = g;
            int i = ab.length;
            b ab1[] = new b[i];
            System.arraycopy(ab, 0, ab1, 0, i);
            return ab1;
        }

        static 
        {
            a = new b("CBAnimationTypePerspectiveRotate", 0);
            b = new b("CBAnimationTypeBounce", 1);
            c = new b("CBAnimationTypePerspectiveZoom", 2);
            d = new b("CBAnimationTypeSlideFromBottom", 3);
            e = new b("CBAnimationTypeSlideFromTop", 4);
            f = new b("CBAnimationTypeNone", 5);
            b ab[] = new b[6];
            ab[0] = a;
            ab[1] = b;
            ab[2] = c;
            ab[3] = d;
            ab[4] = e;
            ab[5] = f;
            g = ab;
        }

        private b(String s, int i)
        {
            super(s, i);
        }
    }


    private static int a[];
    private static int b[];

    public static void a(b b1, com.chartboost.sdk.impl.a a1)
    {
        a(b1, a1, null);
    }

    public static void a(b b1, com.chartboost.sdk.impl.a a1, a a2)
    {
        b(b1, a1, a2, Boolean.valueOf(true));
    }

    static void a(b b1, com.chartboost.sdk.impl.a a1, a a2, Boolean boolean1)
    {
        c(b1, a1, a2, boolean1);
    }

    static int[] a()
    {
        int ai[] = a;
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
        a = ai1;
        return ai1;
    }

    public static void b(b b1, com.chartboost.sdk.impl.a a1, a a2)
    {
        c(b1, a1, a2, Boolean.valueOf(false));
    }

    private static void b(b b1, com.chartboost.sdk.impl.a a1, a a2, Boolean boolean1)
    {
        if (b1 == b.f)
        {
            if (a2 != null)
            {
                a2.a(a1);
            }
        } else
        if (a1 != null && a1.h != null)
        {
            View view = a1.h.c();
            if (view != null)
            {
                ViewTreeObserver viewtreeobserver = view.getViewTreeObserver();
                if (viewtreeobserver.isAlive())
                {
                    viewtreeobserver.addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener(view, b1, a1, a2, boolean1) {

                        private final View a;
                        private final b b;
                        private final com.chartboost.sdk.impl.a c;
                        private final a d;
                        private final Boolean e;

                        public void onGlobalLayout()
                        {
                            a.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                            p.a(b, c, d, e);
                        }

            
            {
                a = view;
                b = b1;
                c = a1;
                d = a2;
                e = boolean1;
                super();
            }
                    });
                    return;
                }
            }
        }
    }

    static int[] b()
    {
        int ai[] = b;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[b.values().length];
        try
        {
            ai1[b.b.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[b.f.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[b.a.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[b.c.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[b.d.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[b.e.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        b = ai1;
        return ai1;
    }

    private static void c(b b1, com.chartboost.sdk.impl.a a1, a a2, Boolean boolean1)
    {
        AnimationSet animationset;
        animationset = new AnimationSet(true);
        animationset.addAnimation(new AlphaAnimation(1.0F, 1.0F));
        if (a1 != null && a1.h != null) goto _L2; else goto _L1
_L1:
        View view;
        return;
_L2:
        if ((view = a1.h.c()) == null) goto _L1; else goto _L3
_L3:
        float f;
        float f1;
        float f2;
        com.chartboost.sdk.Libraries.CBOrientation.Difference difference;
        f = view.getWidth();
        f1 = view.getHeight();
        f2 = (1.0F - 0.4F) / 2.0F;
        difference = Chartboost.sharedChartboost().getForcedOrientationDifference();
        b()[b1.ordinal()];
        JVM INSTR tableswitch 1 5: default 124
    //                   1 799
    //                   2 2038
    //                   3 143
    //                   4 1455
    //                   5 1746;
           goto _L4 _L5 _L6 _L7 _L8 _L9
_L4:
        float f3;
        float f6;
        float f7;
        float f8;
        float f13;
        float f16;
        float f17;
        float f18;
        r r1;
        ScaleAnimation scaleanimation4;
        TranslateAnimation translateanimation2;
        r r2;
        ScaleAnimation scaleanimation5;
        TranslateAnimation translateanimation3;
        if (b1 == b.f)
        {
            if (a2 != null)
            {
                a2.a(a1);
                return;
            }
        } else
        {
            Handler handler = Chartboost.sharedChartboost().getHandler();
            Runnable runnable = new Runnable(a2, a1) {

                private final a a;
                private final com.chartboost.sdk.impl.a b;

                public void run()
                {
                    if (a != null)
                    {
                        a.a(b);
                    }
                }

            
            {
                a = a1;
                b = a2;
                super();
            }
            };
            handler.postDelayed(runnable, 600L);
            view.startAnimation(animationset);
            return;
        }
          goto _L1
_L7:
        a()[difference.ordinal()];
        JVM INSTR tableswitch 2 4: default 180
    //                   2 369
    //                   3 425
    //                   4 481;
           goto _L10 _L11 _L12 _L13
_L10:
        if (boolean1.booleanValue())
        {
            r2 = new r(-60F, 0.0F, f / 2.0F, f1 / 2.0F, false);
        } else
        {
            r2 = new r(0.0F, 60F, f / 2.0F, f1 / 2.0F, false);
        }
        r2.setDuration(600L);
        r2.setFillAfter(true);
        animationset.addAnimation(r2);
        if (boolean1.booleanValue())
        {
            scaleanimation5 = new ScaleAnimation(0.4F, 1.0F, 0.4F, 1.0F);
        } else
        {
            scaleanimation5 = new ScaleAnimation(1.0F, 0.4F, 1.0F, 0.4F);
        }
        scaleanimation5.setDuration(600L);
        scaleanimation5.setFillAfter(true);
        animationset.addAnimation(scaleanimation5);
        a()[difference.ordinal()];
        JVM INSTR tableswitch 2 4: default 308
    //                   2 579
    //                   3 644
    //                   4 709;
           goto _L14 _L15 _L16 _L17
_L14:
        if (boolean1.booleanValue())
        {
            float f45 = f * f2;
            float f46 = 0.4F * -f1;
            translateanimation3 = new TranslateAnimation(f45, 0.0F, f46, 0.0F);
        } else
        {
            float f44 = f * f2;
            translateanimation3 = new TranslateAnimation(0.0F, f44, 0.0F, f1);
        }
        translateanimation3.setDuration(600L);
        translateanimation3.setFillAfter(true);
        animationset.addAnimation(translateanimation3);
          goto _L4
_L11:
        if (boolean1.booleanValue())
        {
            r2 = new r(-60F, 0.0F, f / 2.0F, f1 / 2.0F, true);
        } else
        {
            r2 = new r(0.0F, 60F, f / 2.0F, f1 / 2.0F, true);
        }
        break MISSING_BLOCK_LABEL_209;
_L12:
        if (boolean1.booleanValue())
        {
            r2 = new r(60F, 0.0F, f / 2.0F, f1 / 2.0F, false);
        } else
        {
            r2 = new r(0.0F, -60F, f / 2.0F, f1 / 2.0F, false);
        }
        break MISSING_BLOCK_LABEL_209;
_L13:
        if (boolean1.booleanValue())
        {
            r2 = new r(60F, 0.0F, f / 2.0F, f1 / 2.0F, true);
        } else
        {
            r2 = new r(0.0F, -60F, f / 2.0F, f1 / 2.0F, true);
        }
        break MISSING_BLOCK_LABEL_209;
_L15:
        if (boolean1.booleanValue())
        {
            float f43 = f1 * f2;
            translateanimation3 = new TranslateAnimation(f, 0.0F, f43, 0.0F);
        } else
        {
            float f41 = 0.4F * -f;
            float f42 = f1 * f2;
            translateanimation3 = new TranslateAnimation(0.0F, f41, 0.0F, f42);
        }
        break MISSING_BLOCK_LABEL_345;
_L16:
        if (boolean1.booleanValue())
        {
            float f40 = f * f2;
            translateanimation3 = new TranslateAnimation(f40, 0.0F, f1, 0.0F);
        } else
        {
            float f38 = f * f2;
            float f39 = 0.4F * -f1;
            translateanimation3 = new TranslateAnimation(0.0F, f38, 0.0F, f39);
        }
        break MISSING_BLOCK_LABEL_345;
_L17:
        if (boolean1.booleanValue())
        {
            float f36 = 0.4F * -f;
            float f37 = f1 * f2;
            translateanimation3 = new TranslateAnimation(f36, 0.0F, f37, 0.0F);
        } else
        {
            float f35 = f1 * f2;
            translateanimation3 = new TranslateAnimation(0.0F, f, 0.0F, f35);
        }
        break MISSING_BLOCK_LABEL_345;
_L5:
        a()[difference.ordinal()];
        JVM INSTR tableswitch 2 4: default 836
    //                   2 1025
    //                   3 1081
    //                   4 1137;
           goto _L18 _L19 _L20 _L21
_L18:
        if (boolean1.booleanValue())
        {
            r1 = new r(-60F, 0.0F, f / 2.0F, f1 / 2.0F, true);
        } else
        {
            r1 = new r(0.0F, 60F, f / 2.0F, f1 / 2.0F, true);
        }
        r1.setDuration(600L);
        r1.setFillAfter(true);
        animationset.addAnimation(r1);
        if (boolean1.booleanValue())
        {
            scaleanimation4 = new ScaleAnimation(0.4F, 1.0F, 0.4F, 1.0F);
        } else
        {
            scaleanimation4 = new ScaleAnimation(1.0F, 0.4F, 1.0F, 0.4F);
        }
        scaleanimation4.setDuration(600L);
        scaleanimation4.setFillAfter(true);
        animationset.addAnimation(scaleanimation4);
        a()[difference.ordinal()];
        JVM INSTR tableswitch 2 4: default 964
    //                   2 1235
    //                   3 1300
    //                   4 1365;
           goto _L22 _L23 _L24 _L25
_L22:
        if (boolean1.booleanValue())
        {
            float f33 = 0.4F * -f;
            float f34 = f1 * f2;
            translateanimation2 = new TranslateAnimation(f33, 0.0F, f34, 0.0F);
        } else
        {
            float f32 = f1 * f2;
            translateanimation2 = new TranslateAnimation(0.0F, f, 0.0F, f32);
        }
        translateanimation2.setDuration(600L);
        translateanimation2.setFillAfter(true);
        animationset.addAnimation(translateanimation2);
          goto _L4
_L19:
        if (boolean1.booleanValue())
        {
            r1 = new r(60F, 0.0F, f / 2.0F, f1 / 2.0F, false);
        } else
        {
            r1 = new r(0.0F, -60F, f / 2.0F, f1 / 2.0F, false);
        }
        break MISSING_BLOCK_LABEL_865;
_L20:
        if (boolean1.booleanValue())
        {
            r1 = new r(60F, 0.0F, f / 2.0F, f1 / 2.0F, true);
        } else
        {
            r1 = new r(0.0F, -60F, f / 2.0F, f1 / 2.0F, true);
        }
        break MISSING_BLOCK_LABEL_865;
_L21:
        if (boolean1.booleanValue())
        {
            r1 = new r(-60F, 0.0F, f / 2.0F, f1 / 2.0F, false);
        } else
        {
            r1 = new r(0.0F, 60F, f / 2.0F, f1 / 2.0F, false);
        }
        break MISSING_BLOCK_LABEL_865;
_L23:
        if (boolean1.booleanValue())
        {
            float f30 = f * f2;
            float f31 = 0.4F * -f1;
            translateanimation2 = new TranslateAnimation(f30, 0.0F, f31, 0.0F);
        } else
        {
            float f29 = f * f2;
            translateanimation2 = new TranslateAnimation(0.0F, f29, 0.0F, f1);
        }
        break MISSING_BLOCK_LABEL_1001;
_L24:
        if (boolean1.booleanValue())
        {
            float f28 = f1 * f2;
            translateanimation2 = new TranslateAnimation(f, 0.0F, f28, 0.0F);
        } else
        {
            float f26 = 0.4F * -f;
            float f27 = f1 * f2;
            translateanimation2 = new TranslateAnimation(0.0F, f26, 0.0F, f27);
        }
        break MISSING_BLOCK_LABEL_1001;
_L25:
        if (boolean1.booleanValue())
        {
            float f25 = f * f2;
            translateanimation2 = new TranslateAnimation(f25, 0.0F, f1, 0.0F);
        } else
        {
            float f23 = f * f2;
            float f24 = 0.4F * -f1;
            translateanimation2 = new TranslateAnimation(0.0F, f23, 0.0F, f24);
        }
        break MISSING_BLOCK_LABEL_1001;
_L8:
        f13 = 0.0F;
        a()[difference.ordinal()];
        JVM INSTR tableswitch 1 4: default 1496
    //                   1 1546
    //                   2 1593
    //                   3 1646
    //                   4 1695;
           goto _L26 _L27 _L28 _L29 _L30
_L26:
        f18 = 0.0F;
        f16 = 0.0F;
        f17 = 0.0F;
_L31:
        TranslateAnimation translateanimation1 = new TranslateAnimation(f16, f13, f17, f18);
        translateanimation1.setDuration(600L);
        translateanimation1.setFillAfter(true);
        animationset.addAnimation(translateanimation1);
          goto _L4
_L27:
        float f22;
        if (boolean1.booleanValue())
        {
            f22 = f1;
        } else
        {
            f22 = 0.0F;
        }
        if (boolean1.booleanValue())
        {
            f18 = 0.0F;
        } else
        {
            f18 = f1;
        }
        f17 = f22;
        f13 = 0.0F;
        f16 = 0.0F;
          goto _L31
_L28:
        float f20;
        float f21;
        if (boolean1.booleanValue())
        {
            f20 = -f;
        } else
        {
            f20 = 0.0F;
        }
        if (boolean1.booleanValue())
        {
            f21 = 0.0F;
        } else
        {
            f21 = -f;
        }
        f13 = f21;
        f16 = f20;
        f17 = 0.0F;
        f18 = 0.0F;
          goto _L31
_L29:
        float f19;
        if (boolean1.booleanValue())
        {
            f19 = -f1;
        } else
        {
            f19 = 0.0F;
        }
        if (boolean1.booleanValue())
        {
            f18 = 0.0F;
        } else
        {
            f18 = -f1;
        }
        f17 = f19;
        f13 = 0.0F;
        f16 = 0.0F;
          goto _L31
_L30:
        float f14;
        float f15;
        if (boolean1.booleanValue())
        {
            f14 = f;
        } else
        {
            f14 = 0.0F;
        }
        if (boolean1.booleanValue())
        {
            f15 = 0.0F;
        } else
        {
            f15 = f;
        }
        f13 = f15;
        f16 = f14;
        f17 = 0.0F;
        f18 = 0.0F;
          goto _L31
_L9:
        f3 = 0.0F;
        a()[difference.ordinal()];
        JVM INSTR tableswitch 1 4: default 1788
    //                   1 1838
    //                   2 1887
    //                   3 1938
    //                   4 1985;
           goto _L32 _L33 _L34 _L35 _L36
_L32:
        f8 = 0.0F;
        f6 = 0.0F;
        f7 = 0.0F;
_L37:
        TranslateAnimation translateanimation = new TranslateAnimation(f6, f3, f7, f8);
        translateanimation.setDuration(600L);
        translateanimation.setFillAfter(true);
        animationset.addAnimation(translateanimation);
          goto _L4
_L33:
        float f12;
        if (boolean1.booleanValue())
        {
            f12 = -f1;
        } else
        {
            f12 = 0.0F;
        }
        if (boolean1.booleanValue())
        {
            f8 = 0.0F;
        } else
        {
            f8 = -f1;
        }
        f7 = f12;
        f3 = 0.0F;
        f6 = 0.0F;
          goto _L37
_L34:
        float f10;
        float f11;
        if (boolean1.booleanValue())
        {
            f10 = f;
        } else
        {
            f10 = 0.0F;
        }
        if (boolean1.booleanValue())
        {
            f11 = 0.0F;
        } else
        {
            f11 = f;
        }
        f3 = f11;
        f6 = f10;
        f7 = 0.0F;
        f8 = 0.0F;
          goto _L37
_L35:
        float f9;
        if (boolean1.booleanValue())
        {
            f9 = f1;
        } else
        {
            f9 = 0.0F;
        }
        if (boolean1.booleanValue())
        {
            f8 = 0.0F;
        } else
        {
            f8 = f1;
        }
        f7 = f9;
        f3 = 0.0F;
        f6 = 0.0F;
          goto _L37
_L36:
        float f4;
        float f5;
        if (boolean1.booleanValue())
        {
            f4 = -f;
        } else
        {
            f4 = 0.0F;
        }
        if (boolean1.booleanValue())
        {
            f5 = 0.0F;
        } else
        {
            f5 = -f;
        }
        f3 = f5;
        f6 = f4;
        f7 = 0.0F;
        f8 = 0.0F;
          goto _L37
_L6:
        if (boolean1.booleanValue())
        {
            ScaleAnimation scaleanimation = new ScaleAnimation(0.6F, 1.1F, 0.6F, 1.1F, 1, 0.5F, 1, 0.5F);
            scaleanimation.setDuration(Math.round(0.6F * (float)600L));
            scaleanimation.setStartOffset(0L);
            scaleanimation.setFillAfter(true);
            animationset.addAnimation(scaleanimation);
            ScaleAnimation scaleanimation1 = new ScaleAnimation(1.0F, 0.8181818F, 1.0F, 0.8181818F, 1, 0.5F, 1, 0.5F);
            scaleanimation1.setDuration(Math.round(0.2F * (float)600L));
            scaleanimation1.setStartOffset(Math.round(0.6F * (float)600L));
            scaleanimation1.setFillAfter(true);
            animationset.addAnimation(scaleanimation1);
            ScaleAnimation scaleanimation2 = new ScaleAnimation(1.0F, 1.111111F, 1.0F, 1.111111F, 1, 0.5F, 1, 0.5F);
            scaleanimation2.setDuration(Math.round(0.09999996F * (float)600L));
            scaleanimation2.setStartOffset(Math.round(0.8F * (float)600L));
            scaleanimation2.setFillAfter(true);
            animationset.addAnimation(scaleanimation2);
        } else
        {
            ScaleAnimation scaleanimation3 = new ScaleAnimation(1.0F, 0.0F, 1.0F, 0.0F, 1, 0.5F, 1, 0.5F);
            scaleanimation3.setDuration(600L);
            scaleanimation3.setStartOffset(0L);
            scaleanimation3.setFillAfter(true);
            animationset.addAnimation(scaleanimation3);
        }
          goto _L4
    }
}
