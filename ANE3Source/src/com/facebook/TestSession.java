// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.app.Activity;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.facebook:
//            Session, Request, HttpMethod, Response, 
//            FacebookRequestError, FacebookException, AccessTokenSource, AccessToken, 
//            SessionState, TokenCachingStrategy

public class TestSession extends Session
{
    private static interface FqlResponse
        extends GraphObject
    {

        public abstract GraphObjectList getData();
    }

    private static interface FqlResult
        extends GraphObject
    {

        public abstract GraphObjectList getFqlResultSet();
    }

    private static final class Mode extends Enum
    {

        private static final Mode ENUM$VALUES[];
        public static final Mode PRIVATE;
        public static final Mode SHARED;

        public static Mode valueOf(String s)
        {
            return (Mode)Enum.valueOf(com/facebook/TestSession$Mode, s);
        }

        public static Mode[] values()
        {
            Mode amode[] = ENUM$VALUES;
            int i = amode.length;
            Mode amode1[] = new Mode[i];
            System.arraycopy(amode, 0, amode1, 0, i);
            return amode1;
        }

        static 
        {
            PRIVATE = new Mode("PRIVATE", 0);
            SHARED = new Mode("SHARED", 1);
            Mode amode[] = new Mode[2];
            amode[0] = PRIVATE;
            amode[1] = SHARED;
            ENUM$VALUES = amode;
        }

        private Mode(String s, int i)
        {
            super(s, i);
        }
    }

    private static interface TestAccount
        extends GraphObject
    {

        public abstract String getAccessToken();

        public abstract String getId();

        public abstract String getName();

        public abstract void setName(String s);
    }

    private static final class TestTokenCachingStrategy extends TokenCachingStrategy
    {

        private Bundle bundle;

        public void clear()
        {
            bundle = null;
        }

        public Bundle load()
        {
            return bundle;
        }

        public void save(Bundle bundle1)
        {
            bundle = bundle1;
        }

        private TestTokenCachingStrategy()
        {
        }

        TestTokenCachingStrategy(TestTokenCachingStrategy testtokencachingstrategy)
        {
            this();
        }
    }

    private static interface UserAccount
        extends GraphObject
    {

        public abstract String getName();

        public abstract String getUid();

        public abstract void setName(String s);
    }


    static final boolean $assertionsDisabled = false;
    private static final String LOG_TAG = "FacebookSDK.TestSession";
    private static Map appTestAccounts;
    private static final long serialVersionUID = 1L;
    private static String testApplicationId;
    private static String testApplicationSecret;
    private final Mode mode;
    private final List requestedPermissions;
    private final String sessionUniqueUserTag;
    private String testAccountId;
    private String testAccountUserName;
    private boolean wasAskedToExtendAccessToken;

    TestSession(Activity activity, List list, TokenCachingStrategy tokencachingstrategy, String s, Mode mode1)
    {
        super(activity, testApplicationId, tokencachingstrategy);
        Validate.notNull(list, "permissions");
        Validate.notNullOrEmpty(testApplicationId, "testApplicationId");
        Validate.notNullOrEmpty(testApplicationSecret, "testApplicationSecret");
        sessionUniqueUserTag = s;
        mode = mode1;
        requestedPermissions = list;
    }

    public static TestSession createSessionWithPrivateUser(Activity activity, List list)
    {
        return createTestSession(activity, list, Mode.PRIVATE, null);
    }

    public static TestSession createSessionWithSharedUser(Activity activity, List list)
    {
        return createSessionWithSharedUser(activity, list, null);
    }

    public static TestSession createSessionWithSharedUser(Activity activity, List list, String s)
    {
        return createTestSession(activity, list, Mode.SHARED, s);
    }

    private TestAccount createTestAccountAndFinishAuth()
    {
        Bundle bundle = new Bundle();
        bundle.putString("installed", "true");
        bundle.putString("permissions", getPermissionsString());
        bundle.putString("access_token", getAppAccessToken());
        if (mode == Mode.SHARED)
        {
            Object aobj1[] = new Object[1];
            aobj1[0] = getSharedTestAccountIdentifier();
            bundle.putString("name", String.format("Shared %s Testuser", aobj1));
        }
        Object aobj[] = new Object[1];
        aobj[0] = testApplicationId;
        Response response = (new Request(null, String.format("%s/accounts/test-users", aobj), bundle, HttpMethod.POST)).executeAndWait();
        FacebookRequestError facebookrequesterror = response.getError();
        TestAccount testaccount = (TestAccount)response.getGraphObjectAs(com/facebook/TestSession$TestAccount);
        if (facebookrequesterror != null)
        {
            finishAuthOrReauth(null, facebookrequesterror.getException());
            return null;
        }
        if (!$assertionsDisabled && testaccount == null)
        {
            throw new AssertionError();
        }
        if (mode == Mode.SHARED)
        {
            testaccount.setName(bundle.getString("name"));
            storeTestAccount(testaccount);
        }
        finishAuthWithTestAccount(testaccount);
        return testaccount;
    }

