// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.wand.view;


public class GestureEventData
{

    public boolean mIsTransform;
    public float mOffsetX;
    public float mOffsetY;
    public int mPhase;
    public float mRotation;
    public float mScaleX;
    public float mScaleY;
    public int mType;
    public float mXCoord;
    public float mYCoord;

    public GestureEventData(int i, int j, boolean flag, float f, float f1, float f2, float f3, 
            float f4, float f5, float f6)
    {
        mPhase = 2;
        mType = 0;
        mXCoord = 0.0F;
        mYCoord = 0.0F;
        mScaleX = 1.0F;
        mScaleY = 1.0F;
        mIsTransform = true;
        mRotation = 0.0F;
        mOffsetX = 0.0F;
        mOffsetY = 0.0F;
        mPhase = i;
        mType = j;
        mIsTransform = flag;
        mXCoord = f;
        mYCoord = f1;
        mScaleX = f2;
        mScaleY = f3;
        mRotation = f4;
        mOffsetX = f5;
        mOffsetY = f6;
    }
}
