// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import android.net.http.SslCertificate;
import java.io.ByteArrayInputStream;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;

public class Certificate
{

    private final String TAG;
    private SslCertificate m_certificate;
    private CertificateFactory m_factory;
    private android.net.http.SslCertificate.DName m_issuedBy;
    private android.net.http.SslCertificate.DName m_issuedTo;

    public Certificate()
    {
        TAG = "AIRCertificateWarningDialog";
        try
        {
            m_factory = CertificateFactory.getInstance("X.509");
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public Certificate(SslCertificate sslcertificate)
    {
        TAG = "AIRCertificateWarningDialog";
        try
        {
            m_certificate = sslcertificate;
            m_issuedBy = m_certificate.getIssuedBy();
            m_issuedTo = m_certificate.getIssuedTo();
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    public String getExpiresOn()
    {
        return m_certificate.getValidNotAfter();
    }

    public String getIssuedByCommonName()
    {
        return m_issuedBy.getCName();
    }

    public String getIssuedByOrganization()
    {
        return m_issuedBy.getOName();
    }

    public String getIssuedByOrganizationalUnit()
    {
        return m_issuedBy.getUName();
    }

    public String getIssuedOn()
    {
        return m_certificate.getValidNotBefore();
    }

    public String getIssuedToCommonName()
    {
        return m_issuedTo.getCName();
    }

    public String getIssuedToOrganization()
    {
        return m_issuedTo.getOName();
    }

    public String getIssuedToOrganizationalUnit()
    {
        return m_issuedTo.getUName();
    }

    public Boolean setCertificate(byte abyte0[])
    {
        if (m_factory == null)
        {
            return Boolean.valueOf(false);
        }
        try
        {
            ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(abyte0);
            m_certificate = new SslCertificate((X509Certificate)m_factory.generateCertificate(bytearrayinputstream));
            m_issuedBy = m_certificate.getIssuedBy();
            m_issuedTo = m_certificate.getIssuedTo();
        }
        catch (Exception exception)
        {
            return Boolean.valueOf(false);
        }
        return Boolean.valueOf(true);
    }
}
