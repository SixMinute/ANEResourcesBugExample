// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message;


// Referenced classes of package com.adobe.air.wand.message:
//            Message, MessageDataObject

public class Notification extends Message
{
    public static class Data extends Message.Data
    {

        MessageDataObject mNotification;

        public Object getNotification()
        {
            return mNotification;
        }

        public void setNotification(MessageDataObject messagedataobject)
        {
            mNotification = messagedataobject;
        }

        public Data(MessageDataObject messagedataobject)
        {
            mNotification = null;
            setNotification(messagedataobject);
        }
    }

    public static class Header extends Message.Header
    {

        public Header(String s, long l)
        {
            super(s, Message.Type.NOTIFICATION, l);
        }
    }


    public Notification(Header header, Data data)
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
