// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


public class KeyEventData
{

    boolean mAlt;
    int mKeyAction;
    int mKeyCode;
    boolean mShift;
    boolean mSym;
    int mUnicode;

    public KeyEventData(int i, int j, int k, boolean flag, boolean flag1, boolean flag2)
    {
        mKeyAction = i;
        mKeyCode = j;
        mUnicode = k;
        mAlt = flag;
        mShift = flag1;
        mSym = flag2;
    }
}
