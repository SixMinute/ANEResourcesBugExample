// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.media.AudioTrack;

public class AJAudioTrack extends AudioTrack
{

    private static int sStreamType = 3;
    private byte mBuf[];

    public AJAudioTrack(int i, int j, int k, int l)
    {
        super(sStreamType, i, k, j, l, 1);
        mBuf = new byte[l];
    }

    public static AJAudioTrack CreateTrack(int i, int j, int k, int l)
    {
        int i1;
        AJAudioTrack ajaudiotrack;
        try
        {
            i1 = AudioTrack.getMinBufferSize(i, ToAndroidChannelCount(k), ToAndroidFormat(j));
        }
        catch (Exception exception)
        {
            return null;
        }
        if (l >= i1)
        {
            i1 = l;
        }
        ajaudiotrack = new AJAudioTrack(i, ToAndroidFormat(j), ToAndroidChannelCount(k), i1);
        if (ajaudiotrack.getState() == 1)
        {
            break MISSING_BLOCK_LABEL_60;
        }
        ajaudiotrack.release();
        return null;
        return ajaudiotrack;
    }

    public static void SetStreamType(int i)
    {
        sStreamType = i;
    }

    public static int ToAndroidChannelCount(int i)
    {
        return i != 1 ? 12 : 4;
    }

    public static int ToAndroidFormat(int i)
    {
        return i != 1 ? 2 : 3;
    }

    public byte[] GetBuffer()
    {
        return mBuf;
    }

    public boolean playing()
    {
        return getPlayState() == 3;
    }

    public boolean stopped()
    {
        return getPlayState() == 1;
    }

}
