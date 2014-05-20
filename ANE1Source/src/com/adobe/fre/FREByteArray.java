// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.fre;

import java.nio.ByteBuffer;

// Referenced classes of package com.adobe.fre:
//            FREObject, FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, 
//            FRENoSuchNameException, FREWrongThreadException

public class FREByteArray extends FREObject
{

    private long m_dataPointer;

    protected FREByteArray()
        throws FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, FRENoSuchNameException, FREWrongThreadException, IllegalStateException
    {
        super("flash.utils.ByteArray", null);
    }

    private FREByteArray(FREObject.CFREObjectWrapper cfreobjectwrapper)
    {
        super(cfreobjectwrapper);
    }

    public static FREByteArray newByteArray()
        throws FREASErrorException, FREWrongThreadException, IllegalStateException
    {
        FREByteArray frebytearray = new FREByteArray();
        return frebytearray;
        FRENoSuchNameException frenosuchnameexception;
        frenosuchnameexception;
_L2:
        return null;
        FREInvalidObjectException freinvalidobjectexception;
        freinvalidobjectexception;
        continue; /* Loop/switch isn't completed */
        FRETypeMismatchException fretypemismatchexception;
        fretypemismatchexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public native void acquire()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native ByteBuffer getBytes()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native long getLength()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native void release()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
}
