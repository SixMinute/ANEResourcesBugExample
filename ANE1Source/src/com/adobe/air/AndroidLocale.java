// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import java.util.Locale;

public class AndroidLocale
{
    public static final class STRING_ID extends Enum
    {

        private static final STRING_ID $VALUES[];
        public static final STRING_ID IDA_CANCEL;
        public static final STRING_ID IDA_CONTEXT_MENU_TITLE_STRING;
        public static final STRING_ID IDA_CONTINUE;
        public static final STRING_ID IDA_COPY_ALL_STRING;
        public static final STRING_ID IDA_COPY_STRING;
        public static final STRING_ID IDA_CUT_ALL_STRING;
        public static final STRING_ID IDA_CUT_STRING;
        public static final STRING_ID IDA_DEBUGGER_ENTERIP_MESSAGE;
        public static final STRING_ID IDA_DEBUGGER_ERROR_MESSAGE;
        public static final STRING_ID IDA_DEBUGGER_LISTEN_ERROR_MESSAGE;
        public static final STRING_ID IDA_DEBUGGER_LISTEN_ERROR_TITLE;
        public static final STRING_ID IDA_INPUT_METHOD_STRING;
        public static final STRING_ID IDA_OK;
        public static final STRING_ID IDA_PASTE_STRING;
        public static final STRING_ID IDA_RUNTIME_UPDATE_MESSAGE;
        public static final STRING_ID IDA_SELECT_ALL;
        public static final STRING_ID IDA_SELECT_TEXT;
        public static final STRING_ID IDA_STOP_SELECTING_TEXT;
        public static final STRING_ID IDA_UPDATE;

        public static STRING_ID valueOf(String s)
        {
            return (STRING_ID)Enum.valueOf(com/adobe/air/AndroidLocale$STRING_ID, s);
        }

        public static STRING_ID[] values()
        {
            return (STRING_ID[])$VALUES.clone();
        }

        static 
        {
            IDA_CONTEXT_MENU_TITLE_STRING = new STRING_ID("IDA_CONTEXT_MENU_TITLE_STRING", 0);
            IDA_CUT_ALL_STRING = new STRING_ID("IDA_CUT_ALL_STRING", 1);
            IDA_CUT_STRING = new STRING_ID("IDA_CUT_STRING", 2);
            IDA_PASTE_STRING = new STRING_ID("IDA_PASTE_STRING", 3);
            IDA_COPY_ALL_STRING = new STRING_ID("IDA_COPY_ALL_STRING", 4);
            IDA_COPY_STRING = new STRING_ID("IDA_COPY_STRING", 5);
            IDA_INPUT_METHOD_STRING = new STRING_ID("IDA_INPUT_METHOD_STRING", 6);
            IDA_UPDATE = new STRING_ID("IDA_UPDATE", 7);
            IDA_CANCEL = new STRING_ID("IDA_CANCEL", 8);
            IDA_RUNTIME_UPDATE_MESSAGE = new STRING_ID("IDA_RUNTIME_UPDATE_MESSAGE", 9);
            IDA_OK = new STRING_ID("IDA_OK", 10);
            IDA_DEBUGGER_ENTERIP_MESSAGE = new STRING_ID("IDA_DEBUGGER_ENTERIP_MESSAGE", 11);
            IDA_DEBUGGER_ERROR_MESSAGE = new STRING_ID("IDA_DEBUGGER_ERROR_MESSAGE", 12);
            IDA_CONTINUE = new STRING_ID("IDA_CONTINUE", 13);
            IDA_DEBUGGER_LISTEN_ERROR_TITLE = new STRING_ID("IDA_DEBUGGER_LISTEN_ERROR_TITLE", 14);
            IDA_DEBUGGER_LISTEN_ERROR_MESSAGE = new STRING_ID("IDA_DEBUGGER_LISTEN_ERROR_MESSAGE", 15);
            IDA_SELECT_TEXT = new STRING_ID("IDA_SELECT_TEXT", 16);
            IDA_STOP_SELECTING_TEXT = new STRING_ID("IDA_STOP_SELECTING_TEXT", 17);
            IDA_SELECT_ALL = new STRING_ID("IDA_SELECT_ALL", 18);
            STRING_ID astring_id[] = new STRING_ID[19];
            astring_id[0] = IDA_CONTEXT_MENU_TITLE_STRING;
            astring_id[1] = IDA_CUT_ALL_STRING;
            astring_id[2] = IDA_CUT_STRING;
            astring_id[3] = IDA_PASTE_STRING;
            astring_id[4] = IDA_COPY_ALL_STRING;
            astring_id[5] = IDA_COPY_STRING;
            astring_id[6] = IDA_INPUT_METHOD_STRING;
            astring_id[7] = IDA_UPDATE;
            astring_id[8] = IDA_CANCEL;
            astring_id[9] = IDA_RUNTIME_UPDATE_MESSAGE;
            astring_id[10] = IDA_OK;
            astring_id[11] = IDA_DEBUGGER_ENTERIP_MESSAGE;
            astring_id[12] = IDA_DEBUGGER_ERROR_MESSAGE;
            astring_id[13] = IDA_CONTINUE;
            astring_id[14] = IDA_DEBUGGER_LISTEN_ERROR_TITLE;
            astring_id[15] = IDA_DEBUGGER_LISTEN_ERROR_MESSAGE;
            astring_id[16] = IDA_SELECT_TEXT;
            astring_id[17] = IDA_STOP_SELECTING_TEXT;
            astring_id[18] = IDA_SELECT_ALL;
            $VALUES = astring_id;
        }

        private STRING_ID(String s, int i)
        {
            super(s, i);
        }
    }


    private static final String ANDROID_LOCALE_TAG = "AndroidLocale";
    private static final String LANG_ENGLISH = "en";
    private static final int MAX_LOCALE_NAME_SIZE = 10;

    public AndroidLocale()
    {
    }

    public static String GetLocale()
    {
        String s1;
label0:
        {
            String s = "en";
            Locale locale = Locale.getDefault();
            if (locale != null)
            {
                s1 = locale.getLanguage();
                if (s1 != null)
                {
                    if (!s1.equals("zh"))
                    {
                        break label0;
                    }
                    StringBuilder stringbuilder = new StringBuilder(10);
                    stringbuilder.append(s1);
                    stringbuilder.append("_");
                    stringbuilder.append(locale.getCountry());
                    s = stringbuilder.toString();
                }
            }
            return s;
        }
        return s1;
    }

    public static String GetLocalizedString(STRING_ID string_id)
    {
        return getLocalString(string_id.ordinal(), GetLocale());
    }

    private static native String getLocalString(int i, String s);
}
