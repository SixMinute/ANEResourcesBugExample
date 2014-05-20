// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package android.support.v4.text;

import java.util.Locale;

// Referenced classes of package android.support.v4.text:
//            TextDirectionHeuristicsCompat, TextUtilsCompat, TextDirectionHeuristicCompat

public final class BidiFormatter
{
    public static final class Builder
    {

        private int mFlags;
        private boolean mIsRtlContext;
        private TextDirectionHeuristicCompat mTextDirectionHeuristicCompat;

        private static BidiFormatter getDefaultInstanceFromContext(boolean flag)
        {
            if (flag)
            {
                return BidiFormatter.DEFAULT_RTL_INSTANCE;
            } else
            {
                return BidiFormatter.DEFAULT_LTR_INSTANCE;
            }
        }

        private void initialize(boolean flag)
        {
            mIsRtlContext = flag;
            mTextDirectionHeuristicCompat = BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC;
            mFlags = 2;
        }

        public BidiFormatter build()
        {
            if (mFlags == 2 && mTextDirectionHeuristicCompat == BidiFormatter.DEFAULT_TEXT_DIRECTION_HEURISTIC)
            {
                return getDefaultInstanceFromContext(mIsRtlContext);
            } else
            {
                return new BidiFormatter(mIsRtlContext, mFlags, mTextDirectionHeuristicCompat);
            }
        }

        public Builder setTextDirectionHeuristic(TextDirectionHeuristicCompat textdirectionheuristiccompat)
        {
            mTextDirectionHeuristicCompat = textdirectionheuristiccompat;
            return this;
        }

        public Builder stereoReset(boolean flag)
        {
            if (flag)
            {
                mFlags = 2 | mFlags;
                return this;
            } else
            {
                mFlags = -3 & mFlags;
                return this;
            }
        }

        public Builder()
        {
            initialize(BidiFormatter.isRtlLocale(Locale.getDefault()));
        }

        public Builder(Locale locale)
        {
            initialize(BidiFormatter.isRtlLocale(locale));
        }

        public Builder(boolean flag)
        {
            initialize(flag);
        }
    }

    private static class DirectionalityEstimator
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

