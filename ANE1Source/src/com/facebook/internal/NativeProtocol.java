// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.facebook.FacebookException;
import com.facebook.FacebookOperationCanceledException;
import com.facebook.Settings;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.facebook.internal:
//            Utility

public final class NativeProtocol
{
    private static class KatanaAppInfo extends NativeAppInfo
    {

        static final String KATANA_PACKAGE = "com.facebook.katana";

        protected String getPackage()
        {
            return "com.facebook.katana";
        }

        private KatanaAppInfo()
        {
            super(null);
        }

        KatanaAppInfo(KatanaAppInfo katanaappinfo)
        {
            this();
        }
    }

    private static class MessengerAppInfo extends NativeAppInfo
    {

        static final String MESSENGER_PACKAGE = "com.facebook.orca";

        protected String getPackage()
        {
            return "com.facebook.orca";
        }

        private MessengerAppInfo()
        {
            super(null);
        }

        MessengerAppInfo(MessengerAppInfo messengerappinfo)
        {
            this();
        }
    }

    private static abstract class NativeAppInfo
    {

        private static final String FBI_HASH = "a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc";
        private static final String FBL_HASH = "5e8f16062ea3cd2c4a0d547876baa6f38cabf625";
        private static final String FBR_HASH = "8a3c4b262d721acd49a4bf97d5213199c86fa2b9";
        private static final HashSet validAppSignatureHashes = buildAppSignatureHashes();

        private static HashSet buildAppSignatureHashes()
        {
            HashSet hashset = new HashSet();
            hashset.add("8a3c4b262d721acd49a4bf97d5213199c86fa2b9");
            hashset.add("a4b7452e2ed8f5f191058ca7bbfd26b0d3214bfc");
            hashset.add("5e8f16062ea3cd2c4a0d547876baa6f38cabf625");
            return hashset;
        }

        protected abstract String getPackage();

        public boolean validateSignature(Context context, String s)
        {
            String s1 = Build.BRAND;
            int i = context.getApplicationInfo().flags;
            if (s1.startsWith("generic") && (i & 2) != 0)
            {
                return true;
            }
            PackageInfo packageinfo;
            Signature asignature[];
            int j;
            int k;
            try
            {
                packageinfo = context.getPackageManager().getPackageInfo(s, 64);
            }
            catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
            {
                return false;
            }
            asignature = packageinfo.signatures;
            j = asignature.length;
            k = 0;
            do
            {
                if (k >= j)
                {
                    return false;
                }
                String s2 = Utility.sha1hash(asignature[k].toByteArray());
                if (validAppSignatureHashes.contains(s2))
                {
                    return true;
                }
                k++;
            } while (true);
        }


        private NativeAppInfo()
        {
        }

        NativeAppInfo(NativeAppInfo nativeappinfo)
        {
            this();
        }
    }

    private static class WakizashiAppInfo extends NativeAppInfo
    {

        static final String WAKIZASHI_PACKAGE = "com.facebook.wakizashi";

        protected String getPackage()
        {
            return "com.facebook.wakizashi";
        }

        private WakizashiAppInfo()
        {
            super(null);
        }

        WakizashiAppInfo(WakizashiAppInfo wakizashiappinfo)
        {
            this();
        }
    }


