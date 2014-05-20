// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


class FileInfo
{

    public long mFileSize;
    public boolean mIsDirectory;
    public boolean mIsFile;

    FileInfo(long l, boolean flag, boolean flag1)
    {
        mFileSize = l;
        mIsFile = flag;
        mIsDirectory = flag1;
    }
}
