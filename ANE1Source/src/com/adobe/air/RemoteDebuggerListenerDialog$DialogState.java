// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            RemoteDebuggerListenerDialog

private static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES StateRuntimeNotReady;
    public static final .VALUES StateRuntimeTimedOut;
    public static final .VALUES StateRuntimeWaitingForDebugger;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/adobe/air/RemoteDebuggerListenerDialog$DialogState, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        StateRuntimeNotReady = new <init>("StateRuntimeNotReady", 0);
        StateRuntimeWaitingForDebugger = new <init>("StateRuntimeWaitingForDebugger", 1);
        StateRuntimeTimedOut = new <init>("StateRuntimeTimedOut", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = StateRuntimeNotReady;
        aclone[1] = StateRuntimeWaitingForDebugger;
        aclone[2] = StateRuntimeTimedOut;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
