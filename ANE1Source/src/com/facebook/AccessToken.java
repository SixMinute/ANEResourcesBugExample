// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.List;

// Referenced classes of package com.facebook:
//            AccessTokenSource, TokenCachingStrategy, LoggingBehavior, Settings

public final class AccessToken
    implements Serializable
{
    private static class SerializationProxyV1
        implements Serializable
    {

        private static final long serialVersionUID = 0xdd772aee317ab613L;
        private final Date expires;
        private final Date lastRefresh;
        private final List permissions;
        private final AccessTokenSource source;
        private final String token;

        private Object readResolve()
        {
            return new AccessToken(token, expires, permissions, source, lastRefresh);
        }

        private SerializationProxyV1(String s, Date date, List list, AccessTokenSource accesstokensource, Date date1)
        {
            expires = date;
            permissions = list;
            token = s;
            source = accesstokensource;
            lastRefresh = date1;
        }

        SerializationProxyV1(String s, Date date, List list, AccessTokenSource accesstokensource, Date date1, SerializationProxyV1 serializationproxyv1)
        {
            this(s, date, list, accesstokensource, date1);
        }
    }


    static final boolean $assertionsDisabled = false;
    static final String ACCESS_TOKEN_KEY = "access_token";
    private static final Date ALREADY_EXPIRED_EXPIRATION_TIME;
    private static final AccessTokenSource DEFAULT_ACCESS_TOKEN_SOURCE;
    private static final Date DEFAULT_EXPIRATION_TIME;
    private static final Date DEFAULT_LAST_REFRESH_TIME = new Date();
    static final String EXPIRES_IN_KEY = "expires_in";
    private static final Date MAX_DATE;
    private static final Date MIN_DATE;
    private static final long serialVersionUID = 1L;
    private final Date expires;
    private final Date lastRefresh;
    private final List permissions;
    private final AccessTokenSource source;
    private final String token;

    AccessToken(String s, Date date, List list, AccessTokenSource accesstokensource, Date date1)
    {
        if (list == null)
        {
            list = Collections.emptyList();
        }
        expires = date;
        permissions = Collections.unmodifiableList(list);
        token = s;
        source = accesstokensource;
        lastRefresh = date1;
    }

    private void appendPermissions(StringBuilder stringbuilder)
    {
        stringbuilder.append(" permissions:");
        if (permissions == null)
        {
            stringbuilder.append("null");
            return;
        } else
        {
            stringbuilder.append("[");
            stringbuilder.append(TextUtils.join(", ", permissions));
            stringbuilder.append("]");
            return;
        }
    }

    static AccessToken createEmptyToken(List list)
    {
        return new AccessToken("", ALREADY_EXPIRED_EXPIRATION_TIME, list, AccessTokenSource.NONE, DEFAULT_LAST_REFRESH_TIME);
    }

    private static AccessToken createFromBundle(List list, Bundle bundle, AccessTokenSource accesstokensource, Date date)
    {
        String s = bundle.getString("access_token");
        Date date1 = getBundleLongAsDate(bundle, "expires_in", date);
        if (Utility.isNullOrEmpty(s) || date1 == null)
        {
            return null;
        } else
        {
            return new AccessToken(s, date1, list, accesstokensource, new Date());
        }
    }

    static AccessToken createFromCache(Bundle bundle)
    {
        ArrayList arraylist = bundle.getStringArrayList("com.facebook.TokenCachingStrategy.Permissions");
        List list;
        if (arraylist == null)
        {
            list = Collections.emptyList();
        } else
        {
            list = Collections.unmodifiableList(new ArrayList(arraylist));
        }
        return new AccessToken(bundle.getString("com.facebook.TokenCachingStrategy.Token"), TokenCachingStrategy.getDate(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate"), list, TokenCachingStrategy.getSource(bundle), TokenCachingStrategy.getDate(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate"));
    }

    public static AccessToken createFromExistingAccessToken(String s, Date date, Date date1, AccessTokenSource accesstokensource, List list)
    {
        if (date == null)
        {
            date = DEFAULT_EXPIRATION_TIME;
        }
        if (date1 == null)
        {
            date1 = DEFAULT_LAST_REFRESH_TIME;
        }
        if (accesstokensource == null)
        {
            accesstokensource = DEFAULT_ACCESS_TOKEN_SOURCE;
        }
        return new AccessToken(s, date, list, accesstokensource, date1);
    }

    public static AccessToken createFromNativeLinkingIntent(Intent intent)
    {
        Validate.notNull(intent, "intent");
        if (intent.getExtras() == null)
        {
            return null;
        } else
        {
            return createFromBundle(null, intent.getExtras(), AccessTokenSource.FACEBOOK_APPLICATION_WEB, new Date());
        }
    }

    static AccessToken createFromNativeLogin(Bundle bundle, AccessTokenSource accesstokensource)
    {
        Date date = getBundleLongAsDate(bundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
        return createNew(bundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS"), bundle.getString("com.facebook.platform.extra.ACCESS_TOKEN"), date, accesstokensource);
    }

    static AccessToken createFromRefresh(AccessToken accesstoken, Bundle bundle)
    {
        if (!$assertionsDisabled && accesstoken.source != AccessTokenSource.FACEBOOK_APPLICATION_WEB && accesstoken.source != AccessTokenSource.FACEBOOK_APPLICATION_NATIVE && accesstoken.source != AccessTokenSource.FACEBOOK_APPLICATION_SERVICE)
        {
            throw new AssertionError();
        } else
        {
            Date date = getBundleLongAsDate(bundle, "expires_in", new Date(0L));
            String s = bundle.getString("access_token");
            return createNew(accesstoken.getPermissions(), s, date, accesstoken.source);
        }
    }

    static AccessToken createFromString(String s, List list, AccessTokenSource accesstokensource)
    {
        return new AccessToken(s, DEFAULT_EXPIRATION_TIME, list, accesstokensource, DEFAULT_LAST_REFRESH_TIME);
    }

    static AccessToken createFromTokenWithRefreshedPermissions(AccessToken accesstoken, List list)
    {
        return new AccessToken(accesstoken.token, accesstoken.expires, list, accesstoken.source, accesstoken.lastRefresh);
    }

    static AccessToken createFromWebBundle(List list, Bundle bundle, AccessTokenSource accesstokensource)
    {
        Date date = getBundleLongAsDate(bundle, "expires_in", new Date());
        String s = bundle.getString("access_token");
        String s1 = bundle.getString("granted_scopes");
        if (!Utility.isNullOrEmpty(s1))
        {
            list = new ArrayList(Arrays.asList(s1.split(",")));
        }
        return createNew(list, s, date, accesstokensource);
    }

    private static AccessToken createNew(List list, String s, Date date, AccessTokenSource accesstokensource)
    {
        if (Utility.isNullOrEmpty(s) || date == null)
        {
            return createEmptyToken(list);
        } else
        {
            return new AccessToken(s, date, list, accesstokensource, new Date());
        }
    }

    private static Date getBundleLongAsDate(Bundle bundle, String s, Date date)
    {
        if (bundle == null)
        {
            return null;
        }
        Object obj = bundle.get(s);
        long l1;
        if (obj instanceof Long)
        {
            l1 = ((Long)obj).longValue();
        } else
        if (obj instanceof String)
        {
            long l;
            try
            {
                l = Long.parseLong((String)obj);
            }
            catch (NumberFormatException numberformatexception)
            {
                return null;
            }
            l1 = l;
        } else
        {
            return null;
        }
        if (l1 == 0L)
        {
            return new Date(0x7fffffffffffffffL);
        } else
        {
            return new Date(date.getTime() + 1000L * l1);
        }
    }

    private void readObject(ObjectInputStream objectinputstream)
        throws InvalidObjectException
    {
        throw new InvalidObjectException("Cannot readObject, serialization proxy required");
    }

    private String tokenToString()
    {
        if (token == null)
        {
            return "null";
        }
        if (Settings.isLoggingBehaviorEnabled(LoggingBehavior.INCLUDE_ACCESS_TOKENS))
        {
            return token;
        } else
        {
            return "ACCESS_TOKEN_REMOVED";
        }
    }

    private Object writeReplace()
    {
        return new SerializationProxyV1(token, expires, permissions, source, lastRefresh, null);
    }

    public Date getExpires()
    {
        return expires;
    }

    public Date getLastRefresh()
    {
        return lastRefresh;
    }

    public List getPermissions()
    {
        return permissions;
    }

    public AccessTokenSource getSource()
    {
        return source;
    }

    public String getToken()
    {
        return token;
    }

    boolean isInvalid()
    {
        return Utility.isNullOrEmpty(token) || (new Date()).after(expires);
    }

    Bundle toCacheBundle()
    {
        Bundle bundle = new Bundle();
        bundle.putString("com.facebook.TokenCachingStrategy.Token", token);
        TokenCachingStrategy.putDate(bundle, "com.facebook.TokenCachingStrategy.ExpirationDate", expires);
        bundle.putStringArrayList("com.facebook.TokenCachingStrategy.Permissions", new ArrayList(permissions));
        bundle.putSerializable("com.facebook.TokenCachingStrategy.AccessTokenSource", source);
        TokenCachingStrategy.putDate(bundle, "com.facebook.TokenCachingStrategy.LastRefreshDate", lastRefresh);
        return bundle;
    }

    public String toString()
    {
        StringBuilder stringbuilder = new StringBuilder();
        stringbuilder.append("{AccessToken");
        stringbuilder.append(" token:").append(tokenToString());
        appendPermissions(stringbuilder);
        stringbuilder.append("}");
        return stringbuilder.toString();
    }

    static 
    {
        boolean flag;
        if (!com/facebook/AccessToken.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
        MIN_DATE = new Date(0x8000000000000000L);
        MAX_DATE = new Date(0x7fffffffffffffffL);
        DEFAULT_EXPIRATION_TIME = MAX_DATE;
        DEFAULT_ACCESS_TOKEN_SOURCE = AccessTokenSource.FACEBOOK_APPLICATION_WEB;
        ALREADY_EXPIRED_EXPIRATION_TIME = MIN_DATE;
    }
}
