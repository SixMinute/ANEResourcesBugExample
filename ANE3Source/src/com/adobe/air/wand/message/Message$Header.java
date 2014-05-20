// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message;


// Referenced classes of package com.adobe.air.wand.message:
//            Message

public static abstract class mTimestamp
{

    protected long mTimestamp;
    protected String mTitle;
    protected mType mType;

    public long getTimestamp()
    {
        return mTimestamp;
    }

    public String getTitle()
    {
        return mTitle;
    }

    public mTitle getType()
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

    public void setType(mTitle mtitle)
    {
        mType = mtitle;
    }

    public (String s,  , long l)
    {
        mTitle = null;
        mType = null;
        mTimestamp = 0L;
        mTitle = s;
        mType = ;
        mTimestamp = l;
    }
}
