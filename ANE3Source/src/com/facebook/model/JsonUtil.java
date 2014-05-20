// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.model;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

class JsonUtil
{
    private static final class JSONObjectEntry
        implements java.util.Map.Entry
    {

        private final String key;
        private final Object value;

        public volatile Object getKey()
        {
            return getKey();
        }

        public String getKey()
        {
            return key;
        }

        public Object getValue()
        {
            return value;
        }

        public Object setValue(Object obj)
        {
            throw new UnsupportedOperationException("JSONObjectEntry is immutable");
        }

        JSONObjectEntry(String s, Object obj)
        {
            key = s;
            value = obj;
        }
    }


    JsonUtil()
    {
    }

    static void jsonObjectClear(JSONObject jsonobject)
    {
        Iterator iterator = jsonobject.keys();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            iterator.next();
            iterator.remove();
        } while (true);
    }

    static boolean jsonObjectContainsValue(JSONObject jsonobject, Object obj)
    {
        Iterator iterator = jsonobject.keys();
        Object obj1;
        do
        {
            if (!iterator.hasNext())
            {
                return false;
            }
            obj1 = jsonobject.opt((String)iterator.next());
        } while (obj1 == null || !obj1.equals(obj));
        return true;
    }

    static Set jsonObjectEntrySet(JSONObject jsonobject)
    {
        HashSet hashset = new HashSet();
        Iterator iterator = jsonobject.keys();
        do
        {
            if (!iterator.hasNext())
            {
                return hashset;
            }
            String s = (String)iterator.next();
            hashset.add(new JSONObjectEntry(s, jsonobject.opt(s)));
        } while (true);
    }

    static Set jsonObjectKeySet(JSONObject jsonobject)
    {
        HashSet hashset = new HashSet();
        Iterator iterator = jsonobject.keys();
        do
        {
            if (!iterator.hasNext())
            {
                return hashset;
            }
            hashset.add((String)iterator.next());
        } while (true);
    }

    static void jsonObjectPutAll(JSONObject jsonobject, Map map)
    {
        Iterator iterator = map.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            try
            {
                jsonobject.putOpt((String)entry.getKey(), entry.getValue());
            }
            catch (JSONException jsonexception)
            {
                throw new IllegalArgumentException(jsonexception);
            }
        } while (true);
    }

    static Collection jsonObjectValues(JSONObject jsonobject)
    {
        ArrayList arraylist = new ArrayList();
        Iterator iterator = jsonobject.keys();
        do
        {
            if (!iterator.hasNext())
            {
                return arraylist;
            }
            arraylist.add(jsonobject.opt((String)iterator.next()));
        } while (true);
    }
}
