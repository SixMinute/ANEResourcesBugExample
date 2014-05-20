// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.text;


// Referenced classes of package android.support.v4.text:
//            TextDirectionHeuristicsCompat

private static class mLookForRtl
    implements ionAlgorithm
{

    public static final mLookForRtl INSTANCE_LTR = new <init>(false);
    public static final <init> INSTANCE_RTL = new <init>(true);
    private final boolean mLookForRtl;

    public int checkRtl(CharSequence charsequence, int i, int j)
    {
        boolean flag;
        int k;
        int l;
        flag = false;
        k = i;
        l = i + j;
_L2:
        if (k >= l)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        switch (TextDirectionHeuristicsCompat.access$200(Character.getDirectionality(charsequence.charAt(k))))
        {
        default:
            break;

        case 0: // '\0'
            break; /* Loop/switch isn't completed */

        case 1: // '\001'
            break;
        }
        break MISSING_BLOCK_LABEL_77;
_L3:
        k++;
        if (true) goto _L2; else goto _L1
_L1:
        if (mLookForRtl)
        {
            return 0;
        }
        flag = true;
          goto _L3
        if (!mLookForRtl)
        {
            return 1;
        }
        flag = true;
          goto _L3
        if (flag)
        {
            return !mLookForRtl ? 0 : 1;
        } else
        {
            return 2;
        }
    }


    private ionAlgorithm(boolean flag)
    {
        mLookForRtl = flag;
    }
}
