// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.util.Log;
import com.facebook.internal.Utility;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.facebook:
//            AppEventsLogger

static class context
{

    static final String PERSISTED_EVENTS_FILENAME = "AppEventsLogger.persistedevents";
    private static Object staticLock = new Object();
    private Context context;
    private HashMap persistedEvents;

    public static void persistEvents(Context context1, Pair pair, te te)
    {
        HashMap hashmap = new HashMap();
        hashmap.put(pair, te);
        persistEvents(context1, ((Map) (hashmap)));
    }

    public static void persistEvents(Context context1, Map map)
    {
        Object obj = staticLock;
        obj;
        JVM INSTR monitorenter ;
        Pair pair;
        Iterator iterator;
        pair = readAndClearStore(context1);
        iterator = map.entrySet().iterator();
_L2:
        if (iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_43;
        }
        pair.write();
        return;
        java.util.ts ts = (java.util.ts.write)iterator.next();
        List list = ((te)ts.State()).getEventsToPersist();
        if (list.size() != 0)
        {
            pair.addEvents((Pair)ts.pIdPair(), list);
        }
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static Pair readAndClearStore(Context context1)
    {
        Pair pair;
        synchronized (staticLock)
        {
            pair = new <init>(context1);
            pair.readAndClearStore();
        }
        return pair;
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
        Log.d(AppEventsLogger.access$0(), (new StringBuilder("Got unexpected exception: ")).append(exception1.toString()).toString());
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
        Log.d(AppEventsLogger.access$0(), (new StringBuilder("Got unexpected exception: ")).append(exception1.toString()).toString());
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

    public void addEvents(Pair pair, List list)
    {
        if (!persistedEvents.containsKey(pair))
        {
            persistedEvents.put(pair, new ArrayList());
        }
        ((List)persistedEvents.get(pair)).addAll(list);
    }

    public List getEvents(Pair pair)
    {
        return (List)persistedEvents.get(pair);
    }

    public Set keySet()
    {
        return persistedEvents.keySet();
    }


    private Pair(Context context1)
    {
        persistedEvents = new HashMap();
        context = context1;
    }
}
