// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import java.io.File;

// Referenced classes of package com.facebook.internal:
//            FileLruCache

class val.filesToDelete
    implements Runnable
{

    final FileLruCache this$0;
    private final File val$filesToDelete[];

    public void run()
    {
        File afile[] = val$filesToDelete;
        int i = afile.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            afile[j].delete();
            j++;
        } while (true);
    }

    ()
    {
        this$0 = final_filelrucache;
        val$filesToDelete = _5B_Ljava.io.File_3B_.this;
        super();
    }
}
