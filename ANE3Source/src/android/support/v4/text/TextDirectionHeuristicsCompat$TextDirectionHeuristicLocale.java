// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.text;

import java.util.Locale;

// Referenced classes of package android.support.v4.text:
//            TextUtilsCompat, TextDirectionHeuristicsCompat

private static class nit> extends nit>
{

    public static final nit> INSTANCE = new <init>();

    protected boolean defaultIsRtl()
    {
        return TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1;
    }


    public ()
    {
        super(null);
    }
}