        DirectionalityEstimator(String s, boolean flag)
        {
            text = s;
            isHtml = flag;
            length = s.length();
        }
    }


    private static final int DEFAULT_FLAGS = 2;
    private static final BidiFormatter DEFAULT_LTR_INSTANCE;
    private static final BidiFormatter DEFAULT_RTL_INSTANCE;
    private static TextDirectionHeuristicCompat DEFAULT_TEXT_DIRECTION_HEURISTIC;
    private static final int DIR_LTR = -1;
    private static final int DIR_RTL = 1;
    private static final int DIR_UNKNOWN = 0;
    private static final String EMPTY_STRING = "";
    private static final int FLAG_STEREO_RESET = 2;
    private static final char LRE = 8234;
    private static final char LRM = 8206;
    private static final String LRM_STRING = Character.toString('\u200E');
    private static final char PDF = 8236;
    private static final char RLE = 8235;
    private static final char RLM = 8207;
    private static final String RLM_STRING = Character.toString('\u200F');
    private final TextDirectionHeuristicCompat mDefaultTextDirectionHeuristicCompat;
    private final int mFlags;
    private final boolean mIsRtlContext;

    private BidiFormatter(boolean flag, int i, TextDirectionHeuristicCompat textdirectionheuristiccompat)
    {
        mIsRtlContext = flag;
        mFlags = i;
        mDefaultTextDirectionHeuristicCompat = textdirectionheuristiccompat;
    }


    private static int getEntryDir(String s)
    {
        return (new DirectionalityEstimator(s, false)).getEntryDir();
    }

    private static int getExitDir(String s)
    {
        return (new DirectionalityEstimator(s, false)).getExitDir();
    }

    public static BidiFormatter getInstance()
    {
        return (new Builder()).build();
    }

    public static BidiFormatter getInstance(Locale locale)
    {
        return (new Builder(locale)).build();
    }

    public static BidiFormatter getInstance(boolean flag)
    {
        return (new Builder(flag)).build();
    }

    private static boolean isRtlLocale(Locale locale)
    {
        return TextUtilsCompat.getLayoutDirectionFromLocale(locale) == 1;
    }

    private String markAfter(String s, TextDirectionHeuristicCompat textdirectionheuristiccompat)
    {
        boolean flag = textdirectionheuristiccompat.isRtl(s, 0, s.length());
        if (!mIsRtlContext && (flag || getExitDir(s) == 1))
        {
            return LRM_STRING;
        }
        if (mIsRtlContext && (!flag || getExitDir(s) == -1))
        {
            return RLM_STRING;
        } else
        {
            return "";
        }
    }

    private String markBefore(String s, TextDirectionHeuristicCompat textdirectionheuristiccompat)
    {
        boolean flag = textdirectionheuristiccompat.isRtl(s, 0, s.length());
        if (!mIsRtlContext && (flag || getEntryDir(s) == 1))
        {
            return LRM_STRING;
        }
        if (mIsRtlContext && (!flag || getEntryDir(s) == -1))
        {
            return RLM_STRING;
        } else
        {
            return "";
        }
    }

    public boolean getStereoReset()
    {
        return (2 & mFlags) != 0;
    }

    public boolean isRtl(String s)
    {
        return mDefaultTextDirectionHeuristicCompat.isRtl(s, 0, s.length());
    }

    public boolean isRtlContext()
    {
        return mIsRtlContext;
    }

    public String unicodeWrap(String s)
    {
        return unicodeWrap(s, mDefaultTextDirectionHeuristicCompat, true);
    }

    public String unicodeWrap(String s, TextDirectionHeuristicCompat textdirectionheuristiccompat)
    {
        return unicodeWrap(s, textdirectionheuristiccompat, true);
    }

    public String unicodeWrap(String s, TextDirectionHeuristicCompat textdirectionheuristiccompat, boolean flag)
    {
        boolean flag1 = textdirectionheuristiccompat.isRtl(s, 0, s.length());
        StringBuilder stringbuilder = new StringBuilder();
        if (getStereoReset() && flag)
        {
            TextDirectionHeuristicCompat textdirectionheuristiccompat2;
            if (flag1)
            {
                textdirectionheuristiccompat2 = TextDirectionHeuristicsCompat.RTL;
            } else
            {
                textdirectionheuristiccompat2 = TextDirectionHeuristicsCompat.LTR;
            }
            stringbuilder.append(markBefore(s, textdirectionheuristiccompat2));
        }
        if (flag1 != mIsRtlContext)
        {
            char c;
            if (flag1)
            {
                c = '\u202B';
            } else
            {
                c = '\u202A';
            }
            stringbuilder.append(c);
            stringbuilder.append(s);
            stringbuilder.append('\u202C');
        } else
        {
            stringbuilder.append(s);
        }
        if (flag)
        {
            TextDirectionHeuristicCompat textdirectionheuristiccompat1;
            if (flag1)
            {
                textdirectionheuristiccompat1 = TextDirectionHeuristicsCompat.RTL;
            } else
            {
                textdirectionheuristiccompat1 = TextDirectionHeuristicsCompat.LTR;
            }
            stringbuilder.append(markAfter(s, textdirectionheuristiccompat1));
        }
        return stringbuilder.toString();
    }

    public String unicodeWrap(String s, boolean flag)
    {
        return unicodeWrap(s, mDefaultTextDirectionHeuristicCompat, flag);
    }

    static 
    {
        DEFAULT_TEXT_DIRECTION_HEURISTIC = TextDirectionHeuristicsCompat.FIRSTSTRONG_LTR;
        DEFAULT_LTR_INSTANCE = new BidiFormatter(false, 2, DEFAULT_TEXT_DIRECTION_HEURISTIC);
        DEFAULT_RTL_INSTANCE = new BidiFormatter(true, 2, DEFAULT_TEXT_DIRECTION_HEURISTIC);
    }




}
