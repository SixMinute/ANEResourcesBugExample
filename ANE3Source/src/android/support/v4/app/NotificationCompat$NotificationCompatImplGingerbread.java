// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.app;

import android.app.Notification;

// Referenced classes of package android.support.v4.app:
//            NotificationCompatGingerbread, NotificationCompat

static class Q extends Q
{

    public Notification build(Q q)
    {
        Notification notification = q.Q;
        notification.setLatestEventInfo(q.Q, q.Q, q.Q, q.Q);
        Notification notification1 = NotificationCompatGingerbread.add(notification, q.Q, q.Q, q.Q, q.Q, q.Q);
        if (q.Q > 0)
        {
            notification1.flags = 0x80 | notification1.flags;
        }
        return notification1;
    }

    Q()
    {
    }
}
