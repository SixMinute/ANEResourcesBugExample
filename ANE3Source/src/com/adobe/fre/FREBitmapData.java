// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.fre;

import java.nio.ByteBuffer;

// Referenced classes of package com.adobe.fre:
//            FREObject, FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, 
//            FRENoSuchNameException, FREWrongThreadException

public class FREBitmapData extends FREObject
{

    private long m_dataPointer;

    private FREBitmapData(FREObject.CFREObjectWrapper cfreobjectwrapper)
    {
        super(cfreobjectwrapper);
    }

    protected FREBitmapData(FREObject afreobject[])
        throws FRETypeMismatchException, FREInvalidObjectException, FREASErrorException, FRENoSuchNameException, FREWrongThreadException, IllegalStateException
    {
        super("flash.display.BitmapData", afreobject);
    }

    public static FREBitmapData newBitmapData(int i, int j, boolean flag, Byte abyte[])
        throws FREASErrorException, FREWrongThreadException, IllegalArgumentException
    {
        FREObject afreobject[];
        if (abyte.length != 4)
        {
            throw new IllegalArgumentException("fillColor has wrong length");
        }
        afreobject = new FREObject[4];
        afreobject[0] = new FREObject(i);
        afreobject[1] = new FREObject(j);
        afreobject[2] = new FREObject(flag);
        int k = 0;
        int l = -1;
        for (int i1 = 0; i1 < 4; i1++)
        {
            int j1 = 8 * (3 - i1);
            k |= l & abyte[i1].byteValue() << j1;
            l >>>= 8;
        }

        afreobject[3] = new FREObject(k);
        FREBitmapData frebitmapdata = new FREBitmapData(afreobject);
        return frebitmapdata;
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

    public native ByteBuffer getBits()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native int getHeight()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native int getLineStride32()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native int getWidth()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native boolean hasAlpha()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native void invalidateRect(int i, int j, int k, int l)
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException, IllegalArgumentException;

    public native boolean isInvertedY()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native boolean isPremultiplied()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;

    public native void release()
        throws FREInvalidObjectException, FREWrongThreadException, IllegalStateException;
}
