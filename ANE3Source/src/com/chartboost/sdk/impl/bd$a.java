// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;


// Referenced classes of package com.chartboost.sdk.impl:
//            bd

static class ing extends IllegalArgumentException
{

    ption(String s)
    {
        super((new StringBuilder(String.valueOf(s))).append(" should not be null!").toString());
    }
}
