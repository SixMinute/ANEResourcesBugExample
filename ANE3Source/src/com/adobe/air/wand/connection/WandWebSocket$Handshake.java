// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.connection;

import org.json.JSONObject;

// Referenced classes of package com.adobe.air.wand.connection:
//            WandWebSocket

private static class mDestinationID
{

    private static final String DESTINATION_ID = "destinationID";
    private static final String PROTOCOL = "protocol";
    private static final String SOURCE_ID = "sourceID";
    private static final String STATUS = "status";
    private static final String STATUS_FAILURE = "FAILURE";
    private static final String STATUS_SUCCESS = "SUCCESS";
    public static final int TIMEOUT_MILLISECONDS = 30000;
    private static final String VERSION = "version";
    private String mDestinationID;
    private String mProtocol;
    private String mSourceID;
    private String mVersion;

    public static mDestinationID parse(String s)
        throws Exception
    {
        JSONObject jsonobject = new JSONObject(s);
        mDestinationID mdestinationid = new <init>();
        mdestinationid.mProtocol = jsonobject.getString("protocol");
        mdestinationid.mVersion = jsonobject.getString("version");
        mdestinationid.mSourceID = jsonobject.getString("sourceID");
        mdestinationid.mDestinationID = jsonobject.getString("destinationID");
        return mdestinationid;
    }

    public String getDestinationID()
    {
        return mDestinationID;
    }

    public String getFailureResponse(String s, String s1)
        throws Exception
    {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("protocol", "WEBSOCKET");
        jsonobject.put("version", s1);
        jsonobject.put("sourceID", s);
        jsonobject.put("destinationID", mSourceID);
        jsonobject.put("status", "FAILURE");
        return jsonobject.toString();
    }

    public String getProtocol()
    {
        return mProtocol;
    }

    public String getSourceID()
    {
        return mSourceID;
    }

    public String getSuccessResponse(String s, String s1)
        throws Exception
    {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("protocol", "WEBSOCKET");
        jsonobject.put("version", s1);
        jsonobject.put("sourceID", s);
        jsonobject.put("destinationID", mSourceID);
        jsonobject.put("status", "SUCCESS");
        return jsonobject.toString();
    }

    public String getVersion()
    {
        return mVersion;
    }

    private ()
    {
        mProtocol = "WEBSOCKET";
        mVersion = "1.0.0";
        mSourceID = null;
        mDestinationID = null;
    }
}
