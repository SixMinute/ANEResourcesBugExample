// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;


// Referenced classes of package android.support.v4.app:
//            FragmentManagerImpl, FragmentActivity

class val.flags
    implements Runnable
{

    final FragmentManagerImpl this$0;
    final int val$flags;
    final int val$id;

    public void run()
    {
        popBackStackState(mActivity.mHandler, null, val$id, val$flags);
    }

    ()
    {
        this$0 = final_fragmentmanagerimpl;
        val$id = i;
        val$flags = I.this;
        super();
    }
}
