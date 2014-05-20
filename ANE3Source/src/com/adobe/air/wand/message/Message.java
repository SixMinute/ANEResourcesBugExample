// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message;


public abstract class Message
{
    public static abstract class Data
    {

        public Data()
        {
        }
    }

    public static abstract class Header
    {

        protected long mTimestamp;
        protected String mTitle;
        protected Type mType;

        public long getTimestamp()
        {
            return mTimestamp;
        }

        public String getTitle()
        {
            return mTitle;
        }

        public Type getType()
        {
            return mType;
        }

        public void setTimestamp(long l)
        {
            mTimestamp = l;
        }

        public void setTitle(String s)
        {
            mTitle = s;
        }

        public void setType(Type type)
        {
            mType = type;
        }

        public Header(String s, Type type, long l)
        {
            mTitle = null;
            mType = null;
            mTimestamp = 0L;
            mTitle = s;
            mType = type;
            mTimestamp = l;
        }
    }

    public static final class Type extends Enum
    {

        private static final Type $VALUES[];
        public static final Type NOTIFICATION;
        public static final Type REQUEST;
        public static final Type RESPONSE;
        private final String mType;

        public static Type valueOf(String s)
        {
            return (Type)Enum.valueOf(com/adobe/air/wand/message/Message$Type, s);
        }

        public static Type[] values()
        {
            return (Type[])$VALUES.clone();
        }

        public String toString()
        {
            return mType;
        }

        static 
        {
            REQUEST = new Type("REQUEST", 0, "REQUEST");
            RESPONSE = new Type("RESPONSE", 1, "RESPONSE");
            NOTIFICATION = new Type("NOTIFICATION", 2, "NOTIFICATION");
            Type atype[] = new Type[3];
            atype[0] = REQUEST;
            atype[1] = RESPONSE;
            atype[2] = NOTIFICATION;
            $VALUES = atype;
        }

        private Type(String s, int i, String s1)
        {
            super(s, i);
            mType = s1;
        }
    }


    protected final Data mData;
    protected final Header mHeader;

    public Message(Header header, Data data)
    {
        mHeader = header;
        mData = data;
    }

    public Data getData()
    {
        return mData;
    }

    public Header getHeader()
    {
        return mHeader;
    }
}
