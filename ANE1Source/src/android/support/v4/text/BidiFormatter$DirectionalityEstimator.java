// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.text;


// Referenced classes of package android.support.v4.text:
//            BidiFormatter

private static class length
{

    private static final byte DIR_TYPE_CACHE[];
    private static final int DIR_TYPE_CACHE_SIZE = 1792;
    private int charIndex;
    private final boolean isHtml;
    private char lastChar;
    private final int length;
    private final String text;

    private static byte getCachedDirectionality(char c)
    {
        if (c < '\u0700')
        {
            return DIR_TYPE_CACHE[c];
        } else
        {
            return Character.getDirectionality(c);
        }
    }

    private byte skipEntityBackward()
    {
        int i = charIndex;
        do
        {
            if (charIndex <= 0)
            {
                break;
            }
            String s = text;
            int j = charIndex - 1;
            charIndex = j;
            lastChar = s.charAt(j);
            if (lastChar == '&')
            {
                return 12;
            }
        } while (lastChar != ';');
        charIndex = i;
        lastChar = ';';
        return 13;
    }

    private byte skipEntityForward()
    {
        char c;
        do
        {
            if (charIndex >= length)
            {
                break;
            }
            String s = text;
            int i = charIndex;
            charIndex = i + 1;
            c = s.charAt(i);
            lastChar = c;
        } while (c != ';');
        return 12;
    }

    private byte skipTagBackward()
    {
        int i = charIndex;
        do
        {
            do
            {
                if (charIndex > 0)
                {
                    String s = text;
                    int j = charIndex - 1;
                    charIndex = j;
                    lastChar = s.charAt(j);
                    if (lastChar == '<')
                    {
                        return 12;
                    }
                    if (lastChar != '>')
                    {
                        continue;
                    }
                }
                charIndex = i;
                lastChar = '>';
                return 13;
            } while (lastChar != '"' && lastChar != '\'');
            char c = lastChar;
            char c1;
            do
            {
                if (charIndex <= 0)
                {
                    break;
                }
                String s1 = text;
                int k = charIndex - 1;
                charIndex = k;
                c1 = s1.charAt(k);
                lastChar = c1;
            } while (c1 != c);
        } while (true);
    }

    private byte skipTagForward()
    {
        int i = charIndex;
        while (charIndex < length) 
        {
            String s = text;
            int j = charIndex;
            charIndex = j + 1;
            lastChar = s.charAt(j);
            if (lastChar == '>')
            {
                return 12;
            }
            if (lastChar != '"' && lastChar != '\'')
            {
                break;
            }
            char c = lastChar;
            char c1;
            do
            {
                if (charIndex >= length)
                {
                    break;
                }
                String s1 = text;
                int k = charIndex;
                charIndex = k + 1;
                c1 = s1.charAt(k);
                lastChar = c1;
            } while (c1 != c);
        }
        charIndex = i;
        lastChar = '<';
        return 13;
    }

