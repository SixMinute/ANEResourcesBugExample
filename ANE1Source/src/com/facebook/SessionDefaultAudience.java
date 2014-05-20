// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;


public final class SessionDefaultAudience extends Enum
{

    private static final SessionDefaultAudience ENUM$VALUES[];
    public static final SessionDefaultAudience EVERYONE;
    public static final SessionDefaultAudience FRIENDS;
    public static final SessionDefaultAudience NONE;
    public static final SessionDefaultAudience ONLY_ME;
    private final String nativeProtocolAudience;

    private SessionDefaultAudience(String s, int i, String s1)
    {
        super(s, i);
        nativeProtocolAudience = s1;
    }

    public static SessionDefaultAudience valueOf(String s)
    {
        return (SessionDefaultAudience)Enum.valueOf(com/facebook/SessionDefaultAudience, s);
    }

    public static SessionDefaultAudience[] values()
    {
        SessionDefaultAudience asessiondefaultaudience[] = ENUM$VALUES;
        int i = asessiondefaultaudience.length;
        SessionDefaultAudience asessiondefaultaudience1[] = new SessionDefaultAudience[i];
        System.arraycopy(asessiondefaultaudience, 0, asessiondefaultaudience1, 0, i);
        return asessiondefaultaudience1;
    }

    String getNativeProtocolAudience()
    {
        return nativeProtocolAudience;
    }

    static 
    {
        NONE = new SessionDefaultAudience("NONE", 0, null);
        ONLY_ME = new SessionDefaultAudience("ONLY_ME", 1, "SELF");
        FRIENDS = new SessionDefaultAudience("FRIENDS", 2, "ALL_FRIENDS");
        EVERYONE = new SessionDefaultAudience("EVERYONE", 3, "EVERYONE");
        SessionDefaultAudience asessiondefaultaudience[] = new SessionDefaultAudience[4];
        asessiondefaultaudience[0] = NONE;
        asessiondefaultaudience[1] = ONLY_ME;
        asessiondefaultaudience[2] = FRIENDS;
        asessiondefaultaudience[3] = EVERYONE;
        ENUM$VALUES = asessiondefaultaudience;
    }
}
