// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.message.json;

import com.adobe.air.wand.message.Message;
import com.adobe.air.wand.message.MessageDataArray;
import com.adobe.air.wand.message.MessageDataObject;
import com.adobe.air.wand.message.MessageManager;
import com.adobe.air.wand.message.Notification;
import com.adobe.air.wand.message.Request;
import com.adobe.air.wand.message.Response;
import org.json.JSONObject;

// Referenced classes of package com.adobe.air.wand.message.json:
//            JSONMessageDataArray, JSONMessageDataObject

public class JSONMessageManager extends MessageManager
{

    public JSONMessageManager()
    {
    }

    private static JSONObject createJSONMessage(Message message)
        throws Exception
    {
        message;
        JVM INSTR monitorenter ;
        com.adobe.air.wand.message.Message.Type type;
        JSONObject jsonobject;
        JSONObject jsonobject1;
        type = message.getHeader().getType();
        jsonobject = new JSONObject();
        jsonobject1 = new JSONObject();
        static class _cls1
        {

            static final int $SwitchMap$com$adobe$air$wand$message$Message$Type[];

            static 
            {
                $SwitchMap$com$adobe$air$wand$message$Message$Type = new int[com.adobe.air.wand.message.Message.Type.values().length];
                try
                {
                    $SwitchMap$com$adobe$air$wand$message$Message$Type[com.adobe.air.wand.message.Message.Type.REQUEST.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$adobe$air$wand$message$Message$Type[com.adobe.air.wand.message.Message.Type.RESPONSE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$adobe$air$wand$message$Message$Type[com.adobe.air.wand.message.Message.Type.NOTIFICATION.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.com.adobe.air.wand.message.Message.Type[type.ordinal()];
        JVM INSTR tableswitch 1 3: default 60
    //                   1 75
    //                   2 196
    //                   3 263;
           goto _L1 _L2 _L3 _L4
_L4:
        break MISSING_BLOCK_LABEL_263;
_L1:
        throw new Exception("Unsupported message type");
        Exception exception;
        exception;
        message;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        Object obj;
        obj = (com.adobe.air.wand.message.Request.Header)message.getHeader();
        com.adobe.air.wand.message.Request.Data data1 = (com.adobe.air.wand.message.Request.Data)message.getData();
        jsonobject.put("taskID", ((com.adobe.air.wand.message.Request.Header) (obj)).getTaskID());
        jsonobject1.put("arguments", ((JSONMessageDataArray)data1.getArguments()).mJSONArray);
_L5:
        JSONObject jsonobject2;
        jsonobject.put("title", ((com.adobe.air.wand.message.Message.Header) (obj)).getTitle());
        jsonobject.put("type", ((com.adobe.air.wand.message.Message.Header) (obj)).getType().toString());
        jsonobject.put("timestamp", ((com.adobe.air.wand.message.Message.Header) (obj)).getTimestamp());
        jsonobject2 = new JSONObject();
        jsonobject2.put("header", jsonobject);
        jsonobject2.put("data", jsonobject1);
        message;
        JVM INSTR monitorexit ;
        return jsonobject2;
_L3:
        obj = (com.adobe.air.wand.message.Response.Header)message.getHeader();
        com.adobe.air.wand.message.Response.Data data = (com.adobe.air.wand.message.Response.Data)message.getData();
        jsonobject.put("status", ((com.adobe.air.wand.message.Response.Header) (obj)).getStatus().toString());
        jsonobject.put("taskID", ((com.adobe.air.wand.message.Response.Header) (obj)).getTaskID());
        jsonobject1.put("result", ((JSONMessageDataObject)data.getResult()).mJSONObject);
          goto _L5
        obj = (com.adobe.air.wand.message.Notification.Header)message.getHeader();
        jsonobject1.put("notification", ((JSONMessageDataObject)((com.adobe.air.wand.message.Notification.Data)message.getData()).getNotification()).mJSONObject);
          goto _L5
    }

    private static Message createWandMessage(JSONObject jsonobject)
        throws Exception
    {
        jsonobject;
        JVM INSTR monitorenter ;
        JSONObject jsonobject1;
        JSONObject jsonobject2;
        String s;
        String s1;
        long l;
        jsonobject1 = jsonobject.getJSONObject("header");
        jsonobject2 = jsonobject.getJSONObject("data");
        s = jsonobject1.getString("title");
        s1 = jsonobject1.getString("type");
        l = jsonobject1.getLong("timestamp");
        if (!s1.equals(com.adobe.air.wand.message.Message.Type.REQUEST.toString())) goto _L2; else goto _L1
_L1:
        Object obj;
        String s4 = jsonobject1.getString("taskID");
        org.json.JSONArray jsonarray = jsonobject2.getJSONArray("arguments");
        obj = new Request(new com.adobe.air.wand.message.Request.Header(s, s4, l), new com.adobe.air.wand.message.Request.Data(new JSONMessageDataArray(jsonarray)));
_L3:
        jsonobject;
        JVM INSTR monitorexit ;
        return ((Message) (obj));
_L2:
        String s2;
        String s3;
        com.adobe.air.wand.message.Response.Status status;
        if (!s1.equals(com.adobe.air.wand.message.Message.Type.RESPONSE.toString()))
        {
            break MISSING_BLOCK_LABEL_250;
        }
        s2 = jsonobject1.getString("taskID");
        s3 = jsonobject1.getString("status");
        if (!s3.equals(com.adobe.air.wand.message.Response.Status.SUCCESS.toString()))
        {
            break MISSING_BLOCK_LABEL_213;
        }
        status = com.adobe.air.wand.message.Response.Status.SUCCESS;
_L4:
        JSONObject jsonobject4 = jsonobject2.getJSONObject("result");
        obj = new Response(new com.adobe.air.wand.message.Response.Header(s, s2, l, status), new com.adobe.air.wand.message.Response.Data(new JSONMessageDataObject(jsonobject4)));
          goto _L3
label0:
        {
            if (!s3.equals(com.adobe.air.wand.message.Response.Status.ERROR.toString()))
            {
                break label0;
            }
            status = com.adobe.air.wand.message.Response.Status.ERROR;
        }
          goto _L4
        throw new Exception("Unable to fetch Response status");
          goto _L3
        Exception exception;
        exception;
        jsonobject;
        JVM INSTR monitorexit ;
        throw exception;
label1:
        {
            if (!s1.equals(com.adobe.air.wand.message.Message.Type.NOTIFICATION.toString()))
            {
                break label1;
            }
            JSONObject jsonobject3 = jsonobject2.getJSONObject("notification");
            obj = new Notification(new com.adobe.air.wand.message.Notification.Header(s, l), new com.adobe.air.wand.message.Notification.Data(new JSONMessageDataObject(jsonobject3)));
        }
        if (false)
        {
            obj = null;
        }
          goto _L3
    }

    public MessageDataArray createDataArray()
    {
        return new JSONMessageDataArray();
    }

    public MessageDataObject createDataObject()
    {
        return new JSONMessageDataObject();
    }

    public Notification createWandNotification(String s, MessageDataObject messagedataobject)
        throws Exception
    {
        com.adobe.air.wand.message.Notification.Header header = new com.adobe.air.wand.message.Notification.Header(s, System.currentTimeMillis());
        Object obj;
        if (messagedataobject == null)
        {
            obj = new JSONMessageDataObject();
        } else
        {
            obj = messagedataobject;
        }
        return new Notification(header, new com.adobe.air.wand.message.Notification.Data(((MessageDataObject) (obj))));
    }

    public Request createWandRequest(String s, String s1, MessageDataArray messagedataarray)
        throws Exception
    {
        com.adobe.air.wand.message.Request.Header header = new com.adobe.air.wand.message.Request.Header(s, s1, System.currentTimeMillis());
        Object obj;
        if (messagedataarray == null)
        {
            obj = new JSONMessageDataArray();
        } else
        {
            obj = messagedataarray;
        }
        return new Request(header, new com.adobe.air.wand.message.Request.Data(((MessageDataArray) (obj))));
    }

    public Response createWandResponse(String s, String s1, MessageDataObject messagedataobject, com.adobe.air.wand.message.Response.Status status)
        throws Exception
    {
        com.adobe.air.wand.message.Response.Header header = new com.adobe.air.wand.message.Response.Header(s, s1, System.currentTimeMillis(), status);
        Object obj;
        if (messagedataobject == null)
        {
            obj = new JSONMessageDataObject();
        } else
        {
            obj = messagedataobject;
        }
        return new Response(header, new com.adobe.air.wand.message.Response.Data(((MessageDataObject) (obj))));
    }

    public Message deserializeWandMessage(String s)
        throws Exception
    {
        return createWandMessage(new JSONObject(s));
    }

    public String serializeMessage(Message message)
        throws Exception
    {
        return createJSONMessage(message).toString();
    }
}
