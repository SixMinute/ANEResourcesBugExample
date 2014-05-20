// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import java.util.regex.Pattern;

// Referenced classes of package com.chartboost.sdk.impl:
//            al, ae

public class ao extends LinkedHashMap
    implements al
{

    public ao()
    {
    }

    public ao(String s, Object obj)
    {
        a(s, obj);
    }

    public Object a(String s)
    {
        return super.get(s);
    }

    public Object a(String s, Object obj)
    {
        return super.put(s, obj);
    }

    public boolean b(String s)
    {
        return super.containsKey(s);
    }

    public boolean equals(Object obj)
    {
        if (!(obj instanceof al))
        {
            return false;
        }
        al al1 = (al)obj;
        if (!keySet().equals(al1.keySet()))
        {
            return false;
        }
        Iterator iterator = keySet().iterator();
        Object obj1;
        Object obj2;
label0:
        do
        {
            Pattern pattern;
            Pattern pattern1;
            do
            {
                do
                {
                    do
                    {
                        if (!iterator.hasNext())
                        {
                            return true;
                        }
                        String s = (String)iterator.next();
                        obj1 = a(s);
                        obj2 = al1.a(s);
                        if (obj1 == null && obj2 != null)
                        {
                            return false;
                        }
                        if (obj2 != null)
                        {
                            break;
                        }
                        if (obj1 != null)
                        {
                            return false;
                        }
                    } while (true);
                    if (!(obj1 instanceof Number) || !(obj2 instanceof Number))
                    {
                        break;
                    }
                    if (((Number)obj1).doubleValue() != ((Number)obj2).doubleValue())
                    {
                        return false;
                    }
                } while (true);
                if (!(obj1 instanceof Pattern) || !(obj2 instanceof Pattern))
                {
                    continue label0;
                }
                pattern = (Pattern)obj1;
                pattern1 = (Pattern)obj2;
            } while (pattern.pattern().equals(pattern1.pattern()) && pattern.flags() == pattern1.flags());
            return false;
        } while (obj1.equals(obj2));
        return false;
    }

    public Object put(Object obj, Object obj1)
    {
        return a((String)obj, (Object)obj1);
    }

    public void putAll(Map map)
    {
        Iterator iterator = map.entrySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator.next();
            a(entry.getKey().toString(), entry.getValue());
        } while (true);
    }

    public String toString()
    {
        return ae.a(this);
    }
}
