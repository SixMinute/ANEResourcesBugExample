// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.microphone;

import android.media.AudioRecord;
import android.os.Process;

public class AIRMicrophoneRecorder
    implements Runnable
{

    private byte mMicBuffer[];
    private int m_audioFormat;
    private int m_audioSource;
    private int m_bufferSize;
    private int m_channelConfiguration;
    private volatile boolean m_isPaused;
    private volatile boolean m_isRecording;
    private AudioRecord m_recorder;
    private int m_sampleRate;
    private final Object mutex = new Object();

    public AIRMicrophoneRecorder(int i, int j, int k, int l, int i1)
    {
        m_audioSource = 0;
        m_sampleRate = 0;
        m_channelConfiguration = 0;
        m_audioFormat = 0;
        m_bufferSize = 0;
        m_audioSource = i;
        m_sampleRate = j;
        m_channelConfiguration = k;
        m_audioFormat = l;
        m_bufferSize = i1;
        mMicBuffer = new byte[m_bufferSize];
    }

    public Boolean Open()
    {
        int i = AudioRecord.getMinBufferSize(m_sampleRate, m_channelConfiguration, m_audioFormat);
        int j;
        if (m_bufferSize > i)
        {
            j = m_bufferSize;
        } else
        {
            j = i * 2;
        }
        try
        {
            m_recorder = new AudioRecord(m_audioSource, m_sampleRate, m_channelConfiguration, m_audioFormat, j);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            illegalargumentexception.printStackTrace();
            return Boolean.valueOf(false);
        }
        if (m_recorder != null && m_recorder.getState() == 1)
        {
            return Boolean.valueOf(true);
        } else
        {
            return Boolean.valueOf(false);
        }
    }

    public byte[] getBuffer()
    {
        int i;
        i = m_recorder.read(mMicBuffer, 0, m_bufferSize);
        break MISSING_BLOCK_LABEL_17;
        if (i == -3 || i != -2);
        return mMicBuffer;
    }

    public boolean isRecording()
    {
        boolean flag;
        synchronized (mutex)
        {
            flag = m_isRecording;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void run()
    {
        Object obj = mutex;
        obj;
        JVM INSTR monitorenter ;
_L1:
        boolean flag = isRecording();
        if (flag)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        mutex.wait();
          goto _L1
        InterruptedException interruptedexception;
        interruptedexception;
        throw new IllegalStateException("Wait interrupted", interruptedexception);
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        obj;
        JVM INSTR monitorexit ;
        Process.setThreadPriority(-19);
        if (m_recorder == null)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        m_recorder.startRecording();
        return;
        IllegalStateException illegalstateexception;
        illegalstateexception;
    }

    public void setRecording(boolean flag)
    {
        Object obj = mutex;
        obj;
        JVM INSTR monitorenter ;
        m_isRecording = flag;
        if (!m_isRecording)
        {
            break MISSING_BLOCK_LABEL_29;
        }
        mutex.notify();
_L2:
        return;
        if (m_recorder.getState() == 1)
        {
            m_recorder.stop();
        }
        m_recorder.release();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
