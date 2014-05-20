// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.adobe.fre;

import android.app.Activity;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.adobe.fre:
//            FREFunction, FREWrongThreadException, FREObject

public abstract class FREContext
{

    private long m_objectPointer;

    public FREContext()
    {
    }

    private native void registerFunction(long l, String s, FREFunction frefunction);

    private native void registerFunctionCount(long l, int i);

    protected void VisitFunctions(long l)
    {
        Map map = getFunctions();
        registerFunctionCount(l, map.size());
        java.util.Map.Entry entry;
        for (Iterator iterator = map.entrySet().iterator(); iterator.hasNext(); registerFunction(l, (String)entry.getKey(), (FREFunction)entry.getValue()))
        {
            entry = (java.util.Map.Entry)iterator.next();
        }

    }

    public native void dispatchStatusEventAsync(String s, String s1)
        throws IllegalArgumentException, IllegalStateException;

    public abstract void dispose();

    public native FREObject getActionScriptData()
        throws FREWrongThreadException, IllegalStateException;

    public native Activity getActivity()
        throws IllegalStateException;

    public abstract Map getFunctions();

    public native int getResourceId(String s)
        throws IllegalArgumentException, android.content.res.Resources.NotFoundException, IllegalStateException;

    public native void setActionScriptData(FREObject freobject)
        throws FREWrongThreadException, IllegalArgumentException, IllegalStateException;
}
