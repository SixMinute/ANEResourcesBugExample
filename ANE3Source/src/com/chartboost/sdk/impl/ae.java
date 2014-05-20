// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            af, ah

public class ae
{

    public static String a(Object obj)
    {
        StringBuilder stringbuilder = new StringBuilder();
        a(obj, stringbuilder);
        return stringbuilder.toString();
    }

    public static void a(Object obj, StringBuilder stringbuilder)
    {
        af.a().a(obj, stringbuilder);
    }

    static void a(StringBuilder stringbuilder, String s)
    {
        int i;
        stringbuilder.append("\"");
        i = 0;
_L2:
        char c;
        if (i >= s.length())
        {
            stringbuilder.append("\"");
            return;
        }
        c = s.charAt(i);
        if (c != '\\')
        {
            break; /* Loop/switch isn't completed */
        }
        stringbuilder.append("\\\\");
_L3:
        i++;
        if (true) goto _L2; else goto _L1
_L1:
        if (c == '"')
        {
            stringbuilder.append("\\\"");
        } else
        if (c == '\n')
        {
            stringbuilder.append("\\n");
        } else
        if (c == '\r')
        {
            stringbuilder.append("\\r");
        } else
        if (c == '\t')
        {
            stringbuilder.append("\\t");
        } else
        if (c == '\b')
        {
            stringbuilder.append("\\b");
        } else
        if (c >= ' ')
        {
            stringbuilder.append(c);
        }
          goto _L3
        if (true) goto _L2; else goto _L4
_L4:
    }
}
