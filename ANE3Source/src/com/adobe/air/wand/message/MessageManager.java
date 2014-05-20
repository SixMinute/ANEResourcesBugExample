// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message;


// Referenced classes of package com.adobe.air.wand.message:
//            MessageDataObject, Request, MessageDataArray, Notification, 
//            Response, Message

public abstract class MessageManager
{

    protected static final String NAME_ARGUMENTS = "arguments";
    protected static final String NAME_DATA = "data";
    public static final String NAME_ERROR_MESSAGE = "message";
    protected static final String NAME_HEADER = "header";
    protected static final String NAME_NOTIFICATION = "notification";
    protected static final String NAME_RESULT = "result";
    protected static final String NAME_STATUS = "status";
    protected static final String NAME_TASK_ID = "taskID";
    protected static final String NAME_TIMESTAMP = "timestamp";
    protected static final String NAME_TITLE = "title";
    protected static final String NAME_TYPE = "type";

    public MessageManager()
    {
    }

    public abstract MessageDataArray createDataArray();

    public abstract MessageDataObject createDataObject();

    public String createSerializedErrorResponse(Request request, String s)
        throws Exception
    {
        MessageDataObject messagedataobject = createDataObject();
        messagedataobject.put("message", s);
        return serializeMessage(createWandResponse(request, Response.Status.ERROR, messagedataobject));
    }

    public String createSerializedErrorResponse(String s, String s1, String s2)
        throws Exception
    {
        MessageDataObject messagedataobject = createDataObject();
        messagedataobject.put("message", s2);
        return serializeMessage(createWandResponse(s, s1, messagedataobject, Response.Status.ERROR));
    }

    public String createSerializedNotification(String s, MessageDataObject messagedataobject)
        throws Exception
    {
        return serializeMessage(createWandNotification(s, messagedataobject));
    }

    public String createSerializedRequest(String s, String s1, MessageDataArray messagedataarray)
        throws Exception
    {
        return serializeMessage(createWandRequest(s, s1, messagedataarray));
    }

    public String createSerializedResponse(Request request, Response.Status status, MessageDataObject messagedataobject)
        throws Exception
    {
        return serializeMessage(createWandResponse(request, status, messagedataobject));
    }

    public String createSerializedResponse(String s, String s1, MessageDataObject messagedataobject, Response.Status status)
        throws Exception
    {
        return serializeMessage(createWandResponse(s, s1, messagedataobject, status));
    }

    public String createSerializedSuccessResponse(Request request)
        throws Exception
    {
        return serializeMessage(createWandResponse(request, Response.Status.SUCCESS, null));
    }

    public String createSerializedSuccessResponse(String s, String s1, MessageDataObject messagedataobject)
        throws Exception
    {
        return serializeMessage(createWandResponse(s, s1, messagedataobject, Response.Status.SUCCESS));
    }

    public abstract Notification createWandNotification(String s, MessageDataObject messagedataobject)
        throws Exception;

    public abstract Request createWandRequest(String s, String s1, MessageDataArray messagedataarray)
        throws Exception;

    public Response createWandResponse(Request request, Response.Status status, MessageDataObject messagedataobject)
        throws Exception
    {
        return createWandResponse(request.getHeader().getTitle(), request.getHeader().getTaskID(), messagedataobject, status);
    }

    public abstract Response createWandResponse(String s, String s1, MessageDataObject messagedataobject, Response.Status status)
        throws Exception;

    public abstract Message deserializeWandMessage(String s)
        throws Exception;

    public abstract String serializeMessage(Message message)
        throws Exception;
}
