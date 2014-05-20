// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message;


// Referenced classes of package com.adobe.air.wand.message:
//            Notification, MessageDataObject

public static class setNotification extends setNotification
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

    public (MessageDataObject messagedataobject)
    {
        mNotification = null;
        setNotification(messagedataobject);
    }
}
