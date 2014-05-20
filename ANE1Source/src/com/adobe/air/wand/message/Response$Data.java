// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message;


// Referenced classes of package com.adobe.air.wand.message:
//            Response, MessageDataObject

public static class ect extends ect
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

    public ect(MessageDataObject messagedataobject)
    {
        mResult = null;
        setResult(messagedataobject);
    }
}
