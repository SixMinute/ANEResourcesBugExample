// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            AndroidStageText, AIRWindowSurfaceView

private class m_AIRSurface
    implements Runnable
{

    private AIRWindowSurfaceView m_AIRSurface;
    private int m_freqMsecs;
    private int m_nUpdates;
    private m_freqMsecs m_stageText;
    final m_freqMsecs this$1;

    public void run()
    {
        if (m_stageText != null && m_AIRSurface != null)
        {
            m_stageText.m_stageText(m_AIRSurface);
        }
        int i = m_nUpdates - 1;
        m_nUpdates = i;
        if (i > 0)
        {
            m_stageText.m_stageText(this, m_freqMsecs);
        }
    }

    public (int i, int j,  1, AIRWindowSurfaceView airwindowsurfaceview)
    {
        this$1 = this._cls1.this;
        super();
        m_nUpdates = i;
        m_freqMsecs = j;
        m_stageText = 1;
        m_AIRSurface = airwindowsurfaceview;
    }
}