    public static final String ACTION_FEED_DIALOG = "com.facebook.platform.action.request.FEED_DIALOG";
    public static final String ACTION_FEED_DIALOG_REPLY = "com.facebook.platform.action.reply.FEED_DIALOG";
    public static final String ACTION_MESSAGE_DIALOG = "com.facebook.platform.action.request.MESSAGE_DIALOG";
    public static final String ACTION_MESSAGE_DIALOG_REPLY = "com.facebook.platform.action.reply.MESSAGE_DIALOG";
    public static final String ACTION_OGACTIONPUBLISH_DIALOG = "com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG";
    public static final String ACTION_OGACTIONPUBLISH_DIALOG_REPLY = "com.facebook.platform.action.reply.OGACTIONPUBLISH_DIALOG";
    public static final String ACTION_OGMESSAGEPUBLISH_DIALOG = "com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG";
    public static final String ACTION_OGMESSAGEPUBLISH_DIALOG_REPLY = "com.facebook.platform.action.reply.OGMESSAGEPUBLISH_DIALOG";
    public static final String AUDIENCE_EVERYONE = "EVERYONE";
    public static final String AUDIENCE_FRIENDS = "ALL_FRIENDS";
    public static final String AUDIENCE_ME = "SELF";
    private static final String CONTENT_SCHEME = "content://";
    public static final int DIALOG_REQUEST_CODE = 64207;
    public static final String ERROR_APPLICATION_ERROR = "ApplicationError";
    public static final String ERROR_NETWORK_ERROR = "NetworkError";
    public static final String ERROR_PERMISSION_DENIED = "PermissionDenied";
    public static final String ERROR_PROTOCOL_ERROR = "ProtocolError";
    public static final String ERROR_SERVICE_DISABLED = "ServiceDisabled";
    public static final String ERROR_UNKNOWN_ERROR = "UnknownError";
    public static final String ERROR_USER_CANCELED = "UserCanceled";
    public static final String EXTRA_ACCESS_TOKEN = "com.facebook.platform.extra.ACCESS_TOKEN";
    public static final String EXTRA_ACTION = "com.facebook.platform.extra.ACTION";
    public static final String EXTRA_ACTION_TYPE = "com.facebook.platform.extra.ACTION_TYPE";
    public static final String EXTRA_APPLICATION_ID = "com.facebook.platform.extra.APPLICATION_ID";
    public static final String EXTRA_APPLICATION_NAME = "com.facebook.platform.extra.APPLICATION_NAME";
    public static final String EXTRA_DATA_FAILURES_FATAL = "com.facebook.platform.extra.DATA_FAILURES_FATAL";
    public static final String EXTRA_DESCRIPTION = "com.facebook.platform.extra.DESCRIPTION";
    public static final String EXTRA_EXPIRES_SECONDS_SINCE_EPOCH = "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH";
    public static final String EXTRA_FRIEND_TAGS = "com.facebook.platform.extra.FRIENDS";
    public static final String EXTRA_GET_INSTALL_DATA_PACKAGE = "com.facebook.platform.extra.INSTALLDATA_PACKAGE";
    public static final String EXTRA_IMAGE = "com.facebook.platform.extra.IMAGE";
    public static final String EXTRA_LINK = "com.facebook.platform.extra.LINK";
    public static final String EXTRA_PERMISSIONS = "com.facebook.platform.extra.PERMISSIONS";
    public static final String EXTRA_PHOTOS = "com.facebook.platform.extra.PHOTOS";
    public static final String EXTRA_PLACE_TAG = "com.facebook.platform.extra.PLACE";
    public static final String EXTRA_PREVIEW_PROPERTY_NAME = "com.facebook.platform.extra.PREVIEW_PROPERTY_NAME";
    public static final String EXTRA_PROTOCOL_ACTION = "com.facebook.platform.protocol.PROTOCOL_ACTION";
    public static final String EXTRA_PROTOCOL_CALL_ID = "com.facebook.platform.protocol.CALL_ID";
    public static final String EXTRA_PROTOCOL_VERSION = "com.facebook.platform.protocol.PROTOCOL_VERSION";
    static final String EXTRA_PROTOCOL_VERSIONS = "com.facebook.platform.extra.PROTOCOL_VERSIONS";
    public static final String EXTRA_REF = "com.facebook.platform.extra.REF";
    public static final String EXTRA_SUBTITLE = "com.facebook.platform.extra.SUBTITLE";
    public static final String EXTRA_TITLE = "com.facebook.platform.extra.TITLE";
    private static final NativeAppInfo FACEBOOK_APP_INFO = new KatanaAppInfo(null);
    private static final String FACEBOOK_PROXY_AUTH_ACTIVITY = "com.facebook.katana.ProxyAuth";
    public static final String FACEBOOK_PROXY_AUTH_APP_ID_KEY = "client_id";
    public static final String FACEBOOK_PROXY_AUTH_E2E_KEY = "e2e";
    public static final String FACEBOOK_PROXY_AUTH_PERMISSIONS_KEY = "scope";
    private static final String FACEBOOK_TOKEN_REFRESH_ACTIVITY = "com.facebook.katana.platform.TokenRefreshService";
    public static final String IMAGE_URL_KEY = "url";
    public static final String IMAGE_USER_GENERATED_KEY = "user_generated";
    static final String INTENT_ACTION_PLATFORM_ACTIVITY = "com.facebook.platform.PLATFORM_ACTIVITY";
    static final String INTENT_ACTION_PLATFORM_SERVICE = "com.facebook.platform.PLATFORM_SERVICE";
    private static final List KNOWN_PROTOCOL_VERSIONS;
    public static final int MESSAGE_GET_ACCESS_TOKEN_REPLY = 0x10001;
    public static final int MESSAGE_GET_ACCESS_TOKEN_REQUEST = 0x10000;
    public static final int MESSAGE_GET_INSTALL_DATA_REPLY = 0x10005;
    public static final int MESSAGE_GET_INSTALL_DATA_REQUEST = 0x10004;
    static final int MESSAGE_GET_PROTOCOL_VERSIONS_REPLY = 0x10003;
    static final int MESSAGE_GET_PROTOCOL_VERSIONS_REQUEST = 0x10002;
    public static final int NO_PROTOCOL_AVAILABLE = -1;
    public static final String OPEN_GRAPH_CREATE_OBJECT_KEY = "fbsdk:create_object";
    private static final String PLATFORM_ASYNC_APPCALL_ACTION = "com.facebook.platform.AppCallResultBroadcast";
    private static final String PLATFORM_PROVIDER_VERSIONS = ".provider.PlatformProvider/versions";
    private static final String PLATFORM_PROVIDER_VERSION_COLUMN = "version";
    public static final int PROTOCOL_VERSION_20121101 = 0x133060d;
    public static final int PROTOCOL_VERSION_20130502 = 0x1332ac6;
    public static final int PROTOCOL_VERSION_20130618 = 0x1332b3a;
    public static final int PROTOCOL_VERSION_20131107 = 0x1332d23;
    public static final int PROTOCOL_VERSION_20140204 = 0x13350ac;
    public static final int PROTOCOL_VERSION_20140324 = 0x1335124;
    public static final String STATUS_ERROR_CODE = "com.facebook.platform.status.ERROR_CODE";
    public static final String STATUS_ERROR_DESCRIPTION = "com.facebook.platform.status.ERROR_DESCRIPTION";
    public static final String STATUS_ERROR_JSON = "com.facebook.platform.status.ERROR_JSON";
    public static final String STATUS_ERROR_SUBCODE = "com.facebook.platform.status.ERROR_SUBCODE";
    public static final String STATUS_ERROR_TYPE = "com.facebook.platform.status.ERROR_TYPE";
    private static Map actionToAppInfoMap = buildActionToAppInfoMap();
    private static List facebookAppInfoList = buildFacebookAppList();

