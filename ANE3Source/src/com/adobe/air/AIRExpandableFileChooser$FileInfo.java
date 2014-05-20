// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            AIRExpandableFileChooser

private class mFilePath
{

    public String mFileName;
    public String mFilePath;
    public erItem mParent;
    final AIRExpandableFileChooser this$0;

    public erItem(String s, String s1)
    {
        this$0 = AIRExpandableFileChooser.this;
        super();
        mFileName = new String();
        mFilePath = new String();
        mParent = null;
        mFileName = s;
        mFilePath = s1;
    }
}