    private static TestSession createTestSession(Activity activity, List list, Mode mode1, String s)
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        if (Utility.isNullOrEmpty(testApplicationId) || Utility.isNullOrEmpty(testApplicationSecret))
        {
            throw new FacebookException("Must provide app ID and secret");
        }
        break MISSING_BLOCK_LABEL_39;
        Exception exception;
        exception;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        throw exception;
        TestSession testsession;
        if (Utility.isNullOrEmpty(list))
        {
            list = Arrays.asList(new String[] {
                "email", "publish_actions"
            });
        }
        TestTokenCachingStrategy testtokencachingstrategy = new TestTokenCachingStrategy(null);
        testsession = new TestSession(activity, list, testtokencachingstrategy, s, mode1);
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        return testsession;
    }

    private void deleteTestAccount(String s, String s1)
    {
        Bundle bundle = new Bundle();
        bundle.putString("access_token", s1);
        Response response = (new Request(null, s, bundle, HttpMethod.DELETE)).executeAndWait();
        FacebookRequestError facebookrequesterror = response.getError();
        GraphObject graphobject = response.getGraphObject();
        if (facebookrequesterror != null)
        {
            Object aobj[] = new Object[2];
            aobj[0] = s;
            aobj[1] = facebookrequesterror.getException().toString();
            Log.w("FacebookSDK.TestSession", String.format("Could not delete test account %s: %s", aobj));
        } else
        if (graphobject.getProperty("FACEBOOK_NON_JSON_RESULT") == Boolean.valueOf(false))
        {
            Log.w("FacebookSDK.TestSession", String.format("Could not delete test account %s: unknown reason", new Object[] {
                s
            }));
            return;
        }
    }

    private void findOrCreateSharedTestAccount()
    {
        TestAccount testaccount = findTestAccountMatchingIdentifier(getSharedTestAccountIdentifier());
        if (testaccount != null)
        {
            finishAuthWithTestAccount(testaccount);
            return;
        } else
        {
            createTestAccountAndFinishAuth();
            return;
        }
    }

    private static TestAccount findTestAccountMatchingIdentifier(String s)
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        Iterator iterator;
        retrieveTestAccountsForAppIfNeeded();
        iterator = appTestAccounts.values().iterator();
_L6:
        boolean flag = iterator.hasNext();
        if (flag) goto _L2; else goto _L1
_L1:
        TestAccount testaccount1 = null;
_L4:
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        return testaccount1;
_L2:
        TestAccount testaccount;
        boolean flag1;
        testaccount = (TestAccount)iterator.next();
        flag1 = testaccount.getName().contains(s);
        if (!flag1)
        {
            break; /* Loop/switch isn't completed */
        }
        testaccount1 = testaccount;
        if (true) goto _L4; else goto _L3
_L3:
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception;
        exception;
        throw exception;
    }

    private void finishAuthWithTestAccount(TestAccount testaccount)
    {
        testAccountId = testaccount.getId();
        testAccountUserName = testaccount.getName();
        finishAuthOrReauth(AccessToken.createFromString(testaccount.getAccessToken(), requestedPermissions, AccessTokenSource.TEST_USER), null);
    }

    static final String getAppAccessToken()
    {
        return (new StringBuilder(String.valueOf(testApplicationId))).append("|").append(testApplicationSecret).toString();
    }

    private String getPermissionsString()
    {
        return TextUtils.join(",", requestedPermissions);
    }

    private String getSharedTestAccountIdentifier()
    {
        long l = 0xffffffffL & (long)getPermissionsString().hashCode();
        long l1;
        if (sessionUniqueUserTag != null)
        {
            l1 = 0xffffffffL & (long)sessionUniqueUserTag.hashCode();
        } else
        {
            l1 = 0L;
        }
        return validNameStringFromInteger(l ^ l1);
    }

    public static String getTestApplicationId()
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        String s = testApplicationId;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public static String getTestApplicationSecret()
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        String s = testApplicationSecret;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    private static void populateTestAccounts(Collection collection, Collection collection1)
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        Iterator iterator = collection.iterator();
_L5:
        if (iterator.hasNext()) goto _L2; else goto _L1
_L1:
        Iterator iterator1 = collection1.iterator();
_L7:
        boolean flag = iterator1.hasNext();
        if (flag) goto _L4; else goto _L3
_L3:
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        return;
_L2:
        storeTestAccount((TestAccount)iterator.next());
          goto _L5
        Exception exception;
        exception;
        throw exception;
_L4:
        UserAccount useraccount;
        TestAccount testaccount;
        useraccount = (UserAccount)iterator1.next();
        testaccount = (TestAccount)appTestAccounts.get(useraccount.getUid());
        if (testaccount == null) goto _L7; else goto _L6
_L6:
        testaccount.setName(useraccount.getName());
          goto _L7
    }

    private static void retrieveTestAccountsForAppIfNeeded()
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        Map map = appTestAccounts;
        if (map == null) goto _L2; else goto _L1
