// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.os.Bundle;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Utility;
import com.facebook.model.GraphObject;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;

// Referenced classes of package com.facebook:
//            Request, AppEventsLogger

static class hashedDeviceAndAppId
{

    public static final String ENCODED_EVENTS_KEY = "encoded_events";
    public static final String EVENT_COUNT_KEY = "event_count";
    public static final String NUM_SKIPPED_KEY = "num_skipped";
    private final int MAX_ACCUMULATED_LOG_EVENTS = 1000;
    private List accumulatedEvents;
    private AttributionIdentifiers attributionIdentifiers;
    private String hashedDeviceAndAppId;
    private List inFlightEvents;
    private int numSkippedEventsDueToFullBuffer;
    private String packageName;

    private byte[] getStringAsByteArray(String s)
    {
        byte abyte0[];
        try
        {
            abyte0 = s.getBytes("UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Utility.logd("Encoding exception: ", unsupportedencodingexception);
            return null;
        }
        return abyte0;
    }

    private void populateRequest(Request request, int i, JSONArray jsonarray, boolean flag, boolean flag1)
    {
        GraphObject graphobject = com.facebook.model.DeviceAndAppId();
        graphobject.setProperty("event", "CUSTOM_APP_EVENTS");
        if (numSkippedEventsDueToFullBuffer > 0)
        {
            graphobject.setProperty("num_skipped_events", Integer.valueOf(i));
        }
        if (flag)
        {
            Utility.setAppEventAttributionParameters(graphobject, attributionIdentifiers, hashedDeviceAndAppId, flag1);
        }
        graphobject.setProperty("application_package_name", packageName);
        request.setGraphObject(graphobject);
        Bundle bundle = request.getParameters();
        if (bundle == null)
        {
            bundle = new Bundle();
        }
        String s = jsonarray.toString();
        if (s != null)
        {
            bundle.putByteArray("custom_events_file", getStringAsByteArray(s));
            request.setTag(s);
        }
        request.setParameters(bundle);
    }

    public void accumulatePersistedEvents(List list)
    {
        this;
        JVM INSTR monitorenter ;
        accumulatedEvents.addAll(list);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void addEvent(accumulatedEvents accumulatedevents)
    {
        this;
        JVM INSTR monitorenter ;
        if (accumulatedEvents.size() + inFlightEvents.size() < 1000) goto _L2; else goto _L1
_L1:
        numSkippedEventsDueToFullBuffer = 1 + numSkippedEventsDueToFullBuffer;
_L4:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        accumulatedEvents.add(accumulatedevents);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    public void clearInFlightAndStats(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_20;
        }
        accumulatedEvents.addAll(inFlightEvents);
        inFlightEvents.clear();
        numSkippedEventsDueToFullBuffer = 0;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public int getAccumulatedEventCount()
    {
        this;
        JVM INSTR monitorenter ;
        int i = accumulatedEvents.size();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public List getEventsToPersist()
    {
        this;
        JVM INSTR monitorenter ;
        List list;
        list = accumulatedEvents;
        accumulatedEvents = new ArrayList();
        this;
        JVM INSTR monitorexit ;
        return list;
        Exception exception;
        exception;
        throw exception;
    }

    public int populateRequest(Request request, boolean flag, boolean flag1, boolean flag2)
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        JSONArray jsonarray;
        Iterator iterator;
        i = numSkippedEventsDueToFullBuffer;
        inFlightEvents.addAll(accumulatedEvents);
        accumulatedEvents.clear();
        jsonarray = new JSONArray();
        iterator = inFlightEvents.iterator();
_L5:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if (jsonarray.length() != 0)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        this;
        JVM INSTR monitorexit ;
        return 0;
_L2:
        accumulatedEvents accumulatedevents = (inFlightEvents)iterator.next();
        if (flag) goto _L4; else goto _L3
_L3:
        if (accumulatedevents.cit()) goto _L5; else goto _L4
_L4:
        jsonarray.put(accumulatedevents.ect());
          goto _L5
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        this;
        JVM INSTR monitorexit ;
        populateRequest(request, i, jsonarray, flag1, flag2);
        return jsonarray.length();
    }

    public (AttributionIdentifiers attributionidentifiers, String s, String s1)
    {
        accumulatedEvents = new ArrayList();
        inFlightEvents = new ArrayList();
        attributionIdentifiers = attributionidentifiers;
        packageName = s;
        hashedDeviceAndAppId = s1;
    }
}
