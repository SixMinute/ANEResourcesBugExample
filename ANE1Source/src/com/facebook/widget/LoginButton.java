// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Typeface;
import android.os.AsyncTask;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import com.facebook.AppEventsLogger;
import com.facebook.FacebookException;
import com.facebook.FacebookRequestError;
import com.facebook.Request;
import com.facebook.Response;
import com.facebook.Session;
import com.facebook.SessionDefaultAudience;
import com.facebook.SessionLoginBehavior;
import com.facebook.SessionState;
import com.facebook.internal.SessionAuthorizationType;
import com.facebook.internal.SessionTracker;
import com.facebook.internal.Utility;
import com.facebook.model.GraphUser;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

// Referenced classes of package com.facebook.widget:
//            ToolTipPopup

public class LoginButton extends Button
{
    private class LoginButtonCallback
        implements com.facebook.Session.StatusCallback
    {

        final LoginButton this$0;

        public void call(Session session, SessionState sessionstate, Exception exception)
        {
            fetchUserInfo();
            setButtonText();
            if (properties.sessionStatusCallback != null)
            {
                properties.sessionStatusCallback.call(session, sessionstate, exception);
            } else
            if (exception != null)
            {
                handleError(exception);
                return;
            }
        }

        private LoginButtonCallback()
        {
            this$0 = LoginButton.this;
            super();
        }

        LoginButtonCallback(LoginButtonCallback loginbuttoncallback)
        {
            this();
        }
    }

    static class LoginButtonProperties
    {

        private SessionAuthorizationType authorizationType;
        private SessionDefaultAudience defaultAudience;
        private SessionLoginBehavior loginBehavior;
        private OnErrorListener onErrorListener;
        private List permissions;
        private com.facebook.Session.StatusCallback sessionStatusCallback;

        private boolean validatePermissions(List list, SessionAuthorizationType sessionauthorizationtype, Session session)
        {
            if (SessionAuthorizationType.PUBLISH.equals(sessionauthorizationtype) && Utility.isNullOrEmpty(list))
            {
                throw new IllegalArgumentException("Permissions for publish actions cannot be null or empty.");
            }
            if (session != null && session.isOpened() && !Utility.isSubset(list, session.getPermissions()))
            {
                Log.e(LoginButton.TAG, "Cannot set additional permissions when session is already open.");
                return false;
            } else
            {
                return true;
            }
        }

        public void clearPermissions()
        {
            permissions = null;
            authorizationType = null;
        }

        public SessionDefaultAudience getDefaultAudience()
        {
            return defaultAudience;
        }

        public SessionLoginBehavior getLoginBehavior()
        {
            return loginBehavior;
        }

        public OnErrorListener getOnErrorListener()
        {
            return onErrorListener;
        }

        List getPermissions()
        {
            return permissions;
        }

        public com.facebook.Session.StatusCallback getSessionStatusCallback()
        {
            return sessionStatusCallback;
        }

        public void setDefaultAudience(SessionDefaultAudience sessiondefaultaudience)
        {
            defaultAudience = sessiondefaultaudience;
        }

        public void setLoginBehavior(SessionLoginBehavior sessionloginbehavior)
        {
            loginBehavior = sessionloginbehavior;
        }

        public void setOnErrorListener(OnErrorListener onerrorlistener)
        {
            onErrorListener = onerrorlistener;
        }

        public void setPublishPermissions(List list, Session session)
        {
            if (SessionAuthorizationType.READ.equals(authorizationType))
            {
                throw new UnsupportedOperationException("Cannot call setPublishPermissions after setReadPermissions has been called.");
            }
            if (validatePermissions(list, SessionAuthorizationType.PUBLISH, session))
            {
                permissions = list;
                authorizationType = SessionAuthorizationType.PUBLISH;
            }
        }

        public void setReadPermissions(List list, Session session)
        {
            if (SessionAuthorizationType.PUBLISH.equals(authorizationType))
            {
                throw new UnsupportedOperationException("Cannot call setReadPermissions after setPublishPermissions has been called.");
            }
            if (validatePermissions(list, SessionAuthorizationType.READ, session))
            {
                permissions = list;
                authorizationType = SessionAuthorizationType.READ;
            }
        }

        public void setSessionStatusCallback(com.facebook.Session.StatusCallback statuscallback)
        {
            sessionStatusCallback = statuscallback;
        }







        LoginButtonProperties()
        {
            defaultAudience = SessionDefaultAudience.FRIENDS;
            permissions = Collections.emptyList();
            authorizationType = null;
            loginBehavior = SessionLoginBehavior.SSO_WITH_FALLBACK;
        }
    }

