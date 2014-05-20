// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.utils;

import java.io.IOException;
import java.io.InputStream;

public class DeviceInfo
{

    public DeviceInfo()
    {
    }

    static String getCPUCount()
    {
        byte abyte0[];
        InputStream inputstream;
        int i;
        ProcessBuilder processbuilder = new ProcessBuilder(new String[] {
            "/system/bin/cat", "/sys/devices/system/cpu/present"
        });
        abyte0 = new byte[1024];
        inputstream = processbuilder.start().getInputStream();
        i = inputstream.read(abyte0, 0, 1024);
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        String s;
        int j;
        s = new String(abyte0, 0, i);
        j = s.indexOf("-");
        if (j < 0)
        {
            break MISSING_BLOCK_LABEL_101;
        }
        return Integer.toString(1 + Integer.parseInt(s.substring(j + 1, j + 2)));
        return Integer.toString(1 + Integer.parseInt(s.substring(0, 1)));
        inputstream.close();
_L2:
        return new String("");
        IOException ioexception;
        ioexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static String getHardwareInfo()
    {
        byte abyte0[];
        InputStream inputstream;
        int i;
        ProcessBuilder processbuilder = new ProcessBuilder(new String[] {
            "/system/bin/cat", "/proc/cpuinfo"
        });
        abyte0 = new byte[1024];
        inputstream = processbuilder.start().getInputStream();
        i = inputstream.read(abyte0, 0, 1024);
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        String s;
        int j;
        s = new String(abyte0, 0, i);
        j = s.indexOf("Hardware");
        if (j < 0)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        int k = s.indexOf(':', j);
        if (k < 0)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        return s.substring(k + 1, s.indexOf('\n', k + 1)).trim();
        inputstream.close();
_L2:
        return new String("");
        IOException ioexception;
        ioexception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    static String getTotalMemory()
    {
        byte abyte0[];
        InputStream inputstream;
        int i;
        ProcessBuilder processbuilder = new ProcessBuilder(new String[] {
            "/system/bin/cat", "/proc/meminfo"
        });
        abyte0 = new byte[1024];
        inputstream = processbuilder.start().getInputStream();
        i = inputstream.read(abyte0, 0, 1024);
        if (i < 0)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        String s;
        int j;
        s = new String(abyte0, 0, i);
        j = s.indexOf("MemTotal");
        if (j < 0)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        int k = s.indexOf(':', j);
        if (k < 0)
        {
            break MISSING_BLOCK_LABEL_119;
        }
        return s.substring(k + 1, s.indexOf('\n', k + 1)).trim();
        inputstream.close();
_L2:
        return new String("");
        IOException ioexception;
        ioexception;
        if (true) goto _L2; else goto _L1
_L1:
    }
}