_L1:
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        return;
_L2:
        String s;
        Bundle bundle;
        appTestAccounts = new HashMap();
        Object aobj[] = new Object[1];
        aobj[0] = testApplicationId;
        s = String.format("SELECT id,access_token FROM test_account WHERE app_id = %s", aobj);
        bundle = new Bundle();
        JSONObject jsonobject;
        jsonobject = new JSONObject();
        jsonobject.put("test_accounts", s);
        jsonobject.put("users", "SELECT uid,name FROM user WHERE uid IN (SELECT id FROM #test_accounts)");
        Response response;
        bundle.putString("q", jsonobject.toString());
        bundle.putString("access_token", getAppAccessToken());
        response = (new Request(null, "fql", bundle, null)).executeAndWait();
        if (response.getError() != null)
        {
            throw response.getError().getException();
        }
        break MISSING_BLOCK_LABEL_161;
        Exception exception;
        exception;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        throw exception;
        JSONException jsonexception;
        jsonexception;
        throw new FacebookException(jsonexception);
        GraphObjectList graphobjectlist = ((FqlResponse)response.getGraphObjectAs(com/facebook/TestSession$FqlResponse)).getData();
        if (graphobjectlist == null)
        {
            break MISSING_BLOCK_LABEL_195;
        }
        if (graphobjectlist.size() == 2)
        {
            break MISSING_BLOCK_LABEL_206;
        }
        throw new FacebookException("Unexpected number of results from FQL query");
        populateTestAccounts(((FqlResult)graphobjectlist.get(0)).getFqlResultSet().castToListOf(com/facebook/TestSession$TestAccount), ((FqlResult)graphobjectlist.get(1)).getFqlResultSet().castToListOf(com/facebook/TestSession$UserAccount));
          goto _L1
    }

    public static void setTestApplicationId(String s)
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        if (testApplicationId != null && !testApplicationId.equals(s))
        {
            throw new FacebookException("Can't have more than one test application ID");
        }
        break MISSING_BLOCK_LABEL_36;
        Exception exception;
        exception;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        throw exception;
        testApplicationId = s;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
    }

    public static void setTestApplicationSecret(String s)
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        if (testApplicationSecret != null && !testApplicationSecret.equals(s))
        {
            throw new FacebookException("Can't have more than one test application secret");
        }
        break MISSING_BLOCK_LABEL_36;
        Exception exception;
        exception;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        throw exception;
        testApplicationSecret = s;
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
    }

    private static void storeTestAccount(TestAccount testaccount)
    {
        com/facebook/TestSession;
        JVM INSTR monitorenter ;
        appTestAccounts.put(testaccount.getId(), testaccount);
        com/facebook/TestSession;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private String validNameStringFromInteger(long l)
    {
        String s = Long.toString(l);
        StringBuilder stringbuilder = new StringBuilder("Perm");
        int i = 0;
        char ac[] = s.toCharArray();
        int j = ac.length;
        int k = 0;
        do
        {
            if (k >= j)
            {
                return stringbuilder.toString();
            }
            char c = ac[k];
            if (c == i)
            {
                c += '\n';
            }
            stringbuilder.append((char)((c + 97) - 48));
            i = c;
            k++;
        } while (true);
    }

    void authorize(Session.AuthorizationRequest authorizationrequest)
    {
        if (mode == Mode.PRIVATE)
        {
            createTestAccountAndFinishAuth();
            return;
        } else
        {
            findOrCreateSharedTestAccount();
            return;
        }
    }

    void extendAccessToken()
    {
        wasAskedToExtendAccessToken = true;
        super.extendAccessToken();
    }

    void fakeTokenRefreshAttempt()
    {
        setCurrentTokenRefreshRequest(new Session.TokenRefreshRequest(this));
    }

    void forceExtendAccessToken(boolean flag)
    {
        AccessToken accesstoken = getTokenInfo();
        setTokenInfo(new AccessToken(accesstoken.getToken(), new Date(), accesstoken.getPermissions(), AccessTokenSource.TEST_USER, new Date(0L)));
        setLastAttemptedTokenExtendDate(new Date(0L));
    }

    public final String getTestUserId()
    {
        return testAccountId;
    }

    public final String getTestUserName()
    {
        return testAccountUserName;
    }

    boolean getWasAskedToExtendAccessToken()
    {
        return wasAskedToExtendAccessToken;
    }

    void postStateChange(SessionState sessionstate, SessionState sessionstate1, Exception exception)
    {
        String s = testAccountId;
        super.postStateChange(sessionstate, sessionstate1, exception);
        if (sessionstate1.isClosed() && s != null && mode == Mode.PRIVATE)
        {
            deleteTestAccount(s, getAppAccessToken());
        }
    }

    boolean shouldExtendAccessToken()
    {
        boolean flag = super.shouldExtendAccessToken();
        wasAskedToExtendAccessToken = false;
        return flag;
    }

    public final String toString()
    {
        String s = super.toString();
        return (new StringBuilder()).append("{TestSession").append(" testUserId:").append(testAccountId).append(" ").append(s).append("}").toString();
    }

    static 
    {
        boolean flag;
        if (!com/facebook/TestSession.desiredAssertionStatus())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        $assertionsDisabled = flag;
    }
}
