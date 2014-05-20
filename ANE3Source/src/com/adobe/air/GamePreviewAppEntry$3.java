// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.DialogInterface;

// Referenced classes of package com.adobe.air:
//            GamePreviewAppEntry

class this._cls0
    implements android.content.elListener
{

    final GamePreviewAppEntry this$0;

    public void onCancel(DialogInterface dialoginterface)
    {
        System.exit(0);
    }

    ncelListener()
    {
        this$0 = GamePreviewAppEntry.this;
        super();
    }
}
