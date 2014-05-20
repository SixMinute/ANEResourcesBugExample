// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.os.Build;
import java.util.HashSet;

// Referenced classes of package com.facebook.internal:
//            Utility, NativeProtocol

private static abstract class <init>
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
        catch (android.content.pm.ception ception)
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


    private tion()
    {
    }

    tion(tion tion)
    {
        this();
    }
}
