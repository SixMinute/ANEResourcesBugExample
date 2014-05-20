// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message;


// Referenced classes of package com.adobe.air.wand.message:
//            MessageDataObject

public interface MessageDataArray
{

    public abstract MessageDataArray getArray(int i)
        throws Exception;

    public abstract boolean getBoolean(int i)
        throws Exception;

    public abstract double getDouble(int i)
        throws Exception;

    public abstract int getInt(int i)
        throws Exception;

    public abstract long getLong(int i)
        throws Exception;

    public abstract MessageDataObject getObject(int i)
        throws Exception;

    public abstract String getString(int i)
        throws Exception;

    public abstract int length();

    public abstract MessageDataArray put(double d)
        throws Exception;

    public abstract MessageDataArray put(int i)
        throws Exception;

    public abstract MessageDataArray put(int i, double d)
        throws Exception;

    public abstract MessageDataArray put(int i, int j)
        throws Exception;

    public abstract MessageDataArray put(int i, long l)
        throws Exception;

    public abstract MessageDataArray put(int i, MessageDataArray messagedataarray)
        throws Exception;

    public abstract MessageDataArray put(int i, MessageDataObject messagedataobject)
        throws Exception;

    public abstract MessageDataArray put(int i, String s)
        throws Exception;

    public abstract MessageDataArray put(int i, boolean flag)
        throws Exception;

    public abstract MessageDataArray put(long l)
        throws Exception;

    public abstract MessageDataArray put(MessageDataArray messagedataarray)
        throws Exception;

    public abstract MessageDataArray put(MessageDataObject messagedataobject)
        throws Exception;

    public abstract MessageDataArray put(String s)
        throws Exception;

    public abstract MessageDataArray put(boolean flag)
        throws Exception;

    public abstract boolean remove(int i);
}