    private class LoginClickListener
        implements android.view.View.OnClickListener
    {

        final LoginButton this$0;

        public void onClick(View view)
        {
            Context context = getContext();
            Session session = sessionTracker.getOpenSession();
            int i;
            if (session != null)
            {
                if (confirmLogout)
                {
                    String s = getResources().getString(com.facebook.android.R.string.com_facebook_loginview_log_out_action);
                    String s1 = getResources().getString(com.facebook.android.R.string.com_facebook_loginview_cancel_action);
                    AppEventsLogger appeventslogger;
                    Bundle bundle;
                    String s2;
                    android.app.AlertDialog.Builder builder;
                    android.app.AlertDialog.Builder builder1;
                    android.content.DialogInterface.OnClickListener onclicklistener;
                    if (user != null && user.getName() != null)
                    {
                        String s3 = getResources().getString(com.facebook.android.R.string.com_facebook_loginview_logged_in_as);
                        Object aobj[] = new Object[1];
                        aobj[0] = user.getName();
                        s2 = String.format(s3, aobj);
                    } else
                    {
                        s2 = getResources().getString(com.facebook.android.R.string.com_facebook_loginview_logged_in_using_facebook);
                    }
                    builder = new android.app.AlertDialog.Builder(context);
                    builder1 = builder.setMessage(s2).setCancelable(true);
                    onclicklistener = session. new android.content.DialogInterface.OnClickListener() {

                        final LoginClickListener this$1;
                        private final Session val$openSession;

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            openSession.closeAndClearTokenInformation();
                        }

            
            {
                this$1 = final_loginclicklistener;
                openSession = Session.this;
                super();
            }
                    };
                    builder1.setPositiveButton(s, onclicklistener).setNegativeButton(s1, null);
                    builder.create().show();
                } else
                {
                    session.closeAndClearTokenInformation();
                }
            } else
            {
                Session session1 = sessionTracker.getSession();
                if (session1 == null || session1.getState().isClosed())
                {
                    sessionTracker.setSession(null);
                    Session session2 = (new com.facebook.Session.Builder(context)).setApplicationId(applicationId).build();
                    Session.setActiveSession(session2);
                    session1 = session2;
                }
                if (!session1.isOpened())
                {
                    com.facebook.Session.OpenRequest openrequest;
                    if (parentFragment != null)
                    {
                        openrequest = new com.facebook.Session.OpenRequest(parentFragment);
                    } else
                    {
                        boolean flag = context instanceof Activity;
                        openrequest = null;
                        if (flag)
                        {
                            openrequest = new com.facebook.Session.OpenRequest((Activity)context);
                        }
                    }
                    if (openrequest != null)
                    {
                        openrequest.setDefaultAudience(properties.defaultAudience);
                        openrequest.setPermissions(properties.permissions);
                        openrequest.setLoginBehavior(properties.loginBehavior);
                        if (SessionAuthorizationType.PUBLISH.equals(properties.authorizationType))
                        {
                            session1.openForPublish(openrequest);
                        } else
                        {
                            session1.openForRead(openrequest);
                        }
                    }
                }
            }
            appeventslogger = AppEventsLogger.newLogger(getContext());
            bundle = new Bundle();
            if (session != null)
            {
                i = 0;
            } else
            {
                i = 1;
            }
            bundle.putInt("logging_in", i);
            appeventslogger.logSdkEvent(loginLogoutEventName, null, bundle);
            if (listenerCallback != null)
            {
                listenerCallback.onClick(view);
            }
        }

        private LoginClickListener()
        {
            this$0 = LoginButton.this;
            super();
        }

