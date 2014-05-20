// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.air;

import java.io.File;
import java.io.FileInputStream;
import java.security.KeyStore;
import java.security.cert.CertificateFactory;

// Referenced classes of package com.adobe.air:
//            JavaTrustStoreHelper

private static class <init>
    implements <init>
{

    private static final String kDirectoryPath = "/system/etc/security/cacerts";
    private int mNumFilesWhenCreated;

    private static String[] getFileListing()
    {
        return (new File("/system/etc/security/cacerts")).list();
    }

    public static boolean isValid()
    {
        return (new File("/system/etc/security/cacerts")).exists();
    }

    public KeyStore getKeyStore()
    {
        KeyStore keystore;
        CertificateFactory certificatefactory;
        String as[];
        keystore = KeyStore.getInstance(KeyStore.getDefaultType());
        keystore.load(null);
        certificatefactory = CertificateFactory.getInstance("X.509");
        as = getFileListing();
        mNumFilesWhenCreated = as.length;
        int i = 0;
_L2:
        if (i >= as.length)
        {
            break; /* Loop/switch isn't completed */
        }
        String s = as[i];
        java.security.cert.Certificate certificate = certificatefactory.generateCertificate(new FileInputStream(new File((new StringBuilder()).append("/system/etc/security/cacerts/").append(s).toString())));
        keystore.setCertificateEntry(String.valueOf(i), certificate);
        i++;
        if (true) goto _L2; else goto _L1
        Exception exception;
        exception;
        mNumFilesWhenCreated = -1;
        keystore = null;
_L1:
        return keystore;
    }

    public long getTimestamp()
    {
        String as[] = getFileListing();
        if (mNumFilesWhenCreated != -1 && as.length != mNumFilesWhenCreated)
        {
            return 0x7fffffffffffffffL;
        }
        long l = 0L;
        for (int i = 0; i < as.length; i++)
        {
            l = Math.max((new File((new StringBuilder()).append("/system/etc/security/cacerts/").append(as[i]).toString())).lastModified(), l);
        }

        return l;
    }

    private ()
    {
        mNumFilesWhenCreated = -1;
    }

    mNumFilesWhenCreated(mNumFilesWhenCreated mnumfileswhencreated)
    {
        this();
    }
}
