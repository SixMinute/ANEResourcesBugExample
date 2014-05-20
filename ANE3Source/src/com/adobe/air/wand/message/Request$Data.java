// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message;


// Referenced classes of package com.adobe.air.wand.message:
//            Request, MessageDataArray

public static class ray extends ray
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

    public ray(MessageDataArray messagedataarray)
    {
        mArguments = null;
        setArguments(messagedataarray);
    }
}
