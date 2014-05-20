// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;


// Referenced classes of package com.facebook.internal:
//            Utility

public static class <init>
{

    private String nuxContent;
    private boolean nuxEnabled;
    private boolean supportsAttribution;
    private boolean supportsImplicitLogging;

    public String getNuxContent()
    {
        return nuxContent;
    }

    public boolean getNuxEnabled()
    {
        return nuxEnabled;
    }

    public boolean supportsAttribution()
    {
        return supportsAttribution;
    }

    public boolean supportsImplicitLogging()
    {
        return supportsImplicitLogging;
    }

    private (boolean flag, boolean flag1, String s, boolean flag2)
    {
        supportsAttribution = flag;
        supportsImplicitLogging = flag1;
        nuxContent = s;
        nuxEnabled = flag2;
    }

    nuxEnabled(boolean flag, boolean flag1, String s, boolean flag2, nuxEnabled nuxenabled)
    {
        this(flag, flag1, s, flag2);
    }
}
