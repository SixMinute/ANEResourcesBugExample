// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.os.AsyncTask;
import com.facebook.internal.Utility;

// Referenced classes of package com.facebook:
//            Settings, Session

private class ext extends AsyncTask
{

    private final Context mApplicationContext;
    private final String mApplicationId;
    final Session this$0;

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient Void doInBackground(Void avoid[])
    {
        try
        {
            Settings.publishInstallAndWaitForResponse(mApplicationContext, mApplicationId, true);
        }
        catch (Exception exception)
        {
            Utility.logd("Facebook-publish", exception);
        }
        return null;
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Void)obj);
    }

    protected void onPostExecute(Void void1)
    {
        synchronized (Session.this)
        {
            Session.access$5(Session.this, null);
        }
        return;
        exception;
        session;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public (String s, Context context)
    {
        this$0 = Session.this;
        super();
        mApplicationId = s;
        mApplicationContext = context.getApplicationContext();
    }
}
