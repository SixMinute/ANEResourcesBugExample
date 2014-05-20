// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message.json;

import com.adobe.air.wand.message.MessageDataArray;
import com.adobe.air.wand.message.MessageDataObject;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.adobe.air.wand.message.json:
//            JSONMessageDataArray

public class JSONMessageDataObject
    implements MessageDataObject
{

    final JSONObject mJSONObject;

    public JSONMessageDataObject()
    {
        mJSONObject = new JSONObject();
    }

    public JSONMessageDataObject(JSONObject jsonobject)
    {
        mJSONObject = jsonobject;
    }

    public MessageDataArray getArray(String s)
        throws Exception
    {
        return new JSONMessageDataArray(mJSONObject.getJSONArray(s));
    }

    public boolean getBoolean(String s)
        throws Exception
    {
        return mJSONObject.getBoolean(s);
    }

    public double getDouble(String s)
        throws Exception
    {
        return mJSONObject.getDouble(s);
    }

    public int getInt(String s)
        throws Exception
    {
        return mJSONObject.getInt(s);
    }

    public long getLong(String s)
        throws Exception
    {
        return mJSONObject.getLong(s);
    }

    public String[] getNames()
    {
        JSONArray jsonarray = mJSONObject.names();
        if (jsonarray == null)
        {
            return null;
        }
        String as[] = new String[mJSONObject.length()];
        int i = 0;
        while (i < as.length) 
        {
            try
            {
                as[i] = jsonarray.getString(i);
            }
            catch (Exception exception)
            {
                as[i] = "";
            }
            i++;
        }
        return as;
    }

    public MessageDataObject getObject(String s)
        throws Exception
    {
        return new JSONMessageDataObject(mJSONObject.getJSONObject(s));
    }

    public String getString(String s)
        throws Exception
    {
        return mJSONObject.getString(s);
    }

    public boolean has(String s)
    {
        return mJSONObject.has(s);
    }

    public int length()
    {
        return mJSONObject.length();
    }

    public MessageDataObject put(String s, double d)
        throws Exception
    {
        mJSONObject.put(s, d);
        return this;
    }

    public MessageDataObject put(String s, int i)
        throws Exception
    {
        mJSONObject.put(s, i);
        return this;
    }

    public MessageDataObject put(String s, long l)
        throws Exception
    {
        mJSONObject.put(s, l);
        return this;
    }

    public MessageDataObject put(String s, MessageDataArray messagedataarray)
        throws Exception
    {
        mJSONObject.put(s, ((JSONMessageDataArray)messagedataarray).mJSONArray);
        return this;
    }

    public MessageDataObject put(String s, MessageDataObject messagedataobject)
        throws Exception
    {
        mJSONObject.put(s, ((JSONMessageDataObject)messagedataobject).mJSONObject);
        return this;
    }

    public MessageDataObject put(String s, String s1)
        throws Exception
    {
        mJSONObject.put(s, s1);
        return this;
    }

    public MessageDataObject put(String s, boolean flag)
        throws Exception
    {
        mJSONObject.put(s, flag);
        return this;
    }

    public boolean remove(String s)
    {
        return mJSONObject.remove(s) != null;
    }
}