    public NativeProtocol()
    {
    }

    private static Map buildActionToAppInfoMap()
    {
        HashMap hashmap = new HashMap();
        ArrayList arraylist = new ArrayList();
        arraylist.add(new MessengerAppInfo(null));
        hashmap.put("com.facebook.platform.action.request.OGACTIONPUBLISH_DIALOG", facebookAppInfoList);
        hashmap.put("com.facebook.platform.action.request.FEED_DIALOG", facebookAppInfoList);
        hashmap.put("com.facebook.platform.action.request.MESSAGE_DIALOG", arraylist);
        hashmap.put("com.facebook.platform.action.request.OGMESSAGEPUBLISH_DIALOG", arraylist);
        return hashmap;
    }

    private static List buildFacebookAppList()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(FACEBOOK_APP_INFO);
        arraylist.add(new WakizashiAppInfo(null));
        return arraylist;
    }

    private static Uri buildPlatformProviderVersionURI(NativeAppInfo nativeappinfo)
    {
        return Uri.parse((new StringBuilder("content://")).append(nativeappinfo.getPackage()).append(".provider.PlatformProvider/versions").toString());
    }

    public static Intent createPlatformActivityIntent(Context context, String s, int i, Bundle bundle)
    {
        Intent intent = findActivityIntent(context, "com.facebook.platform.PLATFORM_ACTIVITY", s);
        if (intent == null)
        {
            return null;
        } else
        {
            intent.putExtras(bundle).putExtra("com.facebook.platform.protocol.PROTOCOL_VERSION", i).putExtra("com.facebook.platform.protocol.PROTOCOL_ACTION", s);
            return intent;
        }
    }

    public static Intent createPlatformServiceIntent(Context context)
    {
        Iterator iterator = facebookAppInfoList.iterator();
        Intent intent;
        do
        {
            if (!iterator.hasNext())
            {
                return null;
            }
            NativeAppInfo nativeappinfo = (NativeAppInfo)iterator.next();
            intent = validateServiceIntent(context, (new Intent("com.facebook.platform.PLATFORM_SERVICE")).setPackage(nativeappinfo.getPackage()).addCategory("android.intent.category.DEFAULT"), nativeappinfo);
        } while (intent == null);
        return intent;
    }

    public static Intent createProxyAuthIntent(Context context, String s, List list, String s1, boolean flag)
    {
        Iterator iterator = facebookAppInfoList.iterator();
        Intent intent1;
        do
        {
            if (!iterator.hasNext())
            {
                return null;
            }
            NativeAppInfo nativeappinfo = (NativeAppInfo)iterator.next();
            Intent intent = (new Intent()).setClassName(nativeappinfo.getPackage(), "com.facebook.katana.ProxyAuth").putExtra("client_id", s);
            if (!Utility.isNullOrEmpty(list))
            {
                intent.putExtra("scope", TextUtils.join(",", list));
            }
            if (!Utility.isNullOrEmpty(s1))
            {
                intent.putExtra("e2e", s1);
            }
            intent.putExtra("response_type", "token");
            intent.putExtra("return_scopes", "true");
            if (!Settings.getPlatformCompatibilityEnabled())
            {
                intent.putExtra("legacy_override", "v2.0");
                if (flag)
                {
                    intent.putExtra("auth_type", "rerequest");
                }
            }
            intent1 = validateActivityIntent(context, intent, nativeappinfo);
        } while (intent1 == null);
        return intent1;
    }

    public static Intent createTokenRefreshIntent(Context context)
    {
        Iterator iterator = facebookAppInfoList.iterator();
        Intent intent;
        do
        {
            if (!iterator.hasNext())
            {
                return null;
            }
            NativeAppInfo nativeappinfo = (NativeAppInfo)iterator.next();
            intent = validateServiceIntent(context, (new Intent()).setClassName(nativeappinfo.getPackage(), "com.facebook.katana.platform.TokenRefreshService"), nativeappinfo);
        } while (intent == null);
        return intent;
    }

    private static Intent findActivityIntent(Context context, String s, String s1)
    {
        List list = (List)actionToAppInfoMap.get(s1);
        if (list == null)
        {
            return null;
        }
        Intent intent = null;
        Iterator iterator = list.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return intent;
            }
            NativeAppInfo nativeappinfo = (NativeAppInfo)iterator.next();
            intent = validateActivityIntent(context, (new Intent()).setAction(s).setPackage(nativeappinfo.getPackage()).addCategory("android.intent.category.DEFAULT"), nativeappinfo);
        } while (intent == null);
        return intent;
    }

    public static Exception getErrorFromResult(Intent intent)
    {
        if (!isErrorResult(intent))
        {
            return null;
        }
        String s = intent.getStringExtra("com.facebook.platform.status.ERROR_TYPE");
        String s1 = intent.getStringExtra("com.facebook.platform.status.ERROR_DESCRIPTION");
        if (s.equalsIgnoreCase("UserCanceled"))
        {
            return new FacebookOperationCanceledException(s1);
        } else
        {
            return new FacebookException(s1);
        }
    }

    public static int getLatestAvailableProtocolVersionForAction(Context context, String s, int i)
    {
        return getLatestAvailableProtocolVersionForAppInfoList(context, (List)actionToAppInfoMap.get(s), i);
    }

    private static int getLatestAvailableProtocolVersionForAppInfo(Context context, NativeAppInfo nativeappinfo, int i)
    {
        ContentResolver contentresolver;
        String as[];
        Uri uri;
        Cursor cursor;
        contentresolver = context.getContentResolver();
        as = (new String[] {
            "version"
        });
        uri = buildPlatformProviderVersionURI(nativeappinfo);
        cursor = null;
        Cursor cursor1 = contentresolver.query(uri, as, null, null, null);
        cursor = cursor1;
        if (cursor != null) goto _L2; else goto _L1
_L1:
        int l;
        if (cursor != null)
        {
            cursor.close();
        }
        l = -1;
_L10:
        return l;
_L2:
        HashSet hashset = new HashSet();
_L6:
        if (cursor.moveToNext()) goto _L4; else goto _L3
_L3:
        Iterator iterator = KNOWN_PROTOCOL_VERSIONS.iterator();
_L8:
        boolean flag = iterator.hasNext();
        if (!flag)
        {
            if (cursor != null)
            {
                cursor.close();
            }
            return -1;
        }
          goto _L5
_L4:
        hashset.add(Integer.valueOf(cursor.getInt(cursor.getColumnIndex("version"))));
          goto _L6
        Exception exception;
        exception;
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
_L5:
        Integer integer;
        int j;
        integer = (Integer)iterator.next();
        j = integer.intValue();
        if (j < i)
        {
            if (cursor != null)
            {
                cursor.close();
            }
            return -1;
        }
        if (!hashset.contains(integer)) goto _L8; else goto _L7
_L7:
        int k = integer.intValue();
        l = k;
        if (cursor != null)
        {
            cursor.close();
            return l;
        }
        if (true) goto _L10; else goto _L9
_L9:
    }

    private static int getLatestAvailableProtocolVersionForAppInfoList(Context context, List list, int i)
    {
        if (list == null)
        {
            return -1;
        }
        Iterator iterator = list.iterator();
        int j;
        do
        {
            if (!iterator.hasNext())
            {
                return -1;
            }
            j = getLatestAvailableProtocolVersionForAppInfo(context, (NativeAppInfo)iterator.next(), i);
        } while (j == -1);
        return j;
    }

    public static int getLatestAvailableProtocolVersionForService(Context context, int i)
    {
        return getLatestAvailableProtocolVersionForAppInfoList(context, facebookAppInfoList, i);
    }

    public static boolean isErrorResult(Intent intent)
    {
        return intent.hasExtra("com.facebook.platform.status.ERROR_TYPE");
    }

    static Intent validateActivityIntent(Context context, Intent intent, NativeAppInfo nativeappinfo)
    {
        if (intent == null)
        {
            return null;
        }
        ResolveInfo resolveinfo = context.getPackageManager().resolveActivity(intent, 0);
        if (resolveinfo == null)
        {
            return null;
        }
        if (!nativeappinfo.validateSignature(context, resolveinfo.activityInfo.packageName))
        {
            return null;
        } else
        {
            return intent;
        }
    }

    static Intent validateServiceIntent(Context context, Intent intent, NativeAppInfo nativeappinfo)
    {
        if (intent == null)
        {
            return null;
        }
        ResolveInfo resolveinfo = context.getPackageManager().resolveService(intent, 0);
        if (resolveinfo == null)
        {
            return null;
        }
        if (!nativeappinfo.validateSignature(context, resolveinfo.serviceInfo.packageName))
        {
            return null;
        } else
        {
            return intent;
        }
    }

    static 
    {
        Integer ainteger[] = new Integer[6];
        ainteger[0] = Integer.valueOf(0x1335124);
        ainteger[1] = Integer.valueOf(0x13350ac);
        ainteger[2] = Integer.valueOf(0x1332d23);
        ainteger[3] = Integer.valueOf(0x1332b3a);
        ainteger[4] = Integer.valueOf(0x1332ac6);
        ainteger[5] = Integer.valueOf(0x133060d);
        KNOWN_PROTOCOL_VERSIONS = Arrays.asList(ainteger);
    }
}
