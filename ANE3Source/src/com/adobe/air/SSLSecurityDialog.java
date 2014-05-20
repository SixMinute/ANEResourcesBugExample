// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.net.http.SslCertificate;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.adobe.air.utils.Utils;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package com.adobe.air:
//            AndroidActivityWrapper, AndroidAlertDialog, Certificate

public class SSLSecurityDialog
{

    public static final String TAG = com/adobe/air/SSLSecurityDialog.toString();
    private static final String USER_ACTION_TRUST_ALWAYS = "always";
    private static final String USER_ACTION_TRUST_NONE = "none";
    private static final String USER_ACTION_TRUST_SESSION = "session";
    private Condition m_condition;
    private Lock m_lock;
    private String m_useraction;

    public SSLSecurityDialog()
    {
        m_useraction = null;
        m_lock = new ReentrantLock();
        m_condition = m_lock.newCondition();
    }

    private void SetUserAction(String s)
    {
        m_lock.lock();
        m_useraction = s;
        m_condition.signal();
        m_lock.unlock();
    }

    public void ShowSSLDialog(String s, byte abyte0[], SslCertificate sslcertificate, boolean flag)
    {
        Exception exception;
        AndroidActivityWrapper androidactivitywrapper = AndroidActivityWrapper.GetAndroidActivityWrapper();
        Activity activity = androidactivitywrapper.getActivity();
        if (activity == null)
        {
            activity = androidactivitywrapper.WaitForNewActivity();
        }
        final AndroidAlertDialog dialog = new AndroidAlertDialog(activity);
        android.app.AlertDialog.Builder builder = dialog.GetAlertDialogBuilder();
        Context context = androidactivitywrapper.getRuntimeContext();
        LayoutInflater layoutinflater = LayoutInflater.from(context);
        android.content.res.Resources resources = context.getResources();
        View view = Utils.GetLayoutViewFromRuntime("ssl_certificate_warning", resources, layoutinflater);
        if (view != null)
        {
            android.content.res.Resources resources1 = view.getResources();
            TextView textview = (TextView)Utils.GetWidgetInViewByName("ServerName", resources1, view);
            textview.setText((new StringBuilder()).append(textview.getText()).append(" ").append(s).toString());
            Certificate certificate;
            String s1;
            Object aobj[];
            String s2;
            if (abyte0 != null)
            {
                certificate = new Certificate();
                certificate.setCertificate(abyte0);
            } else
            {
                certificate = new Certificate(sslcertificate);
            }
            s1 = Utils.GetResourceStringFromRuntime("IDA_CERTIFICATE_DETAILS", resources);
            aobj = new Object[8];
            aobj[0] = certificate.getIssuedToCommonName();
            aobj[1] = certificate.getIssuedToOrganization();
            aobj[2] = certificate.getIssuedToOrganizationalUnit();
            aobj[3] = certificate.getIssuedByCommonName();
            aobj[4] = certificate.getIssuedByOrganization();
            aobj[5] = certificate.getIssuedByOrganizationalUnit();
            aobj[6] = certificate.getIssuedOn();
            aobj[7] = certificate.getExpiresOn();
            s2 = String.format(s1, aobj);
            ((TextView)Utils.GetWidgetInViewByName("CertificateDetails", resources1, view)).setText(s2, android.widget.TextView.BufferType.SPANNABLE);
            builder.setView(view);
            if (flag)
            {
                builder.setPositiveButton(Utils.GetResourceStringFromRuntime("IDA_CURL_INTERFACE_ALLSESS", resources), new android.content.DialogInterface.OnClickListener() {

                    final SSLSecurityDialog this$0;

                    public void onClick(DialogInterface dialoginterface, int i)
                    {
                        SetUserAction("always");
                    }

            
            {
                this$0 = SSLSecurityDialog.this;
                super();
            }
                });
            }
            builder.setNeutralButton(Utils.GetResourceStringFromRuntime("IDA_CURL_INTERFACE_THISSESS", resources), new android.content.DialogInterface.OnClickListener() {

                final SSLSecurityDialog this$0;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    SetUserAction("session");
                }

            
            {
                this$0 = SSLSecurityDialog.this;
                super();
            }
            });
            builder.setNegativeButton(Utils.GetResourceStringFromRuntime("IDA_CURL_INTERFACE_NOSESS", resources), new android.content.DialogInterface.OnClickListener() {

                final SSLSecurityDialog this$0;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    SetUserAction("none");
                }

            
            {
                this$0 = SSLSecurityDialog.this;
                super();
            }
            });
            builder.setOnKeyListener(new android.content.DialogInterface.OnKeyListener() {

                final SSLSecurityDialog this$0;

                public boolean onKey(DialogInterface dialoginterface, int i, KeyEvent keyevent)
                {
                    if (keyevent.getKeyCode() == 4)
                    {
                        SetUserAction("none");
                    }
                    return false;
                }

            
            {
                this$0 = SSLSecurityDialog.this;
                super();
            }
            });
            activity.runOnUiThread(new Runnable() {

                final SSLSecurityDialog this$0;
                final AndroidAlertDialog val$dialog;

                public void run()
                {
                    dialog.show();
                }

            
            {
                this$0 = SSLSecurityDialog.this;
                dialog = androidalertdialog;
                super();
            }
            });
            m_lock.lock();
            try
            {
                if (m_useraction == null)
                {
                    m_condition.await();
                }
            }
            catch (InterruptedException interruptedexception)
            {
                m_lock.unlock();
                return;
            }
            finally
            {
                m_lock.unlock();
            }
            m_lock.unlock();
        }
        return;
        throw exception;
    }

    public String getUserAction()
    {
        return m_useraction;
    }

    public String show(String s, SslCertificate sslcertificate)
    {
        ShowSSLDialog(s, null, sslcertificate, false);
        if (m_useraction == null);
        return m_useraction;
    }

    public String show(String s, byte abyte0[])
    {
        ShowSSLDialog(s, abyte0, null, false);
        if (m_useraction == null);
        return m_useraction;
    }


}
