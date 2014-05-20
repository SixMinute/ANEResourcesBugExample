// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message;


// Referenced classes of package com.adobe.air.wand.message:
//            Request

public static class mTaskID extends mTaskID
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

    public (String s, String s1, long l)
    {
        super(s, QUEST, l);
        mTaskID = "";
        mTaskID = s1;
    }
}
