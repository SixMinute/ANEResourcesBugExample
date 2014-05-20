// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.LocalBroadcastManager;
import android.util.Log;
import com.facebook.internal.AttributionIdentifiers;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphObject;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            Session, Settings, LoggingBehavior, Request, 
//            Response, FacebookRequestError, FacebookException

public class AppEventsLogger
{
    private static class AccessTokenAppIdPair
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        private final String accessToken;
        private final String applicationId;

        private Object writeReplace()
        {
            return new SerializationProxyV1(accessToken, applicationId, null);
        }

        public boolean equals(Object obj)
        {
            if (!(obj instanceof AccessTokenAppIdPair))
            {
                return false;
            }
            AccessTokenAppIdPair accesstokenappidpair = (AccessTokenAppIdPair)obj;
            return Utility.areObjectsEqual(accesstokenappidpair.accessToken, accessToken) && Utility.areObjectsEqual(accesstokenappidpair.applicationId, applicationId);
        }

        String getAccessToken()
        {
            return accessToken;
        }

        String getApplicationId()
        {
            return applicationId;
        }

        public int hashCode()
        {
            int i;
            int j;
            if (accessToken == null)
            {
                i = 0;
            } else
            {
                i = accessToken.hashCode();
            }
            if (applicationId == null)
            {
                j = 0;
            } else
            {
                j = applicationId.hashCode();
            }
            return i ^ j;
        }

        AccessTokenAppIdPair(Session session)
        {
            this(session.getAccessToken(), session.getApplicationId());
        }

