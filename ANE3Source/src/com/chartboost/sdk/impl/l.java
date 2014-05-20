// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.chartboost.sdk.impl;

import android.app.Application;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.chartboost.sdk.Chartboost;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.http.client.HttpClient;
import org.apache.http.conn.ClientConnectionManager;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.scheme.SchemeRegistry;
import org.apache.http.conn.scheme.SocketFactory;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;

public class l
{

    private static ExecutorService a = null;
    private static ThreadFactory b = null;
    private static HttpClient c = null;

    static String a(Application application, String s)
    {
        return b(application, s);
    }

    public static ExecutorService a()
    {
        if (b == null)
        {
            b = new ThreadFactory() {

                private final AtomicInteger a = new AtomicInteger(1);

                public Thread newThread(Runnable runnable)
                {
                    return new Thread(runnable, (new StringBuilder("Chartboost Thread #")).append(a.getAndIncrement()).toString());
                }

            };
        }
        if (a == null)
        {
            a = Executors.newFixedThreadPool(5, b);
        }
        return a;
    }

    private static String b(Application application, String s)
    {
        String s1;
        StringBuilder stringbuilder;
        try
        {
            s1 = application.getPackageManager().getPackageInfo(application.getPackageName(), 0).versionName;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new RuntimeException(namenotfoundexception);
        }
        stringbuilder = new StringBuilder();
        stringbuilder.append(application.getPackageName());
        stringbuilder.append("/");
        stringbuilder.append(s1);
        stringbuilder.append(" (");
        stringbuilder.append("Linux; U; Android ");
        stringbuilder.append(android.os.Build.VERSION.RELEASE);
        stringbuilder.append("; ");
        stringbuilder.append(Locale.getDefault());
        stringbuilder.append("; ");
        stringbuilder.append(Build.PRODUCT);
        stringbuilder.append(")");
        if (s != null)
        {
            stringbuilder.append(" ");
            stringbuilder.append(s);
        }
        return stringbuilder.toString();
    }

    protected static HttpClient b()
    {
        if (c != null)
        {
            return c;
        }
        HttpClient httpclient1;
        try
        {
            c = new DefaultHttpClient((Application)Chartboost.sharedChartboost().getContext().getApplicationContext()) {

                private final Application a;

                protected SocketFactory a()
                {
                    SocketFactory socketfactory;
                    try
                    {
                        Class class1 = Class.forName("android.net.SSLSessionCache");
                        Constructor constructor = class1.getConstructor(new Class[] {
                            android/content/Context
                        });
                        Object aobj[] = new Object[1];
                        aobj[0] = a;
                        Object obj = constructor.newInstance(aobj);
                        Class class2 = Class.forName("android.net.SSLCertificateSocketFactory");
                        Class aclass[] = new Class[2];
                        aclass[0] = Integer.TYPE;
                        aclass[1] = class1;
                        Method method = class2.getMethod("getHttpSocketFactory", aclass);
                        Object aobj1[] = new Object[2];
                        aobj1[0] = Integer.valueOf(Chartboost.sharedChartboost().getTimeout());
                        aobj1[1] = obj;
                        socketfactory = (SocketFactory)method.invoke(null, aobj1);
                    }
                    catch (Exception exception2)
                    {
                        return SSLSocketFactory.getSocketFactory();
                    }
                    return socketfactory;
                }

                protected ClientConnectionManager createClientConnectionManager()
                {
                    SchemeRegistry schemeregistry = new SchemeRegistry();
                    schemeregistry.register(new Scheme("http", PlainSocketFactory.getSocketFactory(), 80));
                    schemeregistry.register(new Scheme("https", a(), 443));
                    org.apache.http.params.HttpParams httpparams1 = getParams();
                    HttpConnectionParams.setConnectionTimeout(httpparams1, Chartboost.sharedChartboost().getTimeout());
                    HttpConnectionParams.setSoTimeout(httpparams1, Chartboost.sharedChartboost().getTimeout());
                    HttpProtocolParams.setUserAgent(httpparams1, l.a(a, HttpProtocolParams.getUserAgent(httpparams1)));
                    return new ThreadSafeClientConnManager(httpparams1, schemeregistry);
                }

            
            {
                a = application;
                super();
            }
            };
            httpclient1 = c;
        }
        catch (Exception exception)
        {
            HttpClient httpclient;
            try
            {
                DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
                ClientConnectionManager clientconnectionmanager = defaulthttpclient.getConnectionManager();
                org.apache.http.params.HttpParams httpparams = defaulthttpclient.getParams();
                c = new DefaultHttpClient(new ThreadSafeClientConnManager(httpparams, clientconnectionmanager.getSchemeRegistry()), httpparams);
                httpclient = c;
            }
            catch (Exception exception1)
            {
                c = new DefaultHttpClient();
                return c;
            }
            return httpclient;
        }
        return httpclient1;
    }

}