        LoginClickListener(LoginClickListener loginclicklistener)
        {
            this();
        }
    }

    public static interface OnErrorListener
    {

        public abstract void onError(FacebookException facebookexception);
    }

    public static final class ToolTipMode extends Enum
    {

        public static final ToolTipMode DEFAULT;
        public static final ToolTipMode DISPLAY_ALWAYS;
        private static final ToolTipMode ENUM$VALUES[];
        public static final ToolTipMode NEVER_DISPLAY;

        public static ToolTipMode valueOf(String s)
        {
            return (ToolTipMode)Enum.valueOf(com/facebook/widget/LoginButton$ToolTipMode, s);
        }

        public static ToolTipMode[] values()
        {
            ToolTipMode atooltipmode[] = ENUM$VALUES;
            int i = atooltipmode.length;
            ToolTipMode atooltipmode1[] = new ToolTipMode[i];
            System.arraycopy(atooltipmode, 0, atooltipmode1, 0, i);
            return atooltipmode1;
        }

        static 
        {
            DEFAULT = new ToolTipMode("DEFAULT", 0);
            DISPLAY_ALWAYS = new ToolTipMode("DISPLAY_ALWAYS", 1);
            NEVER_DISPLAY = new ToolTipMode("NEVER_DISPLAY", 2);
            ToolTipMode atooltipmode[] = new ToolTipMode[3];
            atooltipmode[0] = DEFAULT;
            atooltipmode[1] = DISPLAY_ALWAYS;
            atooltipmode[2] = NEVER_DISPLAY;
            ENUM$VALUES = atooltipmode;
        }

        private ToolTipMode(String s, int i)
        {
            super(s, i);
        }
    }

    public static interface UserInfoChangedCallback
    {

        public abstract void onUserInfoFetched(GraphUser graphuser);
    }


    private static final String TAG = com/facebook/widget/LoginButton.getName();
    private String applicationId;
    private boolean confirmLogout;
    private boolean fetchUserInfo;
    private android.view.View.OnClickListener listenerCallback;
    private String loginLogoutEventName;
    private String loginText;
    private String logoutText;
    private boolean nuxChecked;
    private long nuxDisplayTime;
    private ToolTipMode nuxMode;
    private ToolTipPopup nuxPopup;
    private ToolTipPopup.Style nuxStyle;
    private Fragment parentFragment;
    private LoginButtonProperties properties;
    private SessionTracker sessionTracker;
    private GraphUser user;
    private UserInfoChangedCallback userInfoChangedCallback;
    private Session userInfoSession;

    public LoginButton(Context context)
    {
        super(context);
        applicationId = null;
        user = null;
        userInfoSession = null;
        properties = new LoginButtonProperties();
        loginLogoutEventName = "fb_login_view_usage";
        nuxStyle = ToolTipPopup.Style.BLUE;
        nuxMode = ToolTipMode.DEFAULT;
        nuxDisplayTime = 6000L;
        initializeActiveSessionWithCachedToken(context);
        finishInit();
    }

    public LoginButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        applicationId = null;
        user = null;
        userInfoSession = null;
        properties = new LoginButtonProperties();
        loginLogoutEventName = "fb_login_view_usage";
        nuxStyle = ToolTipPopup.Style.BLUE;
        nuxMode = ToolTipMode.DEFAULT;
        nuxDisplayTime = 6000L;
        if (attributeset.getStyleAttribute() == 0)
        {
            setGravity(17);
            setTextColor(getResources().getColor(com.facebook.android.R.color.com_facebook_loginview_text_color));
            setTextSize(0, getResources().getDimension(com.facebook.android.R.dimen.com_facebook_loginview_text_size));
            setTypeface(Typeface.DEFAULT_BOLD);
            if (isInEditMode())
            {
                setBackgroundColor(getResources().getColor(com.facebook.android.R.color.com_facebook_blue));
                loginText = "Log in with Facebook";
            } else
            {
                setBackgroundResource(com.facebook.android.R.drawable.com_facebook_button_blue);
                setCompoundDrawablesWithIntrinsicBounds(com.facebook.android.R.drawable.com_facebook_inverse_icon, 0, 0, 0);
                setCompoundDrawablePadding(getResources().getDimensionPixelSize(com.facebook.android.R.dimen.com_facebook_loginview_compound_drawable_padding));
                setPadding(getResources().getDimensionPixelSize(com.facebook.android.R.dimen.com_facebook_loginview_padding_left), getResources().getDimensionPixelSize(com.facebook.android.R.dimen.com_facebook_loginview_padding_top), getResources().getDimensionPixelSize(com.facebook.android.R.dimen.com_facebook_loginview_padding_right), getResources().getDimensionPixelSize(com.facebook.android.R.dimen.com_facebook_loginview_padding_bottom));
            }
        }
        parseAttributes(attributeset);
        if (!isInEditMode())
        {
            initializeActiveSessionWithCachedToken(context);
        }
    }

    public LoginButton(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        applicationId = null;
        user = null;
        userInfoSession = null;
        properties = new LoginButtonProperties();
        loginLogoutEventName = "fb_login_view_usage";
        nuxStyle = ToolTipPopup.Style.BLUE;
        nuxMode = ToolTipMode.DEFAULT;
        nuxDisplayTime = 6000L;
        parseAttributes(attributeset);
        initializeActiveSessionWithCachedToken(context);
    }

    private void checkNuxSettings()
    {
        if (nuxMode == ToolTipMode.DISPLAY_ALWAYS)
        {
            displayNux(getResources().getString(com.facebook.android.R.string.com_facebook_tooltip_default));
            return;
        } else
        {
            (new AsyncTask() {

                final LoginButton this$0;
                private final String val$appId;

                protected transient com.facebook.internal.Utility.FetchedAppSettings doInBackground(Void avoid[])
                {
                    return Utility.queryAppSettings(appId, false);
                }

                protected volatile transient Object doInBackground(Object aobj[])
                {
                    return doInBackground((Void[])aobj);
                }

                protected void onPostExecute(com.facebook.internal.Utility.FetchedAppSettings fetchedappsettings)
                {
                    showNuxPerSettings(fetchedappsettings);
                }

                protected volatile void onPostExecute(Object obj)
                {
                    onPostExecute((com.facebook.internal.Utility.FetchedAppSettings)obj);
                }

            
            {
                this$0 = LoginButton.this;
                appId = s;
                super();
            }
            }).execute(null);
            return;
        }
    }

    private void displayNux(String s)
    {
        nuxPopup = new ToolTipPopup(s, this);
        nuxPopup.setStyle(nuxStyle);
        nuxPopup.setNuxDisplayTime(nuxDisplayTime);
        nuxPopup.show();
    }

    private void fetchUserInfo()
    {
        if (fetchUserInfo)
        {
            final Session currentSession = sessionTracker.getOpenSession();
            if (currentSession != null)
            {
                if (currentSession != userInfoSession)
                {
                    Request.executeBatchAsync(new Request[] {
                        Request.newMeRequest(currentSession, new com.facebook.Request.GraphUserCallback() {

                            final LoginButton this$0;
                            private final Session val$currentSession;

                            public void onCompleted(GraphUser graphuser, Response response)
                            {
                                if (currentSession == sessionTracker.getOpenSession())
                                {
                                    user = graphuser;
                                    if (userInfoChangedCallback != null)
                                    {
                                        userInfoChangedCallback.onUserInfoFetched(user);
                                    }
                                }
                                if (response.getError() != null)
                                {
                                    handleError(response.getError().getException());
                                }
                            }

            
            {
                this$0 = LoginButton.this;
                currentSession = session;
                super();
            }
                        })
                    });
                    userInfoSession = currentSession;
                }
            } else
            {
                user = null;
                if (userInfoChangedCallback != null)
                {
                    userInfoChangedCallback.onUserInfoFetched(user);
                    return;
                }
            }
        }
    }

    private void finishInit()
    {
        super.setOnClickListener(new LoginClickListener(null));
        setButtonText();
        if (!isInEditMode())
        {
            sessionTracker = new SessionTracker(getContext(), new LoginButtonCallback(null), null, false);
            fetchUserInfo();
        }
    }

    private boolean initializeActiveSessionWithCachedToken(Context context)
    {
        if (context == null)
        {
            return false;
        }
        Session session = Session.getActiveSession();
        if (session != null)
        {
            return session.isOpened();
        }
        if (Utility.getMetadataApplicationId(context) == null)
        {
            return false;
        }
        return Session.openActiveSessionFromCache(context) != null;
    }

    private void parseAttributes(AttributeSet attributeset)
    {
        TypedArray typedarray = getContext().obtainStyledAttributes(attributeset, com.facebook.android.R.styleable.com_facebook_login_view);
        confirmLogout = typedarray.getBoolean(0, true);
        fetchUserInfo = typedarray.getBoolean(1, true);
        loginText = typedarray.getString(2);
        logoutText = typedarray.getString(3);
        typedarray.recycle();
    }

    private void setButtonText()
    {
        if (sessionTracker != null && sessionTracker.getOpenSession() != null)
        {
            String s1;
            if (logoutText != null)
            {
                s1 = logoutText;
            } else
            {
                s1 = getResources().getString(com.facebook.android.R.string.com_facebook_loginview_log_out_button);
            }
            setText(s1);
            return;
        }
        String s;
        if (loginText != null)
        {
            s = loginText;
        } else
        {
            s = getResources().getString(com.facebook.android.R.string.com_facebook_loginview_log_in_button);
        }
        setText(s);
    }

    private void showNuxPerSettings(com.facebook.internal.Utility.FetchedAppSettings fetchedappsettings)
    {
        if (fetchedappsettings != null && fetchedappsettings.getNuxEnabled() && getVisibility() == 0)
        {
            displayNux(fetchedappsettings.getNuxContent());
        }
    }

    public void clearPermissions()
    {
        properties.clearPermissions();
    }

    public void dismissToolTip()
    {
        if (nuxPopup != null)
        {
            nuxPopup.dismiss();
            nuxPopup = null;
        }
    }

    public SessionDefaultAudience getDefaultAudience()
    {
        return properties.getDefaultAudience();
    }

    public SessionLoginBehavior getLoginBehavior()
    {
        return properties.getLoginBehavior();
    }

    public OnErrorListener getOnErrorListener()
    {
        return properties.getOnErrorListener();
    }

    List getPermissions()
    {
        return properties.getPermissions();
    }

    public com.facebook.Session.StatusCallback getSessionStatusCallback()
    {
        return properties.getSessionStatusCallback();
    }

    public long getToolTipDisplayTime()
    {
        return nuxDisplayTime;
    }

    public ToolTipMode getToolTipMode()
    {
        return nuxMode;
    }

    public UserInfoChangedCallback getUserInfoChangedCallback()
    {
        return userInfoChangedCallback;
    }

    void handleError(Exception exception)
    {
label0:
        {
            if (properties.onErrorListener != null)
            {
                if (!(exception instanceof FacebookException))
                {
                    break label0;
                }
                properties.onErrorListener.onError((FacebookException)exception);
            }
            return;
        }
        properties.onErrorListener.onError(new FacebookException(exception));
    }

    public boolean onActivityResult(int i, int j, Intent intent)
    {
        Session session = sessionTracker.getSession();
        if (session != null)
        {
            return session.onActivityResult((Activity)getContext(), i, j, intent);
        } else
        {
            return false;
        }
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (sessionTracker != null && !sessionTracker.isTracking())
        {
            sessionTracker.startTracking();
            fetchUserInfo();
            setButtonText();
        }
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        if (sessionTracker != null)
        {
            sessionTracker.stopTracking();
        }
        dismissToolTip();
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        if (!nuxChecked && nuxMode != ToolTipMode.NEVER_DISPLAY && !isInEditMode())
        {
            nuxChecked = true;
            checkNuxSettings();
        }
    }

    public void onFinishInflate()
    {
        super.onFinishInflate();
        finishInit();
    }

    protected void onVisibilityChanged(View view, int i)
    {
        super.onVisibilityChanged(view, i);
        if (i != 0)
        {
            dismissToolTip();
        }
    }

    public void setApplicationId(String s)
    {
        applicationId = s;
    }

    public void setDefaultAudience(SessionDefaultAudience sessiondefaultaudience)
    {
        properties.setDefaultAudience(sessiondefaultaudience);
    }

    public void setFragment(Fragment fragment)
    {
        parentFragment = fragment;
    }

    public void setLoginBehavior(SessionLoginBehavior sessionloginbehavior)
    {
        properties.setLoginBehavior(sessionloginbehavior);
    }

    void setLoginLogoutEventName(String s)
    {
        loginLogoutEventName = s;
    }

    public void setOnClickListener(android.view.View.OnClickListener onclicklistener)
    {
        listenerCallback = onclicklistener;
    }

    public void setOnErrorListener(OnErrorListener onerrorlistener)
    {
        properties.setOnErrorListener(onerrorlistener);
    }

    void setProperties(LoginButtonProperties loginbuttonproperties)
    {
        properties = loginbuttonproperties;
    }

    public void setPublishPermissions(List list)
    {
        properties.setPublishPermissions(list, sessionTracker.getSession());
    }

    public transient void setPublishPermissions(String as[])
    {
        properties.setPublishPermissions(Arrays.asList(as), sessionTracker.getSession());
    }

    public void setReadPermissions(List list)
    {
        properties.setReadPermissions(list, sessionTracker.getSession());
    }

    public transient void setReadPermissions(String as[])
    {
        properties.setReadPermissions(Arrays.asList(as), sessionTracker.getSession());
    }

    public void setSession(Session session)
    {
        sessionTracker.setSession(session);
        fetchUserInfo();
        setButtonText();
    }

    public void setSessionStatusCallback(com.facebook.Session.StatusCallback statuscallback)
    {
        properties.setSessionStatusCallback(statuscallback);
    }

    public void setToolTipDisplayTime(long l)
    {
        nuxDisplayTime = l;
    }

    public void setToolTipMode(ToolTipMode tooltipmode)
    {
        nuxMode = tooltipmode;
    }

    public void setToolTipStyle(ToolTipPopup.Style style)
    {
        nuxStyle = style;
    }

    public void setUserInfoChangedCallback(UserInfoChangedCallback userinfochangedcallback)
    {
        userInfoChangedCallback = userinfochangedcallback;
    }















}
