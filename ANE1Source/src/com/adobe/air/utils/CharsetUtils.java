// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air.utils;

import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CharsetEncoder;
import java.nio.charset.CodingErrorAction;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedMap;

public class CharsetUtils
{

    public static final byte EMPTY_BARRAY[] = new byte[0];
    public static final char EMPTY_CARRAY[] = new char[0];
    public static final String LOG_TAG = com/adobe/air/utils/CharsetUtils.toString();

    public CharsetUtils()
    {
    }

    public static byte[] ConvertMBCStoUTF16(byte abyte0[], String s)
    {
        byte abyte1[];
        try
        {
            CharBuffer charbuffer = DecodeBuffer(abyte0, s);
            abyte1 = Charset.forName("UTF-16LE").encode(charbuffer).array();
        }
        catch (Exception exception)
        {
            return EMPTY_BARRAY;
        }
        return abyte1;
    }

    public static byte[] ConvertMBCStoUTF8(byte abyte0[], String s)
    {
        byte abyte1[];
        try
        {
            CharBuffer charbuffer = DecodeBuffer(abyte0, s);
            abyte1 = Charset.forName("UTF-8").newEncoder().encode(charbuffer).array();
        }
        catch (Exception exception)
        {
            return EMPTY_BARRAY;
        }
        return abyte1;
    }

    public static byte[] ConvertUTF16toMBCS(byte abyte0[], String s)
    {
        byte abyte1[];
        try
        {
            CharBuffer charbuffer = DecodeBuffer(abyte0, "UTF-16LE");
            CharsetEncoder charsetencoder = Charset.forName(s).newEncoder();
            charsetencoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
            abyte1 = charsetencoder.encode(charbuffer).array();
        }
        catch (Exception exception)
        {
            return EMPTY_BARRAY;
        }
        return abyte1;
    }

    public static byte[] ConvertUTF8toMBCS(byte abyte0[], String s)
    {
        byte abyte1[];
        try
        {
            CharBuffer charbuffer = DecodeBuffer(abyte0, "UTF-8");
            CharsetEncoder charsetencoder = Charset.forName(s).newEncoder();
            charsetencoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
            abyte1 = charsetencoder.encode(charbuffer).array();
        }
        catch (Exception exception)
        {
            return EMPTY_BARRAY;
        }
        return abyte1;
    }

    public static CharBuffer DecodeBuffer(byte abyte0[], String s)
        throws CharacterCodingException
    {
        CharsetDecoder charsetdecoder = Charset.forName(s).newDecoder();
        charsetdecoder.onUnmappableCharacter(CodingErrorAction.REPLACE);
        return charsetdecoder.decode(ByteBuffer.wrap(abyte0));
    }

    public static String QueryAvailableCharsets()
    {
        Iterator iterator = Charset.availableCharsets().keySet().iterator();
        String s;
        String s1;
        for (s = ""; iterator.hasNext(); s = (new StringBuilder()).append(s).append(s1).append(" ").toString())
        {
            s1 = (String)iterator.next();
        }

        return s;
    }

    public static char[] mbcsToUtf16(byte abyte0[])
    {
        char ac[];
        char ac1[];
        try
        {
            ac = Charset.forName("ISO-8859-1").newDecoder().decode(ByteBuffer.wrap(abyte0)).array();
        }
        catch (Exception exception)
        {
            return EMPTY_CARRAY;
        }
        ac1 = ac;
        if (ac1 == null)
        {
            ac1 = EMPTY_CARRAY;
        }
        return ac1;
    }

    public static byte[] mbcsToUtf8(byte abyte0[])
    {
        return utf16ToUtf8(mbcsToUtf16(abyte0));
    }

    public static byte[] utf16ToUtf8(char ac[])
    {
        byte abyte0[];
        byte abyte1[];
        try
        {
            abyte0 = Charset.forName("UTF-8").newEncoder().encode(CharBuffer.wrap(ac)).array();
        }
        catch (Exception exception)
        {
            return EMPTY_BARRAY;
        }
        abyte1 = abyte0;
        if (abyte1 == null)
        {
            abyte1 = EMPTY_BARRAY;
        }
        return abyte1;
    }

}
