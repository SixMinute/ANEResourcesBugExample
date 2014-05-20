// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper

static class bugMode
{

    static final int $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode[];

    static 
    {
        $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode = new int[bugMode.values().length];
        try
        {
            $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode[bugMode.ListenMode.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode[bugMode.ConnectMode.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode[bugMode.None.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$adobe$air$AndroidActivityWrapper$DebugMode[bugMode.ConflictMode.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3)
        {
            return;
        }
    }
}
