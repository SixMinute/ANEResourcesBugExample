// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.text.InputFilter;
import android.text.Spanned;

// Referenced classes of package com.adobe.air:
//            AndroidStageText

private class SetCode
    implements InputFilter
{

    private static final int kMapSize = 8192;
    private String mPattern;
    private byte m_map[];
    final AndroidStageText this$0;

    boolean IsCharAvailable(char c)
    {
        if (mPattern != null);
        if (m_map == null)
        {
            return false;
        }
        return (m_map[c >> 3] & 1 << (c & 7)) != 0;
    }

    boolean IsEmpty()
    {
        return mPattern != null;
    }

    void SetAll(boolean flag)
    {
        int i = 0;
        char c;
        byte byte0;
        if (flag)
        {
            c = '\377';
        } else
        {
            c = '\0';
        }
        byte0 = (byte)c;
        for (; i < 8192; i++)
        {
            m_map[i] = byte0;
        }

    }

    void SetCode(char c, boolean flag)
    {
        if (flag)
        {
            byte abyte1[] = m_map;
            int j = c >> 3;
            abyte1[j] = (byte)(abyte1[j] | 1 << (c & 7));
            return;
        } else
        {
            byte abyte0[] = m_map;
            int i = c >> 3;
            abyte0[i] = (byte)(abyte0[i] & (-1 ^ 1 << (c & 7)));
            return;
        }
    }

    public CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int k, int l)
    {
        if (mPattern == null)
        {
            return null;
        }
        if (m_map == null)
        {
            return "";
        }
        StringBuffer stringbuffer = new StringBuffer(j - i);
        int i1 = i;
        while (i1 < j) 
        {
            char c = charsequence.charAt(i1);
            boolean flag;
            char c1;
            if (!IsCharAvailable(c))
            {
                if (c >= 'A' && c <= 'Z')
                {
                    c1 = (char)(c + 32);
                    flag = IsCharAvailable(c1);
                } else
                if (c >= 'a' && c <= 'z')
                {
                    c1 = (char)(c - 32);
                    flag = IsCharAvailable(c1);
                } else
                {
                    c1 = c;
                    flag = false;
                }
            } else
            {
                flag = true;
                c1 = c;
            }
            if (flag)
            {
                stringbuffer.append(c1);
            }
            i1++;
        }
        return stringbuffer.toString();
    }

    public (String s)
    {
        int i;
        char c;
        boolean flag;
        boolean flag1;
        boolean flag2;
        this$0 = AndroidStageText.this;
        super();
        mPattern = null;
        m_map = null;
        mPattern = s;
        if (s == null || "".equals(s))
        {
            break MISSING_BLOCK_LABEL_316;
        }
        m_map = new byte[8192];
        SetAll(false);
        if (s.charAt(0) == '^')
        {
            SetAll(true);
        }
        i = 0;
        c = '\0';
        flag = true;
        flag1 = false;
        flag2 = false;
_L6:
        char c1;
        if (i >= s.length())
        {
            break MISSING_BLOCK_LABEL_316;
        }
        c1 = s.charAt(i);
        if (flag2)
        {
            break MISSING_BLOCK_LABEL_252;
        }
        c1;
        JVM INSTR lookupswitch 3: default 136
    //                   45: 186
    //                   92: 235
    //                   94: 203;
           goto _L1 _L2 _L3 _L4
_L1:
        boolean flag3;
        boolean flag4;
        boolean flag5;
        boolean flag6;
        flag6 = flag2;
        flag3 = flag1;
        flag4 = flag;
        flag5 = true;
        break MISSING_BLOCK_LABEL_151;
_L2:
        flag4 = flag;
        flag6 = flag2;
        flag3 = true;
        flag5 = false;
          goto _L5
_L4:
        boolean flag9;
        if (!flag)
        {
            flag9 = true;
        } else
        {
            flag9 = false;
        }
        flag6 = flag2;
        flag3 = flag1;
        flag4 = flag9;
        flag5 = false;
          goto _L5
_L3:
        flag3 = flag1;
        flag6 = true;
        flag4 = flag;
        flag5 = false;
          goto _L5
        flag3 = flag1;
        flag4 = flag;
        flag5 = true;
        flag6 = false;
_L5:
        boolean flag7;
        boolean flag8;
        if (flag5)
        {
            if (flag3)
            {
                for (; c <= c1; c++)
                {
                    SetCode(c, flag4);
                }

                c = '\0';
                flag7 = false;
            } else
            {
                SetCode(c1, flag4);
                c = c1;
                flag7 = flag3;
            }
        } else
        {
            flag7 = flag3;
        }
        i++;
        flag2 = flag6;
        flag8 = flag7;
        flag = flag4;
        flag1 = flag8;
        if (true) goto _L6; else goto _L2
    }
}
