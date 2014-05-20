// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;


// Referenced classes of package com.adobe.air:
//            AndroidLocale

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES IDA_CANCEL;
    public static final .VALUES IDA_CONTEXT_MENU_TITLE_STRING;
    public static final .VALUES IDA_CONTINUE;
    public static final .VALUES IDA_COPY_ALL_STRING;
    public static final .VALUES IDA_COPY_STRING;
    public static final .VALUES IDA_CUT_ALL_STRING;
    public static final .VALUES IDA_CUT_STRING;
    public static final .VALUES IDA_DEBUGGER_ENTERIP_MESSAGE;
    public static final .VALUES IDA_DEBUGGER_ERROR_MESSAGE;
    public static final .VALUES IDA_DEBUGGER_LISTEN_ERROR_MESSAGE;
    public static final .VALUES IDA_DEBUGGER_LISTEN_ERROR_TITLE;
    public static final .VALUES IDA_INPUT_METHOD_STRING;
    public static final .VALUES IDA_OK;
    public static final .VALUES IDA_PASTE_STRING;
    public static final .VALUES IDA_RUNTIME_UPDATE_MESSAGE;
    public static final .VALUES IDA_SELECT_ALL;
    public static final .VALUES IDA_SELECT_TEXT;
    public static final .VALUES IDA_STOP_SELECTING_TEXT;
    public static final .VALUES IDA_UPDATE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/adobe/air/AndroidLocale$STRING_ID, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        IDA_CONTEXT_MENU_TITLE_STRING = new <init>("IDA_CONTEXT_MENU_TITLE_STRING", 0);
        IDA_CUT_ALL_STRING = new <init>("IDA_CUT_ALL_STRING", 1);
        IDA_CUT_STRING = new <init>("IDA_CUT_STRING", 2);
        IDA_PASTE_STRING = new <init>("IDA_PASTE_STRING", 3);
        IDA_COPY_ALL_STRING = new <init>("IDA_COPY_ALL_STRING", 4);
        IDA_COPY_STRING = new <init>("IDA_COPY_STRING", 5);
        IDA_INPUT_METHOD_STRING = new <init>("IDA_INPUT_METHOD_STRING", 6);
        IDA_UPDATE = new <init>("IDA_UPDATE", 7);
        IDA_CANCEL = new <init>("IDA_CANCEL", 8);
        IDA_RUNTIME_UPDATE_MESSAGE = new <init>("IDA_RUNTIME_UPDATE_MESSAGE", 9);
        IDA_OK = new <init>("IDA_OK", 10);
        IDA_DEBUGGER_ENTERIP_MESSAGE = new <init>("IDA_DEBUGGER_ENTERIP_MESSAGE", 11);
        IDA_DEBUGGER_ERROR_MESSAGE = new <init>("IDA_DEBUGGER_ERROR_MESSAGE", 12);
        IDA_CONTINUE = new <init>("IDA_CONTINUE", 13);
        IDA_DEBUGGER_LISTEN_ERROR_TITLE = new <init>("IDA_DEBUGGER_LISTEN_ERROR_TITLE", 14);
        IDA_DEBUGGER_LISTEN_ERROR_MESSAGE = new <init>("IDA_DEBUGGER_LISTEN_ERROR_MESSAGE", 15);
        IDA_SELECT_TEXT = new <init>("IDA_SELECT_TEXT", 16);
        IDA_STOP_SELECTING_TEXT = new <init>("IDA_STOP_SELECTING_TEXT", 17);
        IDA_SELECT_ALL = new <init>("IDA_SELECT_ALL", 18);
        D_3B_.clone aclone[] = new <init>[19];
        aclone[0] = IDA_CONTEXT_MENU_TITLE_STRING;
        aclone[1] = IDA_CUT_ALL_STRING;
        aclone[2] = IDA_CUT_STRING;
        aclone[3] = IDA_PASTE_STRING;
        aclone[4] = IDA_COPY_ALL_STRING;
        aclone[5] = IDA_COPY_STRING;
        aclone[6] = IDA_INPUT_METHOD_STRING;
        aclone[7] = IDA_UPDATE;
        aclone[8] = IDA_CANCEL;
        aclone[9] = IDA_RUNTIME_UPDATE_MESSAGE;
        aclone[10] = IDA_OK;
        aclone[11] = IDA_DEBUGGER_ENTERIP_MESSAGE;
        aclone[12] = IDA_DEBUGGER_ERROR_MESSAGE;
        aclone[13] = IDA_CONTINUE;
        aclone[14] = IDA_DEBUGGER_LISTEN_ERROR_TITLE;
        aclone[15] = IDA_DEBUGGER_LISTEN_ERROR_MESSAGE;
        aclone[16] = IDA_SELECT_TEXT;
        aclone[17] = IDA_STOP_SELECTING_TEXT;
        aclone[18] = IDA_SELECT_ALL;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
