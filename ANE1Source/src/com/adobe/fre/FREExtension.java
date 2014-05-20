// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.fre;


// Referenced classes of package com.adobe.fre:
//            FREContext

public interface FREExtension
{

    public abstract FREContext createContext(String s);

    public abstract void dispose();

    public abstract void initialize();
}
