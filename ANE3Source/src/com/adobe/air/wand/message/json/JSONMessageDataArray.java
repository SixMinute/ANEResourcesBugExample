// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message.json;

import com.adobe.air.wand.message.MessageDataArray;
import com.adobe.air.wand.message.MessageDataObject;
import org.json.JSONArray;

// Referenced classes of package com.adobe.air.wand.message.json:
//            JSONMessageDataObject

public class JSONMessageDataArray
    implements MessageDataArray
{

    final JSONArray mJSONArray;

    public JSONMessageDataArray()
    {
        mJSONArray = new JSONArray();
    }

    public JSONMessageDataArray(JSONArray jsonarray)
    {
        mJSONArray = jsonarray;
    }

    public MessageDataArray getArray(int i)
        throws Exception
    {
        return new JSONMessageDataArray(mJSONArray.getJSONArray(i));
    }

    public boolean getBoolean(int i)
        throws Exception
    {
        return mJSONArray.getBoolean(i);
    }

    public double getDouble(int i)
        throws Exception
    {
        return mJSONArray.getDouble(i);
    }

    public int getInt(int i)
        throws Exception
    {
        return mJSONArray.getInt(i);
    }

    public long getLong(int i)
        throws Exception
    {
        return mJSONArray.getLong(i);
    }

    public MessageDataObject getObject(int i)
        throws Exception
    {
        return new JSONMessageDataObject(mJSONArray.getJSONObject(i));
    }

    public String getString(int i)
        throws Exception
    {
        return mJSONArray.getString(i);
    }

    public int length()
    {
        return mJSONArray.length();
    }

    public MessageDataArray put(double d)
        throws Exception
    {
        mJSONArray.put(d);
        return this;
    }

    public MessageDataArray put(int i)
        throws Exception
    {
        mJSONArray.put(i);
        return this;
    }

    public MessageDataArray put(int i, double d)
        throws Exception
    {
        mJSONArray.put(i, d);
        return this;
    }

    public MessageDataArray put(int i, int j)
        throws Exception
    {
        mJSONArray.put(i, j);
        return this;
    }

    public MessageDataArray put(int i, long l)
        throws Exception
    {
        mJSONArray.put(i, l);
        return this;
    }

    public MessageDataArray put(int i, MessageDataArray messagedataarray)
        throws Exception
    {
        mJSONArray.put(i, ((JSONMessageDataArray)messagedataarray).mJSONArray);
        return this;
    }

    public MessageDataArray put(int i, MessageDataObject messagedataobject)
        throws Exception
    {
        mJSONArray.put(i, ((JSONMessageDataObject)messagedataobject).mJSONObject);
        return this;
    }

    public MessageDataArray put(int i, String s)
        throws Exception
    {
        mJSONArray.put(i, s);
        return this;
    }

    public MessageDataArray put(int i, boolean flag)
        throws Exception
    {
        mJSONArray.put(i, flag);
        return this;
    }

    public MessageDataArray put(long l)
        throws Exception
    {
        mJSONArray.put(l);
        return this;
    }

    public MessageDataArray put(MessageDataArray messagedataarray)
        throws Exception
    {
        mJSONArray.put(((JSONMessageDataArray)messagedataarray).mJSONArray);
        return this;
    }

    public MessageDataArray put(MessageDataObject messagedataobject)
        throws Exception
    {
        mJSONArray.put(((JSONMessageDataObject)messagedataobject).mJSONObject);
        return this;
    }

    public MessageDataArray put(String s)
        throws Exception
    {
        mJSONArray.put(s);
        return this;
    }

    public MessageDataArray put(boolean flag)
        throws Exception
    {
        mJSONArray.put(flag);
        return this;
    }

    public boolean remove(int i)
    {
        return false;
    }
}
