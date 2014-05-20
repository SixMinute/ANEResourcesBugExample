// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;

public class r extends Animation
{

    private final float a;
    private final float b;
    private final float c;
    private final float d;
    private boolean e;
    private Camera f;

    public r(float f1, float f2, float f3, float f4, boolean flag)
    {
        e = true;
        a = f1;
        b = f2;
        c = f3;
        d = f4;
        e = flag;
    }

    protected void applyTransformation(float f1, Transformation transformation)
    {
        float f2 = a + f1 * (b - a);
        Camera camera = f;
        Matrix matrix = transformation.getMatrix();
        camera.save();
        if (e)
        {
            camera.rotateY(f2);
        } else
        {
            camera.rotateX(f2);
        }
        camera.getMatrix(matrix);
        camera.restore();
        matrix.preTranslate(-c, -d);
        matrix.postTranslate(c, d);
    }

    public void initialize(int i, int j, int k, int l)
    {
        super.initialize(i, j, k, l);
        f = new Camera();
    }
}
