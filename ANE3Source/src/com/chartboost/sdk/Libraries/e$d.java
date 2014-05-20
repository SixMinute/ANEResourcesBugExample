// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;

import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.chartboost.sdk.Libraries:
//            e

private static class a extends a
{

    protected a a[];
    protected String b;

    public String a()
    {
        if (b != null)
        {
            return b;
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("object must contain the following key-value schema: {\n");
        int i = 0;
        do
        {
            if (i >= a.length)
            {
                stringbuilder.append("}");
                return stringbuilder.toString();
            }
            stringbuilder.append("<");
            stringbuilder.append(a(a[i]));
            stringbuilder.append(": [");
            stringbuilder.append(b(a[i]).a());
            stringbuilder.append("]>");
            if (i < a.length - 1)
            {
                stringbuilder.append(",\n");
            }
            i++;
        } while (true);
    }

    public boolean a(Object obj)
    {
        if (!(obj instanceof Map)) goto _L2; else goto _L1
_L1:
        Map map;
        Iterator iterator;
        map = (Map)obj;
        iterator = map.entrySet().iterator();
_L16:
        if (iterator.hasNext()) goto _L4; else goto _L3
_L3:
        if (a == null || a.length < 1) goto _L6; else goto _L5
_L5:
        int j = 0;
_L8:
        if (j < a.length) goto _L7; else goto _L6
_L6:
        return true;
_L4:
        java.util.Entry entry = (java.util.Entry)iterator.next();
        if (!(entry.getKey() instanceof String))
        {
            b = (new StringBuilder("key '")).append(entry.getKey().toString()).append("' is not a string").toString();
            return false;
        }
        continue; /* Loop/switch isn't completed */
_L7:
        String s1 = a(a[j]);
        a a2 = b(a[j]);
        if (!map.containsKey(s1))
        {
            if (!a2.a(null))
            {
                b = (new StringBuilder("no key for required mapping '")).append(s1).append("' : <").append(a2.a()).append(">").toString();
                return false;
            }
        } else
        if (!a2.a(map.get(s1)))
        {
            b = (new StringBuilder("key '")).append(s1).append("' fails to match: <").append(a2.a()).append(">").toString();
            return false;
        }
        j++;
        if (true) goto _L8; else goto _L2
_L2:
        if (!(obj instanceof JSONObject)) goto _L10; else goto _L9
_L9:
        JSONObject jsonobject = (JSONObject)obj;
        if (a == null || a.length < 1) goto _L12; else goto _L11
_L11:
        int i = 0;
_L14:
        if (i < a.length) goto _L13; else goto _L12
_L12:
        return true;
_L13:
        String s;
        a a1;
        s = a(a[i]);
        a1 = b(a[i]);
        if (a1.a(jsonobject.get(s)))
        {
            break MISSING_BLOCK_LABEL_449;
        }
        b = (new StringBuilder("key '")).append(s).append("' fails to match: <").append(a1.a()).append(">").toString();
        return false;
        JSONException jsonexception;
        jsonexception;
        if (!a1.a(null))
        {
            b = (new StringBuilder("no key for required mapping '")).append(s).append("' : <").append(a1.a()).append(">").toString();
            return false;
        }
        i++;
        if (true) goto _L14; else goto _L10
_L10:
        return false;
        if (true) goto _L16; else goto _L15
_L15:
    }

    public ( a1[])
    {
        b = null;
        a = a1;
    }
}
