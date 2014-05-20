// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            AndroidWebView

static class apper.ActivityState
{

    static final int $SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState[];

    static 
    {
        $SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState = new int[apper.ActivityState.values().length];
        try
        {
            $SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState[apper.ActivityState.RESUMED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            $SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState[apper.ActivityState.PAUSED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState[apper.ActivityState.STARTED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$adobe$air$AndroidActivityWrapper$ActivityState[apper.ActivityState.DESTROYED.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3)
        {
            return;
        }
    }
}
