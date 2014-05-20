// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package android.support.v4.app:
//            NavUtils, TaskStackBuilderHoneycomb, TaskStackBuilderJellybean

public class TaskStackBuilder
    implements Iterable
{
    public static interface SupportParentable
    {

        public abstract Intent getSupportParentActivityIntent();
    }

    static interface TaskStackBuilderImpl
    {

        public abstract PendingIntent getPendingIntent(Context context, Intent aintent[], int i, int j, Bundle bundle);
    }

    static class TaskStackBuilderImplBase
        implements TaskStackBuilderImpl
    {

        public PendingIntent getPendingIntent(Context context, Intent aintent[], int i, int j, Bundle bundle)
        {
            Intent intent = new Intent(aintent[aintent.length - 1]);
            intent.addFlags(0x10000000);
            return PendingIntent.getActivity(context, i, intent, j);
        }

        TaskStackBuilderImplBase()
        {
        }
    }

    static class TaskStackBuilderImplHoneycomb
        implements TaskStackBuilderImpl
    {

        public PendingIntent getPendingIntent(Context context, Intent aintent[], int i, int j, Bundle bundle)
        {
            aintent[0] = (new Intent(aintent[0])).addFlags(0x1000c000);
            return TaskStackBuilderHoneycomb.getActivitiesPendingIntent(context, i, aintent, j);
        }

        TaskStackBuilderImplHoneycomb()
        {
        }
    }

    static class TaskStackBuilderImplJellybean
        implements TaskStackBuilderImpl
    {

        public PendingIntent getPendingIntent(Context context, Intent aintent[], int i, int j, Bundle bundle)
        {
            aintent[0] = (new Intent(aintent[0])).addFlags(0x1000c000);
            return TaskStackBuilderJellybean.getActivitiesPendingIntent(context, i, aintent, j, bundle);
        }

        TaskStackBuilderImplJellybean()
        {
        }
    }


    private static final TaskStackBuilderImpl IMPL;
    private static final String TAG = "TaskStackBuilder";
    private final ArrayList mIntents = new ArrayList();
    private final Context mSourceContext;

    private TaskStackBuilder(Context context)
    {
        mSourceContext = context;
    }

    public static TaskStackBuilder create(Context context)
    {
        return new TaskStackBuilder(context);
    }

    public static TaskStackBuilder from(Context context)
    {
        return create(context);
    }

    public TaskStackBuilder addNextIntent(Intent intent)
    {
        mIntents.add(intent);
        return this;
    }

    public TaskStackBuilder addNextIntentWithParentStack(Intent intent)
    {
        ComponentName componentname = intent.getComponent();
        if (componentname == null)
        {
            componentname = intent.resolveActivity(mSourceContext.getPackageManager());
        }
        if (componentname != null)
        {
            addParentStack(componentname);
        }
        addNextIntent(intent);
        return this;
    }

    public TaskStackBuilder addParentStack(Activity activity)
    {
        boolean flag = activity instanceof SupportParentable;
        Intent intent = null;
        if (flag)
        {
            intent = ((SupportParentable)activity).getSupportParentActivityIntent();
        }
        if (intent == null)
        {
            intent = NavUtils.getParentActivityIntent(activity);
        }
        if (intent != null)
        {
            ComponentName componentname = intent.getComponent();
            if (componentname == null)
            {
                componentname = intent.resolveActivity(mSourceContext.getPackageManager());
            }
            addParentStack(componentname);
            addNextIntent(intent);
        }
        return this;
    }

    public TaskStackBuilder addParentStack(ComponentName componentname)
    {
        int i = mIntents.size();
        Intent intent;
        Intent intent1;
        try
        {
            intent = NavUtils.getParentActivityIntent(mSourceContext, componentname);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
            throw new IllegalArgumentException(namenotfoundexception);
        }
        if (intent == null)
        {
            break; /* Loop/switch isn't completed */
        }
        mIntents.add(i, intent);
        intent1 = NavUtils.getParentActivityIntent(mSourceContext, intent.getComponent());
        intent = intent1;
        if (true) goto _L2; else goto _L1
_L2:
        break MISSING_BLOCK_LABEL_18;
_L1:
        return this;
    }

    public TaskStackBuilder addParentStack(Class class1)
    {
        return addParentStack(new ComponentName(mSourceContext, class1));
    }

    public Intent editIntentAt(int i)
    {
        return (Intent)mIntents.get(i);
    }

    public Intent getIntent(int i)
    {
        return editIntentAt(i);
    }

    public int getIntentCount()
    {
        return mIntents.size();
    }

    public Intent[] getIntents()
    {
        Intent aintent[] = new Intent[mIntents.size()];
        if (aintent.length != 0)
        {
            aintent[0] = (new Intent((Intent)mIntents.get(0))).addFlags(0x1000c000);
            int i = 1;
            while (i < aintent.length) 
            {
                aintent[i] = new Intent((Intent)mIntents.get(i));
                i++;
            }
        }
        return aintent;
    }

    public PendingIntent getPendingIntent(int i, int j)
    {
        return getPendingIntent(i, j, null);
    }

    public PendingIntent getPendingIntent(int i, int j, Bundle bundle)
    {
        if (mIntents.isEmpty())
        {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
        } else
        {
            Intent aintent[] = (Intent[])mIntents.toArray(new Intent[mIntents.size()]);
            aintent[0] = (new Intent(aintent[0])).addFlags(0x1000c000);
            return IMPL.getPendingIntent(mSourceContext, aintent, i, j, bundle);
        }
    }

    public Iterator iterator()
    {
        return mIntents.iterator();
    }

    public void startActivities()
    {
        startActivities(null);
    }

    public void startActivities(Bundle bundle)
    {
        if (mIntents.isEmpty())
        {
            throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
        }
        Intent aintent[] = (Intent[])mIntents.toArray(new Intent[mIntents.size()]);
        aintent[0] = (new Intent(aintent[0])).addFlags(0x1000c000);
        if (!ContextCompat.startActivities(mSourceContext, aintent, bundle))
        {
            Intent intent = new Intent(aintent[aintent.length - 1]);
            intent.addFlags(0x10000000);
            mSourceContext.startActivity(intent);
        }
    }

    static 
    {
        if (android.os.Build.VERSION.SDK_INT >= 11)
        {
            IMPL = new TaskStackBuilderImplHoneycomb();
        } else
        {
            IMPL = new TaskStackBuilderImplBase();
        }
    }
}
