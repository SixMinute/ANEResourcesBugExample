// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.util.regex.Pattern;

public class ag
{
    public static class a extends RuntimeException
    {

        final String a;

        public String toString()
        {
            return a;
        }

        a(String s)
        {
            super(s);
            a = s;
        }
    }


    private static Pattern a = Pattern.compile("\\s+", 40);

    public static void a(int i, int j)
    {
        if (i != j)
        {
            throw new a((new StringBuilder()).append(i).append(" != ").append(j).toString());
        } else
        {
            return;
        }
    }

}