        AccessTokenAppIdPair(String s, String s1)
        {
            String s2;
            if (Utility.isNullOrEmpty(s))
            {
                s2 = null;
            } else
            {
                s2 = s;
            }
            accessToken = s2;
            applicationId = s1;
        }
    }

    private static class AccessTokenAppIdPair.SerializationProxyV1
        implements Serializable
    {

        private static final long serialVersionUID = 0xdd772aee317ab613L;
        private final String accessToken;
        private final String appId;

        private Object readResolve()
        {
            return new AccessTokenAppIdPair(accessToken, appId);
        }

        private AccessTokenAppIdPair.SerializationProxyV1(String s, String s1)
        {
            accessToken = s;
            appId = s1;
        }

        AccessTokenAppIdPair.SerializationProxyV1(String s, String s1, AccessTokenAppIdPair.SerializationProxyV1 serializationproxyv1)
        {
            this(s, s1);
        }
    }

    static class AppEvent
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        private static final HashSet validatedIdentifiers = new HashSet();
        private boolean isImplicit;
        private JSONObject jsonObject;
        private String name;

        private void validateIdentifier(String s)
        {
            if (s == null || s.length() == 0 || s.length() > 40)
            {
                if (s == null)
                {
                    s = "<None Provided>";
                }
                Object aobj[] = new Object[2];
                aobj[0] = s;
                aobj[1] = Integer.valueOf(40);
                throw new FacebookException(String.format("Identifier '%s' must be less than %d characters", aobj));
            }
            boolean flag;
            synchronized (validatedIdentifiers)
            {
                flag = validatedIdentifiers.contains(s);
            }
            if (!flag)
            {
                if (!s.matches("^[0-9a-zA-Z_]+[0-9a-zA-Z _-]*$"))
                {
                    break MISSING_BLOCK_LABEL_124;
                }
                synchronized (validatedIdentifiers)
                {
                    validatedIdentifiers.add(s);
                }
            }
            return;
            exception;
            hashset;
            JVM INSTR monitorexit ;
            throw exception;
            exception1;
            hashset1;
            JVM INSTR monitorexit ;
            throw exception1;
            throw new FacebookException(String.format("Skipping event named '%s' due to illegal name - must be under 40 chars and alphanumeric, _, - or space, and not start with a space or hyphen.", new Object[] {
                s
            }));
        }

        private Object writeReplace()
        {
            return new SerializationProxyV1(jsonObject.toString(), isImplicit, null);
        }

        public boolean getIsImplicit()
        {
            return isImplicit;
        }

        public JSONObject getJSONObject()
        {
            return jsonObject;
        }

        public String getName()
        {
            return name;
        }

        public String toString()
        {
            Object aobj[] = new Object[3];
            aobj[0] = jsonObject.optString("_eventName");
            aobj[1] = Boolean.valueOf(isImplicit);
            aobj[2] = jsonObject.toString();
            return String.format("\"%s\", implicit: %b, json: %s", aobj);
        }


        public AppEvent(String s, Double double1, Bundle bundle, boolean flag)
        {
            String s2;
            Object obj;
            validateIdentifier(s);
            name = s;
            isImplicit = flag;
            jsonObject = new JSONObject();
            String s1;
            Iterator iterator;
            LoggingBehavior loggingbehavior1;
            Object aobj1[];
            try
            {
                jsonObject.put("_eventName", s);
                jsonObject.put("_logTime", System.currentTimeMillis() / 1000L);
            }
            catch (JSONException jsonexception)
            {
                LoggingBehavior loggingbehavior = LoggingBehavior.APP_EVENTS;
                Object aobj[] = new Object[1];
                aobj[0] = jsonexception.toString();
                Logger.log(loggingbehavior, "AppEvents", "JSON encoding for app event failed: '%s'", aobj);
                jsonObject = null;
                return;
            }
            if (double1 == null)
            {
                break MISSING_BLOCK_LABEL_77;
            }
            jsonObject.put("_valueToSum", double1.doubleValue());
            if (isImplicit)
            {
                jsonObject.put("_implicitlyLogged", "1");
            }
            s1 = Settings.getAppVersion();
            if (s1 == null)
            {
                break MISSING_BLOCK_LABEL_118;
            }
            jsonObject.put("_appVersion", s1);
            if (bundle == null) goto _L2; else goto _L1
_L1:
            iterator = bundle.keySet().iterator();
_L4:
            if (iterator.hasNext()) goto _L3; else goto _L2
_L2:
            if (!isImplicit)
            {
                loggingbehavior1 = LoggingBehavior.APP_EVENTS;
                aobj1 = new Object[1];
                aobj1[0] = jsonObject.toString();
                Logger.log(loggingbehavior1, "AppEvents", "Created app event '%s'", aobj1);
                return;
            }
            break MISSING_BLOCK_LABEL_310;
_L3:
            s2 = (String)iterator.next();
            validateIdentifier(s2);
            obj = bundle.get(s2);
            if (!(obj instanceof String) && !(obj instanceof Number))
            {
                throw new FacebookException(String.format("Parameter value '%s' for key '%s' should be a string or a numeric type.", new Object[] {
                    obj, s2
                }));
            }
            jsonObject.put(s2, obj.toString());
              goto _L4
        }

        private AppEvent(String s, boolean flag)
            throws JSONException
        {
            jsonObject = new JSONObject(s);
            isImplicit = flag;
        }

        AppEvent(String s, boolean flag, AppEvent appevent)
            throws JSONException
        {
            this(s, flag);
        }
    }

    private static class AppEvent.SerializationProxyV1
        implements Serializable
    {

        private static final long serialVersionUID = 0xdd772aee317ab613L;
        private final boolean isImplicit;
        private final String jsonString;

        private Object readResolve()
            throws JSONException
        {
            return new AppEvent(jsonString, isImplicit, null);
        }

        private AppEvent.SerializationProxyV1(String s, boolean flag)
        {
            jsonString = s;
            isImplicit = flag;
        }

        AppEvent.SerializationProxyV1(String s, boolean flag, AppEvent.SerializationProxyV1 serializationproxyv1)
        {
            this(s, flag);
        }
    }

    private static class EventSuppression
    {

        private SuppressionTimeoutBehavior behavior;
        private int timeoutPeriod;

        SuppressionTimeoutBehavior getBehavior()
        {
            return behavior;
        }

        int getTimeoutPeriod()
        {
            return timeoutPeriod;
        }

        EventSuppression(int i, SuppressionTimeoutBehavior suppressiontimeoutbehavior)
        {
            timeoutPeriod = i;
            behavior = suppressiontimeoutbehavior;
        }
    }

    public static final class FlushBehavior extends Enum
    {

        public static final FlushBehavior AUTO;
        private static final FlushBehavior ENUM$VALUES[];
        public static final FlushBehavior EXPLICIT_ONLY;

        public static FlushBehavior valueOf(String s)
        {
            return (FlushBehavior)Enum.valueOf(com/facebook/AppEventsLogger$FlushBehavior, s);
        }

        public static FlushBehavior[] values()
        {
            FlushBehavior aflushbehavior[] = ENUM$VALUES;
            int i = aflushbehavior.length;
            FlushBehavior aflushbehavior1[] = new FlushBehavior[i];
            System.arraycopy(aflushbehavior, 0, aflushbehavior1, 0, i);
            return aflushbehavior1;
        }

        static 
        {
            AUTO = new FlushBehavior("AUTO", 0);
            EXPLICIT_ONLY = new FlushBehavior("EXPLICIT_ONLY", 1);
            FlushBehavior aflushbehavior[] = new FlushBehavior[2];
            aflushbehavior[0] = AUTO;
            aflushbehavior[1] = EXPLICIT_ONLY;
            ENUM$VALUES = aflushbehavior;
        }

        private FlushBehavior(String s, int i)
        {
            super(s, i);
        }
    }

    private static final class FlushReason extends Enum
    {

        public static final FlushReason EAGER_FLUSHING_EVENT;
        private static final FlushReason ENUM$VALUES[];
        public static final FlushReason EVENT_THRESHOLD;
        public static final FlushReason EXPLICIT;
        public static final FlushReason PERSISTED_EVENTS;
        public static final FlushReason SESSION_CHANGE;
        public static final FlushReason TIMER;

        public static FlushReason valueOf(String s)
        {
            return (FlushReason)Enum.valueOf(com/facebook/AppEventsLogger$FlushReason, s);
        }

        public static FlushReason[] values()
        {
            FlushReason aflushreason[] = ENUM$VALUES;
            int i = aflushreason.length;
            FlushReason aflushreason1[] = new FlushReason[i];
            System.arraycopy(aflushreason, 0, aflushreason1, 0, i);
            return aflushreason1;
        }

        static 
        {
            EXPLICIT = new FlushReason("EXPLICIT", 0);
            TIMER = new FlushReason("TIMER", 1);
            SESSION_CHANGE = new FlushReason("SESSION_CHANGE", 2);
            PERSISTED_EVENTS = new FlushReason("PERSISTED_EVENTS", 3);
            EVENT_THRESHOLD = new FlushReason("EVENT_THRESHOLD", 4);
            EAGER_FLUSHING_EVENT = new FlushReason("EAGER_FLUSHING_EVENT", 5);
            FlushReason aflushreason[] = new FlushReason[6];
            aflushreason[0] = EXPLICIT;
            aflushreason[1] = TIMER;
            aflushreason[2] = SESSION_CHANGE;
            aflushreason[3] = PERSISTED_EVENTS;
            aflushreason[4] = EVENT_THRESHOLD;
            aflushreason[5] = EAGER_FLUSHING_EVENT;
            ENUM$VALUES = aflushreason;
        }

        private FlushReason(String s, int i)
        {
            super(s, i);
        }
    }

    private static final class FlushResult extends Enum
    {

        private static final FlushResult ENUM$VALUES[];
        public static final FlushResult NO_CONNECTIVITY;
        public static final FlushResult SERVER_ERROR;
        public static final FlushResult SUCCESS;
        public static final FlushResult UNKNOWN_ERROR;

        public static FlushResult valueOf(String s)
        {
            return (FlushResult)Enum.valueOf(com/facebook/AppEventsLogger$FlushResult, s);
        }

        public static FlushResult[] values()
        {
            FlushResult aflushresult[] = ENUM$VALUES;
            int i = aflushresult.length;
            FlushResult aflushresult1[] = new FlushResult[i];
            System.arraycopy(aflushresult, 0, aflushresult1, 0, i);
            return aflushresult1;
        }

        static 
        {
            SUCCESS = new FlushResult("SUCCESS", 0);
            SERVER_ERROR = new FlushResult("SERVER_ERROR", 1);
            NO_CONNECTIVITY = new FlushResult("NO_CONNECTIVITY", 2);
            UNKNOWN_ERROR = new FlushResult("UNKNOWN_ERROR", 3);
            FlushResult aflushresult[] = new FlushResult[4];
            aflushresult[0] = SUCCESS;
            aflushresult[1] = SERVER_ERROR;
            aflushresult[2] = NO_CONNECTIVITY;
            aflushresult[3] = UNKNOWN_ERROR;
            ENUM$VALUES = aflushresult;
        }

        private FlushResult(String s, int i)
        {
            super(s, i);
        }
    }

    private static class FlushStatistics
    {

        public int numEvents;
        public FlushResult result;

        private FlushStatistics()
        {
            numEvents = 0;
            result = FlushResult.SUCCESS;
        }

        FlushStatistics(FlushStatistics flushstatistics)
        {
            this();
        }
    }

    static class PersistedEvents
    {

        static final String PERSISTED_EVENTS_FILENAME = "AppEventsLogger.persistedevents";
        private static Object staticLock = new Object();
        private Context context;
        private HashMap persistedEvents;

        public static void persistEvents(Context context1, AccessTokenAppIdPair accesstokenappidpair, SessionEventsState sessioneventsstate)
        {
            HashMap hashmap = new HashMap();
            hashmap.put(accesstokenappidpair, sessioneventsstate);
            persistEvents(context1, ((Map) (hashmap)));
        }

        public static void persistEvents(Context context1, Map map)
        {
            Object obj = staticLock;
            obj;
            JVM INSTR monitorenter ;
            PersistedEvents persistedevents;
            Iterator iterator;
            persistedevents = readAndClearStore(context1);
            iterator = map.entrySet().iterator();
_L2:
            if (iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_43;
            }
            persistedevents.write();
            return;
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            List list = ((SessionEventsState)entry.getValue()).getEventsToPersist();
            if (list.size() != 0)
            {
                persistedevents.addEvents((AccessTokenAppIdPair)entry.getKey(), list);
            }
            if (true) goto _L2; else goto _L1
_L1:
            Exception exception;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public static PersistedEvents readAndClearStore(Context context1)
        {
            PersistedEvents persistedevents;
            synchronized (staticLock)
            {
                persistedevents = new PersistedEvents(context1);
                persistedevents.readAndClearStore();
            }
            return persistedevents;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        private void readAndClearStore()
        {
            Object obj = null;
            ObjectInputStream objectinputstream = new ObjectInputStream(new BufferedInputStream(context.openFileInput("AppEventsLogger.persistedevents")));
            HashMap hashmap = (HashMap)objectinputstream.readObject();
            context.getFileStreamPath("AppEventsLogger.persistedevents").delete();
            persistedEvents = hashmap;
            Utility.closeQuietly(objectinputstream);
            return;
            FileNotFoundException filenotfoundexception1;
            filenotfoundexception1;
_L6:
            Utility.closeQuietly(((java.io.Closeable) (obj)));
            return;
            Exception exception3;
            exception3;
            Exception exception1 = exception3;
_L4:
            Log.d(AppEventsLogger.TAG, (new StringBuilder("Got unexpected exception: ")).append(exception1.toString()).toString());
            Utility.closeQuietly(((java.io.Closeable) (obj)));
            return;
            Exception exception2;
            exception2;
_L2:
            Utility.closeQuietly(((java.io.Closeable) (obj)));
            throw exception2;
            exception2;
            obj = objectinputstream;
            if (true) goto _L2; else goto _L1
_L1:
            Exception exception;
            exception;
            exception1 = exception;
            obj = objectinputstream;
            if (true) goto _L4; else goto _L3
_L3:
            FileNotFoundException filenotfoundexception;
            filenotfoundexception;
            obj = objectinputstream;
            if (true) goto _L6; else goto _L5
_L5:
        }

        private void write()
        {
            Object obj = null;
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(new BufferedOutputStream(context.openFileOutput("AppEventsLogger.persistedevents", 0)));
            objectoutputstream.writeObject(persistedEvents);
            Utility.closeQuietly(objectoutputstream);
            return;
            Exception exception3;
            exception3;
            Exception exception1 = exception3;
_L4:
            Log.d(AppEventsLogger.TAG, (new StringBuilder("Got unexpected exception: ")).append(exception1.toString()).toString());
            Utility.closeQuietly(((java.io.Closeable) (obj)));
            return;
            Exception exception2;
            exception2;
_L2:
            Utility.closeQuietly(((java.io.Closeable) (obj)));
            throw exception2;
            exception2;
            obj = objectoutputstream;
            if (true) goto _L2; else goto _L1
_L1:
            Exception exception;
            exception;
            exception1 = exception;
            obj = objectoutputstream;
            if (true) goto _L4; else goto _L3
_L3:
        }

        public void addEvents(AccessTokenAppIdPair accesstokenappidpair, List list)
        {
            if (!persistedEvents.containsKey(accesstokenappidpair))
            {
                persistedEvents.put(accesstokenappidpair, new ArrayList());
            }
            ((List)persistedEvents.get(accesstokenappidpair)).addAll(list);
        }

        public List getEvents(AccessTokenAppIdPair accesstokenappidpair)
        {
            return (List)persistedEvents.get(accesstokenappidpair);
        }

        public Set keySet()
        {
            return persistedEvents.keySet();
        }


        private PersistedEvents(Context context1)
        {
            persistedEvents = new HashMap();
            context = context1;
        }
    }

    static class SessionEventsState
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
            GraphObject graphobject = com.facebook.model.GraphObject.Factory.create();
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

        public void addEvent(AppEvent appevent)
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
            accumulatedEvents.add(appevent);
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
            AppEvent appevent = (AppEvent)iterator.next();
            if (flag) goto _L4; else goto _L3
_L3:
            if (appevent.getIsImplicit()) goto _L5; else goto _L4
_L4:
            jsonarray.put(appevent.getJSONObject());
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

        public SessionEventsState(AttributionIdentifiers attributionidentifiers, String s, String s1)
        {
            accumulatedEvents = new ArrayList();
            inFlightEvents = new ArrayList();
            attributionIdentifiers = attributionidentifiers;
            packageName = s;
            hashedDeviceAndAppId = s1;
        }
    }

    private static final class SuppressionTimeoutBehavior extends Enum
    {

        private static final SuppressionTimeoutBehavior ENUM$VALUES[];
        public static final SuppressionTimeoutBehavior RESET_TIMEOUT_WHEN_LOG_ATTEMPTED;
        public static final SuppressionTimeoutBehavior RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL;

        public static SuppressionTimeoutBehavior valueOf(String s)
        {
            return (SuppressionTimeoutBehavior)Enum.valueOf(com/facebook/AppEventsLogger$SuppressionTimeoutBehavior, s);
        }

        public static SuppressionTimeoutBehavior[] values()
        {
            SuppressionTimeoutBehavior asuppressiontimeoutbehavior[] = ENUM$VALUES;
            int i = asuppressiontimeoutbehavior.length;
            SuppressionTimeoutBehavior asuppressiontimeoutbehavior1[] = new SuppressionTimeoutBehavior[i];
            System.arraycopy(asuppressiontimeoutbehavior, 0, asuppressiontimeoutbehavior1, 0, i);
            return asuppressiontimeoutbehavior1;
        }

        static 
        {
            RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL = new SuppressionTimeoutBehavior("RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL", 0);
            RESET_TIMEOUT_WHEN_LOG_ATTEMPTED = new SuppressionTimeoutBehavior("RESET_TIMEOUT_WHEN_LOG_ATTEMPTED", 1);
            SuppressionTimeoutBehavior asuppressiontimeoutbehavior[] = new SuppressionTimeoutBehavior[2];
            asuppressiontimeoutbehavior[0] = RESET_TIMEOUT_WHEN_LOG_SUCCESSFUL;
            asuppressiontimeoutbehavior[1] = RESET_TIMEOUT_WHEN_LOG_ATTEMPTED;
            ENUM$VALUES = asuppressiontimeoutbehavior;
        }

        private SuppressionTimeoutBehavior(String s, int i)
        {
            super(s, i);
        }
    }


    public static final String ACTION_APP_EVENTS_FLUSHED = "com.facebook.sdk.APP_EVENTS_FLUSHED";
    private static final int APP_ACTIVATE_SUPPRESSION_PERIOD_IN_SECONDS = 300;
    public static final String APP_EVENTS_EXTRA_FLUSH_RESULT = "com.facebook.sdk.APP_EVENTS_FLUSH_RESULT";
    public static final String APP_EVENTS_EXTRA_NUM_EVENTS_FLUSHED = "com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED";
    private static final int APP_SUPPORTS_ATTRIBUTION_ID_RECHECK_PERIOD_IN_SECONDS = 0x15180;
    private static final int FLUSH_PERIOD_IN_SECONDS = 60;
    private static final int NUM_LOG_EVENTS_TO_TRY_TO_FLUSH_AFTER = 100;
    private static final String TAG = com/facebook/AppEventsLogger.getCanonicalName();
    private static Context applicationContext;
    private static FlushBehavior flushBehavior;
    private static Timer flushTimer;
    private static String hashedDeviceAndAppId;
    private static Map mapEventNameToSuppress = new HashMap() {

            
            {
                put("fb_mobile_activate_app", new EventSuppression(300, SuppressionTimeoutBehavior.RESET_TIMEOUT_WHEN_LOG_ATTEMPTED));
            }
    };
    private static Map mapEventsToSuppressionTime = new HashMap();
    private static boolean requestInFlight;
    private static Map stateMap = new ConcurrentHashMap();
    private static Object staticLock = new Object();
    private static Timer supportsAttributionRecheckTimer;
    private final AccessTokenAppIdPair accessTokenAppId;
    private final Context context;

    private AppEventsLogger(Context context1, String s, Session session)
    {
        Validate.notNull(context1, "context");
        context = context1;
        if (session == null)
        {
            session = Session.getActiveSession();
        }
        if (session != null)
        {
            accessTokenAppId = new AccessTokenAppIdPair(session);
        } else
        {
            if (s == null)
            {
                s = Utility.getMetadataApplicationId(context1);
            }
            accessTokenAppId = new AccessTokenAppIdPair(null, s);
        }
        synchronized (staticLock)
        {
            if (hashedDeviceAndAppId == null)
            {
                hashedDeviceAndAppId = Utility.getHashedDeviceAndAppID(context1, s);
            }
            if (applicationContext == null)
            {
                applicationContext = context1.getApplicationContext();
            }
        }
        initializeTimersIfNeeded();
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static int accumulatePersistedEvents()
    {
        PersistedEvents persistedevents = PersistedEvents.readAndClearStore(applicationContext);
        int i = 0;
        Iterator iterator = persistedevents.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return i;
            }
            AccessTokenAppIdPair accesstokenappidpair = (AccessTokenAppIdPair)iterator.next();
            SessionEventsState sessioneventsstate = getSessionEventsState(applicationContext, accesstokenappidpair);
            List list = persistedevents.getEvents(accesstokenappidpair);
            sessioneventsstate.accumulatePersistedEvents(list);
            i += list.size();
        } while (true);
    }

    public static void activateApp(Context context1)
    {
        activateApp(context1, Utility.getMetadataApplicationId(context1));
    }

    public static void activateApp(Context context1, String s)
    {
        if (context1 == null || s == null)
        {
            throw new IllegalArgumentException("Both context and applicationId must be non-null");
        } else
        {
            Settings.publishInstallAsync(context1, s);
            (new AppEventsLogger(context1, s, null)).logEvent("fb_mobile_activate_app");
            return;
        }
    }

    private static FlushStatistics buildAndExecuteRequests(FlushReason flushreason, Set set)
    {
        FlushStatistics flushstatistics;
        boolean flag;
        ArrayList arraylist;
        Iterator iterator;
        flushstatistics = new FlushStatistics(null);
        flag = Settings.getLimitEventAndDataUsage(applicationContext);
        arraylist = new ArrayList();
        iterator = set.iterator();
_L7:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        if (arraylist.size() <= 0) goto _L4; else goto _L3
_L3:
        Iterator iterator1;
        LoggingBehavior loggingbehavior = LoggingBehavior.APP_EVENTS;
        String s = TAG;
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(flushstatistics.numEvents);
        aobj[1] = flushreason.toString();
        Logger.log(loggingbehavior, s, "Flushing %d events due to %s.", aobj);
        iterator1 = arraylist.iterator();
_L5:
        AccessTokenAppIdPair accesstokenappidpair;
        SessionEventsState sessioneventsstate;
        Request request;
        if (!iterator1.hasNext())
        {
            return flushstatistics;
        }
        ((Request)iterator1.next()).executeAndWait();
        continue; /* Loop/switch isn't completed */
_L2:
        accesstokenappidpair = (AccessTokenAppIdPair)iterator.next();
        sessioneventsstate = getSessionEventsState(accesstokenappidpair);
        if (sessioneventsstate != null)
        {
            request = buildRequestForSession(accesstokenappidpair, sessioneventsstate, flag, flushstatistics);
            if (request != null)
            {
                arraylist.add(request);
            }
        }
        continue; /* Loop/switch isn't completed */
        if (true) goto _L5; else goto _L4
_L4:
        return null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    private static Request buildRequestForSession(final AccessTokenAppIdPair accessTokenAppId, final SessionEventsState sessionEventsState, boolean flag, final FlushStatistics flushState)
    {
        String s = accessTokenAppId.getApplicationId();
        com.facebook.internal.Utility.FetchedAppSettings fetchedappsettings = Utility.queryAppSettings(s, false);
        final Request postRequest = Request.newPostRequest(null, String.format("%s/activities", new Object[] {
            s
        }), null, null);
        Bundle bundle = postRequest.getParameters();
        if (bundle == null)
        {
            bundle = new Bundle();
        }
        bundle.putString("access_token", accessTokenAppId.getAccessToken());
        postRequest.setParameters(bundle);
        int i = sessionEventsState.populateRequest(postRequest, fetchedappsettings.supportsImplicitLogging(), fetchedappsettings.supportsAttribution(), flag);
        if (i == 0)
        {
            return null;
        } else
        {
            flushState.numEvents = i + flushState.numEvents;
            postRequest.setCallback(new Request.Callback() {

                private final AccessTokenAppIdPair val$accessTokenAppId;
                private final FlushStatistics val$flushState;
                private final Request val$postRequest;
                private final SessionEventsState val$sessionEventsState;

                public void onCompleted(Response response)
                {
                    AppEventsLogger.handleResponse(accessTokenAppId, postRequest, response, sessionEventsState, flushState);
                }

            
            {
                accessTokenAppId = accesstokenappidpair;
                postRequest = request;
                sessionEventsState = sessioneventsstate;
                flushState = flushstatistics;
                super();
            }
            });
            return postRequest;
        }
    }

    static void eagerFlush()
    {
        if (getFlushBehavior() != FlushBehavior.EXPLICIT_ONLY)
        {
            flush(FlushReason.EAGER_FLUSHING_EVENT);
        }
    }

    private static void flush(final FlushReason reason)
    {
        Settings.getExecutor().execute(new Runnable() {

            private final FlushReason val$reason;

            public void run()
            {
                AppEventsLogger.flushAndWait(reason);
            }

            
            {
                reason = flushreason;
                super();
            }
        });
    }

    private static void flushAndWait(FlushReason flushreason)
    {
label0:
        {
            synchronized (staticLock)
            {
                if (!requestInFlight)
                {
                    break label0;
                }
            }
            return;
        }
        HashSet hashset;
        requestInFlight = true;
        hashset = new HashSet(stateMap.keySet());
        obj;
        JVM INSTR monitorexit ;
        accumulatePersistedEvents();
        FlushStatistics flushstatistics1 = buildAndExecuteRequests(flushreason, hashset);
        FlushStatistics flushstatistics = flushstatistics1;
_L1:
        synchronized (staticLock)
        {
            requestInFlight = false;
        }
        Exception exception1;
        if (flushstatistics != null)
        {
            Intent intent = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
            intent.putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", flushstatistics.numEvents);
            intent.putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", flushstatistics.result);
            LocalBroadcastManager.getInstance(applicationContext).sendBroadcast(intent);
            return;
        } else
        {
            return;
        }
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        exception1;
        Log.d(TAG, (new StringBuilder("Caught unexpected exception while flushing: ")).append(exception1.toString()).toString());
        flushstatistics = null;
          goto _L1
        exception2;
        obj1;
        JVM INSTR monitorexit ;
        throw exception2;
    }

    private static void flushIfNecessary()
    {
        synchronized (staticLock)
        {
            if (getFlushBehavior() != FlushBehavior.EXPLICIT_ONLY && getAccumulatedEventCount() > 100)
            {
                flush(FlushReason.EVENT_THRESHOLD);
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static int getAccumulatedEventCount()
    {
        Object obj = staticLock;
        obj;
        JVM INSTR monitorenter ;
        int i = 0;
        Iterator iterator = stateMap.values().iterator();
_L1:
        if (iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_35;
        }
        obj;
        JVM INSTR monitorexit ;
        return i;
        i += ((SessionEventsState)iterator.next()).getAccumulatedEventCount();
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static FlushBehavior getFlushBehavior()
    {
        FlushBehavior flushbehavior;
        synchronized (staticLock)
        {
            flushbehavior = flushBehavior;
        }
        return flushbehavior;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static boolean getLimitEventUsage(Context context1)
    {
        return Settings.getLimitEventAndDataUsage(context1);
    }

    private static SessionEventsState getSessionEventsState(Context context1, AccessTokenAppIdPair accesstokenappidpair)
    {
        Object obj = staticLock;
        obj;
        JVM INSTR monitorenter ;
        SessionEventsState sessioneventsstate = (SessionEventsState)stateMap.get(accesstokenappidpair);
        if (sessioneventsstate != null)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        sessioneventsstate = new SessionEventsState(AttributionIdentifiers.getAttributionIdentifiers(context1), context1.getPackageName(), hashedDeviceAndAppId);
        stateMap.put(accesstokenappidpair, sessioneventsstate);
        obj;
        JVM INSTR monitorexit ;
        return sessioneventsstate;
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static SessionEventsState getSessionEventsState(AccessTokenAppIdPair accesstokenappidpair)
    {
        SessionEventsState sessioneventsstate;
        synchronized (staticLock)
        {
            sessioneventsstate = (SessionEventsState)stateMap.get(accesstokenappidpair);
        }
        return sessioneventsstate;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static void handleResponse(AccessTokenAppIdPair accesstokenappidpair, Request request, Response response, SessionEventsState sessioneventsstate, FlushStatistics flushstatistics)
    {
        FacebookRequestError facebookrequesterror = response.getError();
        FlushResult flushresult = FlushResult.SUCCESS;
        String s;
        boolean flag;
        String s1;
        JSONException jsonexception;
        String s2;
        LoggingBehavior loggingbehavior;
        String s3;
        Object aobj[];
        String s4;
        if (facebookrequesterror != null)
        {
            if (facebookrequesterror.getErrorCode() == -1)
            {
                FlushResult flushresult2 = FlushResult.NO_CONNECTIVITY;
                s = "Failed: No Connectivity";
                flushresult = flushresult2;
            } else
            {
                Object aobj1[] = new Object[2];
                aobj1[0] = response.toString();
                aobj1[1] = facebookrequesterror.toString();
                String s5 = String.format("Failed:\n  Response: %s\n  Error %s", aobj1);
                FlushResult flushresult1 = FlushResult.SERVER_ERROR;
                s = s5;
                flushresult = flushresult1;
            }
        } else
        {
            s = "Success";
        }
        if (!Settings.isLoggingBehaviorEnabled(LoggingBehavior.APP_EVENTS)) goto _L2; else goto _L1
_L1:
        s1 = (String)request.getTag();
        s4 = (new JSONArray(s1)).toString(2);
        s2 = s4;
_L4:
        loggingbehavior = LoggingBehavior.APP_EVENTS;
        s3 = TAG;
        aobj = new Object[3];
        aobj[0] = request.getGraphObject().toString();
        aobj[1] = s;
        aobj[2] = s2;
        Logger.log(loggingbehavior, s3, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", aobj);
_L2:
        if (facebookrequesterror != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        sessioneventsstate.clearInFlightAndStats(flag);
        if (flushresult == FlushResult.NO_CONNECTIVITY)
        {
            PersistedEvents.persistEvents(applicationContext, accesstokenappidpair, sessioneventsstate);
        }
        if (flushresult != FlushResult.SUCCESS && flushstatistics.result != FlushResult.NO_CONNECTIVITY)
        {
            flushstatistics.result = flushresult;
        }
        return;
        jsonexception;
        s2 = "<Can't encode events for debug logging>";
        if (true) goto _L4; else goto _L3
_L3:
    }

    private static void initializeTimersIfNeeded()
    {
label0:
        {
            synchronized (staticLock)
            {
                if (flushTimer == null)
                {
                    break label0;
                }
            }
            return;
        }
        flushTimer = new Timer();
        supportsAttributionRecheckTimer = new Timer();
        obj;
        JVM INSTR monitorexit ;
        flushTimer.schedule(new TimerTask() {

            public void run()
            {
                if (AppEventsLogger.getFlushBehavior() != FlushBehavior.EXPLICIT_ONLY)
                {
                    AppEventsLogger.flushAndWait(FlushReason.TIMER);
                }
            }

        }, 0L, 60000L);
        supportsAttributionRecheckTimer.schedule(new TimerTask() {

            public void run()
            {
                HashSet hashset = new HashSet();
                Object obj1 = AppEventsLogger.staticLock;
                obj1;
                JVM INSTR monitorenter ;
                Iterator iterator = AppEventsLogger.stateMap.keySet().iterator();
_L3:
                if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
                Iterator iterator1 = hashset.iterator();
_L4:
                if (!iterator1.hasNext())
                {
                    return;
                }
                break MISSING_BLOCK_LABEL_88;
_L2:
                hashset.add(((AccessTokenAppIdPair)iterator.next()).getApplicationId());
                  goto _L3
                Exception exception1;
                exception1;
                obj1;
                JVM INSTR monitorexit ;
                throw exception1;
                Utility.queryAppSettings((String)iterator1.next(), true);
                  goto _L4
            }

        }, 0L, 0x5265c00L);
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static void logEvent(Context context1, AppEvent appevent, AccessTokenAppIdPair accesstokenappidpair)
    {
        if (shouldSuppressEvent(appevent))
        {
            return;
        } else
        {
            getSessionEventsState(context1, accesstokenappidpair).addEvent(appevent);
            flushIfNecessary();
            return;
        }
    }

    private void logEvent(String s, Double double1, Bundle bundle, boolean flag)
    {
        AppEvent appevent = new AppEvent(s, double1, bundle, flag);
        logEvent(context, appevent, accessTokenAppId);
    }

    public static AppEventsLogger newLogger(Context context1)
    {
        return new AppEventsLogger(context1, null, null);
    }

    public static AppEventsLogger newLogger(Context context1, Session session)
    {
        return new AppEventsLogger(context1, null, session);
    }

    public static AppEventsLogger newLogger(Context context1, String s)
    {
        return new AppEventsLogger(context1, s, null);
    }

    public static AppEventsLogger newLogger(Context context1, String s, Session session)
    {
        return new AppEventsLogger(context1, s, session);
    }

    private static void notifyDeveloperError(String s)
    {
        Logger.log(LoggingBehavior.DEVELOPER_ERRORS, "AppEvents", s);
    }

    public static void onContextStop()
    {
        PersistedEvents.persistEvents(applicationContext, stateMap);
    }

    public static void setFlushBehavior(FlushBehavior flushbehavior)
    {
        synchronized (staticLock)
        {
            flushBehavior = flushbehavior;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void setLimitEventUsage(Context context1, boolean flag)
    {
        Settings.setLimitEventAndDataUsage(context1, flag);
    }

    private static boolean shouldSuppressEvent(AppEvent appevent)
    {
        EventSuppression eventsuppression = (EventSuppression)mapEventNameToSuppress.get(appevent.getName());
        if (eventsuppression == null)
        {
            return false;
        }
        Date date = (Date)mapEventsToSuppressionTime.get(appevent.getName());
        boolean flag;
        if (date == null)
        {
            flag = false;
        } else
        if ((new Date()).getTime() - date.getTime() < (long)(1000 * eventsuppression.getTimeoutPeriod()))
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (!flag || eventsuppression.getBehavior() == SuppressionTimeoutBehavior.RESET_TIMEOUT_WHEN_LOG_ATTEMPTED)
        {
            mapEventsToSuppressionTime.put(appevent.getName(), new Date());
        }
        return flag;
    }

    public void flush()
    {
        flush(FlushReason.EXPLICIT);
    }

    public String getApplicationId()
    {
        return accessTokenAppId.getApplicationId();
    }

    boolean isValidForSession(Session session)
    {
        AccessTokenAppIdPair accesstokenappidpair = new AccessTokenAppIdPair(session);
        return accessTokenAppId.equals(accesstokenappidpair);
    }

    public void logEvent(String s)
    {
        logEvent(s, ((Bundle) (null)));
    }

    public void logEvent(String s, double d)
    {
        logEvent(s, d, ((Bundle) (null)));
    }

    public void logEvent(String s, double d, Bundle bundle)
    {
        logEvent(s, Double.valueOf(d), bundle, false);
    }

    public void logEvent(String s, Bundle bundle)
    {
        logEvent(s, null, bundle, false);
    }

    public void logPurchase(BigDecimal bigdecimal, Currency currency)
    {
        logPurchase(bigdecimal, currency, null);
    }

    public void logPurchase(BigDecimal bigdecimal, Currency currency, Bundle bundle)
    {
        if (bigdecimal == null)
        {
            notifyDeveloperError("purchaseAmount cannot be null");
            return;
        }
        if (currency == null)
        {
            notifyDeveloperError("currency cannot be null");
            return;
        }
        if (bundle == null)
        {
            bundle = new Bundle();
        }
        bundle.putString("fb_currency", currency.getCurrencyCode());
        logEvent("fb_mobile_purchase", bigdecimal.doubleValue(), bundle);
        eagerFlush();
    }

    public void logSdkEvent(String s, Double double1, Bundle bundle)
    {
        logEvent(s, double1, bundle, true);
    }

    static 
    {
        flushBehavior = FlushBehavior.AUTO;
    }





}
