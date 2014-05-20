// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import com.facebook.Settings;
import java.util.Collection;

// Referenced classes of package com.facebook.internal:
//            Utility

public final class ServerProtocol
{

    private static final String DIALOG_AUTHORITY_FORMAT = "m.%s";
    public static final String DIALOG_PARAM_ACCESS_TOKEN = "access_token";
    public static final String DIALOG_PARAM_APP_ID = "app_id";
    public static final String DIALOG_PARAM_AUTH_TYPE = "auth_type";
    public static final String DIALOG_PARAM_CLIENT_ID = "client_id";
    public static final String DIALOG_PARAM_DISPLAY = "display";
    public static final String DIALOG_PARAM_E2E = "e2e";
    public static final String DIALOG_PARAM_LEGACY_OVERRIDE = "legacy_override";
    public static final String DIALOG_PARAM_REDIRECT_URI = "redirect_uri";
    public static final String DIALOG_PARAM_RESPONSE_TYPE = "response_type";
    public static final String DIALOG_PARAM_RETURN_SCOPES = "return_scopes";
    public static final String DIALOG_PARAM_SCOPE = "scope";
    public static final String DIALOG_PATH = "dialog/";
    public static final String DIALOG_REREQUEST_AUTH_TYPE = "rerequest";
    public static final String DIALOG_RESPONSE_TYPE_TOKEN = "token";
    public static final String DIALOG_RETURN_SCOPES_TRUE = "true";
    public static final String GRAPH_API_VERSION = "v2.0";
    private static final String GRAPH_URL_FORMAT = "https://graph.%s";
    private static final String GRAPH_VIDEO_URL_FORMAT = "https://graph-video.%s";
    private static final String LEGACY_API_VERSION = "v1.0";
    public static final String REST_METHOD_BASE = "method";
    private static final String REST_URL_FORMAT = "https://api.%s";
    public static final Collection errorsProxyAuthDisabled = Utility.unmodifiableCollection(new String[] {
        "service_disabled", "AndroidAuthKillSwitchException"
    });
    public static final Collection errorsUserCanceled = Utility.unmodifiableCollection(new String[] {
        "access_denied", "OAuthAccessDeniedException"
    });

    public ServerProtocol()
    {
    }

    public static final String getAPIVersion()
    {
        if (Settings.getPlatformCompatibilityEnabled())
        {
            return "v1.0";
        } else
        {
            return "v2.0";
        }
    }

    public static final String getDialogAuthority()
    {
        Object aobj[] = new Object[1];
        aobj[0] = Settings.getFacebookDomain();
        return String.format("m.%s", aobj);
    }

    public static final String getGraphUrlBase()
    {
        Object aobj[] = new Object[1];
        aobj[0] = Settings.getFacebookDomain();
        return String.format("https://graph.%s", aobj);
    }

    public static final String getGraphVideoUrlBase()
    {
        Object aobj[] = new Object[1];
        aobj[0] = Settings.getFacebookDomain();
        return String.format("https://graph-video.%s", aobj);
    }

    public static final String getRestUrlBase()
    {
        Object aobj[] = new Object[1];
        aobj[0] = Settings.getFacebookDomain();
        return String.format("https://api.%s", aobj);
    }

}
