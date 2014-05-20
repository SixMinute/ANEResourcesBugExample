// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message;


// Referenced classes of package com.adobe.air.wand.message:
//            MessageDataArray

public interface MessageDataObject
{

    public abstract MessageDataArray getArray(String s)
        throws Exception;

    public abstract boolean getBoolean(String s)
        throws Exception;

    public abstract double getDouble(String s)
        throws Exception;

    public abstract int getInt(String s)
        throws Exception;

    public abstract long getLong(String s)
        throws Exception;

    public abstract String[] getNames();

    public abstract MessageDataObject getObject(String s)
        throws Exception;

    public abstract String getString(String s)
        throws Exception;

    public abstract boolean has(String s);

    public abstract int length();

    public abstract MessageDataObject put(String s, double d)
        throws Exception;

    public abstract MessageDataObject put(String s, int i)
        throws Exception;

    public abstract MessageDataObject put(String s, long l)
        throws Exception;

    public abstract MessageDataObject put(String s, MessageDataArray messagedataarray)
        throws Exception;

    public abstract MessageDataObject put(String s, MessageDataObject messagedataobject)
        throws Exception;

    public abstract MessageDataObject put(String s, String s1)
        throws Exception;

    public abstract MessageDataObject put(String s, boolean flag)
        throws Exception;

    public abstract boolean remove(String s);
}
