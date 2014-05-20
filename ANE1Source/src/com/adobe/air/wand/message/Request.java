// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message;


// Referenced classes of package com.adobe.air.wand.message:
//            Message, MessageDataArray

public class Request extends Message
{
    public static class Data extends Message.Data
    {

        MessageDataArray mArguments;

        public MessageDataArray getArguments()
        {
            return mArguments;
        }

        public void setArguments(MessageDataArray messagedataarray)
        {
            mArguments = messagedataarray;
        }

        public Data(MessageDataArray messagedataarray)
        {
            mArguments = null;
            setArguments(messagedataarray);
        }
    }

    public static class Header extends Message.Header
    {

        protected String mTaskID;

        public String getTaskID()
        {
            return mTaskID;
        }

        public void setTaskID(String s)
        {
            mTaskID = s;
        }

        public Header(String s, String s1, long l)
        {
            super(s, Message.Type.REQUEST, l);
            mTaskID = "";
            mTaskID = s1;
        }
    }


    public Request(Header header, Data data)
    {
        super(header, data);
    }

    public volatile Message.Data getData()
    {
        return getData();
    }

    public Data getData()
    {
        return (Data)mData;
    }

    public volatile Message.Header getHeader()
    {
        return getHeader();
    }

    public Header getHeader()
    {
        return (Header)mHeader;
    }
}
