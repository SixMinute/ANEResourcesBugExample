// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message;


// Referenced classes of package com.adobe.air.wand.message:
//            Message, MessageDataObject

public class Response extends Message
{
    public static class Data extends Message.Data
    {

        protected MessageDataObject mResult;

        public Object getResult()
        {
            return mResult;
        }

        public void setResult(MessageDataObject messagedataobject)
        {
            mResult = messagedataobject;
        }

        public Data(MessageDataObject messagedataobject)
        {
            mResult = null;
            setResult(messagedataobject);
        }
    }

    public static class Header extends Message.Header
    {

        protected Status mStatus;
        protected String mTaskID;

        public Status getStatus()
        {
            return mStatus;
        }

        public String getTaskID()
        {
            return mTaskID;
        }

        public void setStatus(Status status)
        {
            mStatus = status;
        }

        public void setTaskID(String s)
        {
            mTaskID = s;
        }

        public Header(String s, String s1, long l, Status status)
        {
            super(s, Message.Type.RESPONSE, l);
            mStatus = null;
            mTaskID = "";
            mStatus = status;
            mTaskID = s1;
        }
    }

    public static final class Status extends Enum
    {

        private static final Status $VALUES[];
        public static final Status ERROR;
        public static final Status SUCCESS;
        private final String mStatus;

        public static Status valueOf(String s)
        {
            return (Status)Enum.valueOf(com/adobe/air/wand/message/Response$Status, s);
        }

        public static Status[] values()
        {
            return (Status[])$VALUES.clone();
        }

        public String toString()
        {
            return mStatus;
        }

        static 
        {
            SUCCESS = new Status("SUCCESS", 0, "SUCCESS");
            ERROR = new Status("ERROR", 1, "ERROR");
            Status astatus[] = new Status[2];
            astatus[0] = SUCCESS;
            astatus[1] = ERROR;
            $VALUES = astatus;
        }

        private Status(String s, int i, String s1)
        {
            super(s, i);
            mStatus = s1;
        }
    }


    public Response(Header header, Data data)
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
