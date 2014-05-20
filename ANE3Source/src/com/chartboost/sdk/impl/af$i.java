// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.SimpleTimeZone;

// Referenced classes of package com.chartboost.sdk.impl:
//            y, ah, af

private static class <init> extends <init>
{

    public void a(Object obj, StringBuilder stringbuilder)
    {
        Date date = (Date)obj;
        SimpleDateFormat simpledateformat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'");
        simpledateformat.setCalendar(new GregorianCalendar(new SimpleTimeZone(0, "GMT")));
        a.a(new y("$date", simpledateformat.format(date)), stringbuilder);
    }

    (ah ah1)
    {
        super(ah1);
    }
}
