// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message;


// Referenced classes of package com.adobe.air.wand.message:
//            Response

public static class mTaskID extends mTaskID
{

    protected mTaskID mStatus;
    protected String mTaskID;

    public mTaskID getStatus()
    {
        return mStatus;
    }

    public String getTaskID()
    {
        return mTaskID;
    }

    public void setStatus(mTaskID mtaskid)
    {
        mStatus = mtaskid;
    }

    public void setTaskID(String s)
    {
        mTaskID = s;
    }

    public (String s, String s1, long l,  )
    {
        super(s, PONSE, l);
        mStatus = null;
        mTaskID = "";
        mStatus = ;
        mTaskID = s1;
    }
}
