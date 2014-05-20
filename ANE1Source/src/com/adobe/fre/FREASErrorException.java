// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.fre;


// Referenced classes of package com.adobe.fre:
//            FREObject

public class FREASErrorException extends Exception
{

    public static final long serialVersionUID = 1L;
    private FREObject m_thrownASException;

    public FREASErrorException()
    {
    }

    public FREObject getThrownException()
    {
        return m_thrownASException;
    }
}