    byte dirTypeBackward()
    {
        byte byte0;
        lastChar = text.charAt(charIndex - 1);
        if (Character.isLowSurrogate(lastChar))
        {
            int i = Character.codePointBefore(text, charIndex);
            charIndex = charIndex - Character.charCount(i);
            return Character.getDirectionality(i);
        }
        charIndex = charIndex - 1;
        byte0 = getCachedDirectionality(lastChar);
        if (!isHtml) goto _L2; else goto _L1
_L1:
        if (lastChar != '>') goto _L4; else goto _L3
_L3:
        byte0 = skipTagBackward();
_L2:
        return byte0;
_L4:
        if (lastChar == ';')
        {
            byte0 = skipEntityBackward();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    byte dirTypeForward()
    {
        byte byte0;
        lastChar = text.charAt(charIndex);
        if (Character.isHighSurrogate(lastChar))
        {
            int i = Character.codePointAt(text, charIndex);
            charIndex = charIndex + Character.charCount(i);
            return Character.getDirectionality(i);
        }
        charIndex = 1 + charIndex;
        byte0 = getCachedDirectionality(lastChar);
        if (!isHtml) goto _L2; else goto _L1
_L1:
        if (lastChar != '<') goto _L4; else goto _L3
_L3:
        byte0 = skipTagForward();
_L2:
        return byte0;
_L4:
        if (lastChar == '&')
        {
            byte0 = skipEntityForward();
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    int getEntryDir()
    {
        charIndex = 0;
        int i = 0;
        byte byte0 = 0;
        int j = 0;
        do
        {
            if (charIndex < length && j == 0)
            {
                switch (dirTypeForward())
                {
                case 3: // '\003'
                case 4: // '\004'
                case 5: // '\005'
                case 6: // '\006'
                case 7: // '\007'
                case 8: // '\b'
                case 10: // '\n'
                case 11: // '\013'
                case 12: // '\f'
                case 13: // '\r'
                default:
                    j = i;
                    break;

                case 14: // '\016'
                case 15: // '\017'
                    i++;
                    byte0 = -1;
                    break;

                case 16: // '\020'
                case 17: // '\021'
                    i++;
                    byte0 = 1;
                    break;

                case 18: // '\022'
                    i--;
                    byte0 = 0;
                    break;

                case 0: // '\0'
                    if (i == 0)
                    {
                        return -1;
                    }
                    j = i;
                    break;

                case 1: // '\001'
                case 2: // '\002'
                    if (i == 0)
                    {
                        return 1;
                    }
                    j = i;
                    break;

                case 9: // '\t'
                    break;
                }
            } else
            {
                if (j == 0)
                {
                    return 0;
                }
                if (byte0 != 0)
                {
                    return byte0;
                }
                do
                {
                    if (charIndex > 0)
                    {
                        switch (dirTypeBackward())
                        {
                        case 14: // '\016'
                        case 15: // '\017'
                            if (j == i)
                            {
                                return -1;
                            }
                            i--;
                            break;

                        case 16: // '\020'
                        case 17: // '\021'
                            if (j == i)
                            {
                                return 1;
                            }
                            i--;
                            break;

                        case 18: // '\022'
                            i++;
                            break;
                        }
                    } else
                    {
                        return 0;
                    }
                } while (true);
            }
        } while (true);
    }

    int getExitDir()
    {
        charIndex = length;
        int i = 0;
        int j = 0;
        do
        {
            if (charIndex <= 0)
            {
                break;
            }
            switch (dirTypeBackward())
            {
            case 3: // '\003'
            case 4: // '\004'
            case 5: // '\005'
            case 6: // '\006'
            case 7: // '\007'
            case 8: // '\b'
            case 10: // '\n'
            case 11: // '\013'
            case 12: // '\f'
            case 13: // '\r'
            default:
                if (j == 0)
                {
                    j = i;
                }
                break;

            case 0: // '\0'
                if (i == 0)
                {
                    return -1;
                }
                if (j == 0)
                {
                    j = i;
                }
                break;

            case 14: // '\016'
            case 15: // '\017'
                if (j == i)
                {
                    return -1;
                }
                i--;
                break;

            case 1: // '\001'
            case 2: // '\002'
                if (i == 0)
                {
                    return 1;
                }
                if (j == 0)
                {
                    j = i;
                }
                break;

            case 16: // '\020'
            case 17: // '\021'
                if (j == i)
                {
                    return 1;
                }
                i--;
                break;

            case 18: // '\022'
                i++;
                break;

            case 9: // '\t'
                break;
            }
        } while (true);
        return 0;
    }

    static 
    {
        DIR_TYPE_CACHE = new byte[1792];
        for (int i = 0; i < 1792; i++)
        {
            DIR_TYPE_CACHE[i] = Character.getDirectionality(i);
        }

    }

    (String s, boolean flag)
    {
        text = s;
        isHtml = flag;
        length = s.length();
    }
}
