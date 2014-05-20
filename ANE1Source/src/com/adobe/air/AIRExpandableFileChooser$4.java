// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.content.DialogInterface;
import android.util.SparseBooleanArray;
import android.widget.ExpandableListAdapter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.adobe.air:
//            AIRExpandableFileChooser, FileChooserStub

class this._cls0
    implements android.content.ener
{

    final AIRExpandableFileChooser this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        AIRExpandableFileChooser.access$800(AIRExpandableFileChooser.this).clear();
        int j = AIRExpandableFileChooser.access$500(AIRExpandableFileChooser.this).size();
        for (int k = 0; k < j; k++)
        {
            int l = ((List)AIRExpandableFileChooser.access$400(AIRExpandableFileChooser.this).get(k)).size();
            for (int i1 = 0; i1 < l; i1++)
            {
                int j1 = AIRExpandableFileChooser.access$100(AIRExpandableFileChooser.this, k, i1);
                if (AIRExpandableFileChooser.access$300(AIRExpandableFileChooser.this).get(j1))
                {
                    HashMap hashmap = (HashMap)AIRExpandableFileChooser.access$1100(AIRExpandableFileChooser.this).getChild(k, i1);
                    AIRExpandableFileChooser.access$800(AIRExpandableFileChooser.this).add(((leInfo)hashmap.get("FILEINFO")).mFilePath);
                }
            }

        }

        AIRExpandableFileChooser.access$600(AIRExpandableFileChooser.this).SetUserAction("done");
    }

    leInfo()
    {
        this$0 = AIRExpandableFileChooser.this;
        super();
    }
}
