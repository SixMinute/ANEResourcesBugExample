// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.Libraries;


// Referenced classes of package com.chartboost.sdk.Libraries:
//            e

private static class b extends b
{

    protected String a;
    private a b[];

    public String a()
    {
        if (a != null)
        {
            return a;
        }
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("object must match ALL of the following: ");
        int i = 0;
        do
        {
            if (i >= b.length)
            {
                return stringbuilder.toString();
            }
            stringbuilder.append("<");
            stringbuilder.append(b[i].a());
            stringbuilder.append(">");
            if (i < b.length - 1)
            {
                stringbuilder.append(", ");
            }
            i++;
        } while (true);
    }

    public boolean a(Object obj)
    {
        int i = 0;
        do
        {
            if (i >= b.length)
            {
                return true;
            }
            if (!b[i].a(obj))
            {
                a = (new StringBuilder("object failed to match: <")).append(b[i].a()).append(">").toString();
                return false;
            }
            i++;
        } while (true);
    }

    public ( a1[])
    {
        a = null;
        b = a1;
    }
}
